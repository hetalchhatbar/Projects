using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using NLevelCategories.Models;
using System.Text;

namespace NLevelCategories.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TokenController : ControllerBase
    {
        public IConfiguration _configuration;
        private readonly NLevelCategoriesContext _context;

        public TokenController(IConfiguration config, NLevelCategoriesContext context)
        {
            _configuration = config;
            _context = context;
        }

        [HttpPost]
        public async Task<IActionResult> Post(UserInfo _userData)
        {
            if (_userData != null)
            {
                var user = _userData.UserType;

                if (user == "admin")
                {
                    try
                    {
                        //create claims details based on the user information
                        var claims = new[] {
                           new Claim(JwtRegisteredClaimNames.Sub, _configuration["Jwt:Subject"]),
                           new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                           new Claim(JwtRegisteredClaimNames.Iat, DateTime.UtcNow.ToString()),
                           new Claim("Id", user),
                        };

                        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));

                        var signIn = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

                        var token = new JwtSecurityToken(_configuration["Jwt:Issuer"], _configuration["Jwt:Audience"], claims, expires: DateTime.UtcNow.AddDays(1), signingCredentials: signIn);

                        return Ok(new JwtSecurityTokenHandler().WriteToken(token));
                    }
                    catch (Exception ex)
                    {

                        return Ok(ex);
                    }
                }
                else
                {
                    return BadRequest("Invalid credentials");
                }
            }
            else
            {
                return BadRequest();
            }
        }


    }
}

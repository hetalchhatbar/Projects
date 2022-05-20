using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NLevelCategories.Models;

namespace NLevelCategories.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class TblPcategoriesController : ControllerBase
    {
        private readonly NLevelCategoriesContext _context;

        public TblPcategoriesController(NLevelCategoriesContext context)
        {
            _context = context;
        }

        // GET: api/TblPcategories
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TblPcategories>>> GetTblPcategories()
        {
            return await _context.TblPcategories.ToListAsync();
        }

        // GET: api/TblPcategories/5
        [HttpGet("{id}")]
        public async Task<ActionResult<TblPcategories>> GetTblPcategories(long id)
        {
            var tblPcategories = await _context.TblPcategories.FindAsync(id);

            if (tblPcategories == null)
            {
                return NotFound();
            }

            return tblPcategories;
        }

        // PUT: api/TblPcategories/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutTblPcategories(long id, TblPcategories tblPcategories)
        {
            if (id != tblPcategories.CategoryId)
            {
                return BadRequest();
            }

            _context.Entry(tblPcategories).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TblPcategoriesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/TblPcategories
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<TblPcategories>> PostTblPcategories(TblPcategories tblPcategories)
        {
            _context.TblPcategories.Add(tblPcategories);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetTblPcategories", new { id = tblPcategories.CategoryId }, tblPcategories);
        }

        // DELETE: api/TblPcategories/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<TblPcategories>> DeleteTblPcategories(long id)
        {
            var tblPcategories = await _context.TblPcategories.FindAsync(id);
            if (tblPcategories == null)
            {
                return NotFound();
            }

            _context.TblPcategories.Remove(tblPcategories);
            await _context.SaveChangesAsync();

            return tblPcategories;
        }

        private bool TblPcategoriesExists(long id)
        {
            return _context.TblPcategories.Any(e => e.CategoryId == id);
        }
    }
}

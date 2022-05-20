create Database using NLevelCategories\Database\DBCreate.SQL file

1. Create Token using 
POST https://localhost:44309/api/Token
body :
 {
     "UserType":"admin"
 }


2. GET :https://localhost:44309/api/TblPcategories 
use Authorization token created using step 1

3. POST : https://localhost:44309/api/TblPcategories 
body :
 {        
        "pcategoryName": "Books",
        "c1categoryName": "Educatenal",
        "c2categoryName": "School",
        "c3categoryName": "Tech"
    }

4. DELETE : https://localhost:44309/api/TblPcategories/{id}  --(categoryId)



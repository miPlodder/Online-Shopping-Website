# Online Shopping Application

This is an Online Shopping Website created using JAVA web technologies like Spring Boot, JSP and mySQL.

## Concepts Covered

**Sessions**
<br>
To store information to be used across multiple pages when the user is logged in and invalidating session variables on logout.

**Directory-based Image storage**
<br>
mySQL or any other structural DB are not made for storing images (unstructural in nature), even though we can achieve it using BLOB, but that not the appropriate solution. So, the best option is to use Directory-based Image storage and uniquely identify them on the basis of the ProductId.

**Security**
<br>
Instead of storing human readable password on mySQL, SHA-256 function is applied on the password and that hash is stored in mySQL for Security reasons.

## Screencast 

[<img src="http://www.stickpng.com/assets/images/580b57fcd9996e24bc43c545.png" height="100px" width="100px">](https://www.youtube.com/watch?v=KKO8GrsP1i8)
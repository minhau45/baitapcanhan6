<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <!-- Logo -->
    <img src="images/images.png" alt="Murach Logo" class="logo">

    <div class="form-box">
        <h2>Survey</h2>
        <p>If you have a moment, we?d appreciate it if you would fill out this survey.</p>

        <form action="emailList" method="post">
            <input type="hidden" name="action" value="add">

            <!-- Th�ng tin c� nh�n -->
            <h3>Your information:</h3>
            <label for="firstName">First Name</label><br>
            <input type="text" id="firstName" name="firstName"><br><br>

            <label for="lastName">Last Name</label><br>
            <input type="text" id="lastName" name="lastName"><br><br>

            <label for="email">Email</label><br>
            <input type="email" id="email" name="email" required><br><br>

            <label for="dob">Date of Birth</label><br>
            <input type="date" id="dob" name="dob" lang="vi"><br><br>

            <!-- H?i c�ch bi?t ??n -->
            <h3>How did you hear about us?</h3>
            <div class="radio-group">
                <label><input type="radio" name="hear" value="Search engine" checked> Search engine</label>
                <label><input type="radio" name="hear" value="Word of mouth"> Word of mouth</label>
                <label><input type="radio" name="hear" value="Social Media"> Social Media</label>
                <label><input type="radio" name="hear" value="Other"> Other</label>
            </div>

            <!-- H?i v? th�ng b�o -->
            <h3>Would you like to receive announcements<br>
                about new CDs and special offers?</h3>
            <input type="checkbox" name="news" value="Yes"> YES, I?d like that.<br>
            <input type="checkbox" name="emailNews" value="Yes"> YES, please send me email announcements.<br><br>

            <!-- Ch?n c�ch li�n h? -->
            <label for="contact">Please contact me by:</label>
            <select id="contact" name="contact">
                <option>Email or postal mail</option>
                <option>Email only</option>
                <option>Postal mail only</option>
            </select><br><br>

            <input type="submit" value="Submit" class="btn">
        </form>
        
    </div>
<jsp:include page="footer.jsp"/>
</body>
</html>

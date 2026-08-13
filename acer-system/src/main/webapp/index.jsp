<!DOCTYPE html>
<html>
<head>
    <title>Acer Application</title>
</head>
<body>

    <h1>Acer Registration Application</h1>
    <p>Please fill out the form below.</p>
    <hr>

    <form>
        <!-- Personal Info -->
        <h3>1. Personal Information</h3>
        <p>Full Name: <input type="text" required></p>
        <p>Email Address: <input type="email" required></p>

        <!-- Product Info -->
        <h3>2. Acer Device Details</h3>
        <p>Device Type:
            <select>
                <option>Aspire Laptop</option>
                <option>Predator Gaming PC</option>
                <option>Acer Monitor</option>
                <option>Other Accessories</option>
            </select>
        </p>
        <p>Serial Number (S/N): <input type="text" placeholder="e.g. NXG87AA001..."></p>

        <!-- Application Reason -->
        <h3>3. Reason for Application</h3>
        <p>
            <input type="radio" name="reason" value="warranty" checked> Warranty Claim<br>
            <input type="radio" name="reason" value="support"> Technical Support<br>
            <input type="radio" name="reason" value="job"> Job/Internship Application
        </p>

        <p>Message / Comments:<br>
            <textarea rows="4" cols="40" placeholder="Type here..."></textarea>
        </p>

        <hr>
        <button type="submit">Submit Application</button>
    </form>

</body>
</html>

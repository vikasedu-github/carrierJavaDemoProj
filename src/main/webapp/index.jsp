<!DOCTYPE html>
<html xml:lang>
<head>
	<title>Simple Form</title>
	<style>
		form {
			width: 300px;
			margin: 0 auto;
			padding: 10px;
			background-color: #f1f1f1;
			border: 1px solid #ccc;
			border-radius: 5px;
		}
		
		label {
			display: block;
			margin-bottom: 10px;
		}
		
		input[type="text"],
		input[type="email"],
        input[type="date"],
		textarea {
			width: 100%;
			padding: 5px;
			border: 1px solid #ccc;
			border-radius: 5px;
			margin-bottom: 10px;
			box-sizing: border-box;
		}
		
		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			border: none;
			padding: 10px;
			border-radius: 5px;
			cursor: pointer;
			font-size: 16px;
		}
		
		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<form>
		<h3>This is Admission Form</h3>
		
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		
           <label for="birthday">Birthday:</label>
           <input type="date" id="birthday" name="birthday" required> 
          
		<label for="message">Message:</label>
		<textarea id="message" name="message" rows="5" required></textarea>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>

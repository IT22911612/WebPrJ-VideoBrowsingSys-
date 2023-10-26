<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Form</title>
  <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        min-height: 100vh;
    }

    h1 {
        text-align: center;
        font-family: 'Helvetica', sans-serif;
        color: #007bff;
        margin-bottom: 20px;
    }

    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        width: 300px;
        transition: transform 0.3s ease;
    }

    form:hover {
        transform: scale(1.02);
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #555;
    }

    input {
        width: 100%;
        margin-bottom: 15px;
        padding: 12px;
        box-sizing: border-box;
        border: 1px solid #ced4da;
        border-radius: 6px;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    input[type="submit"] {
        background-color: #28a745;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }

    input::placeholder {
        color: #999;
    }

    input:focus {
        outline: none;
        border: 1px solid #80bdff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    } 
  </style>
</head>
<body>

  <h1>Payment Form</h1>

  <form>
    <label for="cardNumber">Card Number</label>
    <input type="text" id="cardNumber" name="cardNumber" placeholder="1234 5678 9012 3456">

    <label for="expiryDate">Expiry Date</label>
    <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY">

    <label for="cvv">CVV</label>
    <input type="text" id="cvv" name="cvv" placeholder="123">

    <input type="submit" value="Pay Now">
  </form>

</body>
</html>

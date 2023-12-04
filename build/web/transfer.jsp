<%-- 
    Document   : transfer
    Created on : Nov 12, 2023, 11:21:40 AM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chuyển khoản</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Roboto", sans-serif;
      }
      html {
        background-color: #1abc9c;
      }
      .heading {
        background-color: #16a085;
        height: 40px;
      }
      .name-bank {
        margin-left: 40px;
        padding: 10px 0;
      }
      .color-bank {
        color: #16a085;
      }
      .contain-main {
        width: 100vw;
        height: auto;
        background-color: #1abc9c;
        display: flex;
        justify-content: center;
        padding-top: 100px;
      }
      .container {
        width: 40%;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      form {
        width: 100%;
      }
      .input-field {
        width: 90%;
        margin: 30px auto;
      }
      .input-field label {
        font-size: 20px;
        width: 35%;
        display: inline-block;
      }

      .input-field input {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 60%;
        font-size: 20px;
      }

      button {
        background-color: #16a085;
        color: #fff;
        width: 30%;
        margin: 100px auto 50px auto;
        display: block;
        padding: 10px 0px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        font-size: 20px;
        font-weight: 600;
        border: 2px solid black;
      }

      button:hover {
        opacity: 0.7;
      }
      .container h2 {
        text-align: center;
        font-size: 36px;
        padding: 20px 0;
      }
      .btn-cancel {
        width: 20%;
        text-align: center;
        margin: 10px auto;
      }
      .btn-cancel a {
        text-decoration: none;
        font-size: 20px;
        color: white;
        font-weight: 600;
        background-color: #16a085;
        border-radius: 10px;
        padding: 10px 0;
        width: 100%;
        display: block;
        border: 2px solid black;
      }
      .btn-cancel a:hover {
        background-color: #20d6b2;
      }
      body {
        background-color: white;
      }
    </style>
  </head>
  <body>
    <h2 class="name-bank"><span class="color-bank">HONGDANG</span>BANK</h2>
    <header class="heading"></header>

    <div class="contain-main">
      <div class="container">
        <h2>Chuyển khoản ATM</h2>
        <form action="transfer" method="post">
          <div class="input-field">
            <label for="account">Tài khoản người nhận:</label>
            <input type="text" id="account" name="receiveruser" required />
          </div>

          <div class="input-field">
            <label for="amount">Số tiền:</label>
            <input type="text" id="amount" name="amount" required />
          </div>

          <button type="submit">Tiếp tục</button>
          <div class="btn-cancel">
            <a onclick="history.back()" style="cursor: pointer;">Quay lại</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>


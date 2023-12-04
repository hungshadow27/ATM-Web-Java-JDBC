<%-- 
    Document   : checkbalance
    Created on : Nov 12, 2023, 2:54:10 PM
    Author     : May 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Xem số dư/In sao kê</title>
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
        background-color: #1abc9c;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .container {
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 40%;
        margin-top: 40px;
      }
      .container h2 {
        font-size: 36px;
        padding: 20px 0;
      }
      .container .balance {
        margin-bottom: 20px;
        margin-top: 40px;
      }
      .container .balance p {
        font-size: 20px;
      }
      .container .balance .amount {
        font-size: 36px;
        font-weight: 600;
        color: #1abc9c;
        margin-top: 20px;
      }
      .container .balance img {
        width: 40px;
      }
      .btn-cancel {
        width: 20%;
        text-align: center;
        margin: 20px auto;
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
        <h2>Xem số dư</h2>
        <div class="balance">
          <p>Số dư hiện tại:</p>
          <p class="amount">${balance}</p>
          <img
            src="./img/pi-network-pi-icons-pi-logo-design-illustration-trendy-and-modern-crypto-currency-pi-symbol-for-logos-icons-templates-websites-and-apps-free-vector.jpg"
            alt=""
          />
        </div>
        <div class="btn-cancel">
        <a href="home" style="cursor: pointer;">Quay lại</a>
    </div>
      </div>
    </div>
  </body>
</html>


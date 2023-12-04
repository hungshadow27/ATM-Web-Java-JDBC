<%-- 
    Document   : input-pincode
    Created on : Nov 11, 2023, 8:29:34 PM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Nhập mã pin</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Roboto", sans-serif;
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
      body {
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }

      .pin-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        text-align: center;
        margin-top: 70px;
      }

      .pin-container h2 {
        margin-bottom: 20px;
        font-size: 36px;
      }

      .pin-input {
        display: flex;
        justify-content: center;
      }

      .pin-input input {
        padding: 10px;
        border: 2px solid #ccc;
        border-radius: 5px;
        width: 100px;
        text-align: center;
        font-size: 24px;
        margin: 0 5px;
      }

      .submit-button {
        margin-top: 20px;
      }

      .submit-button button {
        padding: 10px 20px;
        background-color: #16a085;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 20px;
      }
      .submit-button a {
        text-decoration: none;
        color: #fff;
      }

      .submit-button button:hover {
        background-color: #20d8b3;
      }
      .img-pincode img {
        width: 400px;
        border: 2px solid #000;
      }
      .img-pincode {
        justify-content: center;
        padding-top: 40px;
        text-align: center;
      }
      .img-pincode h3 {
        display: inline;
        background-color: red;
      }
      .img-pincode h3,
      .img-pincode h5 {
        line-height: 1.6;
      }
      .img-pincode h5 {
        font-size: 16px;
      }
      .btn-cancel{
        width: 10%;
        text-align: center;
        margin: 10px auto;
      }
      .btn-cancel a{
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
      .btn-cancel a:hover{
        background-color: #20d6b2;
      }
    </style>
  </head>
  <body>
    <h2 class="name-bank"><span class="color-bank">HONGDANG</span>BANK</h2>
    <header class="heading"></header>
    <div class="pin-container">
      <h2>Nhập mã PIN ATM</h2>
      <form action="input-pincode?type=${type}" method="post">
       <div class="pin-input">
           <input type="password" maxlength="6" name="pincode" required=""/>
      </div>
      <div class="submit-button">
          <button type="submit">Xác nhận</button>
      </div>
          <div class="btn-cancel">
        <a onclick="history.back()" style="cursor: pointer;">Quay lại</a>
    </div>
      </form>
      
    </div>
    <div class="img-pincode">
      <h3>LƯU Ý:</h3>
      <h5>Che bàn phím khi nhập mã PIN</h5>
      <img src="img/screenshot_1699375448.png" />
    </div>
  </body>
</html>


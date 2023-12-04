<%-- 
    Document   : changepincode
    Created on : Nov 12, 2023, 3:15:59 PM
    Author     : May 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đổi mã PIN</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Roboto", sans-serif;
      }
      body {
        background-color: #f4f4f4;
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
        display: flex;
        align-items: center;
        justify-content: center;
      }
      form {
        display: flex;
        flex-direction: column;
      }

      label {
        margin: 20px 0;
        font-size: 20px;
      }

      input {
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 20px;
        width: 70%;
        margin: 0 auto;
        height: 40px;
      }

      button {
        background-color: #16a085;
        color: #fff;
        padding: 10px 0;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 20px;
        width: 30%;
        margin: 30px auto;
        border: 2px solid black;
      }

      button:hover {
        opacity: 0.7;
      }
      .container {
        width: 50%;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        margin-top: 50px;
      }
      .btn-cancel {
        width: 20%;
        text-align: center;
        margin: 0 auto;
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
    </style>
  </head>
  <body>
    <h2 class="name-bank"><span class="color-bank">HONGDANG</span>BANK</h2>
    <header class="heading"></header>
    <div class="contain-main">
      <div class="container">
        <h2>Đổi PIN ATM</h2>
        <form action="changepincode" method="post">
          <label for="current-pin">PIN hiện tại:</label>
          <input type="password" id="current-pin" name="current-pin" maxlength="6" required />

          <label for="new-pin">PIN mới:</label>
          <input type="password" id="new-pin" name="new-pin" maxlength="6" required />

          <label for="confirm-new-pin">Xác nhận PIN mới:</label>
          <input
            type="password"
            id="confirm-new-pin"
            name="confirm-new-pin"
            maxlength="6"
            required
          />
          <p
            style="
              font-size: 20px;
              color: #16a085;
              padding: 20px 0;
              font-weight: 600;
            "
          >
            ${noti}
          </p>
          <button type="submit">Đổi PIN</button>
        </form>
        <div class="btn-cancel">
          <a href="home">Quay lại</a>
        </div>
      </div>
    </div>
  </body>
</html>


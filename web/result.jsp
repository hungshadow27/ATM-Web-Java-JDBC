<%-- 
    Document   : result
    Created on : Nov 12, 2023, 9:23:59 AM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rút tiền</title>
    <style>
      * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-family: "Roboto", sans-serif;
      }
      body {
        background-color: #f2f2f2;
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
      .heading-content {
        text-align: center;
      }
      .heading-content h2 {
        padding: 15px 0;
        font-size: 32px;
        font-weight: 600;
      }
      .heading-content h3 {
        font-size: 22px;
        font-weight: 400;
      }
      table th {
        font-weight: 600;
        font-size: 24px;
      }
      table tr {
        text-align: left;
        line-height: 1.6;
        font-size: 20px;
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
    <div class="title-heading">
      <div class="heading-content">
          <h2 id="result-title">${resulttitle}</h2>
        <h3 id="result" style="color: #16a085">${result}</h3>
        <div
          id="result-withdraw-table"
          style="
            background-color: white;
            width: 50%;
            margin: 0 auto;
            padding: 10px 20px;
            border: 2px solid black;
            border-radius: 10px;
          "
        >
          <h2 style="font-size: 36px">Thông tin ${resulttitle}</h2>
          <table style="width: 100%">
            <tr>
              <th>Ngày giao dịch</th>
              <td>11/11/2023</td>
              <td>11:11</td>
            </tr>
            <tr>
              <th>Số tài khoản</th>
              <td>${user}</td>
            </tr>
            <tr>
              <th>Số tiền</th>
              <td>${amount}đ</td>
            </tr>
            <tr>
              <th>Số dư còn lại</th>
              <td>${balance}đ</td>
            </tr>
            <tr>
              <th>Cây ATM</th>
              <td>0909</td>
            </tr>
          </table>

          <p style="font-size: 20px; color: #16a085; margin: 30px 0">
            CẢM ƠN QUÝ KHÁCH ĐÃ SỬ DỤNG DỊCH VỤ CỦA CHÚNG TÔI
          </p>
          
        </div>
            <div
          id="result-transfer-table"
          style="
            background-color: white;
            width: 50%;
            margin: 0 auto;
            padding: 10px 20px;
            border: 2px solid black;
            border-radius: 10px;
          "
        >
          <h2 style="font-size: 36px">Thông tin ${resulttitle}</h2>
          <table style="width: 100%">
            <tr>
              <th>Ngày giao dịch</th>
              <td>11/11/2023</td>
              <td>11:11</td>
            </tr>
            <tr>
              <th>Số tài khoản</th>
              <td>${user}</td>
            </tr>
            <tr>
              <th>Số tài khoản người nhận</th>
              <td>${receiveruser}</td>
            </tr>
            <tr>
              <th>Họ và tên người nhận</th>
              <td>${receivername}</td>
            </tr>
            <tr>
              <th>Số tiền</th>
              <td>${amount}đ</td>
            </tr>
            <tr>
              <th>Số dư còn lại</th>
              <td>${balance}đ</td>
            </tr>
            <tr>
              <th>Cây ATM</th>
              <td>0909</td>
            </tr>
          </table>

          <p style="font-size: 20px; color: #16a085; margin: 30px 0">
            CẢM ƠN QUÝ KHÁCH ĐÃ SỬ DỤNG DỊCH VỤ CỦA CHÚNG TÔI
          </p>
          
        </div>
      </div>
    </div>
    <div class="btn-cancel">
        <a href="home" style="cursor: pointer;">Quay lại</a>
    </div>
    <script>
      const result = document.getElementById("result");
      const resulwithdrawttable = document.getElementById("result-withdraw-table");
      const resultransferttable = document.getElementById("result-transfer-table");
      const resulttitle = document.getElementById("result-title");
      let str = "thành công";
      let title = "Rút tiền";
      let title1 = "Chuyển tiền";
      let title2 = "Thông báo";
      if (!(result.innerText.indexOf(str) >= 0)) {
        resulwithdrawttable.style.display = "none";
        resultransferttable.style.display = "none";
      }
      if(resulttitle.innerText.indexOf(title) >= 0){
          resulwithdrawttable.style.display = "block";
          resultransferttable.style.display = "none";
      }
      if(resulttitle.innerText.indexOf(title1) >= 0){
          resulwithdrawttable.style.display = "none";
          resultransferttable.style.display = "block";
      }
      if(resulttitle.innerText.indexOf(title2) >= 0){
          resulwithdrawttable.style.display = "none";
      resultransferttable.style.display = "none";
      }
      
    </script>
  </body>
</html>


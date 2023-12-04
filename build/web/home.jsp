<%-- 
    Document   : home
    Created on : Nov 11, 2023, 1:55:32 PM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang chủ</title>
    <link rel="stylesheet" href="font/themify-icons/themify-icons.css" />
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
        position: relative;
      }
      .color-bank {
        color: #16a085;
      }
      .title-heading {
        text-align: center;
      }
      .title-heading h2 {
        font-size: 30px;
        letter-spacing: 1px;
        padding: 15px;
      }
      .title-heading .title-body {
        border: 3px solid #16a085;
        display: inline-block;
        padding: 10px 80px;
        border-radius: 10px;
        line-height: 1.6;
        position: relative;
      }
      .title-heading .title-body h4 {
        color: #16a085;
      }
      h3 {
        position: absolute;
        background-color: #16a085;
        color: white;
        padding: 7px 15px;
        border-radius: 10px;
        top: -25px;
        left: 15px;
      }
      .font-background {
        width: 8px;
        height: 10px;
        position: relative;
        top: -160px;
        left: 405px;
        border-top-left-radius: 200px;
      }
      .content-homepage {
        width: 50%;
        margin: 0 auto;
      }
      .content-homepage .menu-list {
        margin-top: 50px;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        list-style: none;
        width: 100%;
        align-items: center;
        justify-content: space-around;
      }
      .content-homepage .menu-list .menu-item {
        width: 40%;
        text-align: center;
        background-color: #16a085;
        margin-bottom: 40px;
        border-radius: 10px;
        padding: 10px 0px;
      }
      .content-homepage .menu-list .menu-item:hover {
        background-color: #26dfba;
      }
      .content-homepage a {
        text-decoration: none;
        font-size: 20px;
        color: white;
        font-weight: 600;
      }
      .content-homepage img {
        width: 50px;
        display: block;
        margin: 10px auto 10px auto;
      }
      .btn-leave {
        padding: 10px 50px;
        border-radius: 20px;
        font-size: 13px;
        position: absolute;
        top: 5px;
        right: 3px;
        cursor: pointer;
        font-weight: 600;
        background-color: #16a085;
      }
      .btn-leave a {
        color: white;
        text-decoration: none;
      }
    </style>
  </head>
  <body>
    <h2 class="name-bank"><span class="color-bank">HONGDANG</span>BANK</h2>
    <button class="btn-leave">
      <a href="logout">ĐĂNG XUẤT <i class="ti-shift-right"></i></a>
    </button>
    <header class="heading"></header>
    <div class="title-heading">
      <h2>Xin chào ${name} </h2>
      <div class="title-body">
        <h4>
          TỪ 14/11/2023,HONGDANGBANK MIỄN PHÍ<br />
          RÚT TIỀN NỘI MẠNG CHO KHÁCH HÀNG SỬ DỤNG GÓI TÀI KHOẢN
        </h4>
        <p>
          Quý khách vui lòng đến chi nhánh HONGDANGBANK gần nhất để đăng ký mở
          gói tài khoản<br />
          Chi tiết liên hệ 1800 456 789
        </p>
        <h3>THÔNG BÁO</h3>
      </div>
    </div>

    <div class="font-background"></div>
    <div class="content-homepage">
      <ul class="menu-list">
        <li class="menu-item">
          <img
            src="https://cdn-icons-png.flaticon.com/512/5024/5024665.png"
            alt=""
          /><a href="withdraw.jsp">Rút tiền</a>
        </li>
        <li class="menu-item">
          <img
            src="https://static.vecteezy.com/system/resources/previews/021/352/966/original/money-transfer-icon-simple-arrow-dollar-web-button-ui-ux-png.png"
            alt=""
          /><a href="transfer.jsp">Chuyển khoản</a>
        </li>
        <li class="menu-item">
          <img
            src="https://cdn.iconscout.com/icon/free/png-256/free-check-balance-1817188-1538056.png?f=webp"
            alt=""
          /><a href="checkbalance">Xem số dư</a>
        </li>
        <li class="menu-item">
          <img
            src="https://cdn-icons-png.flaticon.com/512/5363/5363258.png"
            alt=""
          /><a href="changepincode.jsp">Đổi mã PIN</a>
        </li>
      </ul>
    </div>
  </body>
</html>

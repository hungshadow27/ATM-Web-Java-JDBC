<%-- 
    Document   : withdraw
    Created on : Nov 11, 2023, 4:09:22 PM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rút tiền</title>
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
      .heading-content{
        text-align: center;
      }
      .heading-content h2{
        padding:15px 0;
        font-size: 32px;
        font-weight: 600;
      }
      .heading-content h3{
        font-size: 22px;
        font-weight: 400;
      }
      .contain{
        width: 50%;
        margin: 0 auto;
        display:flex;
        justify-content: center;
        align-items: center;
        height:500px;
      }
      .contain .content-left,
      .contain .content-right{
        width:calc(100% / 2);
        text-align: center;
        line-height: 100px;
      }
      .main-content li,
      .main-content a{
        list-style: none;
        text-decoration: none;
      }
      .main-content a{
        border:2px solid #000;
        padding:10px 50px;
        font-size: 25px;
        border-radius: 20px;
        color:white;
        font-weight: 600;
        background-color: #16a085;
      }
      .main-content a:hover {
        background-color: #21d6b2;
        opacity: 0.5;
      }
      .btn-cancel{
        width: 10%;
        text-align: center;
        margin: 0 auto;
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
            <h2>Xin vui lòng lựa chọn số tiền</h2>
            <h3>(Ấn Cancel để thoát)</h3>
        </div>
        <div class="contain">
        <div class="content-left">
            <ul class="main-content">
                <li><a href="withdraw?amount=10000000">10,000,000</a></li>
                <li><a href="withdraw?amount=5000000">5,000,000</a></li>
                <li><a href="withdraw?amount=4000000">4,000,000</a></li>
                <li><a href="withdraw?amount=3000000">3,000,000</a></li>
            </ul>
        </div>
        <div class="content-right">
            <ul class="main-content">
                <li><a href="withdraw?amount=2000000">2,000,000</a></li>
                <li><a href="withdraw?amount=1000000">1,000,000</a></li>
                <li><a href="withdraw?amount=500000">500,000</a></li>
                <li><a id="btn-input" style="cursor: pointer;">Số khác</a></li>
            </ul>
        </div>
    </div>
    <div class="btn-cancel">
        <a onclick="history.back()" style="cursor: pointer;">Quay lại</a>
    </div>
    <form id="form-input-another" action="withdraw" method="post" style="background-color: white; border: 2px solid black; width: 30%; text-align: center; border-radius: 10px; position: absolute; top:30%; left: 35%; display: none;">
      <h2 style=" font-size: 36px; padding: 20px 0;">Nhập số tiền khác</h2>
      <input type="text" placeholder="Nhập số tiền" name="amount" style="font-size: 20px; padding: 10px; border-radius: 5px; border: 2px solid grey;">
      <br>
      <button type="submit" style="border: 2px solid black; font-size: 20px; font-weight: 600; color: white; margin: 30px 0; cursor: pointer;; padding: 10px 50px; border-radius: 10px; background-color: #16a085;">Rút tiền</button>
    </form>
    <script>
      const btnInput = document.getElementById('btn-input');
      const formInputAnother = document.getElementById('form-input-another');

      btnInput.addEventListener('click', ()=>{
        if(formInputAnother.style.display == "block"){
          formInputAnother.style.display = "none";
        }else{
          formInputAnother.style.display = "block";
        }
      })
    </script>
</body>
</html>

<%-- 
    Document   : login
    Created on : Nov 11, 2023, 12:42:53 PM
    Author     : Hung Ngu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng nhập</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap"
      rel="stylesheet"
    />
    <style>
      * {
        font-family: "Roboto", sans-serif;
        box-sizing: border-box;
        margin: 0;
        padding: 0;
      }
      body {
        background-color: #1abc9c;
        display: flex;
        justify-content: center;
        margin-top: 100px;
      }

      .login-container {
        width: 40%;
        background-color: white;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      }

      .login-container h2 {
        text-align: center;
        font-size: 36px;
        padding: 20px 40px;
        background-color: #16a085;
        color: white;
        margin-bottom: 70px;
      }

      .login-form {
        width: 70%;
        margin: 0 auto;
      }

      .form-group {
        margin-bottom: 40px;
        width: 100%;
        background-color: #16a085;
        display: flex;
        align-items: center;
        border-radius: 5px;
      }
      .form-group svg {
        width: 50px;
        height: 50px;
        color: white;
        padding: 10px;
      }
      .form-group input {
        width: 100%;
        height: 50px;
        padding: 10px;
        border: 1px solid #ccc;
        font-size: 20px;
        border-radius: 0px 5px 5px 0px;
      }

      .login-button {
        display: block;
        margin: 80px auto;
        font-size: 20px;
        padding: 10px 100px;
        background-color: #16a085;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        color: #fff;
      }

      .login-button:hover {
        background-color: #06d6ac;
      }
      .forgot-pin {
        text-align: center;
        margin: 10px 0px;
      }

      .forgot-pin a {
        color: #1abc9c;
        text-decoration: none;
      }

      .forgot-pin a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <div class="login-container" id="signin">
      <h2>Đăng nhập</h2>
      <form class="login-form" action="login" method="post">
        
        <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-person-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"
            />
          </svg>
          <input
            type="text"
            id="account-number"
            name="user"
            placeholder="Tài khoản"
            required
          />
        </div>
        <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-key-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"
            />
          </svg>
          <input
            type="password"
            id="pin"
            name="pass"
            placeholder="Mật khẩu"
            class="pincode"
          />
        </div>
          <p style="color: green; text-align: center; font-size: 20px">${mess}</p>  
        <button class="login-button" type="submit">Đăng nhập</button>
      </form>
      <div class="forgot-pin">
        <a onclick="changeForm()" href="#"
          >Bạn chưa có tài khoản? Đăng kí ngay!</a
        >
      </div>
    </div>
    <div class="login-container" id="signup" style="display: none">
      <h2>Đăng ký</h2>
      <form class="login-form" action="signup" method="post">
          <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-person-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"
            />
          </svg>
          <input
            type="text"
            id="account-number"
            name="name"
            placeholder="Họ và tên"
            required
          />
        </div>
        <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-person-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"
            />
          </svg>
          <input
            type="text"
            id="account-number"
            name="user"
            placeholder="Tài khoản"
            required
          />
        </div>
        <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-key-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"
            />
          </svg>
          <input
            type="password"
            id="pin1"
            name="pass"
            placeholder="Mật khẩu"
            class="pincode"
          />
        </div>
        <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-key-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"
            />
          </svg>
          <input
            type="password"
            id="pin2"
            name="repass"
            placeholder="Nhập lại mật khẩu"
            class="pincode"
          />
        </div>
          <div class="form-group">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-person-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"
            />
          </svg>
          <input
            type="text"
            id="account-number"
            name="pincode"
            placeholder="Mã pin giao dịch"
            required
            maxlength="6"
          />
        </div>
        <p style="color: green; text-align: center; font-size: 20px">${mess}</p>    
        <button class="login-button" type="submit">Đăng ký</button>
      </form>
      <div class="forgot-pin">
        <a onclick="changeForm()" href="#"
          >Bạn đã có tài khoản? Đăng nhập ngay!</a
        >
      </div>
    </div>
    <script>
      const signinForm = document.getElementById("signin");
      const signupFrom = document.getElementById("signup");

      const changeForm = () => {
        if (signinForm.style.display != "none") {
          signinForm.style.display = "none";
          signupFrom.style.display = "block";
        } else {
          signinForm.style.display = "block";
          signupFrom.style.display = "none";
        }
      };
    </script>
  </body>
</html>



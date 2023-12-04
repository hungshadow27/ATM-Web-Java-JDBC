package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <title>Đăng nhập</title>\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\" />\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin />\n");
      out.write("    <link\n");
      out.write("      href=\"https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700&display=swap\"\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("    />\n");
      out.write("    <style>\n");
      out.write("      * {\n");
      out.write("        font-family: \"Roboto\", sans-serif;\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        margin: 0;\n");
      out.write("        padding: 0;\n");
      out.write("      }\n");
      out.write("      body {\n");
      out.write("        background-color: #1abc9c;\n");
      out.write("        display: flex;\n");
      out.write("        justify-content: center;\n");
      out.write("        margin-top: 100px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .login-container {\n");
      out.write("        width: 40%;\n");
      out.write("        background-color: white;\n");
      out.write("        border-radius: 5px;\n");
      out.write("        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .login-container h2 {\n");
      out.write("        text-align: center;\n");
      out.write("        font-size: 36px;\n");
      out.write("        padding: 20px 40px;\n");
      out.write("        background-color: #16a085;\n");
      out.write("        color: white;\n");
      out.write("        margin-bottom: 70px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .login-form {\n");
      out.write("        width: 70%;\n");
      out.write("        margin: 0 auto;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .form-group {\n");
      out.write("        margin-bottom: 40px;\n");
      out.write("        width: 100%;\n");
      out.write("        background-color: #16a085;\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        border-radius: 5px;\n");
      out.write("      }\n");
      out.write("      .form-group svg {\n");
      out.write("        width: 50px;\n");
      out.write("        height: 50px;\n");
      out.write("        color: white;\n");
      out.write("        padding: 10px;\n");
      out.write("      }\n");
      out.write("      .form-group input {\n");
      out.write("        width: 100%;\n");
      out.write("        height: 50px;\n");
      out.write("        padding: 10px;\n");
      out.write("        border: 1px solid #ccc;\n");
      out.write("        font-size: 20px;\n");
      out.write("        border-radius: 0px 5px 5px 0px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .login-button {\n");
      out.write("        display: block;\n");
      out.write("        margin: 80px auto;\n");
      out.write("        font-size: 20px;\n");
      out.write("        padding: 10px 100px;\n");
      out.write("        background-color: #16a085;\n");
      out.write("        border: none;\n");
      out.write("        border-radius: 5px;\n");
      out.write("        cursor: pointer;\n");
      out.write("        text-decoration: none;\n");
      out.write("        color: #fff;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .login-button:hover {\n");
      out.write("        background-color: #06d6ac;\n");
      out.write("      }\n");
      out.write("      .forgot-pin {\n");
      out.write("        text-align: center;\n");
      out.write("        margin: 10px 0px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .forgot-pin a {\n");
      out.write("        color: #1abc9c;\n");
      out.write("        text-decoration: none;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .forgot-pin a:hover {\n");
      out.write("        text-decoration: underline;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"login-container\" id=\"signin\">\n");
      out.write("      <h2>Đăng nhập</h2>\n");
      out.write("      <form class=\"login-form\" action=\"login\" method=\"post\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-person-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"text\"\n");
      out.write("            id=\"account-number\"\n");
      out.write("            name=\"user\"\n");
      out.write("            placeholder=\"Tài khoản\"\n");
      out.write("            required\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-key-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"password\"\n");
      out.write("            id=\"pin\"\n");
      out.write("            name=\"pass\"\n");
      out.write("            placeholder=\"Mật khẩu\"\n");
      out.write("            class=\"pincode\"\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <button class=\"login-button\" type=\"submit\">Đăng nhập</button>\n");
      out.write("      </form>\n");
      out.write("      <div class=\"forgot-pin\">\n");
      out.write("        <a onclick=\"changeForm()\" href=\"#\"\n");
      out.write("          >Bạn chưa có tài khoản? Đăng kí ngay!</a\n");
      out.write("        >\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"login-container\" id=\"signup\" style=\"display: none\">\n");
      out.write("      <h2>Đăng ký</h2>\n");
      out.write("      <form class=\"login-form\" action=\"signup\" method=\"post\">\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-person-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"text\"\n");
      out.write("            id=\"account-number\"\n");
      out.write("            name=\"name\"\n");
      out.write("            placeholder=\"Họ và tên\"\n");
      out.write("            required\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-person-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"text\"\n");
      out.write("            id=\"account-number\"\n");
      out.write("            name=\"user\"\n");
      out.write("            placeholder=\"Tài khoản\"\n");
      out.write("            required\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-key-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"password\"\n");
      out.write("            id=\"pin1\"\n");
      out.write("            name=\"pass\"\n");
      out.write("            placeholder=\"Mật khẩu\"\n");
      out.write("            class=\"pincode\"\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-key-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"password\"\n");
      out.write("            id=\"pin2\"\n");
      out.write("            name=\"repass\"\n");
      out.write("            placeholder=\"Nhập lại mật khẩu\"\n");
      out.write("            class=\"pincode\"\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("          <svg\n");
      out.write("            xmlns=\"http://www.w3.org/2000/svg\"\n");
      out.write("            width=\"16\"\n");
      out.write("            height=\"16\"\n");
      out.write("            fill=\"currentColor\"\n");
      out.write("            class=\"bi bi-person-fill\"\n");
      out.write("            viewBox=\"0 0 16 16\"\n");
      out.write("          >\n");
      out.write("            <path\n");
      out.write("              d=\"M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z\"\n");
      out.write("            />\n");
      out.write("          </svg>\n");
      out.write("          <input\n");
      out.write("            type=\"text\"\n");
      out.write("            id=\"account-number\"\n");
      out.write("            name=\"pincode\"\n");
      out.write("            placeholder=\"Mã pin giao dịch\"\n");
      out.write("            required\n");
      out.write("            maxlength=\"6\"\n");
      out.write("          />\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <button class=\"login-button\" type=\"submit\">Đăng ký</button>\n");
      out.write("      </form>\n");
      out.write("      <div class=\"forgot-pin\">\n");
      out.write("        <a onclick=\"changeForm()\" href=\"#\"\n");
      out.write("          >Bạn đã có tài khoản? Đăng nhập ngay!</a\n");
      out.write("        >\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <script>\n");
      out.write("      const signinForm = document.getElementById(\"signin\");\n");
      out.write("      const signupFrom = document.getElementById(\"signup\");\n");
      out.write("\n");
      out.write("      const changeForm = () => {\n");
      out.write("        if (signinForm.style.display != \"none\") {\n");
      out.write("          signinForm.style.display = \"none\";\n");
      out.write("          signupFrom.style.display = \"block\";\n");
      out.write("        } else {\n");
      out.write("          signinForm.style.display = \"block\";\n");
      out.write("          signupFrom.style.display = \"none\";\n");
      out.write("        }\n");
      out.write("      };\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

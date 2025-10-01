<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>MyApp - Welcome Page</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #1f1c2c, #928DAB);
        color: #fff;
        margin: 0;
        padding: 0;
      }
      header {
        background-color: rgba(0,0,0,0.6);
        padding: 20px;
        text-align: center;
        box-shadow: 0 2px 10px rgba(0,0,0,0.5);
      }
      h1 {
        margin: 0;
        font-size: 2.8em;
        color: #FFD700;
      }
      h2 {
        margin: 10px 0 0;
        font-size: 1.5em;
        color: #87CEFA;
      }
      .content {
        padding: 40px;
        text-align: center;
      }
      .info-box {
        background: rgba(255,255,255,0.1);
        border-radius: 12px;
        padding: 20px;
        margin: 20px auto;
        max-width: 600px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.4);
      }
      .info-box h3 {
        margin-top: 0;
        color: #32CD32;
      }
      footer {
        text-align: center;
        padding: 15px;
        background: rgba(0,0,0,0.7);
        font-size: 0.9em;
        color: #aaa;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>🚀 Welcome to MyApp!</h1>
      <h2>Created by <span style="color:#FF69B4;">Shiva</span></h2>
    </header>

    <div class="content">
      <div class="info-box">
        <h3>✨ Project Info</h3>
        <p>This application is deployed automatically via <b>Jenkins Shared Library Pipeline</b>.</p>
        <p>It demonstrates CI/CD with <span style="color:#FFD700;">Maven</span>, 
           <span style="color:#00CED1;">Jenkins</span>, and <span style="color:#FF6347;">Tomcat</span>.</p>
      </div>

      <div class="info-box">
        <h3>👤 Developer</h3>
        <p>Name: <b>Shiva</b></p>
        <p>Pipeline: <b>Shared_Lib@main</b></p>
        <p>Version: <b>1.0-SNAPSHOT</b></p>
      </div>
    </div>

    <footer>
      &copy; <%= new java.util.Date() %> MyApp | Built and Deployed with ❤️ by Jenkins Pipeline
    </footer>
  </body>
</html>

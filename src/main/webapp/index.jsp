<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>MyApp - CI/CD Deployment</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #232526, #414345);
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
        max-width: 650px;
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
      b, span {
        color: #FFD700;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>🚀 Welcome to MyApp CI/CD Journey!</h1>
      <h2>Developed & Deployed with ❤️ by <span style="color:#FF69B4;">Shiva</span></h2>
    </header>

    <div class="content">
      <div class="info-box">
        <h3>✨ Project Overview</h3>
        <p>This is a <b>new automated project</b> showcasing a complete CI/CD lifecycle — from <b>cloning the source code</b> 
           to <b>building a .war file</b> using <span style="color:#FFD700;">Maven</span>.</p>
        <p>Once built, the code undergoes a <b>SonarQube quality scan</b> ensuring clean, reliable, and secure code.</p>
        <p>After passing the quality gate ✅, the application is <b>automatically deployed to Apache Tomcat</b>.</p>
        <p>This setup highlights the power of <span style="color:#00CED1;">Jenkins Shared Library Pipelines</span> — 
           streamlining integration, quality, and deployment in one seamless flow.</p>
      </div>

      <div class="info-box">
        <h3>👨‍💻 Developer Info</h3>
        <p>Created and Automated by: <b>Shiva</b></p>
        <p>Pipeline Branch: <b>Shared_Lib@main</b></p>
        <p>Version: <b>1.0-SNAPSHOT</b></p>
        <p style="color:#ADFF2F;">"Code → Build → Scan → Deploy — All in one smooth Jenkins flow!"</p>
      </div>
    </div>

    <footer>
      &copy; <%= new java.util.Date() %> MyApp | Built, Tested & Delivered by Shiva via Jenkins Pipeline 🚀
    </footer>
  </body>
</html>

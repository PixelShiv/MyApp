<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>MyApp - Automated CI/CD Deployment</title>
    <style>
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        color: #fff;
        margin: 0;
        padding: 0;
      }

      header {
        background-color: rgba(0,0,0,0.7);
        padding: 25px;
        text-align: center;
        box-shadow: 0 3px 12px rgba(0,0,0,0.5);
      }

      h1 {
        margin: 0;
        font-size: 2.8em;
        color: #FFD700;
        letter-spacing: 1px;
      }

      h2 {
        margin: 10px 0 0;
        font-size: 1.4em;
        color: #87CEFA;
      }

      .container {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        padding: 40px;
        gap: 20px;
      }

      .info-box {
        background: rgba(255,255,255,0.1);
        border-radius: 14px;
        padding: 25px;
        flex: 1 1 300px;
        max-width: 400px;
        box-shadow: 0 2px 15px rgba(0,0,0,0.5);
        line-height: 1.6;
        text-align: center;
      }

      .info-box h3 {
        margin-top: 0;
        color: #32CD32;
        font-size: 1.4em;
      }

      footer {
        text-align: center;
        padding: 18px;
        background: rgba(0,0,0,0.8);
        font-size: 0.9em;
        color: #ccc;
      }

      .highlight {
        color: #FFD700;
        font-weight: bold;
      }

      .keyword {
        color: #00CED1;
        font-weight: bold;
      }

      @media (max-width: 900px) {
        .container {
          flex-direction: column;
          align-items: center;
        }
      }
    </style>
  </head>
  <body>
    <header>
      <h1>🚀 Welcome to My Automated CI/CD Project!</h1>
      <h2>Crafted by <span style="color:#FF69B4;">Shiva</span></h2>
    </header>

    <div class="container">
      <div class="info-box">
        <h3>✨ Project Overview</h3>
        <p>This project demonstrates a <span class="highlight">fully automated CI/CD pipeline</span> built from scratch by Shiva.</p>
        <p>The process begins from a <span class="keyword">GitHub repository clone</span>, proceeds to <span class="keyword">Maven WAR build</span>, runs a <span class="keyword">SonarQube Quality Scan</span>, and finally <span class="keyword">deploys to Apache Tomcat</span>.</p>
        <p>All stages are triggered automatically through a <span class="keyword">GitHub Webhook</span> ensuring continuous delivery with every code commit.</p>
      </div>

      <div class="info-box">
        <h3>🔧 Tools & Flow</h3>
        <p>➡️ <b>GitHub</b> – Source code management</p>
        <p>➡️ <b>Maven</b> – Builds and packages the <i>.war</i> file</p>
        <p>➡️ <b>SonarQube</b> – Code quality and security scan</p>
        <p>➡️ <b>Jenkins</b> – Automates CI/CD pipeline (no shared library)</p>
        <p>➡️ <b>Tomcat</b> – Deployment server for the application</p>
        <p>➡️ <b>Webhook</b> – Triggers pipeline automatically on code push</p>
        <p>➡️ <b>Automation Goal</b> – One-click deployment, zero manual steps</p>
      </div>

      <div class="info-box">
        <h3>👨‍💻 Developer Info</h3>
        <p><b>Developer:</b> Shiva</p>
        <p><b>Pipeline Type:</b> Custom Jenkinsfile (No Shared Library)</p>
        <p><b>Version:</b> 2.0-AUTO</p>
        <p><b>Environment:</b> CI → QA → Prod</p>
        <p><b>Focus:</b> Code Quality, Automation, and Speed</p>
        <p><i>“One commit, one build, one deploy — that’s real automation.”</i></p>
      </div>
    </div>

    <footer>
      &copy; <%= new java.util.Date() %> Automated Deployment by Shiva | Built & Delivered with ❤️ using Jenkins, SonarQube & Tomcat
    </footer>
  </body>
</html>

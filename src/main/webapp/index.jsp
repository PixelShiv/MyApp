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
      .content {
        padding: 40px;
        text-align: center;
      }
      .info-box {
        background: rgba(255,255,255,0.1);
        border-radius: 14px;
        padding: 25px;
        margin: 25px auto;
        max-width: 650px;
        box-shadow: 0 2px 15px rgba(0,0,0,0.5);
        line-height: 1.6;
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
    </style>
  </head>
  <body>
    <header>
      <h1>🚀 Welcome to My Automated CI/CD Project!</h1>
      <h2>Crafted with ❤️ by <span style="color:#FF69B4;">Shiva</span></h2>
    </header>

    <div class="content">
      <div class="info-box">
        <h3>✨ Project Overview</h3>
        <p>This project represents a <span class="highlight">complete end-to-end automation pipeline</span> built from scratch.</p>
        <p>It starts from <span class="keyword">GitHub clone</span> → builds a <span class="keyword">Maven WAR</span> → runs <span class="keyword">SonarQube Quality Scan</span> → and finally <span class="keyword">deploys automatically to Apache Tomcat</span>.</p>
        <p>All steps are triggered via a <span class="keyword">GitHub Webhook</span>, ensuring the pipeline runs <b>instantly on every code change</b>.</p>
        <p>Each build and deployment happens in a <span class="highlight">single automated push</span> — no manual steps, no interruptions!</p>
      </div>

      <div class="info-box">
        <h3>🔧 Tools & Flow</h3>
        <p>➡️ Code Repository: <b>GitHub</b></p>
        <p>➡️ Build Tool: <b>Maven</b> (<i>Generates .war package</i>)</p>
        <p>➡️ Code Quality: <b>SonarQube</b> (<i>Ensures clean, maintainable code</i>)</p>
        <p>➡️ CI/CD Orchestrator: <b>Jenkins</b> (No shared library used)</p>
        <p>➡️ Deployment Server: <b>Apache Tomcat</b></p>
        <p>➡️ Trigger Mechanism: <b>GitHub Webhook</b> for automatic execution</p>
      </div>

      <div class="info-box">
        <h3>👨‍💻 Developer Info</h3>
        <p>Developer: <b>Shiva</b></p>
        <p>Pipeline Type: <b>Custom Jenkinsfile (No Shared Library)</b></p>
        <p>Version: <b>2.0-AUTO</b></p>
        <p>Goal: <i>To achieve seamless CI/CD with zero manual deployment</i></p>
      </div>
    </div>

    <footer>
      &copy; <%= new java.util.Date() %> Automated Deployment by Shiva | Built & Delivered with ❤️ via Jenkins + SonarQube + Tomcat
    </footer>
  </body>
</html>

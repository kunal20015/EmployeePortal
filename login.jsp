<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Login</title>
</head>

<body style="
  margin:0;
  min-height:100vh;
  font-family:Poppins,sans-serif;
  background:linear-gradient(120deg,#0d0d0f,#1a1a1d,#0d0d0f);
  background-size:300% 300%;
  animation:pageGradient 18s ease infinite;
  color:#fff;
  display:flex;justify-content:center;align-items:center;
  padding-top:80px;
">

<style>
@keyframes pageGradient {
  0%{background-position:0% 50%}
  50%{background-position:100% 50%}
  100%{background-position:0% 50%}
}
</style>

<!-- NAVBAR -->
<div style="
  position:fixed;top:0;left:0;width:96%;
  display:flex;align-items:center;justify-content:space-between;
  padding:18px 36px;z-index:50;
  background:linear-gradient(90deg,rgba(255,255,255,0.02),rgba(255,255,255,0.01));
  backdrop-filter:blur(8px);
  border-bottom:1px solid rgba(255,255,255,0.03);
  box-shadow:0 6px 30px rgba(2,6,23,0.6);
">
  <div style="display:flex;align-items:center;gap:12px;">
    <div style="
      width:42px;height:42px;border-radius:10px;
      background:linear-gradient(135deg,#6a11cb,#ff416c);
      display:flex;align-items:center;justify-content:center;
      font-weight:800;color:#fff;">
      EP
    </div>
    <h2 style="margin:0;font-size:18px;letter-spacing:0.6px;">Employee Portal</h2>
  </div>

  <div style="display:flex;gap:12px;">
    <a href="index.jsp" style="text-decoration:none;color:rgba(255,255,255,0.8);padding:10px 16px;border-radius:10px;">Home</a>
    <a href="RegisterServlet" style="text-decoration:none;color:rgba(255,255,255,0.8);padding:10px 16px;border-radius:10px;">Register</a>
  </div>
</div>

<!-- LOGIN BOX -->
<div style="
  width:420px;max-width:90%;
  background:rgba(255,255,255,0.08);
  backdrop-filter:blur(14px);
  border-radius:18px;
  padding:34px;
  border:1px solid rgba(255,255,255,0.12);
  box-shadow:0 20px 80px rgba(0,0,0,0.5);
  text-align:center;
">

  <h1 style="margin:0 0 18px;font-size:26px;color:#fff;">Employee Login</h1>

  <!-- You can place login error JSP message here -->
  <div style="display:flex;justify-content:center;margin-bottom:14px;">
    <div style="
      display:inline-block;
      padding:10px 16px;
      border-radius:10px;
      background:rgba(255,255,255,0.06);
      color:#ff4d4d;
      font-weight:700;
      font-size:14px;
      border:1px solid rgba(255,255,255,0.12);
      box-shadow:0 6px 18px rgba(0,0,0,0.25);
      min-width:160px;
      text-align:center;
      white-space:nowrap;
    ">
      ${msg}
    </div>
  </div>

  <form action="LoginServlet" method="post" style="display:flex;flex-direction:column;gap:16px;">

    <input type="email" name="email" placeholder="Enter Email" required
      style="padding:14px;border-radius:10px;border:none;font-size:15px;">

    <input type="password" name="password" placeholder="Enter Password" required
      style="padding:14px;border-radius:10px;border:none;font-size:15px;">

    <button type="submit"
      style="
        border:0;padding:15px;border-radius:14px;font-weight:700;
        cursor:pointer;font-size:16px;color:#fff;
        background:linear-gradient(135deg,#4facfe,#00f2fe);
        background-size:200% auto;transition:0.3s;
        box-shadow:0 10px 30px rgba(79,172,254,0.35);
      "
      onmouseover="this.style.background='linear-gradient(135deg,#ff9a9e,#fad0c4)'"
      onmouseout="this.style.background='linear-gradient(135deg,#4facfe,#00f2fe)'"
    >
      Login
    </button>

  </form>
</div>

</body>
</html>

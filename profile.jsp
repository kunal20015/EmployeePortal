<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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

/* small polish for the profile card while keeping your structure/theme */
.profile-card {
  width:480px;
  max-width:90%;
  background:rgba(255,255,255,0.07);
  backdrop-filter:blur(14px);
  border-radius:20px;
  padding:36px 40px;
  border:1px solid rgba(255,255,255,0.12);
  box-shadow:0 30px 100px rgba(0,0,0,0.55);
  text-align:center;
}

/* welcome heading */
.welcome-title {
  margin:0 0 12px 0;
  font-size:30px;
  font-weight:800;
  color:#fff;
  display:flex;
  align-items:center;
  justify-content:center;
  gap:12px;
}

/* subtitle */
.welcome-sub {
  margin:0;
  font-size:15px;
  color:rgba(255,255,255,0.85);
  opacity:0.95;
}

/* badge */
.info-badge {
  display:inline-block;
  margin-top:16px;
  padding:8px 14px;
  border-radius:999px;
  background:linear-gradient(90deg, rgba(79,172,254,0.08), rgba(0,242,254,0.04));
  color:#dff6ff;
  font-weight:700;
  border:1px solid rgba(79,172,254,0.08);
  box-shadow:0 8px 24px rgba(79,172,254,0.06);
  font-size:13px;
}

/* subtle emoji flourish */
.emoji {
  font-size:28px;
  line-height:1;
}

/* responsive tweak */
@media (max-width:520px){
  .profile-card { padding:28px 20px; }
  .welcome-title { font-size:24px; gap:8px; }
  .emoji { font-size:24px; }
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
  </div>
</div>

<!-- PROFILE CARD (same theme, enhanced visuals + emoji) -->
<div class="profile-card" role="main" aria-labelledby="welcome-heading">
  <h1 id="welcome-heading" class="welcome-title">
    <span class="emoji">👋</span>
    <span>Welcome <span style="color:#cfefff;">${email}</span></span>
    <span class="emoji">✨</span>
  </h1>


  <div class="info-badge">✅ Account active • last login: <strong>Today</strong></div>
</div>

</body>
</html>

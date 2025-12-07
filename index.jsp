<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Employee Portal</title>

<style>
    /* Vibrant Nike-style color system with smooth gradient animations */
    :root{
      --bg-1: #05060a;           /* near-black */
      --accent-a: #ff416c;      /* hot pink */
      --accent-b: #ff8c42;      /* orange */
      --accent-c: #32e0c4;      /* teal */
      --accent-d: #6a11cb;      /* deep purple */
      --glass: rgba(255,255,255,0.06);
      --muted: rgba(255,255,255,0.8);
    }

    /* animated page gradient (slow moving) */
    @keyframes pageGradient {
      0%{background-position:0% 50%}
      50%{background-position:100% 50%}
      100%{background-position:0% 50%}
    }

    body{
      margin:0;
      min-height:100vh;
      font-family:"Poppins",sans-serif;
      background:linear-gradient(120deg,#0d0d0f,#1a1a1d,#0d0d0f);
      background-size:300% 300%;
      animation:pageGradient 18s ease infinite;
      color:#fff;
      display:flex;justify-content:center;align-items:center;
      padding-top:80px;
    }

    /* Navbar */
    .navbar{
      position:fixed;top:0;left:0;width:96%;display:flex;align-items:center;justify-content:space-between;padding:18px 36px;z-index:50;
      background: linear-gradient(90deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
      backdrop-filter: blur(8px);
      border-bottom:1px solid rgba(255,255,255,0.03);
      box-shadow: 0 6px 30px rgba(2,6,23,0.6);
    }
    .brand{display:flex;align-items:center;gap:12px}
    .brand .logo{width:42px;height:42px;border-radius:10px;background:linear-gradient(135deg,var(--accent-d),var(--accent-a));display:flex;align-items:center;justify-content:center;font-weight:800;color:#fff}
    .brand h2{margin:0;font-size:18px;letter-spacing:0.6px}

    .nav-buttons{display:flex;gap:12px}
    .nav-buttons a{
      position:relative;display:inline-block;padding:10px 16px;border-radius:10px;text-decoration:none;color:var(--muted);font-weight:600;transition:all 220ms cubic-bezier(.2,.9,.25,1)
    }
    .nav-buttons a::after{
      content:"";position:absolute;left:10%;right:10%;bottom:-8px;height:3px;border-radius:4px;opacity:0;transform:translateY(6px);background:linear-gradient(90deg,var(--accent-c),var(--accent-a));transition:all 260ms
    }
    .nav-buttons a:hover{transform:translateY(-4px);color:#fff}
    .nav-buttons a:hover::after{opacity:1;transform:translateY(0)}

    /* Hero/Form container */
    .container{
      width:460px;max-width:90%;
      background:rgba(255,255,255,0.08);
      backdrop-filter:blur(14px);
      border-radius:18px;
      padding:34px;
      border:1px solid rgba(255,255,255,0.12);
      box-shadow:0 20px 80px rgba(0,0,0,0.5);
      text-align:center;
    }

    /* animated glowing accent stripe */
    .container::before{
      content:"";position:absolute;inset:0;pointer-events:none;background:linear-gradient(90deg, rgba(255,65,108,0.06), rgba(255,140,66,0.04), rgba(50,224,196,0.03));mix-blend-mode:screen;opacity:0.9;filter:blur(24px);
      transform:translateZ(0);
    }

    h1{margin:0 0 18px 0;font-size:26px;color:#fff}
    p.lead{margin:0 0 18px 0;color:rgba(255,255,255,0.65)}

    form{display:flex;flex-direction:column;gap:12px}

    /* vibrant gradient button with animated background-position */
    .btn{
      border:0;
      padding:15px;
      border-radius:14px;
      font-weight:700;
      cursor:pointer;
      font-size:16px;
      background:linear-gradient(135deg,#4facfe,#00f2fe); /* new vibrant blue gradient */
      background-size:200% auto;
      color:#fff;
      transition:0.3s ease;
      box-shadow:0 10px 30px rgba(79,172,254,0.35);
    }
    .btn:hover{
      transform:translateY(-4px);
      background:linear-gradient(135deg,#ff9a9e,#fad0c4); /* new soft pink hover gradient */
      background-position:center;
      box-shadow:0 16px 40px rgba(255,154,158,0.45);
    }
    .btn:hover{transform:translateY(-6px);box-shadow:0 22px 60px rgba(106,17,203,0.12);filter:brightness(1.05);background-position:100% 0}
    .btn:active{transform:translateY(-2px)}

    /* subtle focus style for keyboard users */
    .btn:focus{outline:3px solid rgba(50,224,196,0.12);outline-offset:2px}

    /* small icon-like label on buttons */
    .btn small{display:block;font-size:11px;opacity:0.85;margin-top:6px;font-weight:600}

    /* responsive tweaks */
    @media (max-width:520px){
      .navbar{padding:12px 18px}
      .container{padding:22px}
      h1{font-size:22px}
    }
  </style>
</head>

<body>
  <div class="navbar">
    <div class="brand"><div class="logo">EP</div><h2>Employee Portal</h2></div>
    <div class="nav-buttons">
      <a href="loginemp">Login</a>
      <a href="RegisterServlet">Registration</a>
    </div>
  </div>

  <div class="container">
    <h1>Welcome to Employee Portal</h1>

    <div style="display:flex;flex-direction:column;gap:12px;">

  <a href="loginemp" class="btn" 
   style="text-align:center;display:block;text-decoration:none;">
    Employee Login <small>Sign in to continue</small>
</a>

<a href="RegisterServlet" class="btn" 
   style="text-align:center;display:block;text-decoration:none;">
    Employee Registration <small>Create a new account</small>
</a>

<a href="employees" class="btn" 
   style="text-align:center;display:block;text-decoration:none;">
    Show Employee Details <small>View directory</small>
</a>


</div>

  </div>
</body>
</html>
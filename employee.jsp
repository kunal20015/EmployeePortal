<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Employee List</title>
  <meta name="viewport" content="width=device-width,initial-scale=1" />
</head>

<body style="
  margin:0;
  min-height:100vh;
  font-family:Poppins, sans-serif;
  background:linear-gradient(120deg,#0d0d0f,#1a1a1d,#0d0d0f);
  background-size:300% 300%;
  animation:pageGradient 18s ease infinite;
  color:#fff;
  display:flex;
  justify-content:center;
  align-items:flex-start;
  padding:100px 20px;
">

<style>
@keyframes pageGradient {
  0%{background-position:0% 50%}
  50%{background-position:100% 50%}
  100%{background-position:0% 50%}
}

/* Top navbar (same theme) */
.topbar{
  position:fixed; top:0; left:0; width:96%;
  display:flex; align-items:center; justify-content:space-between;
  padding:18px 36px; z-index:50;
  background:linear-gradient(90deg,rgba(255,255,255,0.02),rgba(255,255,255,0.01));
  backdrop-filter:blur(8px);
  border-bottom:1px solid rgba(255,255,255,0.03);
  box-shadow:0 6px 30px rgba(2,6,23,0.6);
}
.brand {
  display:flex; align-items:center; gap:12px;
}
.brand .logo{
  width:42px; height:42px; border-radius:10px;
  background:linear-gradient(135deg,#6a11cb,#ff416c);
  display:flex; align-items:center; justify-content:center;
  font-weight:800; color:#fff;
}
.toplinks a{
  text-decoration:none; color:rgba(255,255,255,0.8);
  padding:10px 16px; border-radius:10px;
}

/* Card container (glass panel) */
.card {
  width:1100px; max-width:100%;
  background:rgba(255,255,255,0.06);
  backdrop-filter:blur(14px);
  border-radius:18px;
  padding:28px;
  border:1px solid rgba(255,255,255,0.10);
  box-shadow:0 30px 90px rgba(0,0,0,0.5);
  color:#fff;
}

/* Heading */
.card h1 {
  margin:0 0 18px; font-size:24px; letter-spacing:0.2px;
}

/* Optional message badge (styled but will be empty if msg is null) */
.msg-badge {
  display:inline-block;
  padding:8px 14px;
  border-radius:10px;
  background:rgba(255,255,255,0.03);
  color:#00ff7f;
  font-weight:700;
  font-size:14px;
  border:1px solid rgba(255,255,255,0.08);
  box-shadow:0 6px 18px rgba(0,0,0,0.25);
  margin-bottom:18px;
}

/* Table styles */
.table-wrap {
  overflow:auto;
  border-radius:12px;
  margin-top:8px;
  background:linear-gradient(180deg, rgba(255,255,255,0.02), rgba(255,255,255,0.01));
  padding:10px;
}
table.employee-table {
  width:100%;
  border-collapse:collapse;
  min-width:900px;
  font-size:14px;
}
.employee-table thead th {
  text-align:left;
  padding:12px 14px;
  font-weight:700;
  color:rgba(255,255,255,0.9);
  border-bottom:1px solid rgba(255,255,255,0.04);
  letter-spacing:0.3px;
}
.employee-table tbody td {
  padding:12px 14px;
  color:rgba(255,255,255,0.92);
  border-bottom:1px dashed rgba(255,255,255,0.03);
}

/* Zebra-ish rows using subtle backdrop */
.employee-table tbody tr:nth-child(odd) td{
  background:rgba(255,255,255,0.008);
}

/* Responsive adjustments */
@media (max-width:760px){
  .card { padding:20px; }
  .employee-table { min-width:700px; font-size:13px; }
}
</style>

<!-- NAVBAR -->
<div class="topbar">
  <div class="brand">
    <div class="logo">EP</div>
    <h2 style="margin:0;font-size:18px;letter-spacing:0.6px;">Employee Portal</h2>
  </div>

  <div class="toplinks">
    <a href="index.jsp">Home</a>
    <a href="RegisterServlet" style="color:#fff">Register</a>
  </div>
</div>

<!-- MAIN CARD -->
<div class="card" role="main" aria-labelledby="employeeHeading">

  <h1 id="employeeHeading">Employee List</h1>

  <!-- JSP message (keeps original variable, styled but will render nothing if empty) -->
  <c:if test="${not empty msg}">
    <div class="msg-badge">${msg}</div>
  </c:if>

  <!-- Table wrapper (scrolls horizontally on small screens) -->
  <div class="table-wrap" role="region" aria-label="Employee table">
    <table class="employee-table" summary="List of registered employees">
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Password</th>
          <th>Department</th>
          <th>Gender</th>
          <th>City</th>
        </tr>
      </thead>

      <tbody>
        <c:forEach var="employee" items="${emp}">
          <tr>
            <td>${employee.name}</td>
            <td>${employee.email}</td>
            <td>${employee.password}</td>
            <td>${employee.department}</td>
            <td>${employee.gender}</td>
            <td>${employee.city}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

</div>

</body>
</html>

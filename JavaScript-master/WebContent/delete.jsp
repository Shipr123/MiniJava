<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
          //  HttpSession oldSession = request.getSession(false);
          //  if (oldSession == null) {
          //      response.sendRedirect("login/login.jsp");
           // }
          response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");//http 1.1
			response.setHeader("Progma", "no-cache");//http1.0
			response.setHeader("Expires","0");//proxies
            if( session.getAttribute("username")== null){
    	
            	response.sendRedirect("login/login.jsp");
    		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade" id="addUserModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header bg-danger text-white">
          <h5 class="modal-title">Delete User</h5>
          <button class="close" data-dismiss="modal">
            <span>&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form>
            <p>Do you really want to delete the user</p>
          </form>
        </div>
        <div class="modal-footer">
          <button class="btn btn-danger" data-dismiss="modal">Delete user</button>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
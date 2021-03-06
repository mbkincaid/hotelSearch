<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<link rel="stylesheet" href="/hotels.css">
<title>Results</title>
<body>
</head>
<header>
  <div>
    <div>
      <h2>Hotels<c:if test="${ not empty city }"> in ${ city }</c:if></h2><h6><i>(under $${ max })</i></h6>
    </div>
    <div>
      <form action="/">
        <div>
          <div>
            <table>
					<c:if test="${ not empty list }">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<c:forEach var="hotel" items="${ list }">
						<tr>
							<td>${ hotel.name }</td>
							<td>$ ${ hotel.price }</td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${ empty list }">
						<h4>Sorry, we don't have any!</h4>
					</c:if>
				</table>
          </div>
        </div>
        <button>Back</button>
      </form>
    </div>
  </div>
</header>
</body>
</html>l>
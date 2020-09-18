<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Employee Dashboard</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
span.textbox {
	    background-color: #FFF;
	    color: #888;
	    line-height:20px;
	    height:20px;
	    padding:3px;
	    border:1px #888 solid;
	    font-size:9pt;
}
    
span.textbox input {
      border: 0px;
	    background-color: #FFF;
  }

	</style>
	<link data-require="jqueryui" data-semver="1.10.0" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.0/css/smoothness/jquery-ui-1.10.0.custom.min.css" />
  <link rel="stylesheet" href="style.css" />
  <script data-require="jquery" data-semver="2.1.1" src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script data-require="jqueryui" data-semver="1.10.0" src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.0/jquery-ui.js"></script>
  <script src="pag.js"></script>
  <script src="script.js"></script>
  <script src="jquery-3.5.1.min.js"></script>
  <link rel="stylesheet" href="//cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" />
  <script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript">
  var products = new Array();

  $(document).ready(function() {
	    $('#productList').dataTable({
	    	"pageLength": 10
	    });
	    <c:forEach items="${listproducts}" var="product">
        var product = new Object() ;
        product.id= ${product.id}
        product.username= "${product.title}"
            product.password= "${product.description}"
        products.push(product);
    </c:forEach>
	} );


 
	
  
	function showDialog(id){
		if (confirm("Do you want to delete")) {
			window.location.href = 'http://localhost:8080/SpringMVCHibernate/remove/' + id;
			}
		}

/* 	$("input").keydown(function(e) {
	    var oldvalue=$(this).val();
	    var field=this;
	    setTimeout(function () {
	        if(field.value.indexOf('$') !== 0) {
	            $(field).val(oldvalue);
	        } 
	    }, 1);
	}); */
	
 </script>
</head>
<body>
<h3>
	Add Products
</h3>

<c:url var="addAction" value="/product/add" ></c:url>

<form:form action="${addAction}" commandName="product">
<table>
	<c:if test="${!empty product.quantity}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="title">
				<spring:message text="Title"/>
			</form:label>
		</td>
		<td>
			<form:input path="title" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="description">
				<spring:message text="Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="description" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price">
				
				<spring:message text="Price"/>
			</form:label>
		</td>
		<td>
		<span class="textbox"> 
		$
			<form:input path="price"   />
			</span>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="quantity">
				<spring:message text="Quantity"/>
			</form:label>
		</td>
		<td>
			<form:input path="quantity" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="image">
				<spring:message text="Image"/>
			</form:label>
		</td>
		<td>
			<span class="textbox"> 
			
			<form:input path="image" />
			</span>
		</td> 
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty product.quantity}">
				<input type="submit"
					value="<spring:message text="Edit product"/>" />
			</c:if>
			<c:if test="${empty product.quantity}">
				<input type="submit"
					value="<spring:message text="Add product"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Products List</h3>
<c:if test="${!empty listproducts}">
	<table id="productList" class="display">
	<thead>
	<tr>
		<th width="80">product ID</th>
		<th width="120">Title</th>
		<th width="120">Description</th>
		<th width="80">Price ($) </th>
		<th width="120">Quantity</th>
		<th width="120" height ="120">Image</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${listproducts}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.title}</td>
			<td>${product.description}</td>
				<td>${product.price }</td>
			<td>${product.quantity}</td>
			<td>${product.image }</td>
			<td><a href="<c:url value='/edit/${product.id}' />" >Edit</a></td>
			<td><a href="#" onclick="showDialog(${product.id})" >Delete</a></td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
</c:if>
</body>
</html>

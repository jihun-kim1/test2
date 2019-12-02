<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
	<input type="button" value="test" id="btn">
	<script>
        $("#btn").on("click", function(){
            $.ajax({
            	url : "test.sup",
            	type : "post",
            	data :{
            		receipt_id : '5de460765ade1600282bbdb3'
            	},dataType : "text"
			}).done(function(data){
            	alert(data.msg);
            })
        })
    </script>
</body>
</html>

function idCheck() {
	window.open("idCheck.jsp", "post", "width=300, height=150");
}
function zipCheck() {
	var uri = "zipCheck.jsp?check=false";
	window
			.open(uri, "post",
					"toolbar=no, width=600, heigh=300, directories=no, status=yes, menubar=no");
}
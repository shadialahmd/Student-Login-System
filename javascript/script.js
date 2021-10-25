function editadmin() {
	
     var firstname= $("#firstname").val();
    var middlename = $("#middlename").val();
    var lastname = $("#lastname").val();
	 var user = $("#username").val();
	  var password = $("#password").val();
	   var confirm_password = $("#confirm_password").val();
	    var admin_image = $("#admin_image").val();
   
    var id = $("#id").val();

 
 
    $.post("edit_admin.php", {
			id: id,
		    firstname: firstname,
			  middlename: middlename,
			    lastname: lastname,
				  user: username,
				 password: password,
				    confirm_password: confirm_password,
					 admin_image: admin_image,
    
      
          }, function (data, status) {
        // close the popup
        $("#edit_admin").modal("hide");

            readRecords();
        }
    );
}



function edituser() {
     var id= $("#school_number").val();
    var firstname = $("#firstname").val();
    var middlename = $("#middlename").val();
	 var lastname = $("#lastname").val();
	  var gender = $("#gender").val();
	   var address = $("#address").val();
	    var school = $("#school").val();
    var course = $("#course").val();
	 var time_rendered = $("#time_rendered").val();
    var id = $("#id").val();

 
 
    $.post("edit_user.php", {
		  school_number: school_number,
		    firstname: firstname,
			  middlename: middlename,
			    lastname: lastname,
				  address: address,
				    gender: gender,
        course: course,
        school: school,
        time_rendered: time_rendered
      
          }, function (data, status) {
        // close the popup
        $("#edit_modal").modal("hide");

            readRecords();
        }
    );
}

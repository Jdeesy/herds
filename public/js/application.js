function validateLoginUser() {
  var username = document.forms["login_user"]["user[username]"].value
  console.log(username)
    if (username == null || username == ""){
      alert("Username must be filled");
      return false;
    };

  var password = document.forms["login_user"]["user[password]"].value
  console.log(password)
    if (password == null || password == ""){
      alert("Password must be filled");
      return false;
    };
}

function validateCreateUser() {
  var username = document.forms["create_user"]["user[username]"].value
  console.log(username)
    if (username == null || username == ""){
      alert("Username must be filled");
      return false;
    };

  var email = document.forms["create_user"]["user[email]"].value
  console.log(email)
    if (email == null || email == ""){
      alert("email must be filled");
      return false;
    };

  var password = document.forms["create_user"]["user[password]"].value
  console.log(password)
    if (password == null || password == ""){
      alert("Password must be filled");
      return false;
    }
    else if (password.length < 8){
      alert("Password must be at least 8 characters long");
    return false;
  };
}

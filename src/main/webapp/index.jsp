<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>

  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#goButton").click(makeRequest);
        });
        function makeRequest() {
// Define properties
            var AUTH_ENDPOINT = "https://www.facebook.com/dialog/oauth";
            var RESPONSE_TYPE = "code";
            var CLIENT_ID = "xxxx";
            var REDIRECT_URI = "https://localhost:8443/facebookapp/callback";
            var SCOPE = "public_profile user_posts user_friends user_photos";
// Build authorization request endpoint
            var requestEndpoint = AUTH_ENDPOINT + "?" +
                    "response_type=" + encodeURIComponent(RESPONSE_TYPE) + "&" +
                    "client_id=" + encodeURIComponent(CLIENT_ID) + "&" +
                    "redirect_uri=" + encodeURIComponent(REDIRECT_URI) + "&" +
                    "scope=" + encodeURIComponent(SCOPE);
// Send to authorization request endpoint
            window.location.href = requestEndpoint;
        }
    </script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
}

.bgimg-1, .bgimg-2, .bgimg-3 {
  position: relative;
  opacity: 0.65;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}
.bgimg-1 {
  background-image: url("images/img_parallax.jpg");
  height: 100%;
}

.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}

/* #Green Sea Flat Button
==================================================*/
.green-sea-flat-button {
  position: relative;
  vertical-align: top;
  width: 100%;
  height: 60px;
  padding: 0;
  font-size: 22px;
  color: white;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
  background: #16a085;
  border: 0;
  border-bottom: 2px solid #14947b;
  cursor: pointer;
  -webkit-box-shadow: inset 0 -2px #14947b;
  box-shadow: inset 0 -2px #14947b;
}
.green-sea-flat-button:active {
  top: 1px;
  outline: none;
  -webkit-box-shadow: none;
  box-shadow: none;
}

</style>
</head>
<body>

<div class="bgimg-1">
  <div class="caption">
    <span class="border">--- YOU ARE WELCOME ---</span><br>
    <span class="border">view my wall post</span>
    </br>
    <button id="goButton" type="button" class="green-sea-flat-button">Continue with Facebook !</button>
    <div id="results"></div>
  </div>
</div>
</body>
</html>

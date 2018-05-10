<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
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
  background-image: url("images/img_parallax3.jpg");
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
</style>


<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#goButton").click(makeRequest);
        });
        function makeRequest() {
// Define properties
            var AUTH_ENDPOINT = "https://www.facebook.com/dialog/oauth";
            var RESPONSE_TYPE = "code";
            var CLIENT_ID = "226607424740444";
            var REDIRECT_URI = "https://localhost:8443/facebookapp/callback";
            var SCOPE = "public_profile user_posts user_friends user_photos publish_actions";
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

</head>
<body>

<div class="bgimg-1">
  <div class="caption">
    <span class="border">FULL PAGE</span><br>
    <span class="border">BACKGROUND IMAGE</span>
    <button id="goButton" type="button">Continue with Facebook !</button>
    <div id="results"></div>
  </div>
</div>

<p style="padding:5px 15px">This example creates a full page background image. Try to resize the browser window to see how it always will cover the full screen (when scrolled to top), and that it scales nicely on all screen sizes.</p>

</body>
</html>

# Introduction-to-OAuth
### Introduction to OAuth by using Facebook OAuth 2.0v

Once you download/clone this project, you wish to change the subsequent 2 files.

1. /src/main/java/com/shapmanasick/oauth/facebookapp/servlet/OAuthCallbackListener.java
------------------------------------------------------------------------------------

This has following code.

            final String REDIRECT_URI = "https://localhost:8443/facebookapp/callback";
            final String CLIENT_ID = "your app id";
            final String CLIENT_SECRET = "your app secret";

Put your App ID and App Secret in on top of. If the port range is completely different from 8080 once you deploy this application, modification the direct URI consequently.

2. /src/main/webapp/index.jsp
-----------------------------

            var CLIENT_ID = "your app id";
            var REDIRECT_URI = "https://localhost:8443/facebookapp/callback";

Put your App ID in client id above.

Read more : https://shapmanasick.wordpress.com/2018/05/07/introduction-to-open-authentication-oauth/

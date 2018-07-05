import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "<h1 style=\"color: blue\">Hello There %d!</h1>" % (os.getpid())

if __name__ == "__main__":
    app.run(host='0.0.0.0')

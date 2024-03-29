from flask import Flask
app = Flask(__name__)

@app.route("/")
def index():
    return "Index! Root page for a test CI & CD and a new test "

@app.route("/hello")
def hello():
    return "Hello World!"

@app.route("/members")
def members():
    return "Members"


if __name__ == "__main__":
    app.run(host='0.0.0.0')

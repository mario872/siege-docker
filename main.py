from flask import Flask, redirect, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route("/", defaults={"path": ""})
@app.route("/<string:path>")
@app.route("/<path:path>")
def catch_all(path):
    return redirect('/')

if __name__ == '__main__':
    app.run('0.0.0.0', port=5000)
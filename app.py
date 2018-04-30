from flask import Flask
app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello_world():
    return 'Hell world, here is docker'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

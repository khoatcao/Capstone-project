# Store that with the name as app.py
from flask import Flask, escape, request

appname = Flask(__name__)

@appname.route('/')
def hello():
    names = request.args.get("name", "The whole amazing World!")
    return f'Let us talk about Hello sentence to, {escape(names)}!'

if __name__ == "__main__":
    # then make some loadings which pretrained model as the clf field
    appname.run(host='0.0.0.0', port=80, debug=True) # specify the port as 80 for that

import os
from flask import Flask


app = Flask(__name__)
app.config['KEY'] = os.environ.get('KEY', 'the_default_value_would_be_overwritten')


@app.route('/')
def index():
    return "<p>Hello World! env: KEY=%s</p>" % (app.config['KEY'])


if __name__ == '__main__':
    app.run(debug=True)

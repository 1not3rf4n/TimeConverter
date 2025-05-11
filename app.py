from flask import Flask, render_template, request

app = Flask(__name__)


app.config['TEMPLATES_AUTO_RELOAD'] = True #auto

@app.route('/', methods=['GET', 'POST'])
def index():
    result = None
    if request.method == 'POST':
        # try:
            seconds = int(request.form['seconds'])
            hours = seconds // 3600
            seconds %= 3600
            minutes = seconds // 60
            seconds %= 60
            result = {'hours': hours, 'minutes': minutes, 'seconds': seconds}
        # except ValueError:
        #     result = {'error': 'enter number'}
    return render_template('index.html', result=result)

if __name__ == '__main__':
    app.run(debug=True, use_reloader=True)
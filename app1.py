from flask import Flask, request, render_template_string

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    title = "Cluster 2 App 1"
    message = ''
    if request.method == 'POST':
        text_data = request.form['text']
        # Here we handle the POST request
        message = f'POST request sent with data: {text_data}'
    return render_template_string('''
        <html>
            <head>
                <title>{{ title }}</title>
            </head>
            <body>
                <h1>{{ title }}</h1>
                {{ message }}
                <form method="post" action="https://httpbin.org/post">
                    <input type="text" name="text">
                    <input type="submit" value="Submit">
                </form>
            </body>
        </html>
    ''', title=title, message=message)

@app.route('/fail')
def fail():
    return "Simulated Server Error", 500


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

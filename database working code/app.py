from markupsafe import escape
import datetime
from forms import CourseForm
from flask import Flask, render_template, request, url_for, flash, redirect, abort



app = Flask(__name__)

app.config['SECRET_KEY'] = '74e7daa0abeec6b158a0d288b003dcd6d3e28f97a773cf9b'

messages = [{'title': 'Message One',
             'content': 'Message One Content'},
            {'title': 'Message Two',
             'content': 'Message Two Content'}
            ]

@app.errorhandler(404)
def page_not_found(error):
    return render_template('404.html'), 404

@app.errorhandler(500)
def internal_error(error):
    return render_template('500.html'), 500

@app.route('/500')
def error500():
    abort(500)

courses_list = [{
    'title': 'Python 101',
    'description': 'Learn Python basics',
    'price': 34,
    'available': True,
    'level': 'Beginner'
    }]

@app.route('/', methods=('GET', 'POST'))
def index():
    form = CourseForm()
    if form.validate_on_submit():
        courses_list.append({'title': form.title.data,
                             'description': form.description.data,
                             'price': form.price.data,
                             'available': form.available.data,
                             'level': form.level.data
                             })
        return redirect(url_for('courses'))
    return render_template('index.html', form=form)

@app.route('/course/')
def course():
    return render_template('course.html', courses_list=courses_list)

@app.route('/about/')
def about():
    return render_template('about.html')

@app.route('/comments/')
def comments():
    comments = ['This is the first comment.',
                'This is the second comment.',
                'This is the third comment.',
                'This is the fourth comment.'
                ]            
    return render_template('comments.html', comments=comments)

@app.route('/create/', methods=('GET', 'POST'))
def create():
    if request.method == 'POST':
        title = request.form['title']
        content = request.form['content']

        if not title:
            flash('Title is required!')
        elif not content:
            flash('Content is required!')
        else:
            messages.append({'title': title, 'content': content})
            return redirect(url_for('index'))
            
    return render_template('create.html')

@app.route('/messages/<int:idx>')
def message(idx):
    app.logger.info('Building the messages list...')
    messages = ['Message Zero', 'Message One', 'Message Two']
    try:
        app.logger.debug('Get message with index: {}'.format(idx))
        return render_template('message.html', message=messages[idx])
    except IndexError:
        app.logger.error('Index {} is causing an IndexError'.format(idx))
    abort(404)
from cv_flask import app
from flask.cli import FlaskGroup

cli = FlaskGroup(app)

if __name__ == "__main__":
    cli()

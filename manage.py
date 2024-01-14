from flask.cli import FlaskGroup
from cv_flask import app

cli = FlaskGroup(app)

if __name__ == "__main__":
    cli()
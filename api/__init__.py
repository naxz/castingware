import os

from flask import Flask
from api.resources.family import family

def create_app(test_config=None):
    # create and configure the app
    api = Flask(__name__, instance_relative_config=True)
    api.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(api.instance_path, 'flaskr.sqlite'),
    )

    if test_config is None:
        # load the instance config, if it exists, when not testing
        api.config.from_pyfile('config.py', silent=True)
    else:
        # load the test config if passed in
        api.config.from_mapping(test_config)

    # ensure the instance folder exists
    try:
        os.makedirs(api.instance_path)
    except OSError:
        pass

    api.register_blueprint(family)

    return api

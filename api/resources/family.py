from flask import Blueprint, jsonify

family = Blueprint('family', __name__, url_prefix='/family')

@family.route('/', methods=['GET'])
def get():
    family = {
        "name": "FamilyNameSample",
        "caracteristics": [
            "Caracteristic_1",
            "Caracteristic_2"
        ]
    }
    return jsonify(family)

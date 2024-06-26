"""
    Fichier : gestion_genres_wtf_forms.py
    Auteur : OM 2021.03.22
    Gestion des formulaires avec WTF
"""
from flask_wtf import FlaskForm
from wtforms import StringField, DateField
from wtforms import SubmitField
from wtforms.validators import Length, InputRequired, DataRequired
from wtforms.validators import Regexp


class FormWTFAjouterGenres(FlaskForm):
    """
        Dans le formulaire "genres_ajouter_wtf.html" on impose que le champ soit rempli.
        Définition d'un "bouton" submit avec un libellé personnalisé.
    """
    nom_util_regexp = "^([A-Z]|[a-zÀ-ÖØ-öø-ÿ])[A-Za-zÀ-ÖØ-öø-ÿ]*['\- ]?[A-Za-zÀ-ÖØ-öø-ÿ]+$"
    nom_util_wtf = StringField("Nom", validators=[Length(min=2, max=20, message="min 2 max 20"),
                                                                   Regexp(nom_util_regexp,
                                                                          message="Pas de chiffres, de caractères "
                                                                                  "spéciaux, "
                                                                                  "d'espace à double, de double "
                                                                                  "apostrophe, de double trait union")
                                                                   ])
    prenom_util_regexp = "^([A-Z]|[a-zÀ-ÖØ-öø-ÿ])[A-Za-zÀ-ÖØ-öø-ÿ]*['\- ]?[A-Za-zÀ-ÖØ-öø-ÿ]+$"
    prenom_util_wtf = StringField("Prénom", validators=[Length(min=2, max=20, message="min 2 max 20"),
                                                                         Regexp(prenom_util_regexp,
                                                                                message="Pas de chiffres, de caractères "
                                                                                        "spéciaux, "
                                                                                        "d'espace à double, de double "
                                                                                        "apostrophe, de double trait union")
                                                                         ])

    adresse_util_wtf = StringField("Adresse",
                                  validators=[Length(min=2, max=20, message="min 2 max 20"),

                                              ])

    telephone_util_wtf = StringField("Numero Tel.",
                                   validators=[Length(min=2, max=20, message="min 2 max 20"),

                                               ])

    email_util_wtf = StringField("Email",
                                     validators=[Length(min=2, max=20, message="min 2 max 20"),

                                                 ])
    submit = SubmitField("Enregistrer Client")



from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired

class FormWTFUpdateGenre(FlaskForm):
    nom_genre_update_wtf = StringField("Nom",
                                  validators=[Length(min=2, max=20, message="min 2 max 20"),

                                              ])
    prenom_update_wtf = StringField("Prénom",
                                  validators=[Length(min=2, max=20, message="min 2 max 20"),

                                              ])
    adresse_update_wtf = StringField("Adresse",
                                  validators=[Length(min=2, max=20, message="min 2 max 20"),

                                              ])
    telephone_update_wtf = StringField("Téléphone",
                                  validators=[Length(min=2, max=20, message="min 2 max 20"),

                                              ])
    email_update_wtf = StringField("Email",
                                  validators=[Length(min=2, max=50, message="min 2 max 50"),

                                              ])
    submit = SubmitField('Mettre à jour')





class FormWTFDeleteGenre(FlaskForm):
    """
        Dans le formulaire "genre_delete_wtf.html"

        nom_genre_delete_wtf : Champ qui reçoit la valeur du genre, lecture seule. (readonly=true)
        submit_btn_del : Bouton d'effacement "DEFINITIF".
        submit_btn_conf_del : Bouton de confirmation pour effacer un "genre".
        submit_btn_annuler : Bouton qui permet d'afficher la table "t_genre".
    """
    nom_genre_delete_wtf = StringField("Effacer ce genre")
    submit_btn_del = SubmitField("Effacer genre")
    submit_btn_conf_del = SubmitField("Etes-vous sur d'effacer ?")
    submit_btn_annuler = SubmitField("Annuler")

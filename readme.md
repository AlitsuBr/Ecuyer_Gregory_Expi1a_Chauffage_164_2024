# FlaskWebS

Il s'agit d'une simple application web créée dans le cadre du projet Module 164.

Le but de ce projet est de montrer nos compétences et notre compréhension du développement web (feuille de route ici).

Tous les éléments de la base de données (MCD, MLD et dictionnaire) sont dans .github/database

https://info164.github.io/doc164ver1/index.html

Logiciel à télécharger avant l'installation
Nécessaire :
<span style="color: #777;">Windows :</span>

[HeidiSQL](https://www.heidisql.com/download.php) - v12.05 ou plus récent.

[Gitbash](https://git-scm.com/download/win)  - v2.41.0 ou plus récent.

[Python](https://www.python.org/downloads/) v3.11.3 ou plus récent.

[Pycharm (community)](https://www.jetbrains.com/pycharm/download/?source=google&medium=cpc&campaign=14123077402&term=pycharm&content=536947779984&gad=1#section=windows) v2023.1.2 ou plus récent.

Installation de l'application Flask
Installation du projet sur pycharm :
1) Lancer pycharm pour la première fois.
2) Aller en haut à droite et sélectioner Get from VCS.
3) Dans repository URL, coller le lien .git dans le champ URL (cela va importer le projet).
4) Cliquer sur le bouton Clone.
4) Appuyer sur Trust Projects.
5) Normalement par la suite une fenêtre apparaîtra en vous demandant de créer un virtual environant, cliquer sur ok.
6) Gardez Pycharm ouvert.

Configuration d'HeidiSQL :
1) Lancer HeidiSQL.
2) Appuyer sur le bouton ajouter qui se trouve en bas à gauche.
3) Si la case demander identifiant est décocher alors appuyer sur ouvrir sinon décocher la case puis appuyer sur continuer.
Download HeidiSQL
Download your free copy of HeidiSQL here. Or download the sources.
Python.org
Download Python
The official home of the Python Programming Language
Image
JetBrains
Download PyCharm: Python IDE for Professional Developers by JetBrains
Download the latest version of PyCharm for Windows, macOS or Linux.
Download PyCharm: Python IDE for Professional Developers by JetBrains
1er lancement
1) Sur Pycharm dans le dossier ../APP_FILMS_164/database lancer le fichier 1_importationDumpSql.py en faisant un clic droit dessus et cliquer sur la flèche verte. Cela importera la base de donée
2) Faites pareil avec le fichier 2_test_connection_bd.py. Cela testera la connectivité avec le serveur.
3) Pour finir lancer le fichier run_mon_app.py se trouvant dans le dossier ../APP_FILMS_164/

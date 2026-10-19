# ------------------------------------------------------------------
# variables.py : les variables globales du projet.
# Changer de serveur ou de navigateur = modifier une seule ligne ici.
# ------------------------------------------------------------------

# Adresse de l'application à tester
URL = "http://18.201.83.167:8080"

# Navigateur utilisé par SeleniumLibrary (chrome, firefox, edge...)
BROWSER = "edge"

# Données de test (bonne pratique : ne pas les écrire en dur dans les tests)
LOGIN_VALIDE = "admin"
LOGIN_INVALIDE = "utilisateur_inconnu"
MDP_INVALIDE = "mauvais_mot_de_passe"

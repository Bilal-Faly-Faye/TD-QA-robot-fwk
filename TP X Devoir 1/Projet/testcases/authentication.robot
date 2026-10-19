*** Settings ***
Documentation     Cas de test de la page d'authentification.
...               Ce fichier dit QUOI tester, sans détail technique.
Resource          ../resources/authentication.robot
Test Setup        Ouvrir La Page De Connexion
Test Teardown     Fermer Le Navigateur


*** Test Cases ***
Cas1 - Login correct et mot de passe incorrect
    [Tags]    smoke    auth
    Se Connecter    ${LOGIN_VALIDE}    ${MDP_INVALIDE}
    Vérifier Que La Connexion A Échoué

Cas2 - Login incorrect et mot de passe incorrect
    [Tags]    sanity    auth
    Se Connecter    ${LOGIN_INVALIDE}    ${MDP_INVALIDE}
    Vérifier Que La Connexion A Échoué

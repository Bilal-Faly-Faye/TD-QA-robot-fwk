*** Settings ***
Documentation     Mots-clés (keywords) réutilisables pour l'authentification.
...               Ce fichier dit COMMENT faire chaque action.
Library           SeleniumLibrary
Variables         ../pageobject/locator.py
Variables         ../pageobject/variables.py


*** Keywords ***
Ouvrir La Page De Connexion
    [Documentation]    Ouvre le navigateur sur l'application et attend le formulaire.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${id_textbox_username}    timeout=10s

Saisir Le Login
    [Arguments]    ${login}
    Input Text    ${id_textbox_username}    ${login}

Saisir Le Mot De Passe
    [Arguments]    ${mot_de_passe}
    Input Password    ${id_textbox_password}    ${mot_de_passe}

Cliquer Sur Se Connecter
    Click Button    ${id_button_login}

Se Connecter
    [Documentation]    Remplit le formulaire et valide.
    [Arguments]    ${login}    ${mot_de_passe}
    Saisir Le Login    ${login}
    Saisir Le Mot De Passe    ${mot_de_passe}
    Cliquer Sur Se Connecter

Vérifier Que La Connexion A Échoué
    [Documentation]    Après un échec, Jenkins redirige vers une page "loginError"
    ...                et le formulaire de connexion est toujours affiché.
    Wait Until Location Contains    loginError    timeout=10s
    Page Should Contain Element    ${id_textbox_username}

Fermer Le Navigateur
    Close Browser

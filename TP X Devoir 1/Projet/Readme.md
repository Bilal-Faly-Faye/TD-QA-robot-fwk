# Projet QA – Tests d'authentification avec Robot Framework

Automatisation de la page de connexion d'une application Web avec
Robot Framework + SeleniumLibrary.

## Prérequis

```bash
pip install robotframework robotframework-seleniumlibrary
```

Google Chrome doit être installé. Avec Selenium 4.6 ou plus récent, le driver
(chromedriver) est téléchargé automatiquement.

## Structure

```
.
├── Readme.md
├── pageobject
│   ├── locator.py        -> où sont les éléments (id, name...)
│   └── variables.py      -> URL, navigateur, données de test
├── resources
│   └── authentication.robot   -> keywords (COMMENT faire)
├── results               -> créé automatiquement par robot -d results
└── testcases
    └── authentication.robot   -> cas de test (QUOI tester)
```

## Exécution

Tous les tests :

```bash
robot -d results ./testcases/authentication.robot
```

Seulement les tests tagués `sanity` :

```bash
robot -i sanity -d results ./testcases/authentication.robot
```

Seulement les tests tagués `auth` :

```bash
robot -i auth -d results ./testcases/authentication.robot
```

Les résultats sont dans `results/` : `report.html` (synthèse),
`log.html` (détail pas à pas), `output.xml` (données brutes).

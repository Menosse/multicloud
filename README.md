[![Travis Status](https://app.travis-ci.com/Menosse/multicloud.svg?branch=main)](https://app.travis-ci.com/Menosse/multicloud)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=menosse&metric=alert_status)](https://sonarcloud.io/dashboard?id=menosse)
[![Github Actions](https://github.com/Menosse/multicloud/actions/workflows/actions.yml/badge.svg)](https://github.com/Menosse/multicloud/actions)

# Dev env
Subir a vm com `vagrant up`

# Python app
Aplicação Simples em Python/Flask com teste usando Unittest integrado ao Travis-CI fazendo deploy no heroku.

# Pipelines & Ambientes
Ha duas pipelines configuradas para realizar o CI/CD da app, uma no travis e outra atraves do GitHub actions.
Ambas pipelines tem os mesmo estagios: build, test unitario, deploy em STG, sanity test em STG, deploy em Prod, sanity test em Prod.

O ambiente de STG esta no Heroku.
O ambiente de Prod esta no GCP App Engine.

Ambas pipelines podem ser configuradas para iniciar a partir de qualquer commit neste repositorio, entretanto como Github Actions foi feito por ultimo a opcao de buildar a pipeline do Travis esta desativada, portanto mediante ao commit apenas Github Actions sera iniciado.

# Testes & Vulnerabilidates
Como parte do opcional da aula, a app tambem esta integrada ao SonarCloud, como pode-se notar no badge acima.
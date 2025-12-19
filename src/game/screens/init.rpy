################################################################################
## Инициализация
################################################################################

init offset = -1

init python:
    if persistent.language:
        config.language = persistent.language
    else:
        config.language = 'english'
        persistent.language = 'english'
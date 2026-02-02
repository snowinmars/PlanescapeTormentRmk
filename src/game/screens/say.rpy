################################################################################
## Внутриигровые экраны
################################################################################


## Экран разговора #############################################################
##
## Экран разговора используется для показа диалога игроку. Он использует два
## параметра — who и what — что, соответственно, имя говорящего персонажа и
## показываемый текст. (Параметр who может быть None, если имя не задано.)
##
## Этот экран должен создать текст с id 'what', чтобы Ren'Py могла показать
## текст. Здесь также можно создать наложения с id 'who' и id 'window', чтобы
## применить к ним настройки стиля.
##
## https://www.renpy.org/doc/html/screen_special.html#say

# Narrated: lines renders in the 'narrat' screen, but RenPy does not want to work without this screen defined
screen say(who, what):
    modal False
    frame:
        background None
        xpos 0
        ypos 0
        xsize 0
        ysize 0
        text what:
            id 'what'
            xpos 0
            ypos 0
            xsize 0
            ysize 0
            color '#00000000'

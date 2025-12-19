################################################################################
## Внутриигровые экраны
################################################################################


## Экран разговора #############################################################
##
## Экран разговора используется для показа диалога игроку. Он использует два
## параметра — who и what — что, соответственно, имя говорящего персонажа и
## показываемый текст. (Параметр who может быть None, если имя не задано.)
##
## Этот экран должен создать текст с id "what", чтобы Ren'Py могла показать
## текст. Здесь также можно создать наложения с id "who" и id "window", чтобы
## применить к ним настройки стиля.
##
## https://www.renpy.org/doc/html/screen_special.html#say

screen say(who, what):
    window:
        id "window"
        background Transform('bg/diabg.png', fit='cover')

        if who is None:
            text what:
                id "what"
                size 20
                xalign 0
                color '#8ca57d'
        elif who == 'the_nameless_one':
            text what:
                id "what"
                size 20
                xalign 0
                color '#a0c8d7'
        else:
            window:
                id "namebox"
                style "namebox"
                xalign 0
                text who id "who":
                    size 22
            text what:
                id "what"
                size 20
                xalign 0
                color '#8ca57d'

    # nameless one name #a7c0bd
    # nameless one text #98afb5
    # other name #a39884
    # other text #9ba290

    ## Если есть боковое изображение ("голова"), показывает её поверх текста.
    ## По стандарту не показывается на варианте для мобильных устройств — мало
    ## места.
    if not renpy.variant("small"):
        add SideImage() xalign 0.0 yalign 1.0


## Делает namebox доступным для стилизации через объект Character.
init python:
    config.character_id_prefixes.append('namebox')

style window is default
style say_label is default
style say_dialogue is default
style say_thought is say_dialogue

style namebox is default
style namebox_label is say_label


style window:
    xfill True
    ysize gui.textbox_height
    xsize 600
    xalign 1.0
    yalign 1.0
    yoffset -40
    xpadding 20

    background Image("gui/textbox.png", xalign=0.5, yalign=1.0)

style namebox:
    xpos gui.name_xpos
    xanchor gui.name_xalign
    xsize gui.namebox_width
    ypos gui.name_ypos
    ysize gui.namebox_height

    background Frame("gui/namebox.png", gui.namebox_borders, tile=gui.namebox_tile, xalign=gui.name_xalign)
    padding (0, 10)

style say_label:
    properties gui.text_properties("name", accent=True)
    xalign gui.name_xalign
    yalign 0.5

style say_dialogue:
    properties gui.text_properties("dialogue")

    xpos gui.dialogue_xpos
    xsize gui.dialogue_width
    ypos 45

    adjust_spacing False
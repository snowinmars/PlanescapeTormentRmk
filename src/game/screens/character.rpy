init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.CharacterLogic import (CharacterLogic)
    characterLogic = CharacterLogic(runtime.global_state_manager)


    def get_alignment(character):
        good_treshold = 10
        law_treshold = 10
        if                   character.good >  good_treshold and                  character.law >  law_treshold:
            return _('screen_character_lawful_good{#screen_character_lawful_good}')
        if                   character.good >  good_treshold and -law_treshold <= character.law <= law_treshold:
            return _('screen_character_neutral_good{#screen_character_neutral_good}')
        if                   character.good >  good_treshold and                  character.law < -law_treshold:
            return _('screen_character_chaotic_good{#screen_character_chaotic_good}')
        if -good_treshold <= character.good <= good_treshold and                  character.law >  law_treshold:
            return _('screen_character_lawful_neutral{#screen_character_lawful_neutral}')
        if -good_treshold <= character.good <= good_treshold and -law_treshold <= character.law <= law_treshold:
            return _('screen_character_true_neutral{#screen_character_true_neutral}')
        if -good_treshold <= character.good <= good_treshold and                  character.law < -law_treshold:
            return _('screen_character_chaotic_neutral{#screen_character_chaotic_neutral}')
        if                   character.good < -good_treshold and                  character.law >  law_treshold:
            return _('screen_character_lawful_evil{#screen_character_lawful_evil}')
        if                   character.good < -good_treshold and -law_treshold <= character.law <= law_treshold:
            return _('screen_character_neutral_evil{#screen_character_neutral_evil}')
        if                   character.good < -good_treshold and                  character.law < -law_treshold:
            return _('screen_character_chaotic_evil{#screen_character_chaotic_evil}')


label never_screen_character:
    $ never = _('zombie')


screen screen_character():
    default screen_character_npc = characterLogic.get_character()

    on 'show' action SetVariable('screen_character_npc', get_character())

    modal True
    zorder 100

    for k in keymap_character_screen:
        key k action Hide('screen_character')
    key 'K_ESCAPE' action Hide('screen_character')

    default screen_character_looks_like_cached = ''
    default screen_character_looks_like_cached_id = ''
    if screen_character_npc.looks_like != screen_character_looks_like_cached_id:
        $ screen_character_looks_like_cached_id = character.looks_like
        $ screen_character_looks_like_cached = __('screen_character_looks_like{#screen_character_looks_like}').format(looks_like=__(screen_character_npc.looks_like))

    default screen_character_alignment = ''
    default screen_character_alignmentId = ''
    if 1000 * screen_character_npc.good + screen_character_npc.law != screen_character_alignmentId:
        $ screen_character_alignmentId = 1000 * screen_character_npc.good + screen_character_npc.law
        $ screen_character_alignment = _(get_alignment(screen_character_npc))


    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background 'gui_recbg'

        vbox:
            pos (685, 55)
            xsize 275
            spacing 40

            label _(screen_character_npc.name): # Безымянный
                xfill True
                text_style 'screen_character_style_text'
            label _(screen_character_npc.current_class): # Воин
                xfill True
                text_style 'screen_character_style_text'

        vbox:
            pos (1035, 100)
            xsize 160
            spacing 55

            label _(screen_character_npc.race): # Человек
                xfill True
                text_style 'screen_character_style_text'

            label _(screen_character_npc.sex): # Мужской
                xfill True
                text_style 'screen_character_style_text'

        ####
        vbox:
            pos (1116, 335)
            xsize 50
            spacing 15

            label _('screen_character_armor_class'): # КБ
                xfill True
                text_style 'screen_character_style_text'

            label str(screen_character_npc.ac): # 10
                xfill True
                text_style 'screen_character_style_text'

        ####
        frame:
            pos (1226, 440)
            background 'gui_ichpman'
            padding (0, 0)

            vbox:
                pos (0, 0)
                xsize 50
                spacing 20

                label str(screen_character_npc.current_health): # 20
                    xfill True
                    text_style 'screen_character_style_text'

                label str(screen_character_npc.max_health): # 20
                    xfill True
                    text_style 'screen_character_style_text'


        ###
        frame:
            area (1021, 486, 117, 117)
            background None
            padding (0, 0)

            add 'gui_aligment_neutral':
                pos (21, 21)

            vbox:
                pos (0, 0)
                xfill True
                spacing 20

                if screen_character_npc.good >= 0:
                    label str(screen_character_npc.good):
                        xfill True
                        text_style 'screen_character_style_text'

                label str(screen_character_npc.law):
                    xfill True
                    text_style 'screen_character_style_text'
                    if screen_character_npc.law >= 0:
                        text_align (0.95, 0.5)
                    else:
                        text_align (0.05, 0.5)

                if screen_character_npc.good < 0:
                    label str(screen_character_npc.good):
                        xfill True
                        text_style 'screen_character_style_text'

        ####
        vbox:
            pos (510, 130)
            xsize 145
            spacing 70

            label _('screen_character_strength'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.strength):
                xfill True
                text_style 'screen_character_style_value'

        ####
        vbox:
            pos (408, 316)
            xsize 145
            spacing 70

            label _('screen_character_intelligence'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.intelligence):
                xfill True
                text_style 'screen_character_style_value'

        ####
        vbox:
            pos (429, 505)
            xsize 145
            spacing 70

            label _('screen_character_wisdom'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.wisdom):
                xfill True
                text_style 'screen_character_style_value'

        ####
        vbox:
            pos (562, 665)
            xsize 145
            spacing 70

            label _('screen_character_dexterity'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.dexterity):
                xfill True
                text_style 'screen_character_style_value'

        ####
        vbox:
            pos (737, 731)
            xsize 145
            spacing 70

            label _('screen_character_constitution'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.constitution):
                xfill True
                text_style 'screen_character_style_value'

        ####
        vbox:
            pos (916, 672)
            xsize 145
            spacing 70

            label _('screen_character_charisma'):
                xfill True
                text_style 'screen_character_style_title'

            label str(screen_character_npc.charisma):
                xfill True
                text_style 'screen_character_style_value'


    viewport:
        area (1415, 75, 300, 575)

        vbox:
            xfill True

            label _(screen_character_npc.name):
                xfill True
                text_style 'screen_character_style_title'

            if screen_character_npc.looks_like:
                label screen_character_looks_like_cached:
                    xfill True
                    text_style 'screen_character_style_text'
                    text_align(0.0, 0.0)
            else:
                label _('screen_character_looks_like_default{#screen_character_looks_like_default}'):
                    xfill True
                    text_style 'screen_character_style_text'
                    text_align(0.0, 0.0)

            label screen_character_alignment:
                xfill True
                text_style 'screen_character_style_text'
                text_align(0.0, 0.0)

    button:
        area (1390, 720, 193, 78)
        action Hide('screen_character')
        background cached_button_background
        hover_background cached_button_hover_background

        text _('screen_character_return'): # Вернуться
            style 'screen_character_style_button_text'
            align (0.5, 0.5)


style screen_character_style_text:
    size 20
    color color_yellow
    align (0.5, 0.5)
style screen_character_style_title:
    size 20
    color color_yellow
    align (0.5, 0.5)
    font font_exocet
style screen_character_style_value:
    size 20
    color color_white
    align (0.5, 0.5)
style screen_character_style_button_text:
    size 20
    color color_white
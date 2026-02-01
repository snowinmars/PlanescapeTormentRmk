init python:
    def get_alignment(character):
        good_treshold = 10
        law_treshold = 10

        if character.good > good_treshold and character.law > law_treshold:
            return 'character_screen_lawful_good{#character_screen_lawful_good}'
        if character.good > good_treshold and -law_treshold <= character.law <= law_treshold:
            return 'character_screen_neutral_good{#character_screen_neutral_good}'
        if character.good > good_treshold and character.law < -law_treshold:
            return 'character_screen_chaotic_good{#character_screen_chaotic_good}'
        if -good_treshold <= character.good <= good_treshold and character.law > law_treshold:
            return 'character_screen_lawful_neutral{#character_screen_lawful_neutral}'
        if -good_treshold <= character.good <= good_treshold and -law_treshold <= character.law <= law_treshold:
            return 'character_screen_true_neutral{#character_screen_true_neutral}'
        if -good_treshold <= character.good <= good_treshold and character.law < -law_treshold:
            return 'character_screen_chaotic_neutral{#character_screen_chaotic_neutral}'
        if character.good < -good_treshold and character.law > law_treshold:
            return 'character_screen_lawful_evil{#character_screen_lawful_evil}'
        if character.good < -good_treshold and -law_treshold <= character.law <= law_treshold:
            return 'character_screen_neutral_evil{#character_screen_neutral_evil}'
        if character.good < -good_treshold and character.law < -law_treshold:
            return 'character_screen_chaotic_evil{#character_screen_chaotic_evil}'


label never_character_screen:
    $ never = _('zombie')


screen character_screen(get_character):
    default character = get_character()

    on 'show' action SetVariable('character', get_character())

    modal True
    zorder 100

    for k in keymap_character_screen:
        key k action Hide('character_screen')
    key 'K_ESCAPE' action Hide('character_screen')

    frame:
        xfill True
        yfill True
        align (0.5, 0.5)
        background Transform('gui/recbg.webp')

        vbox:
            pos (685, 55)
            xsize 275
            spacing 40

            label _(character.name): # Безымянный
                xfill True
                text_style '_character_screen_style_text'
            label _(character.current_class): # Воин
                xfill True
                text_style '_character_screen_style_text'

        vbox:
            pos (1035, 100)
            xsize 160
            spacing 55

            label _(character.race): # Человек
                xfill True
                text_style '_character_screen_style_text'

            label _(character.sex): # Мужской
                xfill True
                text_style '_character_screen_style_text'

        ####
        vbox:
            pos (1116, 335)
            xsize 50
            spacing 15

            label _('character_screen_armor_class'): # КБ
                xfill True
                text_style '_character_screen_style_text'

            label str(character.ac): # 10
                xfill True
                text_style '_character_screen_style_text'

        ####
        frame:
            pos (1226, 440)
            background Transform('gui/ichpman.png')
            padding (0, 0)

            vbox:
                pos (0, 0)
                xsize 50
                spacing 20

                label str(character.current_health): # 20
                    xfill True
                    text_style '_character_screen_style_text'

                label str(character.max_health): # 20
                    xfill True
                    text_style '_character_screen_style_text'


        ###
        frame:
            area (1021, 486, 117, 117)
            background Transform('gui/aligment_neutral.png', align=(0.5, 0.5))
            padding (0, 0)

            # add Transform('gui/aligment_neutral.png'):
            #     pos (0, 0)

            vbox:
                pos (0, 0)
                xfill True
                spacing 20

                if character.good >= 0:
                    label str(character.good):
                        xfill True
                        text_style '_character_screen_style_text'

                label str(character.law):
                    xfill True
                    text_style '_character_screen_style_text'
                    if character.law >= 0:
                        text_align (0.95, 0.5)
                    else:
                        text_align (0.05, 0.5)

                if character.good < 0:
                    label str(character.good):
                        xfill True
                        text_style '_character_screen_style_text'

        ####
        vbox:
            pos (510, 130)
            xsize 145
            spacing 70

            label _('character_screen_strength'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.strength):
                xfill True
                text_style '_character_screen_style_value'

        ####
        vbox:
            pos (408, 316)
            xsize 145
            spacing 70

            label _('character_screen_intelligence'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.intelligence):
                xfill True
                text_style '_character_screen_style_value'

        ####
        vbox:
            pos (429, 505)
            xsize 145
            spacing 70

            label _('character_screen_wisdom'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.wisdom):
                xfill True
                text_style '_character_screen_style_value'

        ####
        vbox:
            pos (562, 665)
            xsize 145
            spacing 70

            label _('character_screen_dexterity'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.dexterity):
                xfill True
                text_style '_character_screen_style_value'

        ####
        vbox:
            pos (737, 731)
            xsize 145
            spacing 70

            label _('character_screen_constitution'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.constitution):
                xfill True
                text_style '_character_screen_style_value'

        ####
        vbox:
            pos (916, 672)
            xsize 145
            spacing 70

            label _('character_screen_charisma'):
                xfill True
                text_style '_character_screen_style_title'

            label str(character.charisma):
                xfill True
                text_style '_character_screen_style_value'


    viewport:
        area (1415, 75, 300, 575)

        vbox:
            xfill True

            label _(character.name):
                xfill True
                text_style '_character_screen_style_title'

            if character.looks_like:
                label __('character_screen_looks_like{#character_screen_looks_like}').format(looks_like=__(character.looks_like)):
                    xfill True
                    text_style '_character_screen_style_text'
                    text_align(0.0, 0.0)
            else:
                label _('character_screen_looks_like_default{#character_screen_looks_like_default}'):
                    xfill True
                    text_style '_character_screen_style_text'
                    text_align(0.0, 0.0)

            label _(get_alignment(character)):
                xfill True
                text_style '_character_screen_style_text'
                text_align(0.0, 0.0)

    button:
        area (1390, 720, 193, 78)
        action Hide('character_screen')
        background Transform('gui/button.png')
        hover_background Transform('gui/button.png', matrixcolor=hover_matrix)

        text _('preferences_screen_return'): # Вернуться
            style 'preferences_dev_screen_style_button_text'
            align (0.5, 0.5)


style _character_screen_style_text:
    size 20
    color color_yellow
    align (0.5, 0.5)
style _character_screen_style_title:
    size 20
    color color_yellow
    align (0.5, 0.5)
    font 'exocet.ttf'
style _character_screen_style_value:
    size 20
    color color_white
    align (0.5, 0.5)

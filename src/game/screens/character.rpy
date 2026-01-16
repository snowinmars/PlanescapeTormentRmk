$ never = _('zombie')

init python:
    from game.engine.runtime import (runtime)


screen character_screen_button():
    textbutton "Character" action Show("character_screen", character=runtime.global_state_manager.characters_manager.get_character('protagonist_character_name')):
        align (1.0, 0.0)
        offset (-20, 20)

screen character_screen(character):
    modal True
    zorder 100

    # Close with 'c' key or right-click
    key "c" action Hide("character_screen")
    key "C" action Hide("character_screen")
    key "с" action Hide("character_screen")
    key "С" action Hide("character_screen")
    key "mouseup_3" action Hide("character_screen")

    frame:
        xalign 0
        yalign 0.5
        xsize 1000
        ysize 1000
        xpadding 30
        ypadding 30
        background Transform("gui/recbg.png", fit='cover')

        vbox:
            label _(character.name):
                xpos 460
                ypos 25
                xsize 275
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label _(character.current_class):
                xpos 460
                ypos 60
                xsize 275
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

        vbox:
            label _(character.race):
                xpos 790
                ypos 70
                xsize 160
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label _(character.sex):
                xpos 785
                ypos 110
                xsize 165
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_armor_class"):
                xpos 870
                ypos 290
                xsize 50
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.ac):
                xpos 870
                ypos 295
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:

            label str(character.current_health):
                xpos 972
                ypos 385
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)
                background Transform('gui/ichpman.png', fit='cover')

            label str(character.max_health):
                xpos 972
                ypos 395
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_strength"):
                xpos 325
                ypos 92
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.strength):
                xpos 350
                ypos 150
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_intelligence"):
                xpos 232
                ypos 265
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.intelligence):
                xpos 258
                ypos 325
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_wisdom"):
                xpos 249
                ypos 440
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.wisdom):
                xpos 277
                ypos 500
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_dexterity"):
                xpos 375
                ypos 588
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.dexterity):
                xpos 402
                ypos 650
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_constitution"):
                xpos 537
                ypos 650
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.constitution):
                xpos 563
                ypos 708
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("character_screen_charisma"):
                xpos 705
                ypos 595
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)
                text_font 'exocet.ttf'

            label str(character.charisma):
                xpos 725
                ypos 653
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ###
        vbox:
            imagebutton:
                idle Transform("gui/aligment_neutral.png", fit='cover')
                xpos 799
                ypos 444
                xsize 75
                ysize 75

            label str(character.good):
                xpos 812
                if character.good >= 0:
                    ypos 348
                else:
                    ypos 440
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

            label str(character.law):
                if character.law >= 0:
                    xpos 855
                else:
                    xpos 769
                ypos 364
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

                # text "Lore: [character.lore]" size 25 color "#0ff"
                # text "XP: [character.experience]" size 25 color "#f80"
                # text "looks_like: [character.looks_like]" size 25 color "#f80"

    viewport:
        xpos 1165
        ypos 100
        xsize 300
        ysize 575

        vbox:
            xfill True

            text _(character.name):
                size 20
                color "#dbc401"
            if character.looks_like:
                $ looks_like = __('character_screen_looks_like{#character_screen_looks_like}').format(looks_like=__(character.looks_like))
            else:
                $ looks_like = _('character_screen_looks_like_default{#character_screen_looks_like_default}')
            text looks_like:
                size 20
                color "#dbc401"

            $ good_treshold = 10
            $ law_treshold = 10
            if character.good > good_treshold and character.law > law_treshold:
                $ alignment = _('character_screen_lawful_good{#character_screen_lawful_good}')
            if character.good > good_treshold and -law_treshold <= character.law <= law_treshold:
                $ alignment = _('character_screen_neutral_good{#character_screen_neutral_good}')
            if character.good > good_treshold and character.law < -law_treshold:
                $ alignment = _('character_screen_chaotic_good{#character_screen_chaotic_good}')
            if -good_treshold <= character.good <= good_treshold and character.law > law_treshold:
                $ alignment = _('character_screen_lawful_neutral{#character_screen_lawful_neutral}')
            if -good_treshold <= character.good <= good_treshold and -law_treshold <= character.law <= law_treshold:
                $ alignment = _('character_screen_true_neutral{#character_screen_true_neutral}')
            if -good_treshold <= character.good <= good_treshold and character.law < -law_treshold:
                $ alignment = _('character_screen_chaotic_neutral{#character_screen_chaotic_neutral}')
            if character.good < -good_treshold and character.law > law_treshold:
                $ alignment = _('character_screen_lawful_evil{#character_screen_lawful_evil}')
            if character.good < -good_treshold and -law_treshold <= character.law <= law_treshold:
                $ alignment = _('character_screen_neutral_evil{#character_screen_neutral_evil}')
            if character.good < -good_treshold and character.law < -law_treshold:
                $ alignment = _('character_screen_chaotic_evil{#character_screen_chaotic_evil}')
            text alignment:
                size 20
                color "#dbc401"

    button:
            xpos 1100
            ypos 100
            xsize 50
            ysize 50
            background Transform('gui/close.png', fit='cover')
            hover_background Transform('gui/close_hover.png', fit='cover')
            action Hide("character_screen")

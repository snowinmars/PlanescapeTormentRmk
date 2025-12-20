init python:
    from game.engine.runtime import (runtime)


screen character_screen_button():
    textbutton "Character" action Show("character_screen", character=runtime.global_state_manager.characters_manager.get_character('The Nameless One')):
        align (1.0, 0.0)
        offset (-20, 20)

screen character_screen(character):
    modal True
    zorder 100

    # Close with 'c' key or right-click
    key "c" action Hide("character_screen")
    key "mouseup_3" action Hide("character_screen")

    frame:
        xalign 0
        yalign 0.5
        xsize 1000
        ysize 1000
        xpadding 30
        ypadding 30
        background Transform("bg/recbg.png", fit='cover')

        vbox:
            label character.name:
                xpos 460
                ypos 25
                xsize 275
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label _("Маг{#character_screen_class}"):
                xpos 460
                ypos 60
                xsize 275
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

        vbox:
            label _("Человек{#character_screen_race}"):
                xpos 790
                ypos 70
                xsize 160
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label _("Мужчина{#character_screen_sex}"):
                xpos 785
                ypos 110
                xsize 165
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("КБ{#character_screen_armor_class}"):
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

            label str(character.max_health):
                xpos 972
                ypos 395
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("СИЛ{#character_screen_strength}"):
                xpos 325
                ypos 92
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.strength):
                xpos 350
                ypos 150
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("ИНТ{#character_screen_intelligence}"):
                xpos 232
                ypos 265
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.intelligence):
                xpos 258
                ypos 325
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("МУД{#character_screen_wisdom}"):
                xpos 249
                ypos 440
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.wisdom):
                xpos 277
                ypos 500
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("ЛОВ{#character_screen_dexterity}"):
                xpos 375
                ypos 588
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.dexterity):
                xpos 402
                ypos 650
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("ТЕЛ{#character_screen_constitution}"):
                xpos 537
                ypos 650
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

            label str(character.constitution):
                xpos 563
                ypos 708
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

        ####
        vbox:
            label _("ОБА{#character_screen_charisma}"):
                xpos 705
                ypos 595
                xsize 100
                text_size 20
                text_color "#dbc401"
                text_align (0.5, 0.5)

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
                idle Transform("bg/aligment_neutral.png", fit='cover')
                xpos 799
                ypos 444
                xsize 75
                ysize 75

            label str(character.good):
                xpos 812
                ypos 348
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

            label str(character.law):
                xpos 855
                ypos 364
                xsize 50
                text_size 20
                text_color "#f8f6de"
                text_align (0.5, 0.5)

                # text "Lore: [character.lore]" size 25 color "#0ff"
                # text "XP: [character.experience]" size 25 color "#f80"

            # Close button
            textbutton "Close":
                xalign 0.5
                action Hide("character_screen")

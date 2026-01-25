init python:
    min_prop_value = 9
    max_prop_value = 18
    max_props_sum = 75
    default_health = 20
    health_threshhold = 15


    def dec_prop(character, prop):
        if character.get_all_properties()[prop] <= min_prop_value:
            return

        runtime.global_state_manager.characters_manager.modify_property('protagonist_character_name', prop, -1)

        if prop == 'constitution':
            update_max_health(character)


    def inc_prop(character, prop):
        if count_all_props_sum(character) >= max_props_sum:
            return

        if character.get_all_properties()[prop] >= max_prop_value:
            return

        runtime.global_state_manager.characters_manager.modify_property('protagonist_character_name', prop, 1)

        if prop == 'constitution':
            update_max_health(character)


    def update_max_health(character):
        extra_health = 0
        if character.constitution >= min_prop_value and \
            character.constitution < health_threshhold:
            extra_health = (character.constitution - min_prop_value) * 2
        if character.constitution >= health_threshhold:
            extra_health = (character.constitution - min_prop_value) * 2 + (character.constitution - health_threshhold) + 1

        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'max_health', default_health + extra_health)



    def count_all_props_sum(character):
        return \
            character.strength + \
            character.dexterity + \
            character.intelligence + \
            character.constitution + \
            character.wisdom + \
            character.charisma


    def set_mage(character):
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'strength', 9)
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'dexterity', 9)
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'intelligence', 16)
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'constitution', 9)
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'wisdom', 17)
        runtime.global_state_manager.characters_manager.set_property('protagonist_character_name', 'charisma', 15)


screen character_creation():
    $ character=runtime.global_state_manager.characters_manager.get_character('protagonist_character_name')

    tag menu

    frame:
        background Transform('gui/cgback.webp', fit='cover')

        ####
        button:
            xpos 970
            ypos 30
            xsize 325
            ysize 210
            action NullAction()
            hovered [Show('character_creation_strength'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_strength'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_strength"):
                    xpos 75
                    ypos 140
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 23
                    ypos 23
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'strength')]
                    hovered [Show('character_creation_strength'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_strength'), Show('character_creation_help')]
                    sensitive (character.strength > min_prop_value)

                label str(character.strength):
                    xpos 125
                    ypos 33
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 215
                    ypos 20
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'strength')]
                    hovered [Show('character_creation_strength'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_strength'), Show('character_creation_help')]
                    sensitive (character.strength < max_prop_value and count_all_props_sum(character) < max_props_sum)

        ####
        button:
            xpos 685
            ypos 135
            xsize 275
            ysize 300
            action NullAction()
            hovered [Show('character_creation_intelligence'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_intelligence'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_intelligence"):
                    xpos 190
                    ypos 190
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 50
                    ypos 225
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'intelligence')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60
                    hovered [Show('character_creation_intelligence'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_intelligence'), Show('character_creation_help')]
                    sensitive (character.intelligence > min_prop_value)

                label str(character.intelligence):
                    xpos 80
                    ypos 125
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 145
                    ypos 60
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'intelligence')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60
                    hovered [Show('character_creation_intelligence'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_intelligence'), Show('character_creation_help')]
                    sensitive (character.intelligence < max_prop_value and count_all_props_sum(character) < max_props_sum)

        ####
        button:
            xpos 700
            ypos 525
            xsize 250
            ysize 275
            action NullAction()
            hovered [Show('character_creation_wisdom'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_wisdom'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_wisdom"):
                    xpos 170
                    ypos 90
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 35
                    ypos 55
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'wisdom')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60
                    hovered [Show('character_creation_wisdom'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_wisdom'), Show('character_creation_help')]
                    sensitive (character.wisdom > min_prop_value)

                label str(character.wisdom):
                    xpos 62
                    ypos 118
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 133
                    ypos 223
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'wisdom')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60
                    hovered [Show('character_creation_wisdom'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_wisdom'), Show('character_creation_help')]
                    sensitive (character.wisdom < max_prop_value and count_all_props_sum(character) < max_props_sum)

        ####
        button:
            xpos 975
            ypos 725
            xsize 315
            ysize 200
            action NullAction()
            hovered [Show('character_creation_dexterity'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_dexterity'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_dexterity"):
                    xpos 70
                    ypos 30
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 15
                    ypos 115
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'dexterity')]
                    hovered [Show('character_creation_dexterity'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_dexterity'), Show('character_creation_help')]
                    sensitive (character.dexterity > min_prop_value)

                label str(character.dexterity):
                    xpos 120
                    ypos 125
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 205
                    ypos 115
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'dexterity')]
                    hovered [Show('character_creation_dexterity'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_dexterity'), Show('character_creation_help')]
                    sensitive (character.dexterity < max_prop_value and count_all_props_sum(character) < max_props_sum)

        ####
        button:
            xpos 1300
            ypos 525
            xsize 265
            ysize 285
            action NullAction()
            hovered [Show('character_creation_constitution'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_constitution'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_constitution"):
                    xpos 75
                    ypos 90
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 112
                    ypos 222
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'constitution')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60
                    hovered [Show('character_creation_constitution'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_constitution'), Show('character_creation_help')]
                    sensitive (character.constitution > min_prop_value)

                label str(character.constitution):
                    xpos 123
                    ypos 116
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 210
                    ypos 55
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'constitution')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate -60
                    hovered [Show('character_creation_constitution'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_constitution'), Show('character_creation_help')]
                    sensitive (character.constitution < max_prop_value and count_all_props_sum(character) < max_props_sum)

        ####
        button:
            xpos 1300
            ypos 150
            xsize 265
            ysize 285
            action NullAction()
            hovered [Show('character_creation_charisma'), Hide('character_creation_help')]
            unhovered [Hide('character_creation_charisma'), Show('character_creation_help')]

            frame:
                background None

                label _("character_screen_charisma"):
                    xpos 72
                    ypos 177
                    xsize 150
                    text_size 26
                    text_color "#dbc401"
                    text_align (0.5, 0.5)
                    text_font 'exocet.ttf'
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60

                button:
                    background Transform('gui/property_minus.png', fit='cover')
                    hover_background Transform('gui/property_minus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_minus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 110
                    ypos 48
                    xsize 72
                    ysize 57
                    action [Function(dec_prop, character, 'charisma')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60
                    hovered [Show('character_creation_charisma'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_charisma'), Show('character_creation_help')]
                    sensitive (character.charisma > min_prop_value)

                label str(character.charisma):
                    xpos 125
                    ypos 110
                    xsize 50
                    text_size 20
                    text_color "#f8f6de"
                    text_align (0.5, 0.5)

                button:
                    background Transform('gui/property_plus.png', fit='cover')
                    hover_background Transform('gui/property_plus.png', fit='cover', matrixcolor=hover_matrix)
                    insensitive_background Transform('gui/property_plus.png', fit='cover', matrixcolor=insensitive_matrix)
                    xpos 205
                    ypos 210
                    xsize 72
                    ysize 57
                    action [Function(inc_prop, character, 'charisma')]
                    at transform:
                        anchor (0.5, 0.5)
                        rotate 60
                    hovered [Show('character_creation_charisma'), Hide('character_creation_help')]
                    unhovered [Hide('character_creation_charisma'), Show('character_creation_help')]
                    sensitive (character.charisma < max_prop_value and count_all_props_sum(character) < max_props_sum)

        vbox:
            text _('character_screen_points'):
                xpos 300
                ypos 825
                xsize 300
                ysize 50
                size 20
                color "#f8f6dE"
                text_align 0.5

            text _('character_screen_ac'):
                xpos 300
                ypos 875
                xsize 300
                ysize 50
                size 20
                color "#f8f6dE"
                text_align 0.5

            text _('character_screen_hp'):
                xpos 300
                ypos 915
                xsize 300
                ysize 50
                size 20
                color "#f8f6dE"
                text_align 0.5

        vbox:
            label str(max_props_sum - count_all_props_sum(character)):
                xpos 615
                ypos 830
                xsize 70
                text_size 20
                text_color "#f8f6dE"
                text_align (0.5, 0.5)

            label str(character.ac):
                xpos 615
                ypos 875
                xsize 70
                text_size 20
                text_color "#f8f6dE"
                text_align (0.5, 0.5)

            label str(character.max_health):
                xpos 615
                ypos 915
                xsize 70
                text_size 20
                text_color "#f8f6dE"
                text_align (0.5, 0.5)

    label _('protagonist_character_new_life'):
        xpos 340
        ypos 50
        xsize 500
        ysize 50
        text_size 30
        text_color "#dbc401"
        text_align (0.5, 0.5)

    label _('protagonist_character_name'):
        xpos 980
        ypos 970
        xsize 295
        ysize 25
        text_size 20
        text_color "#dbc401"
        text_align (0.5, 0.5)

    add Transform('gui/stpnoa.png', fit='cover'):
        xpos 965
        ypos 320
        xsize 340
        ysize 340

    button:
        xpos 1450
        ypos 860
        xsize 140
        ysize 66
        background Transform('gui/cgback_go.png', fit='cover')
        hover_background Transform('gui/cgback_go.png', fit='cover', matrixcolor=hover_matrix)
        insensitive_background Transform('gui/cgback_go.png', fit='cover', matrixcolor=insensitive_matrix)
        action Start()
        sensitive (count_all_props_sum(character) == max_props_sum)
        text _("character_screen_go"):
            xpos 35
            ypos 25
            size 20
            color "#f8f6dE"
            insensitive_color "#ccdcb8"


    button:
        xpos 1450
        ypos 940
        xsize 140
        ysize 66
        background Transform('gui/cgback_back.png', fit='cover')
        hover_background Transform('gui/cgback_back.png', fit='cover', matrixcolor=hover_matrix)
        action [
            ShowMenu("main_menu"),
            Hide('character_creation_help'),
            Hide('character_creation_strength'),
            Hide('character_creation_intelligence'),
            Hide('character_creation_wisdom'),
            Hide('character_creation_dexterity'),
            Hide('character_creation_constitution'),
            Hide('character_creation_charisma')
        ]
        text _("character_screen_back"):
            xpos 35
            ypos 5
            size 20
            color "#f8f6dE"

    frame:
        xpos 0
        ypos 150
        xsize 128
        background None

        vbox:
            spacing 10

            button :
                action [Function(set_mage, character)]

                text _('character_screen_set_mage'): # 'Маг'
                    size 18
                    color '#dbc401'
                    hover_color '#eeeeee'


screen character_creation_help():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_strength():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_strength_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_intelligence():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_intelligence_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_wisdom():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_wisdom_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_dexterity():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_dexterity_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_constitution():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_constitution_help'):
            text_size 20
            text_color "dbc401"

screen character_creation_charisma():
    frame:
        xpos 310
        ypos 200
        xsize 330
        ysize 525
        background None

        label _('character_screen_charisma_help'):
            text_size 20
            text_color "dbc401"

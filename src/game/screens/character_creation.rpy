init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.CharacterCreationLogic import (CharacterCreationLogic)
    characterCreationLogic = CharacterCreationLogic(runtime.global_state_manager, character_id = 'protagonist_character_name')


screen character_creation():
    on 'show' action Function(characterCreationLogic.reset_character)

    tag menu

    frame:
        background Transform('gui/cgback.webp')

        use _strength_input()
        use _intelligence_input()
        use _wisdom_input()
        use _dexterity_input()
        use _constitution_input()
        use _charisma_input()

        vbox:
            pos (300, 831)
            spacing 43

            text _('character_screen_points'):
                xysize (300, 50)
                style '_input_screen_style_value'

            text _('character_screen_ac'):
                xysize (300, 50)
                style '_input_screen_style_value'

            text _('character_screen_hp'):
                xysize (300, 50)
                style '_input_screen_style_value'

        vbox:
            pos (640, 831)
            spacing 43

            text str(characterCreationLogic.remaning_points()):
                xsize 70
                style '_input_screen_style_value'

            text str(characterCreationLogic.get_character().ac):
                xsize 70
                style '_input_screen_style_value'

            text str(characterCreationLogic.get_character().max_health):
                xsize 70
                style '_input_screen_style_value'

    button :
        xpos 0
        ypos 175
        xsize 128
        action Function(characterCreationLogic.set_mage)

        text _('character_screen_set_mage'): # 'Выбрать мага (РЕКОММЕНДУЕТСЯ!)'
            style '_input_screen_style_button'

    label _('protagonist_character_new_life'): # Новая жизнь
        area (340, 50, 500, 50)
        text_size 30
        text_color color_yellow
        text_align (0.5, 0.5)
        text_font 'exocet.ttf'

    label _('protagonist_character_name'):
        area (980, 970, 295, 25)
        text_size 20
        text_color color_yellow
        text_align (0.5, 0.5)

    add Transform('gui/stpnoa.png'):
        pos (965, 320)
        size (340, 340)

    button:
        area (1450, 860, 140, 66)
        background Transform('gui/cgback_go.png')
        hover_background Transform('gui/cgback_go.png', matrixcolor=hover_matrix)
        insensitive_background Transform('gui/cgback_go.png', matrixcolor=insensitive_matrix)
        action Start()
        sensitive (characterCreationLogic.done())
        text _('character_screen_go'): # Готово
            pos (35, 25)
            style '_input_screen_style_button'

    button:
        area (1450, 940, 140, 66)
        background Transform('gui/cgback_back.png')
        hover_background Transform('gui/cgback_back.png', matrixcolor=hover_matrix)
        action [
            ShowMenu('main_menu'),
            Hide('_character_creation_descrption'),
            Hide('character_creation')
        ]
        text _('character_screen_back'): # 'Отмена'
            pos (35, 5)
            style '_input_screen_style_button'


###


screen _character_creation_descrption(x):
    text _(x):
        area (310, 200, 330, 525)
        style '_input_screen_style_descrption'


###


screen _strength_input():
    button:
        area (970, 30, 315, 185)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_strength_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_strength'):
            pos (125, 145)
            xsize 150
            style '_input_screen_style_title'

        button:
            area (30, 30, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='strength'))
            action Function(characterCreationLogic.dec_prop, None, 'strength')
            hovered Show('_character_creation_descrption', x='character_screen_strength_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')

        text str(characterCreationLogic.get_character().strength):
            pos (150, 40)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (220, 25, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='strength'))
            action Function(characterCreationLogic.inc_prop, None, 'strength')
            hovered Show('_character_creation_descrption', x='character_screen_strength_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')


###


screen _intelligence_input():
    button:
        area (685, 135, 275, 300)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_intelligence_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_intelligence'):
            pos (195, 195)
            xsize 150
            style '_input_screen_style_title'
            at _input_screen_counterclockwise_transform

        button:
            area (57, 230, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='intelligence'))
            action Function(characterCreationLogic.dec_prop, None, 'intelligence')
            hovered Show('_character_creation_descrption', x='character_screen_intelligence_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_counterclockwise_transform

        text str(characterCreationLogic.get_character().intelligence):
            pos (105, 130)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (150, 65, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='intelligence'))
            action Function(characterCreationLogic.inc_prop, None, 'intelligence')
            hovered Show('_character_creation_descrption', x='character_screen_intelligence_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_counterclockwise_transform


###


screen _wisdom_input():
    button:
        area (700, 525, 250, 275)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_wisdom_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_wisdom'):
            pos (180, 95)
            xsize 150
            style '_input_screen_style_title'
            at _input_screen_clockwise_transform

        button:
            area (42, 62, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='wisdom'))
            action Function(characterCreationLogic.dec_prop, None, 'wisdom')
            hovered Show('_character_creation_descrption', x='character_screen_wisdom_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_clockwise_transform

        text str(characterCreationLogic.get_character().wisdom):
            pos (85, 120)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (140, 223, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='wisdom'))
            action Function(characterCreationLogic.inc_prop, None, 'wisdom')
            hovered Show('_character_creation_descrption', x='character_screen_wisdom_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_clockwise_transform


###


screen _dexterity_input():
    button:
        area (975, 725, 315, 200)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_dexterity_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_dexterity'):
            pos (120, 35)
            xsize 150
            style '_input_screen_style_title'

        button:
            area (20, 120, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='dexterity'))
            action Function(characterCreationLogic.dec_prop, None, 'dexterity')
            hovered Show('_character_creation_descrption', x='character_screen_dexterity_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')

        text str(characterCreationLogic.get_character().dexterity):
            pos (145, 130)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (215, 120, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='dexterity'))
            action Function(characterCreationLogic.inc_prop, None, 'dexterity')
            hovered Show('_character_creation_descrption', x='character_screen_dexterity_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')


###


screen _constitution_input():
    button:
        area (1300, 525, 265, 285)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_constitution_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_constitution'):
            pos (80, 95)
            xsize 150
            style '_input_screen_style_title'
            at _input_screen_counterclockwise_transform

        button:
            area (120, 225, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='constitution'))
            action Function(characterCreationLogic.dec_prop, None, 'constitution')
            hovered Show('_character_creation_descrption', x='character_screen_constitution_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_counterclockwise_transform

        text str(characterCreationLogic.get_character().constitution):
            pos (145, 122)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (212, 62, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='constitution'))
            action Function(characterCreationLogic.inc_prop, None, 'constitution')
            hovered Show('_character_creation_descrption', x='character_screen_constitution_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_counterclockwise_transform


###


screen _charisma_input():
    button:
        area (1300, 150, 265, 285)
        action NullAction()
        hovered Show('_character_creation_descrption', x='character_screen_charisma_help')
        unhovered Show('_character_creation_descrption', x='character_screen_help')

        text _('character_screen_charisma'):
            pos (80, 180)
            xsize 150
            style '_input_screen_style_title'
            at _input_screen_clockwise_transform

        button:
            area (115, 55, 72, 57)
            style '_input_screen_style_property_minus'
            sensitive (characterCreationLogic.minus_sensitive(prop='charisma'))
            action Function(characterCreationLogic.dec_prop, None, 'charisma')
            hovered Show('_character_creation_descrption', x='character_screen_charisma_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_clockwise_transform

        text str(characterCreationLogic.get_character().charisma):
            pos (145, 115)
            xsize 50
            style '_input_screen_style_value'

        button:
            area (210, 215, 72, 57)
            style '_input_screen_style_property_plus'
            sensitive (characterCreationLogic.plus_sensitive(prop='charisma'))
            action Function(characterCreationLogic.inc_prop, None, 'charisma')
            hovered Show('_character_creation_descrption', x='character_screen_charisma_help')
            unhovered Show('_character_creation_descrption', x='character_screen_help')
            at _input_screen_clockwise_transform


###


style _input_screen_style_title:
    size 26
    color color_yellow
    font 'exocet.ttf'
style _input_screen_style_value:
    size 20
    color color_white
style _input_screen_style_descrption:
    size 20
    color color_yellow
style _input_screen_style_button:
    size 20
    color color_white
    hover_color color_yellow
    insensitive_color change_hex(color_yellow, saturation_percent=50, value_percent=50)
style _input_screen_style_property_minus:
    background Transform('gui/property_minus.png')
    hover_background Transform('gui/property_minus.png', matrixcolor=hover_matrix)
    insensitive_background Transform('gui/property_minus.png', matrixcolor=insensitive_matrix)
style _input_screen_style_property_plus:
    background Transform('gui/property_plus.png')
    hover_background Transform('gui/property_plus.png', matrixcolor=hover_matrix)
    insensitive_background Transform('gui/property_plus.png', matrixcolor=insensitive_matrix)
transform _input_screen_counterclockwise_transform:
    anchor (0.5, 0.5)
    rotate -60
transform _input_screen_clockwise_transform:
    anchor (0.5, 0.5)
    rotate 60

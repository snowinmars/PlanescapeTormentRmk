init 10 python:
    from game.engine.runtime import (runtime)
    from game.screens.CharacterCreationLogic import (CharacterCreationLogic)
    characterCreationLogic = CharacterCreationLogic(runtime.global_state_manager, character_id = 'protagonist_character_name')

    screen_character_creation_cached_cgback_go_background = 'gui_cgback_go'
    screen_character_creation_cached_cgback_go_hover_background = Transform('gui_cgback_go', matrixcolor=hover_matrix)
    screen_character_creation_cached_cgback_go_insensitive_background = Transform('gui_cgback_go', matrixcolor=insensitive_matrix)
    screen_character_creation_cached_cgback_back_background = 'gui_cgback_back'
    screen_character_creation_cached_cgback_back_hover_background = Transform('gui_cgback_back', matrixcolor=hover_matrix)
    screen_character_creation_cached_minus_background = 'gui_property_minus'
    screen_character_creation_cached_minus_hover_background = Transform('gui_property_minus', matrixcolor=hover_matrix)
    screen_character_creation_cached_minus_insensitive_background = Transform('gui_property_minus', matrixcolor=insensitive_matrix)
    screen_character_creation_cached_plus_background = 'gui_property_plus'
    screen_character_creation_cached_plus_hover_background = Transform('gui_property_plus', matrixcolor=hover_matrix)
    screen_character_creation_cached_plus_insensitive_background = Transform('gui_property_plus', matrixcolor=insensitive_matrix)


label never_screen_character_creation:
    $ never = _('screen_character_creation_strength_help')
    $ never = _('screen_character_creation_strength_help')
    $ never = _('screen_character_creation_strength_help')
    $ never = _('screen_character_creation_intelligence_help')
    $ never = _('screen_character_creation_intelligence_help')
    $ never = _('screen_character_creation_intelligence_help')
    $ never = _('screen_character_creation_wisdom_help')
    $ never = _('screen_character_creation_wisdom_help')
    $ never = _('screen_character_creation_wisdom_help')
    $ never = _('screen_character_creation_dexterity_help')
    $ never = _('screen_character_creation_dexterity_help')
    $ never = _('screen_character_creation_dexterity_help')
    $ never = _('screen_character_creation_constitution_help')
    $ never = _('screen_character_creation_constitution_help')
    $ never = _('screen_character_creation_constitution_help')
    $ never = _('screen_character_creation_charisma_help')
    $ never = _('screen_character_creation_charisma_help')
    $ never = _('screen_character_creation_charisma_help')


screen screen_character_creation():
    on 'show' action Function(characterCreationLogic.reset_character)

    tag menu

    default screen_character_creation_descrption = _('screen_character_creation_help')

    frame:
        background 'gui_cgback'

        text _(screen_character_creation_descrption):
            area (310, 200, 330, 525)
            style 'screen_character_creation_style_descrption'

        # <strength_input>
        button:
            area (970, 30, 315, 185)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_strength_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_strength'):
                pos (125, 145)
                xsize 150
                style 'screen_character_creation_style_title'

            button:
                area (30, 30, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='strength'))
                action Function(characterCreationLogic.dec_prop, None, 'strength')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_strength_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text str(characterCreationLogic.get_character().strength):
                pos (150, 40)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (220, 25, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='strength'))
                action Function(characterCreationLogic.inc_prop, None, 'strength')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_strength_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
        # </strength_input>

        # <intelligence_input>
        button:
            area (685, 135, 275, 300)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_intelligence_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_intelligence'):
                pos (195, 195)
                xsize 150
                style 'screen_character_creation_style_title'
                at transform_counterclockwise_60

            button:
                area (57, 230, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='intelligence'))
                action Function(characterCreationLogic.dec_prop, None, 'intelligence')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_intelligence_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_counterclockwise_60

            text str(characterCreationLogic.get_character().intelligence):
                pos (105, 130)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (150, 65, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='intelligence'))
                action Function(characterCreationLogic.inc_prop, None, 'intelligence')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_intelligence_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_counterclockwise_60
        # </intelligence_input>

        # <wisdom_input>
        button:
            area (700, 525, 250, 275)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_wisdom_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_wisdom'):
                pos (180, 95)
                xsize 150
                style 'screen_character_creation_style_title'
                at transform_clockwise_60

            button:
                area (42, 62, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='wisdom'))
                action Function(characterCreationLogic.dec_prop, None, 'wisdom')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_wisdom_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_clockwise_60

            text str(characterCreationLogic.get_character().wisdom):
                pos (85, 120)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (140, 223, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='wisdom'))
                action Function(characterCreationLogic.inc_prop, None, 'wisdom')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_wisdom_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_clockwise_60
        # </wisdom_input>

        # <dexterity_input>
        button:
            area (975, 725, 315, 200)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_dexterity_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_dexterity'):
                pos (120, 35)
                xsize 150
                style 'screen_character_creation_style_title'

            button:
                area (20, 120, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='dexterity'))
                action Function(characterCreationLogic.dec_prop, None, 'dexterity')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_dexterity_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text str(characterCreationLogic.get_character().dexterity):
                pos (145, 130)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (215, 120, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='dexterity'))
                action Function(characterCreationLogic.inc_prop, None, 'dexterity')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_dexterity_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
        # </dexterity_input>

        # <constitution_input>
        button:
            area (1300, 525, 265, 285)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_constitution_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_constitution'):
                pos (80, 95)
                xsize 150
                style 'screen_character_creation_style_title'
                at transform_counterclockwise_60

            button:
                area (120, 225, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='constitution'))
                action Function(characterCreationLogic.dec_prop, None, 'constitution')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_constitution_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_counterclockwise_60

            text str(characterCreationLogic.get_character().constitution):
                pos (145, 122)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (212, 62, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='constitution'))
                action Function(characterCreationLogic.inc_prop, None, 'constitution')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_constitution_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_counterclockwise_60
        # </constitution_input>

        # <charisma_input>
        button:
            area (1300, 150, 265, 285)
            action NullAction()
            hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_charisma_help')
            unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')

            text _('screen_character_creation_charisma'):
                pos (80, 180)
                xsize 150
                style 'screen_character_creation_style_title'
                at transform_clockwise_60

            button:
                area (115, 55, 72, 57)
                style 'screen_character_creation_style_minus'
                sensitive (characterCreationLogic.minus_sensitive(prop='charisma'))
                action Function(characterCreationLogic.dec_prop, None, 'charisma')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_charisma_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_clockwise_60

            text str(characterCreationLogic.get_character().charisma):
                pos (145, 115)
                xsize 50
                style 'screen_character_creation_style_value'

            button:
                area (210, 215, 72, 57)
                style 'screen_character_creation_style_plus'
                sensitive (characterCreationLogic.plus_sensitive(prop='charisma'))
                action Function(characterCreationLogic.inc_prop, None, 'charisma')
                hovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_charisma_help')
                unhovered SetScreenVariable('screen_character_creation_descrption', 'screen_character_creation_help')
                at transform_clockwise_60
        # </charisma_input>

        vbox:
            pos (300, 831)
            spacing 43

            text _('screen_character_creation_points'):
                xysize (300, 50)
                style 'screen_character_creation_style_value'

            text _('screen_character_creation_ac'):
                xysize (300, 50)
                style 'screen_character_creation_style_value'

            text _('screen_character_creation_hp'):
                xysize (300, 50)
                style 'screen_character_creation_style_value'

        vbox:
            pos (640, 831)
            spacing 43

            text str(characterCreationLogic.remaning_points()):
                xsize 70
                style 'screen_character_creation_style_value'

            text str(characterCreationLogic.get_character().ac):
                xsize 70
                style 'screen_character_creation_style_value'

            text str(characterCreationLogic.get_character().max_health):
                xsize 70
                style 'screen_character_creation_style_value'

    button :
        xpos 0
        ypos 175
        xsize 256
        action Function(characterCreationLogic.set_mage)

        text _('screen_character_creation_set_mage'): # 'Выбрать РЕКОММЕНДУЕМЫЙ билд'
            style 'screen_character_creation_style_button'

    label _('protagonist_character_new_life'): # Новая жизнь
        area (340, 50, 500, 50)
        text_size 30
        text_color color_yellow
        text_align (0.5, 0.5)
        text_font font_exocet

    label _('protagonist_character_name'):
        area (980, 970, 295, 25)
        text_size 20
        text_color color_yellow
        text_align (0.5, 0.5)

    add 'gui_stpnoa':
        pos (965, 320)
        size (340, 340)

    button:
        area (1450, 860, 140, 66)
        background screen_character_creation_cached_cgback_go_background
        hover_background screen_character_creation_cached_cgback_go_hover_background
        insensitive_background screen_character_creation_cached_cgback_go_insensitive_background
        action Start()
        sensitive (characterCreationLogic.done())
        text _('screen_character_creation_go'): # Готово
            pos (35, 25)
            style 'screen_character_creation_style_button'

    button:
        area (1450, 940, 140, 66)
        background screen_character_creation_cached_cgback_back_background
        hover_background screen_character_creation_cached_cgback_back_hover_background
        action [
            ShowMenu('main_menu'),
            Hide('screen_character_creation')
        ]
        text _('screen_character_creation_back'): # 'Отмена'
            pos (35, 5)
            style 'screen_character_creation_style_button'


style screen_character_creation_style_title:
    size 26
    color color_yellow
    font font_exocet
style screen_character_creation_style_value:
    size 20
    color color_white
style screen_character_creation_style_descrption:
    size 20
    color color_yellow
style screen_character_creation_style_button:
    size 20
    color color_white
    hover_color color_yellow
    insensitive_color change_hex(color_yellow, saturation_percent=50, value_percent=50)
style screen_character_creation_style_minus:
    background screen_character_creation_cached_minus_background
    hover_background screen_character_creation_cached_minus_hover_background
    insensitive_background screen_character_creation_cached_minus_insensitive_background
style screen_character_creation_style_plus:
    background screen_character_creation_cached_plus_background
    hover_background screen_character_creation_cached_plus_hover_background
    insensitive_background screen_character_creation_cached_plus_insensitive_background

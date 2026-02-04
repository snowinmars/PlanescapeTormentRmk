screen screen_submenu():
    zorder 50

    modal False

    default screen_submenu_type = ''


    frame:
        xysize (208, 233)
        align (0.0, 1.0)
        background None
        padding (0, 0)

        if screen_submenu_type == 'actions':
            button:
                area (0, 0, 70, 91)
                background cached_submenu1_background
                hover_background cached_submenu1_hover_background
                action NullAction()
                text '-':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (69, 0, 99, 90)
                background cached_submenu2_background
                hover_background cached_submenu2_hover_background
                action NullAction()
                text 'Steal':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (120, 42, 88, 99)
                background cached_submenu3_background
                hover_background cached_submenu3_hover_background
                action NullAction()
                text 'Cast':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (119, 140, 89, 93)
                background cached_submenu4_background
                hover_background cached_submenu4_hover_background
                action NullAction()
                text 'Kill':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)


        if screen_submenu_type == 'interface':
            button:
                area (0, 0, 70, 91)
                background cached_submenu1_background
                hover_background cached_submenu1_hover_background
                action [
                    ShowMenu(),
                    SetScreenVariable('screen_submenu_type', '')
                ]
                text 'Menu':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (69, 0, 99, 90)
                background cached_submenu2_background
                hover_background cached_submenu2_hover_background
                action [
                    Show('screen_journal'),
                    SetScreenVariable('screen_submenu_type', '')
                ]
                text 'Journal':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (120, 42, 88, 99)
                background cached_submenu3_background
                hover_background cached_submenu3_hover_background
                action [
                    Show('screen_inventory'),
                    SetScreenVariable('screen_submenu_type', '')
                ]
                text 'Inventory':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)

            button:
                area (119, 140, 89, 93)
                background cached_submenu4_background
                hover_background cached_submenu4_hover_background
                action [
                    Show('screen_character'),
                    SetScreenVariable('screen_submenu_type', '')
                ]
                text 'Character':
                    style 'screen_submenu_style_button_text'
                    align (0.5, 0.5)


        button:
            area (0, 71, 138, 61)
            sensitive False
            if screen_submenu_type == 'actions':
                action SetScreenVariable('screen_submenu_type', '')
                background screen_character_creation_cached_cgback_go_hover_background
            else:
                action SetScreenVariable('screen_submenu_type', 'actions')
                background screen_character_creation_cached_cgback_go_background
            hover_background screen_character_creation_cached_cgback_go_hover_background

            text 'Действия':
                align (0.5, 0.9)
                style 'screen_submenu_style_text'

        button:
            area (0, 148, 138, 61)
            if screen_submenu_type == 'interface':
                action SetScreenVariable('screen_submenu_type', '')
                background screen_character_creation_cached_cgback_back_hover_background
            else:
                action SetScreenVariable('screen_submenu_type', 'interface')
                background screen_character_creation_cached_cgback_back_background
            hover_background screen_character_creation_cached_cgback_back_hover_background

            text 'Интерфейс':
                align (0.5, 0.0)
                style 'screen_submenu_style_text'


style screen_submenu_style_text:
    size 18
    color color_white
style screen_submenu_style_button_text:
    size 16
    color '#000000'
init 10 python:
    from game.engine.runtime import (runtime)
    from game.map.party.get_party import (get_party)
    from game.map.mortuary.f2.items import (
        InMortuaryF2R1PickScalpel,
        FromMortuaryF2R1ToMortuaryF2R2,
        FromMortuaryF2R1ToMortuaryF2R8,
        FromMortuaryF2R1ToMortuaryF3R1,
        FromMortuaryF2R1ToMortuaryF1R1,
        InMortuaryF2R1Zm569,
        InMortuaryF2R1Zm825,
        InMortuaryF2R1Zm782,

        FromMortuaryF2R2ToMortuaryF2R1,
        FromMortuaryF2R2ToMortuaryF2R3,
        InMortuaryF2R2Zm965,
        InMortuaryF2R2Zf594,
        InMortuaryF2R2Zf626,

        FromMortuaryF2R3ToMortuaryF2R2,
        FromMortuaryF2R3ToMortuaryF2R4,
        InMortuaryF2R3Dhall,
        InMortuaryF2R3Zm396,
        InMortuaryF2R3Zm1201,
        InMortuaryF2R3Zf1096,
        InMortuaryF2R3Zf1072,

        FromMortuaryF2R4ToMortuaryF2R3,
        FromMortuaryF2R4ToMortuaryF2R5,
        InMortuaryF2R4Zm1664,

        FromMortuaryF2R5ToMortuaryF2R4,
        FromMortuaryF2R5ToMortuaryF2R6,
        InMortuaryF2R5Eivene,
        InMortuaryF2R5Zm257,
        InMortuaryF2R5Zm506,
        InMortuaryF2R5Zm985,

        FromMortuaryF2R6ToMortuaryF2R5,
        FromMortuaryF2R6ToMortuaryF2R7,
        InMortuaryF2R6Vaxis,

        FromMortuaryF2R7ToMortuaryF2R6,
        FromMortuaryF2R7ToMortuaryF2R8,
        FromMortuaryF2R7ToMortuaryF3R3,
        FromMortuaryF2R7ToMortuaryF1R4,
        InMortuaryF2R7PickEmbalm,
        InMortuaryF2R7PickCopperEarringClosed,

        FromMortuaryF2R8ToMortuaryF2R7,
        FromMortuaryF2R8ToMortuaryF2R1,
        InMortuaryF2R8Zf891
    )


label mortuary_f2_map:
    call screen mortuary_f2_map


screen mortuary_f2_map():
    $ state_manager = runtime.global_state_manager
    use _mortuary_f2_map(
        'bg/mortuary/f2.png',
        [
            InMortuaryF2R1PickScalpel(state_manager, 1614, 2328),
            FromMortuaryF2R1ToMortuaryF2R2(state_manager, 1340, 2324),
            FromMortuaryF2R1ToMortuaryF2R8(state_manager, 2314, 2910),
            FromMortuaryF2R1ToMortuaryF3R1(state_manager, 1952, 2159),
            FromMortuaryF2R1ToMortuaryF1R1(state_manager, 1840, 2211),

            FromMortuaryF2R2ToMortuaryF2R1(state_manager, 1340, 2324),
            FromMortuaryF2R2ToMortuaryF2R3(state_manager, 1200, 1331),

            FromMortuaryF2R3ToMortuaryF2R2(state_manager, 1223, 1335),
            FromMortuaryF2R3ToMortuaryF2R4(state_manager, 2027, 649),

            FromMortuaryF2R4ToMortuaryF2R3(state_manager, 2021, 650),
            FromMortuaryF2R4ToMortuaryF2R5(state_manager, 3489, 538),

            FromMortuaryF2R5ToMortuaryF2R4(state_manager, 3480, 563),
            FromMortuaryF2R5ToMortuaryF2R6(state_manager, 4439, 1135),

            FromMortuaryF2R6ToMortuaryF2R5(state_manager, 4440, 1135),
            FromMortuaryF2R6ToMortuaryF2R7(state_manager, 4550, 2150),

            FromMortuaryF2R7ToMortuaryF2R6(state_manager, 4550, 2150),
            FromMortuaryF2R7ToMortuaryF2R8(state_manager, 3750, 2800),
            FromMortuaryF2R7ToMortuaryF3R3(state_manager, 3935, 2050),
            FromMortuaryF2R7ToMortuaryF1R4(state_manager, 4035, 2070),
            InMortuaryF2R7PickEmbalm(state_manager, 4130, 2160),
            InMortuaryF2R7PickCopperEarringClosed(state_manager, 3760, 2000),

            FromMortuaryF2R8ToMortuaryF2R7(state_manager, 3740, 2800),
            FromMortuaryF2R8ToMortuaryF2R1(state_manager, 2300, 2900),
        ],
        [
            *get_party(state_manager, mortuaryF2LootLogic.get_where_party_stands(state_manager)),

            InMortuaryF2R1Zm569(state_manager, 1817, 2439),
            InMortuaryF2R1Zm782(state_manager, 1863, 2663),
            InMortuaryF2R1Zm825(state_manager, 2207, 2689),

            InMortuaryF2R2Zm965(state_manager, 1200, 2000),
            InMortuaryF2R2Zf594(state_manager, 1600, 1850),
            InMortuaryF2R2Zf626(state_manager, 1200, 1700),

            InMortuaryF2R3Dhall(state_manager, 2047, 1268),
            InMortuaryF2R3Zm396(state_manager, 1513, 1100),
            InMortuaryF2R3Zm1201(state_manager, 1720, 850),
            InMortuaryF2R3Zf1096(state_manager, 2166, 1087),
            InMortuaryF2R3Zf1072(state_manager, 2353, 1481),

            InMortuaryF2R4Zm1664(state_manager, 2783, 966),

            InMortuaryF2R5Eivene(state_manager, 3832, 794),
            InMortuaryF2R5Zm257(state_manager, 3627, 797),
            InMortuaryF2R5Zm506(state_manager, 3650, 1122),
            InMortuaryF2R5Zm985(state_manager, 3373, 1377),

            InMortuaryF2R6Vaxis(state_manager, 4500, 1700),

            InMortuaryF2R8Zf891(state_manager, 3000, 2600)
        ],
        audio.mortuary
    )


screen _mortuary_f2_map(background, static_actions, dynamic_actions, bg_music):
    on "show" action SmartPlayMusic(bg_music)
    on "show" action Hide("narrat")

    default tt = Tooltip('')

    default bg_displayable = renpy.displayable(background)
    default bg_size = renpy.render(bg_displayable, 0, 0, 0, 0).get_size()
    default xadj = ui.adjustment(value=1920)
    default yadj = ui.adjustment(value=1080)

    viewport:
        id "bg_viewport"
        draggable True
        mousewheel True
        xsize config.screen_width
        ysize config.screen_height
        xadjustment xadj
        yadjustment yadj

        # This area needs to be larger than the viewport to enable dragging
        frame:
            xsize 3 * 1920
            ysize 3 * 1080
            background None

            add background:
                xalign 0.5
                yalign 0.5

            for static_action_button in static_actions:
                if not static_action_button.when():
                    continue

                imagebutton:
                    idle static_action_button.texture()
                    hover Transform(static_action_button.texture(), matrixcolor=BrightnessMatrix(0.2))
                    xpos static_action_button.pos()['x']
                    ypos static_action_button.pos()['y']
                    action ExecuteNavigationDirective(static_action_button.jump())
                    hovered tt.Action(static_action_button.tooltip())
                    unhovered tt.Action('')
                    anchor (0.5, 0.5)

            for dynamic_action_button in dynamic_actions:
                if not dynamic_action_button.when():
                    continue

                imagebutton:
                    idle dynamic_action_button.texture()
                    # hover Transform(dynamic_action_button.texture(), matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                    xpos dynamic_action_button.pos()['x']
                    ypos dynamic_action_button.pos()['y']
                    anchor (0.5, 0.5)

                # if 'kill_action' in dynamic_action_button and 'kill_tooltip' in dynamic_action_button:
                #     $ tooltip = dynamic_action_button.kill_tooltip()
                #     imagebutton:
                #         idle 'images/icons/kill_idle.png'
                #         hover Transform('images/icons/kill_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                #         xpos dynamic_action_button.xpos + 40
                #         ypos dynamic_action_button.ypos
                #         action Jump(dynamic_action_button.kill_action())
                #         hovered tt.Action(tooltip)
                #         unhovered tt.Action('')
                #         anchor (0.5, 0.5)

                imagebutton:
                    idle 'images/icons/speak_idle.png'
                    hover Transform('images/icons/speak_hover.png', matrixcolor=BrightnessMatrix(0.2))
                    xpos dynamic_action_button.pos()['x'] + 40
                    ypos dynamic_action_button.pos()['y'] - 20
                    action ExecuteNavigationDirective(dynamic_action_button.jump())
                    hovered tt.Action(dynamic_action_button.tooltip())
                    unhovered tt.Action('')
                    anchor (0.5, 0.5)

    frame:
        xalign 0.5
        yalign 0.0
        xsize 600
        ysize 50

        if tt.value:
            background Transform('gui/tooltip.png', fit='cover') at ease_in_background
        else:
            background Transform('gui/tooltip.png', fit='cover') at ease_out_background

        text _(tt.value):
            size 18
            color '#dbc401'
            xalign 0.5
            yalign 0.5

    if _preferences.show_mouse_screen:
        frame:
            xalign 0.0
            yalign 1.0

            $ x, y = renpy.get_mouse_pos()
            $ offset_x = round(x + xadj.value)
            $ offset_y = round(y + yadj.value)
            label "{font=NotoSans-Regular.ttf}[offset_x], [offset_y]{/font}":
                text_color '#dbc401'
                text_size 16
                # action CopyToClipboard('[offset_x], [offset_y]')


transform ease_in_background:
    alpha 0.0
    easein 0.1 alpha 1.0


transform ease_out_background:
    alpha 1.0
    easeout 0.1 alpha 0.0
init python:
    import logging


    current_bg_music = None

    # TODO [snow]: implement crossfade
    class SmartPlayMusic(Action):
        def __init__(self, music_file, fadein=3.0, fadeout=3.0, loop=True, tight=None):
            self.music_file = music_file
            self.fadein = fadein
            self.fadeout = fadeout
            self.loop = loop
            self.tight = tight


        def __call__(self):
            global current_bg_music

            if current_bg_music == self.music_file and renpy.music.is_playing(channel='music'):
                return

            previous_music = current_bg_music
            current_bg_music = self.music_file

            if previous_music is not None and renpy.music.is_playing(channel='music'):
                renpy.music.stop(channel='music', fadeout=self.fadeout)

            renpy.music.play(
                self.music_file,
                channel='music',
                loop=self.loop,
                fadein=self.fadein,
                tight=self.tight
            )


        def get_sensitive(self):
            return True



init python:
    # in rpy file like in engine menu files
    #   `action Jump(logic.foo())`
    # exetutes `logic.foo()` on each render
    # This wrapper prevents it
    class ExecuteNavigationDirective(Action):
        def __init__(self, directive):
            # directive is expected to have an .execute() method
            # that returns a label string.
            self.directive = directive

        def __call__(self):
            # This is called when the button is clicked.
            target_label = self.directive.execute()
            # Now, tell Ren'Py to jump to that label.
            renpy.jump(target_label)





screen abstract_location_menu_screen(background_dark, background_light, walking, talking, bg_music):
    $ lm = renpy.store.global_lightning_manager
    timer 0.1 repeat True action Function(lm.update)

    on "show" action SmartPlayMusic(bg_music)

    default tt = Tooltip('')
    zorder 100

    default xadj = ui.adjustment(value=1920)
    default yadj = ui.adjustment(value=1080)

    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50

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

            add background_dark:
                xalign 0.5
                yalign 0.5

            add AlphaMask(
                background_light,
                lm.get_current_maps()[0]
            )

            for walking_button in walking:
                if not walking_button.when():
                    continue

                imagebutton:
                    idle walking_button.texture()
                    hover Transform(walking_button.texture(), matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                    xpos walking_button.pos()['x']
                    ypos walking_button.pos()['y']
                    action ExecuteNavigationDirective(walking_button.jump())
                    hovered tt.Action(walking_button.tooltip())
                    unhovered tt.Action('')

            for talking_button in talking:
                if not talking_button.when():
                    continue

                imagebutton:
                    idle talking_button.texture()
                    # hover Transform(talking_button.texture(), matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                    xpos talking_button.pos()['x']
                    ypos talking_button.pos()['y']

                # if 'kill_action' in talking_button and 'kill_tooltip' in talking_button:
                #     $ tooltip = talking_button.kill_tooltip()
                #     imagebutton:
                #         idle 'images/icons/kill_idle.png'
                #         hover Transform('images/icons/kill_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                #         xpos talking_button.xpos + 40
                #         ypos talking_button.ypos
                #         action Jump(talking_button.kill_action())
                #         hovered tt.Action(tooltip)
                #         unhovered tt.Action('')

                imagebutton:
                    idle 'images/icons/speak_idle.png'
                    hover Transform('images/icons/speak_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                    xpos talking_button.pos()['x'] + 40
                    ypos talking_button.pos()['y'] + 20
                    action ExecuteNavigationDirective(talking_button.jump())
                    hovered tt.Action(talking_button.tooltip())
                    unhovered tt.Action('')

    vbox:
        xpos 1200
        ypos 0
        $ x, y = renpy.get_mouse_pos()
        $ offset_x = round(x + xadj.value)
        $ offset_y = round(y + yadj.value)
        text "X Offset: [offset_x]"
        text "Y Offset: [offset_y]"

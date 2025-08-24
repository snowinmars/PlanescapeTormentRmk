init python:
    import logging
    devlog = logging.getLogger('log')

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


screen abstract_location_menu_screen(background, walking, talking, bg_music = None):
    on "show" action SmartPlayMusic(bg_music)

    default tt = Tooltip('')
    zorder 100
    add background

    if tt.value:
        text tt.value:
            xalign 0.5
            ypos 50

    for walking_button in walking:
        if not walking_button['when']():
            continue

        $ tooltip = walking_button['tooltip']()

        imagebutton:
            idle walking_button['idle_img']
            hover Transform(walking_button['hover_img'], matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
            xpos walking_button['xpos']
            ypos walking_button['ypos']
            action walking_button['action']
            hovered tt.Action(tooltip)
            unhovered tt.Action('')

    for talking_button in talking:
        if not talking_button['when']():
            continue

        imagebutton:
            idle talking_button['idle_img']
            hover Transform(talking_button['hover_img'], matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
            xpos talking_button['xpos']
            ypos talking_button['ypos']

        if 'kill_action' in talking_button and 'kill_tooltip' in talking_button:
            $ tooltip = talking_button['kill_tooltip']()

            imagebutton:
                idle 'images/icons/kill_idle.png'
                hover Transform('images/icons/kill_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                xpos talking_button['xpos'] + 40
                ypos talking_button['ypos']
                action Jump(talking_button['kill_action']())
                hovered tt.Action(tooltip)
                unhovered tt.Action('')

        if 'speak_action' in talking_button and 'speak_tooltip' in talking_button:
            $ tooltip = talking_button['speak_tooltip']()

            imagebutton:
                idle 'images/icons/speak_idle.png'
                hover Transform('images/icons/speak_hover.png', matrixcolor=BrightnessMatrix(0.2)) at pulse_effect
                xpos talking_button['xpos'] + 40
                ypos talking_button['ypos'] + 30
                action Jump(talking_button['speak_action']())
                hovered tt.Action(tooltip)
                unhovered tt.Action('')
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

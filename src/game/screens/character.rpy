screen character_screen_button():
    textbutton "Character" action Show("character_screen", character=renpy.store.global_settings_manager.gcm.get_character('protagonist')):
        align (1.0, 0.0)
        offset (-20, 20)

screen character_screen(character):
    modal True
    zorder 100

    # Close with 'c' key or right-click
    key "c" action Hide("character_screen")
    key "mouseup_3" action Hide("character_screen")

    frame:
        xalign 0.5
        yalign 0.5
        xpadding 30
        ypadding 30
        background "#000a"

        vbox:
            spacing 20

            # Character name
            label character.name:
                xalign 0.5
                text_size 40
                text_color "#FFF"

            # Health display
            hbox:
                spacing 10
                bar:
                    value character.current_health
                    range character.maxHealth
                    xmaximum 300
                    left_bar "#f00"
                    right_bar "#400"

                text "[character.current_health]/[character.maxHealth]":
                    size 30
                    color "#FFF"

            # Alignment grid
            vbox:
                spacing 5
                text "Alignment ([character.law] [character.good]):":
                    size 25
                    color "#FFF"

                # Create alignment display as a separate displayable
                add AlignmentGrid(character) xalign 0.5

            # Core attributes grid
            grid 3 3:
                spacing 20
                xfill True

                text "STR: [character.strength]" size 25 color "#f88"
                text "CON: [character.constitution]" size 25 color "#f8f"
                text "Gold: [renpy.store.global_settings_manager.get_gold()]" size 25 color "#ff0"

                text "DEX: [character.dexterity]" size 25 color "#8f8"
                text "WIS: [character.wisdom]" size 25 color "#ff8"
                text "Lore: [character.lore]" size 25 color "#0ff"

                text "INT: [character.intelligence]" size 25 color "#88f"
                text "CHA: [character.charisma]" size 25 color "#8ff"
                text "XP: [character.experience]" size 25 color "#f80"

            # Close button
            textbutton "Close":
                xalign 0.5
                action Hide("character_screen")

# Custom displayable for the alignment grid
init python:
    class AlignmentGrid(renpy.Displayable):
        def __init__(self, character, **kwargs):
            super(AlignmentGrid, self).__init__(**kwargs)
            self.character = character
            self.size = (300, 300)

        def render(self, width, height, st, at):
            # Create render object
            render = renpy.Render(*self.size)

            # Create canvas for drawing
            canvas = render.canvas()

            # Draw background
            canvas.rect("#222", (0, 0, *self.size))

            # Draw grid lines
            canvas.line("#888", (150, 0), (150, 300), width=1)
            canvas.line("#888", (0, 150), (300, 150), width=1)

            # Calculate alignment position
            # Law: positive = left, negative = right
            # Good: positive = up, negative = down
            xpos = 150 + (self.character.law * 15)
            ypos = 150 - (self.character.good * 15)

            # Draw alignment indicator
            canvas.circle("#FFF", (xpos, ypos), 10)

            return render
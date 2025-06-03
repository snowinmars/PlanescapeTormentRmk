init 4 python:
    persistent.show_coordinates = getattr(persistent, "show_coordinates", True)

    def toggle_coordinates():
        persistent.show_coordinates = not persistent.show_coordinates
        renpy.restart_interaction()


# screen preferences():
#     tag menu
#     use game_menu(_("Preferences")):
#         vbox:
#             hbox:
#                 box_wrap True
#                 vbox:
#                     style_prefix "check"
#                     label _("Display")
#                     textbutton _("Show Mouse Coordinates") action Function(toggle_coordinates):
#                         selected persistent.show_coordinates


style coordinates_text:
    color "#fff"
    size 24
    outlines [(1, "#000", 0, 0)]
    xalign 0.5


screen mouse_coordinates():
    zorder 101
    if persistent.show_coordinates:
        $ x, y = renpy.get_mouse_pos()

        fixed:
            pos (1200, 0)
            frame:
                background Solid("#0008")  # Semi-transparent black
                xsize 200
                ysize 60

                vbox:
                    text "Mouse Coordinates:" style "coordinates_text"
                    text f"X: {x}, Y: {y}" style "coordinates_text"
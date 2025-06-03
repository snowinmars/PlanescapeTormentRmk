# Display choses that leads to a new labels
#   These choses happens when a player jumps between different dialogs
#   Available options for this sceen defines in 'labels/x_menu.py' files
#   and pases here through 'engine/label.py' builder flow
screen decision_choices(available_options):
    vbox:
        style_prefix "choice"
        for item in available_options:
            textbutton item.title:
                action [
                    SetVariable("renpy.store.global_dialog_key", item.label_id),
                    Jump("dialog_dispatcher")
                ]
                style "choice_button"


label show_graphics_menu:
    $ location_id = renpy.store.global_settings_manager.get_location()
    $ gmm = renpy.store.global_menu_manager
    $ available_options = gmm.get_available_graphic_options(location_id)
    $ available_static = gmm.get_available_static_graphic(location_id)
    $ background = gmm.get_background(location_id)
    $ renpy.call_screen("image_based_menu", options=available_options, static=available_static, background=background)

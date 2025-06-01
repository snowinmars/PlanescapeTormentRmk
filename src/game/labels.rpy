# Display choses inbetween dialog lines
#   These choses does not lead to a new label
#   Responses for this screen defines in 'dlg/x.py' files
#   and pases here through 'engine/menu' builder flow
screen dialog_choices(responses):
    vbox:
        style_prefix "choice"
        for response_id, response in responses.items():
            $ plainResponse = 'condition' not in response or response['condition'] is None
            $ visibleConditiolanResponse = 'condition' in response and response['condition'] is not None and response['condition']()

            if plainResponse or visibleConditiolanResponse:
                textbutton response['text']:
                    if 'action' in response and response['action'] is not None:
                        action [
                            Return(response_id),
                            response['action']
                        ]
                    else:
                        action [
                            Return(response_id)
                        ]
                    style "choice_button"


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


label mortuary_dialog_loop:
    $ responses = renpy.store.global_dialog_manager.get_available_responses()
    if responses is None or len(responses) == 0:
        # init_action should be executed in the `prononce()` method
        #   but only if there are some lines in it
        #   if it is just a walk action, it should be executed here
        $ init_action = renpy.store.global_dialog_manager.get_current_init_action()
        if init_action is not None:
            $ init_action()
        jump show_graphics_menu

    call screen dialog_choices(responses)
    $ response_id = _return
    if response_id < 0:
        jump mortuary_dialog_loop

    $ next_state = renpy.store.global_dialog_manager.choose_response(response_id)

    if renpy.store.global_dialog_manager.is_state_defined(next_state):
        $ npc_lines = renpy.store.global_dialog_manager.advance_to_state(next_state)
        $ renpy.store.global_dialog_manager.pronounce(npc_lines)
        jump mortuary_dialog_loop
    else:
        jump show_graphics_menu


label show_graphics_menu:
    $ available_options = renpy.store.global_menu_manager.get_available_graphic_options(renpy.store.global_settings_manager.get_location())
    $ available_static = renpy.store.global_menu_manager.get_available_static_graphic(renpy.store.global_settings_manager.get_location())
    $ background = renpy.store.global_menu_manager.get_background(renpy.store.global_settings_manager.get_location())
    # call screen decision_choices(available_options)
    $ renpy.call_screen("image_based_menu", options=available_options, static=available_static, background=background)


label dialog_dispatcher:
    if renpy.store.global_dialog_key is None:
        jump mortuary_dialog_loop

    if renpy.store.global_dialog_key not in renpy.store.global_label_registry.registry:
        $ renpy.exports.say('snowinmars', f'AAA, {renpy.store.global_dialog_key} is not in the global_label_registry')
        $ raise Exception(f'AAA, {renpy.store.global_dialog_key} is not in the global_label_registry')

    $ initial_state = renpy.store.global_label_registry.registry[renpy.store.global_dialog_key]
    $ npc_lines = renpy.store.global_dialog_manager.start_dialog(initial_state)
    $ renpy.store.global_dialog_manager.pronounce(npc_lines)
    $ renpy.store.global_dialog_key = None
    jump mortuary_dialog_loop

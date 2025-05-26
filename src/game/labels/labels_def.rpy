label dev:
    $ current_dialog_key = 'DMORTE1.D_s99999999_18'
    jump dialog_dispatcher


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
                    SetVariable("current_dialog_key", item.label_id),
                    Jump("dialog_dispatcher")
                ]
                style "choice_button"


label morgue_dialog_loop:
    $ global global_dialog_manager
    $ responses = global_dialog_manager.get_available_responses()
    call screen dialog_choices(responses)
    $ response_id = _return
    $ next_state = global_dialog_manager.choose_response(response_id)

    if global_dialog_manager.is_state_defined(next_state):
        $ npc_lines = global_dialog_manager.advance_to_state(next_state)
        python:
            global_dialog_manager.pronounce(npc_lines)
        jump morgue_dialog_loop
    else:
        $ global global_menu_manager
        $ available_options = global_menu_manager.get_available_options("morgue_main")
        call screen decision_choices(available_options)


label dialog_dispatcher:
    $ global global_label_registry
    $ global global_dialog_manager
    if current_dialog_key not in global_label_registry:
        $ renpy.exports.say('snowinmars', f'AAA, {current_dialog_key} is not in the global_label_registry')
        $ raise Exception(f'AAA, {current_dialog_key} is not in the global_label_registry')

    $ npc_lines = global_dialog_manager.start_dialog(global_label_registry[current_dialog_key])
    $ global_dialog_manager.pronounce(npc_lines)
    $ current_dialog_key = None
    jump morgue_dialog_loop

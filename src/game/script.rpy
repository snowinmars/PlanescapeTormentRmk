screen dialog_choices(responses):
    vbox:
        style_prefix "choice"
        for response_id, response in responses.items():
            $ plainResponse = 'condition' not in response or response['condition'] is None
            $ visibleConditiolanResponse = 'condition' in response and response['condition'] is not None and response['condition']()

            if plainResponse or visibleConditiolanResponse:
                textbutton response['text']:
                    if 'action' in response and response['action'] is not None:
                        action [Return(response_id), response['action']]
                    else:
                        action Return(response_id)
                    style "choice_button"



init 1 python:
    renpy.add_python_directory('engine')
    from engine.dialog import (
        start_dialog,
        get_available_responses,
        choose_response,
        advance_to_state,
        is_state_defined
    )
    from engine.dlg_dmorte_one import (dlg_dmorte_one)
    from engine.dlg_dmorte_two import (dlg_dmorte_two)

    characters = {
        'teller': teller,
        'morte_unknown': morte_unknown,
        'morte': morte,
        'scares': scares,
    }
    character_reactions = {
        'morte_img angry':     'morte_img angry',
        'morte_img exited':    'morte_img exited',
        'morte_img grumpy':    'morte_img grumpy',
        'morte_img laughing':  'morte_img laughing',
        'morte_img sad':       'morte_img sad',
        'morte_img scared2':   'morte_img scared2',
        'morte_img scared3':   'morte_img scared3',
        'morte_img smiling1':  'morte_img smiling1',
        'morte_img smiling2':  'morte_img smiling2',
        'morte_img smiling3':  'morte_img smiling3',
        'morte_img terrified': 'morte_img terrified',
        'morte_img tired':     'morte_img tired',
    }

    dlg_dmorte_one()
    dlg_dmorte_two()

    def pronounce(npc_lines):
        for line in npc_lines:
            if line[2]:
                line[2]()
            renpy.say(line[0], line[1])



label start:
    menu:
        "dev":
            jump dev
        "start_":
            jump start_

label start_:
    teller "Вы открываете глаза в тусклом помещении."
    teller "Голова раскалывается, первое движение отзывается резкой болью слева -"
    teller "Болью настолько сильной, что не очень понятно, где именно слева."
    teller "Вы постепенно встаёте с каменного...стола? и поднимаете взгляд."
    jump dmorte_one_introducing



label dialog_loop:
    $ responses = get_available_responses()
    call screen dialog_choices(responses)
    $ response_id = _return
    $ next_state = choose_response(response_id)

    if is_state_defined(next_state):
        $ npc_lines = advance_to_state(next_state)
        python:
            pronounce(npc_lines)
        jump dialog_loop


label end:
    'The conversation ends.'
    return
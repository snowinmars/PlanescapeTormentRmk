define teller        = Character('', color='#c8ffc8')
define morte_unknown = Character('?', color='#c8ffc8')
define morte         = Character('Морт', color='#c8ffc8')
define scares        = Character('', color='#c8ffc8')

image morte_img angry     = 'morte_angry.png'
image morte_img exited    = 'morte_exited.png'
image morte_img grumpy    = 'morte_grumpy.png'
image morte_img laughing  = 'morte_laughing.png'
image morte_img sad       = 'morte_sad.png'
image morte_img scared1   = 'morte_scared1.png'
image morte_img scared2   = 'morte_scared2.png'
image morte_img smiling1  = 'morte_smiling1.png'
image morte_img smiling2  = 'morte_smiling2.png'
image morte_img smiling3  = 'morte_smiling3.png'
image morte_img terrified = 'morte_terrified.png'
image morte_img tired     = 'morte_tired.png'



screen dialog_choices(responses):
    vbox:
        style_prefix "choice"
        for response_id, response in responses.items():
            textbutton response['text']:
                action Return(response_id)
                style "choice_button"



init python:
    renpy.add_python_directory('dlg')
    from dlg.engine import (
        start_dialog,
        get_available_responses,
        choose_response,
        advance_to_state,
        is_state_defined
    )
    from dlg.dmorte_one import (dmorte_one)
    from dlg.settings import (current_settings)

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

    dmorte_one()

    def pronounce(npc_lines):
        for line in npc_lines:
            if line[2]:
                line[2]()
            renpy.say(line[0], line[1])



label start:
    teller "Вы открываете глаза в тусклом помещении."
    teller "Голова раскалывается, первое движение отзывается резкой болью слева -"
    teller "Болью настолько сильной, что не очень понятно, где именно слева."
    teller "Вы постепенно встаёте с каменного...стола? и поднимаете взгляд."
    jump dmorte_one_introducing



label menu_loop:
    menu:
        ""
        "Снова поговорить с черепом" if not current_settings()['in_party_morte']:
            jump dmorte_one_join
        "Попробовать открыть одну из дверей" if current_settings()['morgue_key_picked_up']:
            jump open_morgue_door



label dmorte_one_join:
    $ dmorte_one_join_id = 26
    $ npc_lines = start_dialog(dmorte_one_join_id)
    python:
        pronounce(npc_lines)
    jump dialog_loop



label dmorte_one_introducing:
    $ dmorte_one_introducing_id = 0
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump dialog_loop



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
    else:
        jump menu_loop



label end:
    'The conversation ends.'
    return
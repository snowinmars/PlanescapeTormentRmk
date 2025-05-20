define teller       = Character('', color="#c8ffc8")
define mort_unknown = Character('?', color="#c8ffc8")
define mort         = Character('Морт', color="#c8ffc8")
define scares       = Character('', color="#c8ffc8")

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
    dmorte_one({
        'teller': teller,
        'mort_unknown': mort_unknown,
        'mort': mort,
        'scares': scares,
    })

    def pronounce(npc_lines):
        for line in npc_lines:
            renpy.say(line[0], line[1])

screen dialog_choices(responses):
    vbox:
        for response_id, response in responses.items():
            textbutton response['text'] action [
                Return(response_id)
            ]

label start:
    $ npc_lines = start_dialog(1)

    python:
        pronounce(npc_lines)

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
            "The conversation ends."
    return

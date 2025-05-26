label dev:
    scene bg mourge1
    $ dev_id = 'DMORTE1.D_s99999999_18'
    $ npc_lines = start_dialog(dev_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


screen morgue_dialog_choices(available_options):
    vbox:
        style_prefix "choice"
        for item in available_options:
                textbutton item.title:
                    action [Jump(item.label_id)]
                    style "choice_button"

label morgue_dialog_loop:
    $ responses = get_available_responses()
    call screen dialog_choices(responses)
    $ response_id = _return
    $ next_state = choose_response(response_id)

    if is_state_defined(next_state):
        $ npc_lines = advance_to_state(next_state)
        python:
            pronounce(npc_lines)
        jump morgue_dialog_loop
    else:
        jump morgue_menu_loop_1

label morgue_menu_loop_1:
    $ from engine.menu import (MenuManager)
    $ from labels.morgue_menu import (build_morgue_menu)
    $ menu_manager = MenuManager()
    $ build_morgue_menu(menu_manager)
    $ available_options = menu_manager.get_available_options("morgue_main")
    call screen morgue_dialog_choices(available_options)

    # if not available_options:
    #     jump some_default_title

label dmorte_one_introducing:
    scene bg mourge1
    $ npc_lines = start_dialog('DMORTE1.D_s0')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_loot_dummies:
    $ npc_lines = start_dialog('DMORTE1.D_s24')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dummies:
    $ npc_lines = start_dialog('DMORTE1.D_s33')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_and_loot_dummies:
    $ npc_lines = start_dialog('DMORTE1.D_s34')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_join:
    $ npc_lines = start_dialog('DMORTE1.D_s26')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_morte:
    scene bg mourge1
    $ npc_lines = start_dialog('DMORTE1.D_s30')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_kill_morte:
    $ npc_lines = start_dialog('DMORTE1.D_s99999999_34')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop

label dmorte_two_talk_morte:
    scene bg mourge1
    $ npc_lines = start_dialog('DMORTE2.D_s12')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_open_morgue_door:
    scene bg mourge2
    $ npc_lines = start_dialog('DMORTE2.D_s0')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_two_meet_dhall:
    $ npc_lines = start_dialog('DDHALL.D_s5')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_two_talk_dhall:
    $ npc_lines = start_dialog('DDHALL.D_s40')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_two_kill_dhall:
    $ npc_lines = start_dialog('DDHALL.D_s99999999_54')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_kill_dzm569:
    $ npc_lines = start_dialog('DMORTE1.D_s99999999_569')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_kill_dzm825:
    $ npc_lines = start_dialog('DMORTE1.D_s99999999_825')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_kill_dzm782:
    $ npc_lines = start_dialog('DMORTE1.D_s99999999_782')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dzm569:
    $ npc_lines = start_dialog('DZM569.D_s0')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dzm825:
    $ npc_lines = start_dialog('DZM825.D_s0')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dzm782:
    $ npc_lines = start_dialog('DZM782.D_s0')
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop

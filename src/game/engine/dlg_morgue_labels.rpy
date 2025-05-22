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
    python:
        def m1():
            return current_settings()['ready_to_kill_in_morgue'] \
            and current_settings()['dummies_killed_in_morgue'] < 3
        def m2():
            return current_settings()['ready_to_kill_in_morgue'] \
            and current_settings()['dummies_killed_in_morgue'] >= 3
        def m3():
            return current_settings()['ready_to_kill_in_morgue'] \
            and not current_settings()['talk_dummy_in_morgue'] \
            and current_settings()['dummies_killed_in_morgue'] < 3
        def m4():
            return current_settings()['ready_to_kill_in_morgue'] \
            and current_settings()['talk_dummy_in_morgue'] \
            and current_settings()['dummies_killed_in_morgue'] < 3
        def m5():
            return not current_settings()['in_party_morte']
        def m6():
            return current_settings()['key_picked_up_in_morgue']

    menu:
        ""
        "Атаковать ходячий труп" if m1():
            jump dmorte_one_kill_dummies
        "Осмотреть трупы" if m2():
            jump dmorte_one_loot_dummies
        "Поговорить с ходячим трупом" if m3():
            jump dmorte_one_talk_dummies
        "Поговорить с ходячим трупом" if m4():
            jump dmorte_one_talk_and_loot_dummies
        "Пригласить Морта в группу" if m5():
            jump dmorte_one_join
        "Попробовать открыть одну из дверей" if m6():
            jump open_morgue_door



label dmorte_one_introducing:
    scene bg mourge1
    $ dmorte_one_introducing_id = 0
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop



label dmorte_one_kill_dummies:
    $ dmorte_one_kill_dummies_id = 99999999_23
    $ npc_lines = start_dialog(dmorte_one_kill_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop



label dmorte_one_loot_dummies:
    $ dmorte_one_loot_dummies_id = 24
    $ npc_lines = start_dialog(dmorte_one_loot_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dummies:
    $ dmorte_one_talk_dummies_id = 33
    $ npc_lines = start_dialog(dmorte_one_talk_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop



label dmorte_one_talk_and_loot_dummies:
    $ dmorte_one_talk_dummies_id = 34
    $ npc_lines = start_dialog(dmorte_one_talk_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop



label dmorte_one_general_talk:
    scene bg mourge1
    $ dmorte_one_general_talk_id = 0
    $ npc_lines = start_dialog(dmorte_one_general_talk_id)
    python:
        pronounce(npc_lines)
    jump morgue_menu_loop_1



label dmorte_one_join:
    $ dmorte_one_join_id = 26
    $ npc_lines = start_dialog(dmorte_one_join_id)
    python:
        pronounce(npc_lines)
    jump morgue_menu_loop_1
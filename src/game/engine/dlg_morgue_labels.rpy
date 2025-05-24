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
        from engine.settings_global import (current_global_settings)
        from engine.settings_morgue import (current_morgue_settings)
        def m0():
            return current_global_settings()['morte_in_party']
        def m1():
            return not current_global_settings()['morte_in_party']
        def m2():
            return current_morgue_settings()['ready_to_kill'] \
            and current_morgue_settings()['dummies_killed'] < 3
        def m3():
            return current_morgue_settings()['ready_to_kill'] \
            and current_morgue_settings()['dummies_killed'] >= 3
        def m4():
            return current_morgue_settings()['ready_to_kill'] \
            and not current_morgue_settings()['talk_dummy'] \
            and current_morgue_settings()['dummies_killed'] < 3
        def m5():
            return current_morgue_settings()['ready_to_kill'] \
            and current_morgue_settings()['talk_dummy'] \
            and current_morgue_settings()['dummies_killed'] < 3
        def m6():
            return current_morgue_settings()['key_picked_up']

    menu:
        ""
        "Поговорить с Мортом" if m0():
            jump dmorte_one_talk_morte
        "Пригласить Морта в группу" if m1():
            jump dmorte_one_join
        "Атаковать ходячий труп" if m2():
            jump dmorte_one_kill_dummies
        "Осмотреть трупы" if m3():
            jump dmorte_one_loot_dummies
        "Поговорить с ходячим трупом" if m4():
            jump dmorte_one_talk_dummies
        "Поговорить с ходячим трупом" if m5():
            jump dmorte_one_talk_and_loot_dummies
        "Попробовать открыть одну из дверей" if m6():
            jump open_morgue_door



label dmorte_one_introducing:
    scene bg mourge1
    $ dmorte_one_introducing_id = 'dlg_dmorte_one s0'
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_kill_dummies:
    $ dmorte_one_kill_dummies_id = 'dlg_dmorte_one s99999999_23'
    $ npc_lines = start_dialog(dmorte_one_kill_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_loot_dummies:
    $ dmorte_one_loot_dummies_id = 'dlg_dmorte_one s24'
    $ npc_lines = start_dialog(dmorte_one_loot_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_dummies:
    $ dmorte_one_talk_dummies_id = 'dlg_dmorte_one s33'
    $ npc_lines = start_dialog(dmorte_one_talk_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_and_loot_dummies:
    $ dmorte_one_talk_dummies_id = 'dlg_dmorte_one s34'
    $ npc_lines = start_dialog(dmorte_one_talk_dummies_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_join:
    $ dmorte_one_join_id = 'dlg_dmorte_one s26'
    $ npc_lines = start_dialog(dmorte_one_join_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


label dmorte_one_talk_morte:
    scene bg mourge1
    $ dmorte_one_introducing_id = 'dlg_dmorte_one s30'
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop
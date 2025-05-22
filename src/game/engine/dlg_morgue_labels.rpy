label morgue_menu_loop_1:
    jump dialog_loop

    menu:
        ""
        "Атаковать ходячий труп" if current_settings()['ready_to_kill_in_morgue']:
            jump dmorte_one_join
        "Поговорить с ходячим трупом" if current_settings()['ready_to_kill_in_morgue']:
            jump dmorte_one_join
        "Снова поговорить с Мортом" if not current_settings()['in_party_morte']:
            jump dmorte_one_join
        "Попробовать открыть одну из дверей" if current_settings()['key_picked_up_in_morgue']:
            jump open_morgue_door



label dmorte_one_introducing:
    scene bg mourge1
    $ dmorte_one_introducing_id = 0
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump morgue_menu_loop_1



label dmorte_one_general_talk:
    scene bg mourge1
    $ dmorte_one_introducing_id = 0
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump morgue_menu_loop_1



label dmorte_one_join:
    $ dmorte_one_join_id = 26
    $ npc_lines = start_dialog(dmorte_one_join_id)
    python:
        pronounce(npc_lines)
    jump morgue_menu_loop_1
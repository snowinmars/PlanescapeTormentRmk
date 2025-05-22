label morgue_menu_loop_1:
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
    scene bg mourge1
    $ dmorte_one_introducing_id = 0
    $ npc_lines = start_dialog(dmorte_one_introducing_id)
    python:
        pronounce(npc_lines)
    jump dialog_loop
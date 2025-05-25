label dev:
    scene bg mourge1
    $ dev_id = 'DMORTE2.D_s33'
    $ npc_lines = start_dialog(dev_id)
    python:
        pronounce(npc_lines)
    jump morgue_dialog_loop


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
        from settings.settings_global import (current_global_settings)
        from settings.settings_morgue import (current_morgue_settings)
        def m0():
            return current_global_settings()['in_party_morte'] \
            and current_global_settings()['location'] == 'morgue1' \
            and not current_global_settings()['dead_morte']
        def m00():
            return current_global_settings()['in_party_morte'] \
            and current_global_settings()['location'] == 'morgue2' \
            and not current_global_settings()['dead_morte']
        def m000():
            return current_global_settings()['meet_morte'] \
            and current_global_settings()['in_party_morte'] \
            and not current_global_settings()['dead_morte']
        def m1():
            return not current_global_settings()['in_party_morte']
        def m6():
            return current_morgue_settings()['has_intro_key']
        def m7():
            return current_morgue_settings()['saw_dhall'] \
            and not current_global_settings()['meet_dhall']
        def m8():
            return current_morgue_settings()['saw_dhall'] \
            and current_global_settings()['meet_dhall'] \
            and not current_global_settings()['dead_dhall']
        def m9():
            return current_global_settings()['meet_dhall'] \
            and not current_global_settings()['dead_dhall']
        def m569k():
            return not current_morgue_settings()['dead_dzm569']
        def m825k():
            return not current_morgue_settings()['dead_dzm825']
        def m782k():
            return not current_morgue_settings()['dead_dzm782']
        def m569t():
            return not current_morgue_settings()['dead_dzm569']
        def m825t():
            return not current_morgue_settings()['dead_dzm825']
        def m782t():
            return not current_morgue_settings()['dead_dzm782']

    menu:
        ""
        "Поговорить с Мортом" if m0():
            jump dmorte_one_talk_morte
        "Поговорить с Мортом" if m00():
            jump dmorte_two_talk_morte
        "Убить Морта" if m000():
            jump dmorte_one_kill_morte
        "Пригласить Морта в группу" if m1():
            jump dmorte_one_join
        "Атаковать плешивый ходячий труп" if m569k():
            jump dmorte_one_kill_dzm569
        "Атаковать ходячий труп повешенного" if m825k():
            jump dmorte_one_kill_dzm825
        "Атаковать ходячий труп, полный ненависти" if m782k():
            jump dmorte_one_kill_dzm782
        "Поговорить с ходячим и плешивым трупом" if m569t():
            jump dmorte_one_talk_dzm569
        "Поговорить с ходячим трупом повешенного" if m825t():
            jump dmorte_one_talk_dzm825
        "Поговорить с ходячим трупом, полным ненависти" if m782t():
            jump dmorte_one_talk_dzm782
        "Попробовать открыть одну из дверей" if m6():
            jump dmorte_one_open_morgue_door
        "Подойти к существу около большой книги" if m7():
            jump dmorte_two_meet_dhall
        "Поговорить с Дхаллом" if m8():
            jump dmorte_two_talk_dhall
        "Убить Дхалла" if m9():
            jump dmorte_two_kill_dhall


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
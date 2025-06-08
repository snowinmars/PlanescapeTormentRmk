init python:
    def _kill_dzf1096(gsm):
        gsm.set_dead_dzf1096(True)


init python:
    def _r35083_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r35083_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35100_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35101_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35102_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35107_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35108_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35109_condition(gsm):
        return gsm.get_morte_quip()
    def _r35110_condition(gsm):
        return gsm.get_morte_quip()
    def _r35111_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35112_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35085_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35098_condition(gsm):
        return gsm.get_morte_quip()
    def _r35099_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35104_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35105_condition(gsm):
        return gsm.get_morte_quip()
    def _r35106_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF1096.DLG
# Starts:    dzf1096_s0 dzf1096_kill
# ###


label start_dzf1096_talk:
    call dzf1096_init
    jump dzf1096_s0
label start_dzf1096_kill:
    call dzf1096_init
    jump dzf1096_kill
label dzf1096_init:
    $ gsm.set_location('mortuary_f2r3')
    $ gsm.set_meet_dzf1096(True)
    scene bg mortuary3
    show dzf1096_img default at center_left_down
    return
label dzf1096_dispose:
    hide dzf1096_img
    jump show_graphics_menu


# s0 # say35082
label dzf1096_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.'
    teller 'Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.'

    menu:
        'Э… Красивая коса.' if _r35083_condition(gsm):
            # r0 # reply35083
            $ _r35083_action(gsm)
            jump dzf1096_s1
        'Э… Красивая коса.' if _r35100_condition(gsm):
            # r1 # reply35100
            jump dzf1096_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35101_condition(gsm):
            # r2 # reply35101
            jump dzf1096_s1
        'Использовать на трупе свою способность История костей.' if _r35102_condition(gsm):
            # r3 # reply35102
            jump dzf1096_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35107_condition(gsm):
            # r4 # reply35107
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35109_condition(gsm):
            # r6 # reply35109
            jump dzf1096_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35111_condition(gsm):
            # r8 # reply35111
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35108_condition(gsm):
            # r5 # reply35108
            jump dmorte_s330
        'Оставить труп в покое.' if _r35110_condition(gsm):
            # r7 # reply35110
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35112_condition(gsm):
            # r9 # reply35112
            jump dzf1096_dispose


# s1 # say35084
label dzf1096_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35102_condition(gsm):
            # r3 # reply35102
            jump dzf1096_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35107_condition(gsm):
            # r4 # reply35107
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35109_condition(gsm):
            # r6 # reply35109
            jump dzf1096_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35111_condition(gsm):
            # r8 # reply35111
            jump dzf1096_dispose
        'Тогда прощай.' if _r35085_condition(gsm):
            # r10 # reply35085
            jump dmorte_s330
        'Тогда прощай.' if _r35098_condition(gsm):
            # r11 # reply35098
            jump dzf1096_dispose
        'Тогда прощай.' if _r35099_condition(gsm):
            # r12 # reply35099
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35108_condition(gsm):
            # r5 # reply35108
            jump dmorte_s330
        'Оставить труп в покое.' if _r35110_condition(gsm):
            # r7 # reply35110
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35112_condition(gsm):
            # r9 # reply35112
            jump dzf1096_dispose


# s2 # say35103
label dzf1096_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35101_condition(gsm):
            # r2 # reply35101
            jump dzf1096_s1
        'Было приятно с тобой поболтать. Прощай.' if _r35107_condition(gsm):
            # r4 # reply35107
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35109_condition(gsm):
            # r6 # reply35109
            jump dzf1096_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35111_condition(gsm):
            # r8 # reply35111
            jump dzf1096_dispose
        'Тогда прощай.' if _r35104_condition(gsm):
            # r13 # reply35104
            jump dmorte_s330
        'Тогда прощай.' if _r35105_condition(gsm):
            # r14 # reply35105
            jump dzf1096_dispose
        'Тогда прощай.' if _r35106_condition(gsm):
            # r15 # reply35106
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35108_condition(gsm):
            # r5 # reply35108
            jump dmorte_s330
        'Оставить труп в покое.' if _r35110_condition(gsm):
            # r7 # reply35110
            jump dzf1096_dispose
        'Оставить труп в покое.' if _r35112_condition(gsm):
            # r9 # reply35112
            jump dzf1096_dispose


label dzf1096_kill:
    teller 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.'
    teller 'Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.'

    menu:
        '(Уйти.)':
            jump dzf1096_dispose
        '(Убить зомби).':
            jump dzf1096_killed

label dzf1096_killed:
    $ _kill_dzf1096(gsm)
    teller 'Я затягиваю косу вокруг её шеи. Она поворачивается ко мне с смотрит на меня пустыми глазами.'
    teller '...'
    teller 'Она же и так не дышит.'
    teller 'Я сжимаю косу изо всех сил - шея женщины ощутимо хрустит. Ещё немного - и она смотрит на меня снизу вверх.'
    teller 'В её глазах нет ни жизни, ни разума.'
    jump dzf1096_dispose

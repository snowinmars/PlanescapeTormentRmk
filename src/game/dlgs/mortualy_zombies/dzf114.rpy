init python:
    def _r34987_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)

init python:
    def _r34987_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r35004_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r35005_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r35006_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35011_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35012_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35013_condition(gsm):
        return gsm.get_morte_quip()
    def _r35014_condition(gsm):
        return gsm.get_morte_quip()
    def _r35015_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35016_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r34989_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35002_condition(gsm):
        return gsm.get_morte_quip()
    def _r35003_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35008_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()
    def _r35009_condition(gsm):
        return gsm.get_morte_quip()
    def _r35010_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_quip()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZF114.DLG
# Starts:    dzf114_s0
# ###


label dzf114_init:
    $ gsm.set_location('mortuary2')
    $ gsm.set_meet_dzf114(True)
    scene bg mortuary2
    show dzf114_img default at center_left_down

    return


label dzf114_dispose:
    hide dzf114_img
    jump show_graphics_menu


# s0 # say34986
label dzf114_s0:  # from - # Manually checked EXTENDS ~DMORTE~ : 330 as dmorte_s330
    call dzf114_init
    teller 'Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу.'
    teller 'Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.'

    menu:
        'Итак… чем занимаешься вечером?' if _r34987_condition(gsm):
            # r0 # reply34987
            $ _r34987_action(gsm)
            jump dzf114_s1
        'Итак… чем занимаешься вечером?' if _r35004_condition(gsm):
            # r1 # reply35004
            jump dzf114_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35005_condition(gsm):
            # r2 # reply35005
            jump dzf114_s1
        'Использовать на трупе свою способность История костей.' if _r35006_condition(gsm):
            # r3 # reply35006
            jump dzf114_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35011_condition(gsm):
            # r4 # reply35011
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if _r35013_condition(gsm):
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35015_condition(gsm):
            # r8 # reply35015
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35012_condition(gsm):
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if _r35014_condition(gsm):
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35016_condition(gsm):
            # r9 # reply35016
            jump dzf114_dispose

# s1 # say34988
label dzf114_s1:  # from 0.0 0.1 0.2 # Manually checked EXTENDS ~DMORTE~ : 330 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r35006_condition(gsm):
            # r3 # reply35006
            jump dzf114_s2
        'Было приятно с тобой поболтать. Прощай.' if _r35011_condition(gsm):
            # r4 # reply35011
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35013_condition(gsm):
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35015_condition(gsm):
            # r8 # reply35015
            jump dzf114_dispose
        'Тогда прощай.' if _r34989_condition(gsm):
            # r10 # reply34989
            jump dmorte_s330
        'Тогда прощай.' if _r35002_condition(gsm):
            # r11 # reply35002
            jump dzf114_dispose
        'Тогда прощай.' if _r35003_condition(gsm):
            # r12 # reply35003
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35012_condition(gsm):
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if _r35014_condition(gsm):
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35016_condition(gsm):
            # r9 # reply35016
            jump dzf114_dispose


# s2 # say35007
label dzf114_s2:  # from 0.3 # Manually checked EXTENDS ~DMORTE~ : 330 as dmorte_s330
    teller 'Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r35005_condition(gsm):
            # r2 # reply35005
            jump dzf114_s1
        'Было приятно с тобой поболтать. Прощай.' if _r35011_condition(gsm):
            # r4 # reply35011
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35013_condition(gsm):
            # r6 # reply35013
            jump dzf114_dispose
        'Было приятно с тобой поболтать. Прощай.' if _r35015_condition(gsm):
            # r8 # reply35015
            jump dzf114_dispose
        'Тогда прощай.' if _r35008_condition(gsm):
            # r13 # reply35008
            jump dmorte_s330
        'Тогда прощай.' if _r35009_condition(gsm):
            # r14 # reply35009
            jump dzf114_dispose
        'Тогда прощай.' if _r35010_condition(gsm):
            # r15 # reply35010
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35012_condition(gsm):
            # r5 # reply35012
            jump dmorte_s330
        'Оставить труп в покое.' if _r35014_condition(gsm):
            # r7 # reply35014
            jump dzf114_dispose
        'Оставить труп в покое.' if _r35016_condition(gsm):
            # r9 # reply35016
            jump dzf114_dispose

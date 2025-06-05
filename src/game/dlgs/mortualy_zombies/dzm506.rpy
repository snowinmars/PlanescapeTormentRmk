init python:
    def _kill_dzm506(gsm):
        gsm.set_dead_dzm506(True)
    def _know_506_secret(gsm):
        return gsm.get_has_506_thread()


init python:
    def _r45480_action(gsm):
        gsm.set_has_506_thread(True)
        gsm.set_has_needle(True)
        gsm.inc_exp_custom('party', 100)
    def _r45484_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)
    def _r45502_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r45420_condition(gsm):
        return not gsm.get_has_506_thread()
    def _r45421_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45422_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r45480_condition(gsm):
        return gsm.get_has_scalpel()
    def _r45481_condition(gsm):
        return not gsm.get_has_scalpel()
    def _r45484_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45496_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45502_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r45508_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r45510_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r45512_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM506.DLG
# Starts:    dzm506_s0 dzm506_s5
# ###


label dzm506_init:
    $ gsm.set_location('mortuary5')
    $ gsm.set_meet_dzm506(True)
    scene bg mortuary5
    show dzm506_img default at center_left_down
    return


label dzm506_dispose:
    hide dzm506_img
    jump show_graphics_menu


# s0 # say45419
label dzm506_s0:  # from 3.2
    call dzm506_init
    teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Номер «506» вышит у него на лбу… и на боку шеи… и на правой руке…'
    teller 'В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.'

    menu:
        'Осмотреть швы.' if _r45420_condition(gsm):
            # r0 # reply45420
            jump dzm506_s3
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45421_condition(gsm):
            # r1 # reply45421
            jump dzm506_s1
        'Использовать на трупе свою способность История костей.' if _r45422_condition(gsm):
            # r2 # reply45422
            jump dzm506_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply45423
            jump dzm506_dispose
        'Оставить зомби в покое.':
            # r4 # reply45424
            jump dzm506_dispose


# s1 # say45425
label dzm506_s1:  # from 0.1 4.0 4.1 5.0 5.1 5.2
    teller 'Труп самозабвенно смотрит вперед.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r45422_condition(gsm):
            # r2 # reply45422
            jump dzm506_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply45423
            jump dzm506_dispose
        'Оставить зомби в покое.':
            # r5 # reply45478
            jump dzm506_dispose


# s2 # say45426
label dzm506_s2:  # from 0.2 5.3
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45421_condition(gsm):
            # r1 # reply45421
            jump dzm506_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r3 # reply45423
            jump dzm506_dispose
        'Оставить зомби в покое.':
            # r6 # reply45479
            jump dzm506_dispose


# s3 # say45427
label dzm506_s3:  # from 0.0
    teller 'Швы опоясывают тело, пробегая по рукам через весь торс наверх по шее и скрываясь в копне белых волос. Проходя по пересечениям швов, ты замечаешь, что кто-то приколол иголку ко лбу…'
    teller '…в иглу вдета нить, которая выходит из шва на черепе. Ты мог бы вытащить ее, если бы у тебя было что-нибудь, чтобы разрезать нить.'

    menu:
        'Разрезать швы скальпелем, затем вытащить иголку с ниткой.' if _r45480_condition(gsm):
            # r7 # reply45480
            $ _r45480_action(gsm)
            jump dzm506_s4
        'Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.' if _r45481_condition(gsm):
            # r8 # reply45481
            jump dzm506_dispose
        'Снова осмотреть труп.':
            # r9 # reply45482
            jump dzm506_s0
        'Оставить труп в покое.':
            # r10 # reply45483
            jump dzm506_dispose


# s4 # say45428
label dzm506_s4:  # from 3.0
    teller 'Ты аккуратно срезаешь нить с помощью скальпеля, а затем выдергиваешь иголку, распуская швы. Кожа на лбу отваливается, обнажая белый как мел череп. К твоему удивлению, на нем выбит номер «78».'

    menu:
        'Похоже, у тебя два разных обозначения, труп.' if _r45484_condition(gsm):
            # r11 # reply45484
            $ _r45484_action(gsm)
            jump dzm506_s1
        'Похоже, у тебя два разных обозначения, труп.' if _r45496_condition(gsm):
            # r12 # reply45496
            jump dzm506_s1
        'Снова осмотреть труп.':
            # r13 # reply50097
            jump dzm506_s5
        'Оставить зомби в покое.':
            # r14 # reply66889
            jump dzm506_dispose


# s5 # say45429
label dzm506_s5:  # from 4.2
    teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер «506», в месте, где кожа отвалилась ото лба, на кости выбит номер «78».'

    menu:
        'Похоже, у тебя два разных обозначения, труп.' if _r45502_condition(gsm):
            # r15 # reply45502
            $ _r45502_action(gsm)
            jump dzm506_s1
        'Похоже, у тебя два разных обозначения, труп.' if _r45508_condition(gsm):
            # r16 # reply45508
            jump dzm506_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r45510_condition(gsm):
            # r17 # reply45510
            jump dzm506_s1
        'Использовать на трупе свою способность История костей.' if _r45512_condition(gsm):
            # r18 # reply45512
            jump dzm506_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r19 # reply45513
            jump dzm506_dispose
        'Оставить зомби в покое.':
            # r20 # reply45514
            jump dzm506_dispose


label dzm506_kill:
    call dzm506_init
    if _know_506_secret(gsm):
        teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Номер «506» вышит у него на лбу… и на боку шеи… и на правой руке…'
        teller 'В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.'
    if not _know_506_secret(gsm):
        teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер «506», в месте, где кожа отвалилась ото лба, на кости выбит номер «78».'

    menu:
        '(Уйти.)':
            jump dzm506_dispose
        '(Убить зомби).':
            jump dzm506_killed


label dzm506_killed:
    $ _kill_dzm506(gsm)
    teller 'Карта на этом трупе примитивна. Даже если я и сбился бы на ней с пути - заблудиться я бы не смог. Я рисую новые улицы, новые - с каждым ударом.'
    teller 'Труп осматривает себя пустыми глазами. В них нет ни жизни, ни разума. А потом падает.'
    jump dzm506_dispose

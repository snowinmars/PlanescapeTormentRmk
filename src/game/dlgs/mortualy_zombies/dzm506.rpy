init 10 python:
    from dlgs.mortualy_zombies.dzm506_logic import Dzm506Logic
    dzm506Logic = Dzm506Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


label start_dzm506_talk_first:
    call dzm506_init
    jump dzm506_s0
label start_dzm506_talk:
    call dzm506_init
    jump dzm506_s5
label start_dzm506_kill:
    call dzm506_init
    jump dzm506_kill
label dzm506_init:
    $ dzm506Logic.dzm506_init()
    scene bg mortuary_f2r5
    show dzm506_img default at center_left_down
    return
label dzm506_dispose:
    hide dzm506_img
    jump show_graphics_menu


# s0 # say45419
label dzm506_s0:  # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Номер «506» вышит у него на лбу… и на боку шеи… и на правой руке…'
    teller 'В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.'

    menu:
        'Осмотреть швы.' if dzm506Logic.r45420_condition():
            # r0 # reply45420
            jump dzm506_s3

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm506Logic.r45421_condition():
            # r1 # reply45421
            jump dzm506_s1

        'Использовать на трупе свою способность История костей.' if dzm506Logic.r45422_condition():
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
        'Использовать на трупе свою способность История костей.' if dzm506Logic.r45422_condition():
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
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm506Logic.r45421_condition():
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
        'Разрезать швы скальпелем, затем вытащить иголку с ниткой.' if dzm506Logic.r45480_condition():
            # r7 # reply45480
            $ dzm506Logic.r45480_action()
            jump dzm506_s4

        'Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.' if dzm506Logic.r45481_condition():
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
        'Похоже, у тебя два разных обозначения, труп.' if dzm506Logic.r45484_condition():
            # r11 # reply45484
            $ dzm506Logic.r45484_action()
            jump dzm506_s1

        'Похоже, у тебя два разных обозначения, труп.' if dzm506Logic.r45496_condition():
            # r12 # reply45496
            jump dzm506_s1

        'Снова осмотреть труп.':
            # r13 # reply50097
            jump dzm506_s5

        'Оставить зомби в покое.':
            # r14 # reply66889
            jump dzm506_dispose


# s5 # say45429
label dzm506_s5:  # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер «506», в месте, где кожа отвалилась ото лба, на кости выбит номер «78».'

    menu:
        'Похоже, у тебя два разных обозначения, труп.' if dzm506Logic.r45502_condition():
            # r15 # reply45502
            $ dzm506Logic.r45502_action()
            jump dzm506_s1

        'Похоже, у тебя два разных обозначения, труп.' if dzm506Logic.r45508_condition():
            # r16 # reply45508
            jump dzm506_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm506Logic.r45510_condition():
            # r17 # reply45510
            jump dzm506_s1

        'Использовать на трупе свою способность История костей.' if dzm506Logic.r45512_condition():
            # r18 # reply45512
            jump dzm506_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r19 # reply45513
            jump dzm506_dispose

        'Оставить зомби в покое.':
            # r20 # reply45514
            jump dzm506_dispose


label dzm506_kill:
    if dzm506Logic.know_506_secret():
        teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Номер «506» вышит у него на лбу… и на боку шеи… и на правой руке…'
        teller 'В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.'
    if not dzm506Logic.know_506_secret():
        teller 'Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер «506», в месте, где кожа отвалилась ото лба, на кости выбит номер «78».'

    menu:
        '(Уйти.)':
            jump dzm506_dispose
        '(Убить зомби).':
            jump dzm506_killed


label dzm506_killed:
    $ dzm506Logic.kill_dzm506()
    teller 'Карта на этом трупе примитивна. Даже если я и сбился бы на ней с пути - заблудиться я бы не смог. Я рисую новые улицы, новые - с каждым ударом.'
    teller 'Труп осматривает себя пустыми глазами. В них нет ни жизни, ни разума. А потом падает.'
    jump dzm506_dispose

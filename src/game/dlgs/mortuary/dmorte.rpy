init python:
    def _r34991_action(gsm):
        gsm.set_morte_quip(True)
    def _r35001_action(gsm):
        gsm.set_morte_quip(True)
    def _r34993_action(gsm):
        gsm.dec_once_law('morte_zombie_1')


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DMORTE.DLG
# Starts:    dmorte_s330
# ###


label dmorte_s330_init:
    show morte_img default at center_left_down

    return

label dmorte_s330_dispose:
    hide morte_img

# s330 # say34990 # This state was a copypasted state in the original Ps:T as dmorte_s338 dmorte_s358
label dmorte_s330:  # from -
    call dmorte_s330_init
    morte 'Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?'

    menu:
        'О чем это ты *толкуешь*?':
            # r677 # reply34991
            $ _r34991_action(gsm)
            jump dmorte_s331
        'Ты имеешь в виду этот бессмысленный пустой могильный взгляд?':
            # r678 # reply35001
            $ _r35001_action(gsm)
            jump dmorte_s331


# s331 # say34992
label dmorte_s331:  # from 330.0 330.1
    morte 'Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!'

    menu:
        'Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.':
            # r679 # reply34993
            $ _r34993_action(gsm)
            jump dmorte_s332
        'По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.':
            # r680 # reply34996
            jump dmorte_s333
        'По-моему, тебе стоит время от времени отключать свое воображение.':
            # r681 # reply34999
            jump dmorte_s333
        'Как знаешь, Морт. Идем.':
            # r682 # reply35000
            jump dmorte_s330_dispose


# s332 # say34994
label dmorte_s332:  # from 331.0
    morte 'Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до @мускулатуры@, @у меня великолепное тело@ и @я весь в шрамах и круто выгляжу@. Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.'

    menu:
        'Как знаешь, Морт. Идем.':
            # r683 # reply34995
            jump dmorte_s330_dispose


# s333 # say34997
label dmorte_s333:  # from 331.1 331.2
    morte 'Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы. Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты будешь бегать вокруг с воплями А? Чего здесь творится? Куда пропала моя па-па-память?'

    menu:
        'Как знаешь, Морт. Идем.':
            # r684 # reply34998
            jump dmorte_s330_dispose

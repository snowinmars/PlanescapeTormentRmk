import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init(gsm):
    gsm.set_location('mortuary2')
    renpy.exports.show("bg mortuary2")
    gsm.set_meet_dzf594(True)
    _show('dzf594_img default', center_right_down)
def _dispose():
    _hide('dzf594_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm594(gsm):
    gsm.set_dead_dzf594(True)
###
def _r35019_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35019_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35036_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35037_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35038_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35043_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35044_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35045_condition(gsm):
    return gsm.get_morte_quip()
def _r35046_condition(gsm):
    return gsm.get_morte_quip()
def _r35047_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35048_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35021_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35034_condition(gsm):
    return gsm.get_morte_quip()
def _r35035_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35040_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35041_condition(gsm):
    return gsm.get_morte_quip()
def _r35042_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35023_action(gsm):
    gsm.set_morte_quip(True)
def _r35033_action(gsm):
    gsm.set_morte_quip(True)
def _r35025_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF594.DLG
def dlg_dzf594(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf594        = renpy.store.characters['dzf594']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf594.D_s0 DZF594.D_s99999999_k
    DialogStateBuilder().state('DZF594.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 334')\
        .with_npc_lines() \
            .line(teller, "Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.", 's0', 'say35018').with_action(lambda: _init(gsm)) \
            .line(teller, "На ее лбу угольным карандашом нацарапан номер «594».", 's0', 'say35018') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF594.D_s1', 'r0', 'reply35019').with_condition(lambda: _r35019_condition(gsm)).with_action(lambda: _r35019_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF594.D_s1', 'r1', 'reply35036').with_condition(lambda: _r35036_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF594.D_s1', 'r2', 'reply35037').with_condition(lambda: _r35037_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF594.D_s2', 'r3', 'reply35038').with_condition(lambda: _r35038_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s334', 'r4', 'reply35043').with_condition(lambda: _r35043_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35045').with_condition(lambda: _r35045_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35047').with_condition(lambda: _r35047_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s334', 'r5', 'reply35044').with_condition(lambda: _r35044_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35046').with_condition(lambda: _r35046_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35048').with_condition(lambda: _r35048_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF594.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 334')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35020') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZF594.D_s2', 'r3', 'reply35038').with_condition(lambda: _r35038_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s334', 'r4', 'reply35043').with_condition(lambda: _r35043_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35045').with_condition(lambda: _r35045_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35047').with_condition(lambda: _r35047_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s334', 'r10', 'reply35021').with_condition(lambda: _r35021_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35034').with_condition(lambda: _r35034_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35035').with_condition(lambda: _r35035_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s334', 'r5', 'reply35044').with_condition(lambda: _r35044_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35046').with_condition(lambda: _r35046_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35048').with_condition(lambda: _r35048_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF594.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 334')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35039') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF594.D_s1', 'r2', 'reply35037').with_condition(lambda: _r35037_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s334', 'r4', 'reply35043').with_condition(lambda: _r35043_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35045').with_condition(lambda: _r35045_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35047').with_condition(lambda: _r35047_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s334', 'r13', 'reply35040').with_condition(lambda: _r35040_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35041').with_condition(lambda: _r35041_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35042').with_condition(lambda: _r35042_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s334', 'r5', 'reply35044').with_condition(lambda: _r35044_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35046').with_condition(lambda: _r35046_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35048').with_condition(lambda: _r35048_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s334', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's334', 'say35022') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s335', 'r743', 'reply35023').with_action(lambda: _r35023_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s335', 'r744', 'reply35033').with_action(lambda: _r35033_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s335', '# from 334.0 334.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's335', 'say35024') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s336', 'r745', 'reply35025').with_action(lambda: _r35025_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s337', 'r746', 'reply35028') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s337', 'r747', 'reply35031') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r748', 'reply35032').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s336', '# from 335.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's336', 'say35026') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's336', 'say35026') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r749', 'reply35027').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s337', '# from 335.1 335.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's337', 'say35029') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's337', 'say35029') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's337', 'say35029') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r750', 'reply35030').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF594.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.", 's0', 'say35018').with_action(lambda: _init(gsm)) \
            .line(teller, "На ее лбу угольным карандашом нацарапан номер «594».", 's0', 'say35018') \
            .line(teller, "Я думаю о том, как разрезал бы её кожу.", '-', '-') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить зомби.", 'DZF594.D_s99999999_k_', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DZF594.D_s99999999_k_', '# from -') \
        .with_npc_lines() \
            .line(teller, "Её кожа и правда тонкая - как летнее платье; удивительно приятная на ощупь. Она смотрит на меня пустыми глазами.", '-', '-') \
            .line(teller, "В них нет ни жизни, ни разума. Я без сожалений снимаю с неё остатки жизни.", '-', '-').with_action(lambda: _kill_dzm594(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
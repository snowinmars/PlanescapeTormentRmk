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
    gsm.set_location('morgue2')
    renpy.exports.show("bg mourge1")
    gsm.set_meet_dzf916(True)
    _show('dzf916_img default', center_right_down)
def _dispose():
    _hide('dzf916_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r24720_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r24720_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r24737_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r24738_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r24739_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r24744_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24745_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24746_condition(gsm):
    return gsm.get_morte_quip()
def _r24747_condition(gsm):
    return gsm.get_morte_quip()
def _r24748_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24749_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24722_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24735_condition(gsm):
    return gsm.get_morte_quip()
def _r24736_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24741_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r24742_condition(gsm):
    return gsm.get_morte_quip()
def _r24743_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r2603_action(gsm):
    gsm.set_morte_quip(True)
def _r2602_action(gsm):
    gsm.set_morte_quip(True)
def _r2605_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF916.DLG
def dlg_dzf916(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf916        = renpy.store.characters['dzf916']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf916.D_s0
    DialogStateBuilder().state('DZF916.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 46')\
        .with_npc_lines() \
            .line(teller, "Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.", 's0', 'say24719').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF916.D_s1', 'r0', 'reply24720').with_condition(lambda: _r24720_condition(gsm)).with_action(lambda: _r24720_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF916.D_s1', 'r1', 'reply24737').with_condition(lambda: _r24737_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF916.D_s1', 'r2', 'reply24738').with_condition(lambda: _r24738_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF916.D_s2', 'r3', 'reply24739').with_condition(lambda: _r24739_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s46', 'r4', 'reply24744').with_condition(lambda: _r24744_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply24746').with_condition(lambda: _r24746_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply24748').with_condition(lambda: _r24748_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s46', 'r5', 'reply24745').with_condition(lambda: _r24745_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply24747').with_condition(lambda: _r24747_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply24749').with_condition(lambda: _r24749_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF916.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 46')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say24721') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s46', 'r10', 'reply24722').with_condition(lambda: _r24722_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply24735').with_condition(lambda: _r24735_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply24736').with_condition(lambda: _r24736_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF916.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 46')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say24740') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s46', 'r13', 'reply24741').with_condition(lambda: _r24741_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply24742').with_condition(lambda: _r24742_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply24743').with_condition(lambda: _r24743_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s46', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's46', 'say2601') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s47', 'r154', 'reply2603').with_action(lambda: _r2603_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s47', 'r155', 'reply2602').with_action(lambda: _r2602_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s47', '# from 46.0 46.1 121.1 121.2')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's47', 'say2604') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s49', 'r156', 'reply2605').with_action(lambda: _r2605_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s48', 'r157', 'reply2606') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s48', 'r158', 'reply2607') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r159', 'reply2608').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s48', '# from 47.1 47.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's48', 'say2609') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's48', 'say2609') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's48', 'say2609') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r160', 'reply2610').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s49', '# from 47.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's49', 'say2611') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's49', 'say2611') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r161', 'reply2612').with_action(lambda: _dispose()) \
        .push(manager)

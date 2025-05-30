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
    renpy.exports.show("bg mortuary1")
    gsm.set_meet_dzf891(True)
    _show('dzf891_img default', center_right_down)
def _dispose():
    _hide('dzf891_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35275_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35275_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35292_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35293_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35294_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35299_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35300_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35301_condition(gsm):
    return gsm.get_morte_quip()
def _r35302_condition(gsm):
    return gsm.get_morte_quip()
def _r35303_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35304_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35277_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35290_condition(gsm):
    return gsm.get_morte_quip()
def _r35291_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35296_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35297_condition(gsm):
    return gsm.get_morte_quip()
def _r35298_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35279_action(gsm):
    gsm.set_morte_quip(True)
def _r35289_action(gsm):
    gsm.set_morte_quip(True)
def _r35281_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF891.DLG
def dlg_dzf891(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf891        = renpy.store.characters['dzf891']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf891.D_s0
    DialogStateBuilder().state('DZF891.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 366')\
        .with_npc_lines() \
            .line(teller, "Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ.", 's0', 'say35274').with_action(lambda: _init(gsm)) \
            .line(teller, "Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер «891».", 's0', 'say35274') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF891.D_s1', 'r0', 'reply35275').with_condition(lambda: _r35275_condition(gsm)).with_action(lambda: _r35275_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF891.D_s1', 'r1', 'reply35292').with_condition(lambda: _r35292_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF891.D_s1', 'r2', 'reply35293').with_condition(lambda: _r35293_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF891.D_s2', 'r3', 'reply35294').with_condition(lambda: _r35294_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s366', 'r4', 'reply35299').with_condition(lambda: _r35299_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35301').with_condition(lambda: _r35301_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35303').with_condition(lambda: _r35303_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s366', 'r5', 'reply35300').with_condition(lambda: _r35300_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35302').with_condition(lambda: _r35302_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35304').with_condition(lambda: _r35304_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF891.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 366')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35276') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZF891.D_s2', 'r3', 'reply35294').with_condition(lambda: _r35294_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s366', 'r4', 'reply35299').with_condition(lambda: _r35299_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35301').with_condition(lambda: _r35301_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35303').with_condition(lambda: _r35303_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s366', 'r10', 'reply35277').with_condition(lambda: _r35277_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35290').with_condition(lambda: _r35290_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35291').with_condition(lambda: _r35291_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s366', 'r5', 'reply35300').with_condition(lambda: _r35300_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35302').with_condition(lambda: _r35302_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35304').with_condition(lambda: _r35304_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF891.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 366')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35295') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF891.D_s1', 'r2', 'reply35293').with_condition(lambda: _r35293_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s366', 'r4', 'reply35299').with_condition(lambda: _r35299_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35301').with_condition(lambda: _r35301_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35303').with_condition(lambda: _r35303_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s366', 'r13', 'reply35296').with_condition(lambda: _r35296_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35297').with_condition(lambda: _r35297_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35298').with_condition(lambda: _r35298_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s366', 'r5', 'reply35300').with_condition(lambda: _r35300_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35302').with_condition(lambda: _r35302_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35304').with_condition(lambda: _r35304_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s366', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's366', 'say35278') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s367', 'r807', 'reply35279').with_action(lambda: _r35279_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s367', 'r808', 'reply35289').with_action(lambda: _r35289_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s367', '# from 366.0 366.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's367', 'say35280') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s368', 'r809', 'reply35281').with_action(lambda: _r35281_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s369', 'r810', 'reply35284') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s369', 'r811', 'reply35287') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r812', 'reply35288').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s368', '# from 367.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's368', 'say35282') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's368', 'say35282') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r813', 'reply35283').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s369', '# from 367.1 367.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's369', 'say35285') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's369', 'say35285') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's369', 'say35285') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r814', 'reply35286').with_action(lambda: _dispose()) \
        .push(manager)
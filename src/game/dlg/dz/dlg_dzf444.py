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
    gsm.set_meet_dzf444(True)
    _show('dzf444_img default', center_right_down)
def _dispose():
    _hide('dzf444_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35211_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35211_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35228_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35229_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35230_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35235_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35236_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35237_condition(gsm):
    return gsm.get_morte_quip()
def _r35238_condition(gsm):
    return gsm.get_morte_quip()
def _r35239_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35240_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35213_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35226_condition(gsm):
    return gsm.get_morte_quip()
def _r35227_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35232_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35233_condition(gsm):
    return gsm.get_morte_quip()
def _r35234_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35215_action(gsm):
    gsm.set_morte_quip(True)
def _r35225_action(gsm):
    gsm.set_morte_quip(True)
def _r35217_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF444.DLG
def dlg_dzf444(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf444        = renpy.store.characters['dzf444']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf444.D_s0
    DialogStateBuilder().state('DZF444.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 358')\
        .with_npc_lines() \
            .line(teller, "У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных.", 's0', 'say35210').with_action(lambda: _init(gsm)) \
            .line(teller, "Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».", 's0', 'say35210') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF444.D_s1', 'r0', 'reply35211').with_condition(lambda: _r35211_condition(gsm)).with_action(lambda: _r35211_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF444.D_s1', 'r1', 'reply35228').with_condition(lambda: _r35228_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF444.D_s1', 'r2', 'reply35229').with_condition(lambda: _r35229_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF444.D_s2', 'r3', 'reply35230').with_condition(lambda: _r35230_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s358', 'r4', 'reply35235').with_condition(lambda: _r35235_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35237').with_condition(lambda: _r35237_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35239').with_condition(lambda: _r35239_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s358', 'r5', 'reply35236').with_condition(lambda: _r35236_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35238').with_condition(lambda: _r35238_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35240').with_condition(lambda: _r35240_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF444.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 358')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35212') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZF444.D_s2', 'r3', 'reply35230').with_condition(lambda: _r35230_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s358', 'r4', 'reply35235').with_condition(lambda: _r35235_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply35237').with_condition(lambda: _r35237_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35239').with_condition(lambda: _r35239_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s358', 'r10', 'reply35213').with_condition(lambda: _r35213_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35226').with_condition(lambda: _r35226_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35227').with_condition(lambda: _r35227_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s358', 'r5', 'reply35236').with_condition(lambda: _r35236_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35238').with_condition(lambda: _r35238_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35240').with_condition(lambda: _r35240_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF444.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 358')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35231') \
        .with_responses() \
             .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF444.D_s1', 'r2', 'reply35229').with_condition(lambda: _r35229_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s358', 'r4', 'reply35235').with_condition(lambda: _r35235_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply35237').with_condition(lambda: _r35237_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35239').with_condition(lambda: _r35239_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s358', 'r13', 'reply35232').with_condition(lambda: _r35232_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35233').with_condition(lambda: _r35233_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35234').with_condition(lambda: _r35234_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s358', 'r5', 'reply35236').with_condition(lambda: _r35236_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35238').with_condition(lambda: _r35238_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35240').with_condition(lambda: _r35240_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s358', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's358', 'say35214') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s359', 'r791', 'reply35215').with_action(lambda: _r35215_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s359', 'r792', 'reply35225').with_action(lambda: _r35225_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s359', '# from 358.0 358.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's359', 'say35216') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s360', 'r793', 'reply35217').with_action(lambda: _r35217_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s361', 'r794', 'reply35220') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s361', 'r795', 'reply35223') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r796', 'reply35224').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s360', '# from 359.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's360', 'say35218') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's360', 'say35218') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r797', 'reply35219').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s361', '# from 359.1 359.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's361', 'say35221') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's361', 'say35221') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's361', 'say35221') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r798', 'reply35222').with_action(lambda: _dispose()) \
        .push(manager)

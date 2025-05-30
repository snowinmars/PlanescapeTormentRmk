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
    gsm.set_meet_dzf679(True)
    _show('dzf679_img default', center_right_down)
def _dispose():
    _hide('dzf679_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35179_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35179_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35196_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35197_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35198_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35203_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35204_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35205_condition(gsm):
    return gsm.get_morte_quip()
def _r35206_condition(gsm):
    return gsm.get_morte_quip()
def _r35207_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35208_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35181_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35194_condition(gsm):
    return gsm.get_morte_quip()
def _r35195_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35200_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35201_condition(gsm):
    return gsm.get_morte_quip()
def _r35202_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35183_action(gsm):
    gsm.set_morte_quip(True)
def _r35193_action(gsm):
    gsm.set_morte_quip(True)
def _r35185_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF679.DLG
def dlg_dzf679(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf679        = renpy.store.characters['dzf679']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf679.D_s0
    DialogStateBuilder().state('DZF679.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 354')\
        .with_npc_lines() \
            .line(teller, "Похоже, это труп довольно таки старой, даже древней женщины.", 's0', 'say35178').with_action(lambda: _init(gsm)) \
            .line(teller, "Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер «679», вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.", 's0', 'say35178') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF679.D_s1', 'r0', 'reply35179').with_condition(lambda: _r35179_condition(gsm)).with_action(lambda: _r35179_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF679.D_s1', 'r1', 'reply35196').with_condition(lambda: _r35196_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF679.D_s1', 'r2', 'reply35197').with_condition(lambda: _r35197_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF679.D_s2', 'r3', 'reply35198').with_condition(lambda: _r35198_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s354', 'r4', 'reply35203').with_condition(lambda: _r35203_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35205').with_condition(lambda: _r35205_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35207').with_condition(lambda: _r35207_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s354', 'r5', 'reply35204').with_condition(lambda: _r35204_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35206').with_condition(lambda: _r35206_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35208').with_condition(lambda: _r35208_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF679.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 354')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35180') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZF679.D_s2', 'r3', 'reply35198').with_condition(lambda: _r35198_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s354', 'r4', 'reply35203').with_condition(lambda: _r35203_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35205').with_condition(lambda: _r35205_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35207').with_condition(lambda: _r35207_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s354', 'r10', 'reply35181').with_condition(lambda: _r35181_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35194').with_condition(lambda: _r35194_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35195').with_condition(lambda: _r35195_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s354', 'r5', 'reply35204').with_condition(lambda: _r35204_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35206').with_condition(lambda: _r35206_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35208').with_condition(lambda: _r35208_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF679.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 354')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35199') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF679.D_s1', 'r2', 'reply35197').with_condition(lambda: _r35197_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s354', 'r4', 'reply35203').with_condition(lambda: _r35203_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35205').with_condition(lambda: _r35205_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35207').with_condition(lambda: _r35207_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s354', 'r13', 'reply35200').with_condition(lambda: _r35200_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35201').with_condition(lambda: _r35201_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35202').with_condition(lambda: _r35202_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s354', 'r5', 'reply35204').with_condition(lambda: _r35204_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35206').with_condition(lambda: _r35206_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35208').with_condition(lambda: _r35208_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s354', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's354', 'say35182') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s355', 'r783', 'reply35183').with_action(lambda: _r35183_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s355', 'r784', 'reply35193').with_action(lambda: _r35193_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s355', '# from 354.0 354.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's355', 'say35184') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s356', 'r785', 'reply35185').with_action(lambda: _r35185_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s357', 'r786', 'reply35188') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s357', 'r787', 'reply35191') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r788', 'reply35192').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s356', '# from 355.0')\
        .with_npc_lines() \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's356', 'say35186') \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's356', 'say35186') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r789', 'reply35187').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s357', '# from 355.1 355.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's357', 'say35189') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's357', 'say35189') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's357', 'say35189') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r790', 'reply35190').with_action(lambda: _dispose()) \
        .push(manager)

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
    gsm.set_meet_dzf1072(True)
    _show('dzf1072_img default', center_right_down)
def _dispose():
    _hide('dzf1072_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35115_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35115_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35132_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35133_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35134_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35139_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35140_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35141_condition(gsm):
    return gsm.get_morte_quip()
def _r35142_condition(gsm):
    return gsm.get_morte_quip()
def _r35143_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35144_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35117_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35130_condition(gsm):
    return gsm.get_morte_quip()
def _r35131_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35136_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35137_condition(gsm):
    return gsm.get_morte_quip()
def _r35138_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35119_action(gsm):
    gsm.set_morte_quip(True)
def _r35129_action(gsm):
    gsm.set_morte_quip(True)
def _r35121_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF1072.DLG
def dlg_dzf1072(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf1072       = renpy.store.characters['dzf1072']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf1072.D_s0
    DialogStateBuilder().state('DZF1072.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 346')\
        .with_npc_lines() \
            .line(teller, "От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения.", 's0', 'say35114').with_action(lambda: _init(gsm)) \
            .line(teller, "У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.", 's0', 'say35114') \
        .with_responses() \
            .response("Кажется, у нее бывали деньки и получше…", 'DZF1072.D_s1', 'r0', 'reply35115').with_condition(lambda: _r35115_condition(gsm)).with_action(lambda: _r35115_action(gsm)) \
            .response("Кажется, у нее бывали деньки и получше…", 'DZF1072.D_s1', 'r1', 'reply35132').with_condition(lambda: _r35132_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF1072.D_s1', 'r2', 'reply35133').with_condition(lambda: _r35133_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF1072.D_s2', 'r3', 'reply35134').with_condition(lambda: _r35134_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s346', 'r4', 'reply35139').with_condition(lambda: _r35139_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35141').with_condition(lambda: _r35141_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35143').with_condition(lambda: _r35143_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s346', 'r5', 'reply35140').with_condition(lambda: _r35140_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35142').with_condition(lambda: _r35142_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35144').with_condition(lambda: _r35144_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1072.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 346')\
        .with_npc_lines() \
            .line(teller, "Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.", 's1', 'say35116') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s346', 'r10', 'reply35117').with_condition(lambda: _r35117_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35130').with_condition(lambda: _r35130_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35131').with_condition(lambda: _r35131_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1072.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 346')\
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35135') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s346', 'r13', 'reply35136').with_condition(lambda: _r35136_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35137').with_condition(lambda: _r35137_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35138').with_condition(lambda: _r35138_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s346', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's346', 'say35118') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s347', 'r767', 'reply35119').with_action(lambda: _r35119_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s347', 'r768', 'reply35129').with_action(lambda: _r35129_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s347', '# from 346.0 346.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's347', 'say35120') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s348', 'r769', 'reply35121').with_action(lambda: _r35121_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s349', 'r780', 'reply35124') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s349', 'r781', 'reply35127') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r782', 'reply35128').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s348', '# from 347.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's348', 'say35122') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's348', 'say35122') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r783', 'reply35123').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s349', '# from 347.1 347.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's349', 'say35125') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's349', 'say35125') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's349', 'say35125') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r784', 'reply35126').with_action(lambda: _dispose()) \
        .push(manager)

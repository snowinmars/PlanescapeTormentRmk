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
    gsm.set_meet_dzf114(True)
    _show('dzf114_img default', center_right_down)
def _dispose():
    _hide('dzf114_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r34987_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r34987_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35004_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
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
def _r34991_action(gsm):
    gsm.set_morte_quip(True)
def _r34993_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
def _r35001_action(gsm):
    gsm.set_morte_quip(True)
###

# DLG/DZF114.DLG
def dlg_dzf114(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf114        = renpy.store.characters['dzf114']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZF114.D_s0
    DialogStateBuilder().state('DZF114.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 330')\
        .with_npc_lines() \
            .line(teller, "Труп женщины перестает ковылять, как только ты подходишь. Ты замечаешь номер «114», вырезанный у нее на лбу.", 's0', 'say34986').with_action(lambda: _init(gsm)) \
            .line(teller, "Ее рот зашит, однако нитки начинают рваться и из ее губ слышится слабый стон.", 's0', 'say34986') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF114.D_s1', 'r0', 'reply34987').with_condition(lambda: _r34987_condition(gsm)).with_action(lambda: _r34987_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF114.D_s1', 'r1', 'reply35004').with_condition(lambda: _r35004_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF114.D_s1', 'r2', 'reply35005').with_condition(lambda: _r35005_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF114.D_s2', 'r3', 'reply35006').with_condition(lambda: _r35006_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s330', 'r4', 'reply35011').with_condition(lambda: _r35011_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35013').with_condition(lambda: _r35013_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35015').with_condition(lambda: _r35015_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s330', 'r5', 'reply35012').with_condition(lambda: _r35012_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35014').with_condition(lambda: _r35014_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35016').with_condition(lambda: _r35016_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF114.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 330')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say34988') \
        .with_responses() \
             .response("Использовать на трупе свою способность История костей.", 'DZF114.D_s2', 'r3', 'reply35006').with_condition(lambda: _r35006_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s358', 'r4', 'reply35011').with_condition(lambda: _r35011_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35013').with_condition(lambda: _r35013_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35015').with_condition(lambda: _r35015_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s330', 'r10', 'reply34989').with_condition(lambda: _r34989_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35002').with_condition(lambda: _r35002_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35003').with_condition(lambda: _r35003_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s330', 'r5', 'reply35012').with_condition(lambda: _r35012_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35014').with_condition(lambda: _r35014_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35016').with_condition(lambda: _r35016_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF114.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 330')\
        .with_npc_lines() \
            .line(teller, "Этот труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35007') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF114.D_s1', 'r2', 'reply35005').with_condition(lambda: _r35005_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s358', 'r4', 'reply35011').with_condition(lambda: _r35011_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35013').with_condition(lambda: _r35013_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35015').with_condition(lambda: _r35015_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s330', 'r13', 'reply35008').with_condition(lambda: _r35008_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35009').with_condition(lambda: _r35009_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35010').with_condition(lambda: _r35010_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s330', 'r5', 'reply35012').with_condition(lambda: _r35012_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35014').with_condition(lambda: _r35014_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35016').with_condition(lambda: _r35016_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s330', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's330', 'say34990') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s331', 'r735', 'reply34991').with_action(lambda: _r34991_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s331', 'r736', 'reply35001').with_action(lambda: _r35001_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s331', '# from 330.0 330.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's331', 'say34992') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s332', 'r737', 'reply34993').with_action(lambda: _r34993_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s333', 'r738', 'reply34996') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s333', 'r739', 'reply34999') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r740', 'reply35000').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s332', '# from 331.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's332', 'say34994') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's332', 'say34994') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r741', 'reply34995').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s333', '# from 331.1 331.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's333', 'say34997') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's333', 'say34997') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's333', 'say34997') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r742', 'reply34998').with_action(lambda: _dispose()) \
        .push(manager)

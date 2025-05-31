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
    gsm.set_meet_dzf626(True)
    _show('dzf626_img default', center_right_down)
def _dispose():
    _hide('dzf626_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzm626(gsm):
    gsm.set_dead_dzf626(True)
###
def _r35051_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35051_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35068_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35069_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35070_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35075_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35076_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35077_condition(gsm):
    return gsm.get_morte_quip()
def _r35078_condition(gsm):
    return gsm.get_morte_quip()
def _r35079_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35080_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35053_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35066_condition(gsm):
    return gsm.get_morte_quip()
def _r35067_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35072_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35073_condition(gsm):
    return gsm.get_morte_quip()
def _r35074_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35055_action(gsm):
    gsm.set_morte_quip(True)
def _r35065_action(gsm):
    gsm.set_morte_quip(True)
def _r35057_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF626.DLG
def dlg_dzf626(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf626         = renpy.store.characters['dzf626']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf626.D_s0 DZF626.D_s99999999_k
    DialogStateBuilder().state('DZF626.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 338')\
        .with_npc_lines() \
            .line(teller, "Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.", 's0', 'say35050').with_action(lambda: _init(gsm)) \
            .line(teller, "Номер «626» вышит на правой щеке, прямо под глазом.", 's0', 'say35050') \
        .with_responses() \
            .response("Э… здорово тебе досталось.", 'DZF626.D_s1', 'r0', 'reply35051').with_condition(lambda: _r35051_condition(gsm)).with_action(lambda: _r35051_action(gsm)) \
            .response("Э… здорово тебе досталось.", 'DZF626.D_s1', 'r1', 'reply35068').with_condition(lambda: _r35068_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF626.D_s1', 'r2', 'reply35069').with_condition(lambda: _r35069_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF626.D_s2', 'r3', 'reply35070').with_condition(lambda: _r35070_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", 'DMORTE.D_s338', 'r4', 'reply35075').with_condition(lambda: _r35075_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r6', 'reply35077').with_condition(lambda: _r35077_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r8', 'reply35079').with_condition(lambda: _r35079_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s338', 'r5', 'reply35076').with_condition(lambda: _r35076_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35078').with_condition(lambda: _r35078_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35080').with_condition(lambda: _r35080_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF626.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 338')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает смотреть на тебя одним уцелевшим глазом.", 's1', 'say35052') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZF626.D_s2', 'r3', 'reply35070').with_condition(lambda: _r35070_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", 'DMORTE.D_s338', 'r4', 'reply35075').with_condition(lambda: _r35075_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r6', 'reply35077').with_condition(lambda: _r35077_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r8', 'reply35079').with_condition(lambda: _r35079_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s338', 'r10', 'reply35053').with_condition(lambda: _r35053_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35066').with_condition(lambda: _r35066_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35067').with_condition(lambda: _r35067_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s338', 'r5', 'reply35076').with_condition(lambda: _r35076_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35078').with_condition(lambda: _r35078_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35080').with_condition(lambda: _r35080_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF626.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 338')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35071') \
        .with_responses() \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF626.D_s1', 'r2', 'reply35069').with_condition(lambda: _r35069_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", 'DMORTE.D_s338', 'r4', 'reply35075').with_condition(lambda: _r35075_condition(gsm)) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r6', 'reply35077').with_condition(lambda: _r35077_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно поболтать с тобой. Прощай.", EXIT, 'r8', 'reply35079').with_condition(lambda: _r35079_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s338', 'r13', 'reply35072').with_condition(lambda: _r35072_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35073').with_condition(lambda: _r35073_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35074').with_condition(lambda: _r35074_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s338', 'r5', 'reply35076').with_condition(lambda: _r35076_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35078').with_condition(lambda: _r35078_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35080').with_condition(lambda: _r35080_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s338', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's338', 'say35054') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s339', 'r751', 'reply35055').with_action(lambda: _r35055_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s339', 'r752', 'reply35065').with_action(lambda: _r35065_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s339', '# from 338.0 338.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's339', 'say35056') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s340', 'r753', 'reply35057').with_action(lambda: _r35057_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s341', 'r754', 'reply35060') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s341', 'r755', 'reply35063') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r756', 'reply35064').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s340', '# from 339.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's340', 'say35058') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's340', 'say35058') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r757', 'reply35059').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s341', '# from 339.1 339.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's341', 'say35061') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's341', 'say35061') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's341', 'say35061') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r758', 'reply35062').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF626.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.", 's0', 'say35050').with_action(lambda: _init(gsm)) \
            .line(teller, "Номер «626» вышит на правой щеке, прямо под глазом.", 's0', 'say35050') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить зомби.", 'DZF626.D_s99999999_k_', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DZF626.D_s99999999_k_', '# from -') \
        .with_npc_lines() \
            .line(teller, "Я делаю её лицо симметричным. Будь у неё глаза, она бы смотрела на меня.", '-', '-') \
            .line(teller, "Смотрела бы без ни жизни и без разума в них. Есть ли работа для слепых трупов?", '-', '-').with_action(lambda: _kill_dzm626(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)
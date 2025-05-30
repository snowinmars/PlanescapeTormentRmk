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
    gsm.set_meet_dzf832(True)
    _show('dzf832_img default', center_right_down)
def _dispose():
    _hide('dzf832_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35147_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35147_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35164_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35165_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35166_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35171_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35172_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35173_condition(gsm):
    return gsm.get_morte_quip()
def _r35174_condition(gsm):
    return gsm.get_morte_quip()
def _r35175_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35176_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35149_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35162_condition(gsm):
    return gsm.get_morte_quip()
def _r35163_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35168_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35169_condition(gsm):
    return gsm.get_morte_quip()
def _r35170_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35151_action(gsm):
    gsm.set_morte_quip(True)
def _r35161_action(gsm):
    gsm.set_morte_quip(True)
def _r35153_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF832.DLG
def dlg_dzf832(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf832        = renpy.store.characters['dzf832']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf832.D_s0
    DialogStateBuilder().state('DZF832.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 350')\
        .with_npc_lines() \
            .line(teller, "Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет.", 's0', 'say35146').with_action(lambda: _init(gsm)) \
            .line(teller, "Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.", 's0', 'say35146') \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF832.D_s1', 'r0', 'reply35147').with_condition(lambda: _r35147_condition(gsm)).with_action(lambda: _r35147_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF832.D_s1', 'r1', 'reply35164').with_condition(lambda: _r35164_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF832.D_s1', 'r2', 'reply35165').with_condition(lambda: _r35165_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF832.D_s2', 'r3', 'reply35166').with_condition(lambda: _r35166_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s350', 'r4', 'reply35171').with_condition(lambda: _r35171_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35173').with_condition(lambda: _r35173_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35175').with_condition(lambda: _r35175_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s350', 'r5', 'reply35172').with_condition(lambda: _r35172_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35174').with_condition(lambda: _r35174_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35176').with_condition(lambda: _r35176_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF832.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 350')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35148') \
        .with_responses() \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF832.D_s1', 'r2', 'reply35165').with_condition(lambda: _r35165_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF832.D_s2', 'r3', 'reply35166').with_condition(lambda: _r35166_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s350', 'r4', 'reply35171').with_condition(lambda: _r35171_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35173').with_condition(lambda: _r35173_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35175').with_condition(lambda: _r35175_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s350', 'r10', 'reply35149').with_condition(lambda: _r35149_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35162').with_condition(lambda: _r35162_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35163').with_condition(lambda: _r35163_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s350', 'r5', 'reply35172').with_condition(lambda: _r35172_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35174').with_condition(lambda: _r35174_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35176').with_condition(lambda: _r35176_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF832.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 350')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35167') \
        .with_responses() \
        .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF832.D_s1', 'r2', 'reply35165').with_condition(lambda: _r35165_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF832.D_s2', 'r3', 'reply35166').with_condition(lambda: _r35166_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s350', 'r4', 'reply35171').with_condition(lambda: _r35171_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35173').with_condition(lambda: _r35173_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35175').with_condition(lambda: _r35175_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", 'DMORTE.D_s350', 'r13', 'reply35168').with_condition(lambda: _r35168_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35169').with_condition(lambda: _r35169_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35170').with_condition(lambda: _r35170_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s350', 'r5', 'reply35172').with_condition(lambda: _r35172_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35174').with_condition(lambda: _r35174_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35176').with_condition(lambda: _r35176_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s350', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's350', 'say35150') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s351', 'r775', 'reply35151').with_action(lambda: _r35151_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s351', 'r776', 'reply35161').with_action(lambda: _r35161_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s351', '# from 350.0 350.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's351', 'say35152') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s352', 'r777', 'reply35153').with_action(lambda: _r35153_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s353', 'r778', 'reply35156') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s353', 'r779', 'reply35159') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r780', 'reply35160').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s352', '# from 351.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's352', 'say35154') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's352', 'say35154') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r781', 'reply35155').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s353', '# from 351.1 351.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's353', 'say35157') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's353', 'say35157') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's353', 'say35157') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r782', 'reply35158').with_action(lambda: _dispose()) \
        .push(manager)
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
    gsm.set_location('mortuary3')
    renpy.exports.show("bg mortuary3")
    gsm.set_meet_dzf1096(True)
    _show('dzf1096_img default', center_right_down)
def _dispose():
    _hide('dzf1096_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
def _kill_dzf1096(gsm):
    gsm.set_dead_dzf1096(True)
###
def _r35083_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35083_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35100_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35101_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35102_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35107_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35108_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35109_condition(gsm):
    return gsm.get_morte_quip()
def _r35110_condition(gsm):
    return gsm.get_morte_quip()
def _r35111_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35112_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35085_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35098_condition(gsm):
    return gsm.get_morte_quip()
def _r35099_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35104_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35105_condition(gsm):
    return gsm.get_morte_quip()
def _r35106_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35087_action(gsm):
    gsm.set_morte_quip(True)
def _r35097_action(gsm):
    gsm.set_morte_quip(True)
def _r35089_action(gsm):
    gsm.dec_once_law('morte_zombie_1')
###

# DLG/DZF1096.DLG
def dlg_dzf1096(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf1096       = renpy.store.characters['dzf1096']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf1096.D_s0
    DialogStateBuilder().state('DZF1096.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 342')\
        .with_npc_lines() \
            .line(teller, "Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.", 's0', 'say35082').with_action(lambda: _init(gsm)) \
            .line(teller, "Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.", 's0', 'say35082') \
        .with_responses() \
            .response("Э… Красивая коса.", 'DZF1096.D_s1', 'r0', 'reply35083').with_condition(lambda: _r35083_condition(gsm)).with_action(lambda: _r35083_action(gsm)) \
            .response("Э… Красивая коса.", 'DZF1096.D_s1', 'r1', 'reply35100').with_condition(lambda: _r35100_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF1096.D_s1', 'r2', 'reply35101').with_condition(lambda: _r35101_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF1096.D_s2', 'r3', 'reply35102').with_condition(lambda: _r35102_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s342', 'r4', 'reply35107').with_condition(lambda: _r35107_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35109').with_condition(lambda: _r35109_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35111').with_condition(lambda: _r35111_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s342', 'r5', 'reply35108').with_condition(lambda: _r35108_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35110').with_condition(lambda: _r35110_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35112').with_condition(lambda: _r35112_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1096.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 342')\
        .with_npc_lines() \
            .line(teller, "Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.", 's1', 'say35084') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s342', 'r10', 'reply35085').with_condition(lambda: _r35085_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35098').with_condition(lambda: _r35098_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35099').with_condition(lambda: _r35099_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1096.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 342')\
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35103') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s342', 'r13', 'reply35104').with_condition(lambda: _r35104_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35105').with_condition(lambda: _r35105_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35106').with_condition(lambda: _r35106_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s342', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's342', 'say35086') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s343', 'r759', 'reply35087').with_action(lambda: _r35087_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s343', 'r760', 'reply35097').with_action(lambda: _r35097_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s343', '# from 342.0 342.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's343', 'say35088') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s344', 'r761', 'reply35089').with_action(lambda: _r35089_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s345', 'r762', 'reply35092') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s345', 'r763', 'reply35095') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r764', 'reply35096').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s344', '# from 343.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's344', 'say35090') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's344', 'say35090') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r765', 'reply35091').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s345', '# from 343.1 343.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's345', 'say35093') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's345', 'say35093') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's345', 'say35093') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r766', 'reply35094').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1096.D_s99999999_k', '# from -') \
        .with_npc_lines() \
            .line(teller, "Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.", 's0', 'say35082').with_action(lambda: _init(gsm)) \
            .line(teller, "Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.", 's0', 'say35082') \
        .with_responses() \
            .response("Уйти.", EXIT, '-', '-').with_action(lambda: _dispose()) \
            .response("Убить зомби.", 'DZF1096.D_s99999999_k_', '-', '-') \
        .push(manager)

    DialogStateBuilder().state('DZF1096.D_s99999999_k_', '# from -') \
        .with_npc_lines() \
            .line(teller, "Я затягиваю косу вокруг её шеи. Она поворачивается ко мне с смотрит на меня пустыми глазами.", '-', '-') \
            .line(teller, "...", '-', '-') \
            .line(teller, "Она же и так не дышит.", '-', '-') \
            .line(teller, "Я сжимаю косу изо всех сил - шея женщины ощутимо хрустит. Ещё немного - и она смотрит на меня снизу вверх.", '-', '-') \
            .line(teller, "В её глазах нет ни жизни, ни разума.", '-', '-').with_action(lambda: _kill_dzf1096(gsm)) \
        .with_responses() \
            .response("(…)", EXIT, '-', '-').with_action(lambda: _dispose()) \
        .push(manager)

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
    gsm.set_meet_dzf1148(True)
    _show('dzf1148_img default', center_right_down)
def _dispose():
    _hide('dzf1148_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r35243_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r35243_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r35260_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r35261_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r35262_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r35267_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35268_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35269_condition(gsm):
    return gsm.get_morte_quip()
def _r35270_condition(gsm):
    return gsm.get_morte_quip()
def _r35271_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35272_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35245_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35258_condition(gsm):
    return gsm.get_morte_quip()
def _r35259_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35264_condition(gsm):
    return gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35265_condition(gsm):
    return gsm.get_morte_quip()
def _r35266_condition(gsm):
    return not gsm.get_in_party_morte() \
           and not gsm.get_morte_quip()
def _r35247_action(gsm):
    gsm.set_morte_quip(True)
def _r35257_action(gsm):
    gsm.set_morte_quip(True)
def _r35249_action(gsm):
    gsm.dec_once_law('morte_zombie_1')

###

# DLG/DZF1148.DLG
def dlg_dzf1148(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzf1148       = renpy.store.characters['dzf1148']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZf1148.D_s0
    DialogStateBuilder().state('DZF1148.D_s0', '# from - // Manually checked EXTENDS ~DMORTE~ : 362')\
        .with_npc_lines() \
            .line(teller, "Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер «1148» вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.", 's0', 'say35242').with_action(lambda: _init(gsm)) \
        .with_responses() \
            .response("Итак… чем занимаешься вечером?", 'DZF1148.D_s1', 'r0', 'reply35243').with_condition(lambda: _r35243_condition(gsm)).with_action(lambda: _r35243_action(gsm)) \
            .response("Итак… чем занимаешься вечером?", 'DZF1148.D_s1', 'r1', 'reply35260').with_condition(lambda: _r35260_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZF1148.D_s1', 'r2', 'reply35261').with_condition(lambda: _r35261_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZF1148.D_s2', 'r3', 'reply35262').with_condition(lambda: _r35262_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", 'DMORTE.D_s362', 'r4', 'reply35267').with_condition(lambda: _r35267_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r6', 'reply35269').with_condition(lambda: _r35269_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r8', 'reply35271').with_condition(lambda: _r35271_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", 'DMORTE.D_s362', 'r5', 'reply35268').with_condition(lambda: _r35268_condition(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply35270').with_condition(lambda: _r35270_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply35272').with_condition(lambda: _r35272_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1148.D_s1', '# from 0.0 0.1 0.2 // Manually checked EXTENDS ~DMORTE~ : 362')\
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say35244') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s362', 'r10', 'reply35245').with_condition(lambda: _r35245_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r11', 'reply35258').with_condition(lambda: _r35258_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r12', 'reply35259').with_condition(lambda: _r35259_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DZF1148.D_s2', '# from 0.3 // Manually checked EXTENDS ~DMORTE~ : 362')\
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say35263') \
        .with_responses() \
            .response("Тогда прощай.", 'DMORTE.D_s362', 'r13', 'reply35264').with_condition(lambda: _r35264_condition(gsm)) \
            .response("Тогда прощай.", EXIT, 'r14', 'reply35265').with_condition(lambda: _r35265_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Тогда прощай.", EXIT, 'r15', 'reply35266').with_condition(lambda: _r35266_condition(gsm)).with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s362', '# from -')\
        .with_npc_lines() \
            .line(morte, "Пссст. Видел, как она посмотрела на меня? А? Ты видел это? Как она огибала взглядом кривую моей затылочной кости?", 's362', 'say35246') \
        .with_responses() \
            .response("О чем это ты *толкуешь*?", 'DMORTE.D_s363', 'r799', 'reply35247').with_action(lambda: _r35247_action(gsm)) \
            .response("Ты имеешь в виду этот бессмысленный пустой могильный взгляд?", 'DMORTE.D_s363', 'r800', 'reply35257').with_action(lambda: _r35257_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s363', '# from 362.0 362.1')\
        .with_npc_lines() \
            .line(morte, "Чт… да ты что, ОСЛЕП?! Она меня изучала! Она бесстыдно меня ХОТЕЛА!", 's363', 'say35248') \
        .with_responses() \
            .response("Скорее хотела, чтобы ты *исчез*. Да она была слишком занята МНОЙ, чтобы отвлекаться на какую-то болтающуюся голову с большим ртом.", 'DMORTE.D_s364', 'r801', 'reply35249').with_action(lambda: _r35249_action(gsm)) \
            .response("По-моему, у тебя слишком богатое воображение. Она зомби. Труп. Мертвая. Скорее всего, она тебя даже не заметила.", 'DMORTE.D_s365', 'r802', 'reply35252') \
            .response("По-моему, тебе стоит время от времени отключать свое воображение.", 'DMORTE.D_s365', 'r803', 'reply35255') \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r804', 'reply35256').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s364', '# from 363.0')\
        .with_npc_lines() \
            .line(morte, "Тобой? Ага, конечно! Уж поверь мне, крошкам из могил нет дела до 'мускулатуры', 'у меня великолепное тело' и 'я весь в шрамах и круто выгляжу'.", 's364', 'say35250') \
            .line(morte, "Им нужны парни с ДУШОЙ. Типа меня, шеф. А трупов вроде ТЕБЯ повсюду навалом, как грязи.", 's364', 'say35250') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r805', 'reply35251').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DMORTE.D_s365', '# from 363.1 363.2')\
        .with_npc_lines() \
            .line(morte, "Да-да-да, как пожелаешь. Если бы ты был настолько долго мертв, как я, ты бы улавливал сигналы.", 's365', 'say35253') \
            .line(morte, "Для тебя они, наверно, слишком ТОНКИЕ, чтобы их уловить, но именно поэтому я буду проводить ночи напролет с сочной свежеумершей крошкой, а ты...", 's365', 'say35253') \
            .line(morte, "...ты будешь бегать вокруг с воплями «А?» «Чего здесь творится?» «Куда пропала моя па-па-память?»", 's365', 'say35253') \
        .with_responses() \
            .response("Как знаешь, Морт. Идем.", EXIT, 'r806', 'reply35254').with_action(lambda: _dispose()) \
        .push(manager)
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
    gsm.set_location('morgue1')
    renpy.exports.show("bg mourge1")
    _show('dzm506_img default', center_right_down)
def _dispose():
    _hide('dzm506_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
def _check_char_prop_gt(who, gtValue, prop):
    return True
def _check_char_prop_lt(who, gtValue, prop):
    return True
###
###
def _r45420_condition(gsm):
    return not gsm.get_has_506_thread()
def _r45421_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45422_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r45480_condition(gsm):
    return gsm.get_has_scalpel()
def _r45480_action(gsm):
    gsm.set_pick_up_506_thread(True)
    gsm.set_pick_up_needle(True)
def _r45481_condition(gsm):
    return not gsm.get_has_scalpel()
def _r45484_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r45484_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45496_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45502_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic')
def _r45502_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r45508_condition(gsm):
    return gsm.once_tracked('zombie_chaotic')
def _r45510_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r45512_condition(gsm):
    return gsm.get_can_speak_with_dead()
###

# DLG/DZM506.DLG
def dlg_dzm506(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm506        = renpy.store.characters['dzm506']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM506.D_s0
    DialogStateBuilder() \
    .state('DZM506.D_s0', '# from 3.2') \
        .with_npc_lines() \
            .line(teller, "Этот покрытый швами труп вяло передвигается между двумя плитами. Номер «506» вышит у него на лбу… и на боку шеи… и на правой руке…", 's0', 'say45419').with_action(lambda: _init(gsm)) \
            .line(teller, "В сущности, у этого трупа так много швов, что его кожа выглядит как причудливая карта улиц.", 's0', 'say45419') \
        .with_responses() \
            .response("Осмотреть швы.", 'DZM506.D_s3', 'r0', 'reply45420').with_condition(lambda: _r45420_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM506.D_s1', 'r1', 'reply45421').with_condition(lambda: _r45421_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM506.D_s2', 'r2', 'reply45422').with_condition(lambda: _r45422_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r3', 'reply45423').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r4', 'reply45424').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM506.D_s1', '# from 0.1 4.0 4.1 5.0 5.1 5.2') \
        .with_npc_lines() \
            .line(teller, "Труп самозабвенно смотрит вперед.", 's1', 'say45425') \
        .with_responses() \
            .response("Осмотреть швы.", 'DZM506.D_s3', 'r0', 'reply45420').with_condition(lambda: _r45420_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM506.D_s2', 'r2', 'reply45422').with_condition(lambda: _r45422_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r3', 'reply45423').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r5', 'reply45478').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM506.D_s2', '# from 0.2 5.3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say45426') \
        .with_responses() \
            .response("Осмотреть швы.", 'DZM506.D_s3', 'r0', 'reply45420').with_condition(lambda: _r45420_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM506.D_s1', 'r1', 'reply45421').with_condition(lambda: _r45421_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r3', 'reply45423').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r6', 'reply45479').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM506.D_s3', '# from 0.0') \
        .with_npc_lines() \
            .line(teller, "Швы опоясывают тело, пробегая по рукам через весь торс наверх по шее и скрываясь в копне белых волос. Проходя по пересечениям швов, ты замечаешь, что кто-то приколол иголку ко лбу…", 's3', 'say45427') \
            .line(teller, "…в иглу вдета нить, которая выходит из шва на черепе. Ты мог бы вытащить ее, если бы у тебя было что-нибудь, чтобы разрезать нить.", 's3', 'say45427') \
        .with_responses() \
            .response("Разрезать швы скальпелем, затем вытащить иголку с ниткой.", 'DZM506.D_s4', 'r7', 'reply45480').with_condition(lambda: _r45480_condition(gsm)).with_action(lambda: _r45480_action(gsm)) \
            .response("Хм-м. Возможно, здесь есть что-нибудь, чем я смог бы срезать нитку… Я еще вернусь.", EXIT, 'r8', 'reply45481').with_condition(lambda: _r45481_condition(gsm)).with_action(lambda: _dispose()) \
            .response("Снова осмотреть труп.", 'DZM506.D_s0', 'r9', 'reply45482') \
            .response("Оставить труп в покое.", EXIT, 'r10', 'reply45483').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM506.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Ты аккуратно срезаешь нить с помощью скальпеля, а затем выдергиваешь иголку, распуская швы. Кожа на лбу отваливается, обнажая белый как мел череп. К твоему удивлению, на нем выбит номер «78».", 's4', 'say45428') \
        .with_responses() \
            .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r11', 'reply45484').with_condition(lambda: _r45484_condition(gsm)).with_action(lambda: _r45484_action(gsm)) \
            .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r12', 'reply45496').with_condition(lambda: _r45496_condition(gsm)) \
            .response("Снова осмотреть труп.", 'DZM506.D_s5', 'r13', 'reply50097') \
            .response("Оставить зомби в покое.", EXIT, 'r14', 'reply66889').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM506.D_s5', '# from 4.2') \
        .with_npc_lines() \
            .line(teller, "Этот покрытый швами труп вяло передвигается между двумя плитами. Хотя по всему телу у него вышит номер «506», в месте, где кожа отвалилась ото лба, на кости выбит номер «78».", 's5', 'say45429') \
        .with_responses() \
            .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r15', 'reply45502').with_condition(lambda: _r45502_condition(gsm)).with_action(lambda: _r45502_action(gsm)) \
            .response("Похоже, у тебя два разных обозначения, труп.", 'DZM506.D_s1', 'r16', 'reply45508').with_condition(lambda: _r45508_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM506.D_s1', 'r17', 'reply45510').with_condition(lambda: _r45510_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM506.D_s2', 'r18', 'reply45512').with_condition(lambda: _r45512_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r19', 'reply45513').with_action(lambda: _dispose()) \
            .response("Оставить зомби в покое.", EXIT, 'r20', 'reply45514').with_action(lambda: _dispose()) \
        .push(manager)
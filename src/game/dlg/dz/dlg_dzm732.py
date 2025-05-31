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
    gsm.set_location('mortuary1')
    renpy.exports.show("bg mortuary1")
    _show('dzm732_img default', center_right_down)
    gsm.set_meet_dzm732(True)
def _dispose():
    _hide('dzm732_img')
def _show(sprite, start_pos, end_pos = None, duration=0.5):
    end_pos = start_pos if end_pos is None else end_pos
    renpy.exports.show(renpy.store.character_reactions[sprite], at_list=[start_pos])
def _hide(sprite):
    renpy.exports.hide(sprite)
###
###
def _r6533_condition(gsm):
    return not gsm.once_tracked('zombie_chaotic') \
    and gsm.get_has_tome_ba()
def _r6533_action(gsm):
    gsm.dec_once_law('zombie_chaotic')
def _r6532_condition(gsm):
    return gsm.once_tracked('zombie_chaotic') \
    and gsm.get_has_tome_ba()
def _r6534_condition(gsm):
    return gsm.get_vaxis_exposed()
def _r6535_condition(gsm):
    return gsm.get_can_speak_with_dead()
def _r64271_action(gsm):
    gsm.set_has_tome_ba(True)
###

# DLG/DZM732.DLG
def dlg_dzm732(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm732        = renpy.store.characters['dzm732']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DZM732.D_s0 DZM732.D_s3
    DialogStateBuilder() \
    .state('DZM732.D_s0', '# from 4.0') \
        .with_npc_lines() \
            .line(teller, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732». Похоже, глазные полости были зашиты давным-давно…", 's0', 'say6529').with_action(lambda: _init(gsm)) \
            .line(teller, "…тебе остается только гадать, когда потерял человек глаза — до смерти или после.", 's0', 'say6529') \
        .with_responses() \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r0', 'reply6533').with_condition(lambda: _r6533_condition(gsm)).with_action(lambda: _r6533_action(gsm)) \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r1', 'reply6532').with_condition(lambda: _r6532_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM732.D_s1', 'r2', 'reply6534').with_condition(lambda: _r6534_condition(gsm)) \
            .response("Использовать на трупе свою способность История костей.", 'DZM732.D_s2', 'r3', 'reply6535').with_condition(lambda: _r6535_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6536').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6537').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM732.D_s1', '# from 0.0 0.1 0.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6530') \
        .with_responses() \
            .response("Использовать на трупе свою способность История костей.", 'DZM732.D_s2', 'r3', 'reply6535').with_condition(lambda: _r6535_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6536').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6538').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM732.D_s2', '# from 0.3') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6531') \
        .with_responses() \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r0', 'reply6533').with_condition(lambda: _r6533_condition(gsm)).with_action(lambda: _r6533_action(gsm)) \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r1', 'reply6532').with_condition(lambda: _r6532_condition(gsm)) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM732.D_s1', 'r2', 'reply6534').with_condition(lambda: _r6534_condition(gsm)) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6536').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6539').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM732.D_s3', '# from -') \
        .with_npc_lines() \
            .line(teller, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732».", 's3', 'say64270').with_action(lambda: _init(gsm)) \
            .line(teller, "Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после.", 's3', 'say64270') \
            .line(teller, "Ты замечаешь, что в руках он несет тяжелую книгу, как будто он где-то ее забрал.", 's3', 'say64270') \
        .with_responses() \
            .response("Взять том из его рук… осторожно.", 'DZM732.D_s4', 'r8', 'reply64271').with_action(lambda: _r64271_action(gsm)) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply64272').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM732.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Ты осторожно берешь книгу из рук трупа — он даже не замечает этого.", 's4', 'say64273') \
            .line(teller, "Похоже, это книга заклинаний и оберегов: она исписана схемами и таблицами, описывающими различные аспекты искусства некромантии.", 's4', 'say64273') \
            .line(teller, "Сама по себе книга очень тяжелая. Каким бы неуклюжим не был зомби, он, должно быть, очень силен.", 's4', 'say64273') \
        .with_responses() \
            .response("Снова осмотреть труп.", 'DZM732.D_s0', 'r10', 'reply64274') \
            .response("Оставить труп в покое.", EXIT, 'r11', 'reply64275').with_action(lambda: _dispose()) \
        .push(manager)

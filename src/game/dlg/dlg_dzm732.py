import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel
)
from settings.settings_morgue import (
    current_morgue_settings,
    pick_tome_ba
)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init():
    travel('morgue1')
    _show('dzm732_img default', center_right_down)
def _dispose():
    _hide('dzm732_img')
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
def _r6533_condition():
    return not changed_law_once('zombie_chaotic')
def _r6533_action():
    change_law_once(-1, 'zombie_chaotic')
def _r6532_condition():
    return changed_law_once('zombie_chaotic')
def _r6534_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r6535_condition():
    return current_global_settings()['can_speak_with_dead']
def _r64271_action():
    pick_tome_ba()
###

# DLG/DZM732.DLG
def dlg_dzm732():
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm732        = renpy.store.characters['dzm732']
    EXIT          = -1

    # from 4.0
    DialogStateBuilder('DZM732.D_s0') \
        .with_npc_lines() \
            .line(teller, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732». Похоже, глазные полости были зашиты давным-давно…", 's0', 'say6529') \
            .line(teller, "…тебе остается только гадать, когда потерял человек глаза — до смерти или после.", 's0', 'say6529') \
        .with_responses() \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r0', 'reply6533').with_condition(lambda: _r6533_condition()).with_action(lambda: _r6533_action()) \
            .response("Извини, что забрал ту книгу… она выглядела слишком интересной, что пропустить ее мимо.", 'DZM732.D_s1', 'r1', 'reply6532').with_condition(lambda: _r6532_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM732.D_s1', 'r2', 'reply6534').with_condition(lambda: _r6534_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM732.D_s2', 'r3', 'reply6535').with_condition(lambda: _r6535_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r4', 'reply6536').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r5', 'reply6537').with_action(lambda: _dispose()) \
        .done()

    # from 0.0 0.1 0.2
    DialogStateBuilder('DZM732.D_s1') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say6530') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply6538').with_action(lambda: _dispose()) \
        .done()

    # from 0.3
    DialogStateBuilder('DZM732.D_s2') \
        .with_npc_lines() \
            .line(teller, "Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say6531') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r7', 'reply6539').with_action(lambda: _dispose()) \
        .done()

    # from -
    DialogStateBuilder('DZM732.D_s3') \
        .with_npc_lines() \
            .line(teller, "У этого ковыляющего зашит не только рот, но и глаза, а на брови вырезан номер «732».", 's3', 'say64270') \
            .line(teller, "Похоже, глазные полости были зашиты давным-давно… тебе остается только гадать, когда потерял человек глаза — до смерти или после.", 's3', 'say64270') \
            .line(teller, "ПТы замечаешь, что в руках он несет тяжелую книгу, как будто он где-то ее забрал.", 's3', 'say64270') \
        .with_responses() \
            .response("Взять том из его рук… осторожно.", 'DZM732.D_s4', 'r8', 'reply64271').with_action(lambda: _r64271_action()) \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply64272').with_action(lambda: _dispose()) \
        .done()

    # from 3.0
    DialogStateBuilder('DZM732.D_s4') \
        .with_npc_lines() \
            .line(teller, "Ты осторожно берешь книгу из рук трупа — он даже не замечает этого.", 's4', 'say64273') \
            .line(teller, "Похоже, это книга заклинаний и оберегов: она исписана схемами и таблицами, описывающими различные аспекты искусства некромантии.", 's4', 'say64273') \
            .line(teller, "Сама по себе книга очень тяжелая. Каким бы неуклюжим не был зомби, он, должно быть, очень силен.", 's4', 'say64273') \
        .with_responses() \
            .response("Снова осмотреть труп.", 'DZM732.D_s0', 'r10', 'reply64274') \
            .response("Оставить труп в покое.", EXIT, 'r11', 'reply64275').with_action(lambda: _dispose()) \
        .done()
import renpy
from engine.dialog import (DialogStateBuilder)
from settings.settings_global import (
    current_global_settings,
    travel
)
from settings.settings_morgue import (
    current_morgue_settings
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
    _show('dzm396_img default', center_right_down)
def _dispose():
    _hide('dzm396_img')
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
def _r34932_condition():
    return not changed_law_once('zombie_chaotic')
def _r34932_action():
    change_law_once(-1, 'zombie_chaotic')
def _r34935_condition():
    return changed_law_once('zombie_chaotic')
def _r34937_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r34940_condition():
    return current_global_settings()['can_speak_with_dead']
def _r45112_condition():
    return not changed_law_once('zombie_chaotic')
def _r45112_action():
    change_law_once(-1, 'zombie_chaotic')
def _r45113_condition():
    return changed_law_once('zombie_chaotic')
def _r45114_condition():
    return current_morgue_settings()['vaxis_exposed']
def _r45115_condition():
    return current_global_settings()['can_speak_with_dead']
###

# DLG/DZM396.DLG
def dlg_dzm396(manager):
    teller        = renpy.store.characters['teller']
    morte         = renpy.store.characters['morte']
    dzm396        = renpy.store.characters['dzm396']
    EXIT          = -1

    DialogStateBuilder() \
    .state('DZM396.D_s0', '# from -') \
        .with_npc_lines() \
            .line(teller, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. На левом виске у него выбит номер «396»; его губы крепко зашиты. Ты замечаешь, что труп несет в руках несколько бинтов.", 's0', 'say34931') \
        .with_responses() \
            .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r0', 'reply34932').with_condition(lambda: _r34932_condition()).with_action(lambda: _r34932_action()) \
            .response("Ты не против, если я одолжу у тебя эти бинты?", 'DZM396.D_s1', 'r1', 'reply34935').with_condition(lambda: _r34935_condition()) \
            .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r2', 'reply34936') \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r3', 'reply34937').with_condition(lambda: _r34937_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r4', 'reply34940').with_condition(lambda: _r34940_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r5', 'reply34941').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r6', 'reply45106').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM396.D_s1', '# from 0.0 0.1 0.3 4.0 4.1 4.2') \
        .with_npc_lines() \
            .line(teller, "Труп продолжает пялиться на тебя.", 's1', 'say34933') \
        .with_responses() \
            .response("Попробовать забрать бинты у зомби.", 'DZM396.D_s3', 'r7', 'reply34934') \
            .response("Оставить труп в покое.", EXIT, 'r8', 'reply45107').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM396.D_s2', '# from 0.4 4.3') \
        .with_npc_lines() \
            .line(teller, "Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.", 's2', 'say34938') \
        .with_responses() \
            .response("Оставить труп в покое.", EXIT, 'r9', 'reply34939').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM396.D_s3', '# from 0.2 1.0') \
        .with_npc_lines() \
            .line(teller, "Ты протягиваешь руку и забираешь бинты из рук трупа. Труп даже не обратил на это внимания; он продолжает перевязывать тела.", 's3', 'say45108') \
        .with_responses() \
            .response("Снова осмотреть труп.", 'DZM396.D_s4', 'r10', 'reply45109') \
            .response("Оставить труп в покое.", EXIT, 'r11', 'reply45110').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder() \
    .state('DZM396.D_s4', '# from 3.0') \
        .with_npc_lines() \
            .line(teller, "Этот труп ходит от плиты к плите, перевязывая лежащих на них мертвецов. Он продолжает выполнять свои обязанности, даже без бинтов.", 's4', 'say45111') \
            .line(teller, "На левом виске у него выбит номер «396», а его губы крепко зашиты.", 's4', 'say45111') \
        .with_responses() \
            .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r12', 'reply45112').with_condition(lambda: _r45112_condition()).with_action(lambda: _r45112_action()) \
            .response("Извини, что забрал те бинты. Просто мне они нужны больше, чем этим телам.", 'DZM396.D_s1', 'r13', 'reply45113').with_condition(lambda: _r45113_condition()) \
            .response("Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.", 'DZM396.D_s1', 'r14', 'reply45114').with_condition(lambda: _r45114_condition()) \
            .response("Использовать на трупе свою способность История костей.", 'DZM396.D_s2', 'r15', 'reply45115').with_condition(lambda: _r45115_condition()) \
            .response("Было приятно с тобой поболтать. Прощай.", EXIT, 'r16', 'reply45116').with_action(lambda: _dispose()) \
            .response("Оставить труп в покое.", EXIT, 'r17', 'reply45117').with_action(lambda: _dispose()) \
        .push(manager)
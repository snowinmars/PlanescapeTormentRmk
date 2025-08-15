test_case1 = f'''
IF ~~ THEN BEGIN 19 // from: 1.3
SAY #3472 /* ~Женщина не отвечает.~ */
IF ~~ THEN JOURNAL #38205 /* ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ */ EXTERN ~DMORTE~ 56
END
'''.strip()
test_tree1 = {
    'state_id': 19,
    'paths': [{
        'from_state_id': 1,
        'response_index': 3
    }],
    'say_id': 3472,
    'state_body': 'Женщина не отвечает.',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': 38205,
        'journal_body': 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.',
        'target_state': {
            'id': 56,
            'other_npc': 'morte'
        }
    }]
}
test_result1_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s19 # say3472
label area_s19: # from 1.3
    SPEAKER 'Женщина не отвечает.'

    $ areaLogic.s19_action()
    jump morte_s56  # EXTERN
'''.strip()
test_result1_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s19_action(self):
        self.settings_manager.journal_manager.update_journal('38205')
        # .register('38205', 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.')
'''.strip()
test_result1_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s19_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.s19_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()


test_case2 = f'''
IF ~~ THEN BEGIN 20 // from: 5.2 5.4
SAY #3485 /* ~Она отворачивается... непохоже, чтобы она тебя услышала. ~ */
IF ~~ THEN EXTERN ~DMORTE~ 57
END
'''.strip()
test_tree2 = {
    'state_id': 20,
    'paths': [{
        'from_state_id': 5,
        'response_index': 2
    }, {
        'from_state_id': 5,
        'response_index': 4
    }],
    'say_id': 3485,
    'state_body': 'Она отворачивается... непохоже, чтобы она тебя услышала.',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 57,
            'other_npc': 'morte'
        }
    }]
}
test_result2_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s20 # say3485
label area_s20: # from 5.2 5.4
    SPEAKER 'Она отворачивается… непохоже, чтобы она тебя услышала.'

    jump morte_s57  # EXTERN
'''.strip()
test_result2_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip()
test_result2_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case3 = f'''
IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
SAY #3493 /* ~Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел». ~ */
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) HasItem("KeyEm","EiVene") ~ THEN REPLY #3501 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ DO ~AddexperienceParty(250) SetGlobal("Embalm_Key_Quest","GLOBAL",2) GiveItem("KeyEm",Protagonist) ~ GOTO 18
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) !HasItem("KeyEm","EiVene") ~ THEN REPLY #3502 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ GOTO 24
IF ~~ THEN REPLY #4358 /* ~Уйти.~ */ EXIT
END
'''.strip()
test_tree3 = {
    'state_id':  22,
    'paths': [{
        'from_state_id': 15,
        'response_index': 2
    }, {
        'from_state_id': 25,
        'response_index': 1
    }, {
        'from_state_id': 27,
        'response_index': 1
    }],
    'say_id': 3493,
    'state_body': 'Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел».',
    'free': None,
    'answers': [{
        'condition': 'Global("Embalm_Key_Quest","GLOBAL",1) HasItem("KeyEm","EiVene")',
        'action': 'AddexperienceParty(250) SetGlobal("Embalm_Key_Quest","GLOBAL",2) GiveItem("KeyEm",Protagonist)',
        'answer_id': 3501,
        'answer_body': '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 18
        }
    }, {
        'condition': 'Global("Embalm_Key_Quest","GLOBAL",1) !HasItem("KeyEm","EiVene")',
        'action': None,
        'answer_id': 3502,
        'answer_body': '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 24
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 4358,
        'answer_body': 'Уйти.',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result3_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s22 # say3493
label area_s22: # from 15.2 25.1 27.1
    SPEAKER 'Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел».'

    menu:
        '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»' if areaLogic.r3501_condition():
            # a0 # r3501
            $ areaLogic.r3501_action()
            jump area_s18

        '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»' if areaLogic.r3502_condition():
            # a1 # r3502
            jump area_s24

        'Уйти.':
            # a2 # r4358
            jump area_dispose
'''.strip()
test_result3_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r3501_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_embalm_key_quest(2)
        self.settings_manager.set_has_keyem(True)


    def r3501_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \\
               not self.settings_manager.get_has_keyem()


    def r3502_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \\
               self.settings_manager.get_has_keyem()
'''.strip()
test_result3_tests_ = ''
test_result3_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r3501_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        embalm_key_quest_before = 1
        embalm_key_quest_after = 2
        embalm_key_quest_after_once = 2

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), embalm_key_quest_before)
        self.assertFalse(self.settings_manager.get_has_keyem())

        self.logic.r3501_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), embalm_key_quest_after)
        self.assertTrue(self.settings_manager.get_has_keyem())

        self.logic.r3501_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), embalm_key_quest_after_once)
        self.assertTrue(self.settings_manager.get_has_keyem())


    def test_r3501_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(True)

        self.assertFalse(self.logic.r3501_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)

        self.assertTrue(self.logic.r3501_condition())


    def test_r3502_condition(self):
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)

        self.assertFalse(self.logic.r3502_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)

        self.assertTrue(self.logic.r3502_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case4 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
END
'''.strip()
test_tree4 = {
    'state_id': 16,
    'paths': [{
        'from_state_id': 15,
        'response_index': 0
    }],
    'say_id': 3464,
    'state_body': 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3)',
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 26
        }
    }]
}
test_result4_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s16 # say3464
label area_s16: # from 15.0
    SPEAKER 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…'

    $ areaLogic.s16_action()
    jump area_s26
'''.strip()
test_result4_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s16_action(self):
        # FadeToColor([20.0],0)
        # Wait(3)
        # FadeFromColor([20.0],0)
        # Wait(3)
'''.strip()
test_result4_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s16_action(self):
        self.logic.s16_action()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case5 = f'''
IF ~~ THEN BEGIN 178 // from:
SAY #15348 /* ~«Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!»~ */
IF ~~ THEN DO ~SetGlobal("Know_Mimir","GLOBAL",1) ~ EXTERN ~DADYZOEL~ 35
END
'''.strip()
test_tree5 = {
    'state_id': 178,
    'paths': [],
    'say_id': 15348,
    'state_body': '«Что? Шеф, я всего лишь мимир! Я не умею \'драться на дуэли\'!»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'SetGlobal("Know_Mimir","GLOBAL",1)',
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 35,
            'other_npc': 'adyzoel'
        }
    }],
}
test_result5_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s178 # say15348
label area_s178: # -
    SPEAKER '«Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!»'

    $ areaLogic.s178_action()
    jump adyzoel_s35  # EXTERN
'''.strip()
test_result5_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s178_action(self):
        self.settings_manager.set_know_mimir(True)
'''.strip()
test_result5_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s178_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_mimir,
            self.logic.s178_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case6 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ EXTERN ~DMORTE~ 57
END
'''.strip()
test_tree6 = {
    'state_id': 16,
    'paths': [{
        'from_state_id': 15,
        'response_index': 0
    }],
    'say_id': 3464,
    'state_body': 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3)',
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 57,
            'other_npc': 'morte'
        }
    }]
}
test_result6_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s16 # say3464
label area_s16: # from 15.0
    SPEAKER 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…'

    $ areaLogic.s16_action()
    jump morte_s57  # EXTERN
'''.strip()
test_result6_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s16_action(self):
        # FadeToColor([20.0],0)
        # Wait(3)
        # FadeFromColor([20.0],0)
        # Wait(3)
'''.strip()
test_result6_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s16_action(self):
        self.logic.s16_action()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case7 = f'''
IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
SAY #300 /* ~Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.~ */
IF ~~ THEN REPLY #302 /* ~«Приветствую».~ */ GOTO 1
IF ~~ THEN REPLY #303 /* ~«Кто ты?»~ */ GOTO 1
IF ~~ THEN REPLY #304 /* ~«Что это за место?»~ */ GOTO 1
IF ~~ THEN REPLY #305 /* ~«У меня есть пара вопросов...» ~ */ EXTERN ~DMORTE~ 59
IF ~~ THEN REPLY #306 /* ~Оставить его в покое.~ */ EXIT
END
'''.strip()
test_tree7 = {
    'state_id': 0,
    'paths': [],
    'say_id': 300,
    'state_body': 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.',
    'free': 'IF ~  Global("Appearance","GLOBAL",1)',
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': 302,
        'answer_body': '«Приветствую».',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 303,
        'answer_body': '«Кто ты?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 304,
        'answer_body': '«Что это за место?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 305,
        'answer_body': '«У меня есть пара вопросов...»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 59,
            'other_npc': 'morte'
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 306,
        'answer_body': 'Оставить его в покое.',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result7_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s0 # say300
label area_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    SPEAKER 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.'

    menu:
        '«Приветствую».':
            # a0 # r302
            jump area_s1

        '«Кто ты?»':
            # a1 # r303
            jump area_s1

        '«Что это за место?»':
            # a2 # r304
            jump area_s1

        '«У меня есть пара вопросов…»':
            # a3 # r305
            jump morte_s59  # EXTERN

        'Оставить его в покое.':
            # a4 # r306
            jump area_dispose
'''.strip()
test_result7_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip()
test_result7_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case8 = f'''
IF ~~ THEN BEGIN 138 // from: 137.0
SAY #11947 /* ~Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»~ */
IF ~~ THEN EXIT
END
'''.strip()
test_tree8 = {
    'state_id': 138,
    'paths': [{
        'from_state_id': 137,
        'response_index': 0
    }],
    'say_id': 11947,
    'state_body': 'Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result8_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s138 # say11947
label area_s138: # from 137.0
    SPEAKER 'Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»'

    jump area_dispose
'''.strip()
test_result8_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip()
test_result8_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case9 = f'''
IF ~~ THEN BEGIN 179 // from:
SAY #15349 /* ~«Это, э... что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».~ */
IF ~  GlobalLT("Morte_Mimir","GLOBAL",2) ~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0) ~ EXTERN ~DADYZOEL~ 36
IF ~  GlobalGT("Morte_Mimir","GLOBAL",1) ~ THEN REPLY #65537 /* ~«Но ты ведь НЕ мимир, Морт...»~ */ EXTERN ~DADYZOEL~ 36
END
'''.strip()
test_tree9 = {
    'state_id': 179,
    'paths': [],
    'say_id': 15349,
    'state_body': '«Это, э... что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».',
    'free': None,
    'answers': [{
        'condition': 'GlobalLT("Morte_Mimir","GLOBAL",2)',
        'action': 'IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0)',
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 36,
            'other_npc': 'adyzoel'
        }
    }, {
        'condition': 'GlobalGT("Morte_Mimir","GLOBAL",1)',
        'action': None,
        'answer_id': 65537,
        'answer_body': '«Но ты ведь НЕ мимир, Морт...»',
        'is_autoclick': False,
        'target_state': {
            'id': 36,
            'other_npc': 'adyzoel'
        }
    }]
}
test_result9_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s179 # say15349
label area_s179: # -
    SPEAKER '«Это, э… что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».'

    if areaLogic.s179_condition():
        $ areaLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '«Но ты ведь НЕ мимир, Морт…»' if areaLogic.r65537_condition():
            # a0 # r65537
            jump adyzoel_s36  # EXTERN
'''.strip()
test_result9_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s179_action(self):
        self.settings_manager.inc_once_morte_mimir('globalmorte_mimir')


    def s179_condition(self):
        return self.settings_manager.get_morte_mimir() < 2


    def r65537_condition(self):
        return self.settings_manager.get_morte_mimir() > 1
'''.strip()
test_result9_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s179_action(self):
        self._integer_inc_once_action(
            self.settings_manager.get_morte_mimir,
            1,
            self.logic.s179_action
        )


    def test_s179_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_morte_mimir(x),
            2,
            self.logic.s179_condition
        )


    def test_r65537_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_morte_mimir(x),
            1,
            self.logic.r65537_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case10 = f'''
IF ~~ THEN BEGIN 206 // from: 204.0
  SAY #19704 /* ~«Это не то же самое, шеф...»~ */
  IF ~~ THEN GOTO 205
END
'''.strip()
test_tree10 = {
    'state_id': 206,
    'paths': [{
        'from_state_id': 204,
        'response_index': 0
    }],
    'say_id': 19704,
    'state_body': '«Это не то же самое, шеф...»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {'id': 205}
    }]
}
test_result10_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s206 # say19704
label area_s206: # from 204.0
    SPEAKER '«Это не то же самое, шеф…»'

    jump area_s205
'''.strip()
test_result10_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip()
test_result10_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case11 = f'''
IF ~~ THEN BEGIN 518 // from: 515.0 517.0
SAY #53668 /* ~Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они... слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны...»~ */
IF ~  NearbyDialog("DDakkon") ~ THEN EXTERN ~DDAKKON~ 183
IF ~  !NearbyDialog("DDakkon") ~ THEN REPLY #54105 /* ~«Продолжай...»~ */ GOTO 520
END
'''.strip()
test_tree11 = {
    'state_id': 518,
    'paths': [{
        'from_state_id': 515,
        'response_index': 0
    }, {
        'from_state_id': 517,
        'response_index': 0
    }],
    'say_id': 53668,
    'state_body': 'Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они... слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны...»',
    'free': None,
    'answers': [{
        'condition': 'NearbyDialog("DDakkon")',
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 183,
            'other_npc': 'dakkon'
        }
    }, {
        'condition': '!NearbyDialog("DDakkon")',
        'action': None,
        'answer_id': 54105,
        'answer_body': '«Продолжай...»',
        'is_autoclick': False,
        'target_state': {
            'id': 520
        }
    }]
}
test_result11_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s518 # say53668
label area_s518: # from 515.0 517.0
    SPEAKER 'Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они… слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны…»'

    if areaLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '«Продолжай…»' if areaLogic.r54105_condition():
            # a0 # r54105
            jump area_s520
'''.strip()
test_result11_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s518_condition(self):
        return self.settings_manager.get_in_party_dakkon()


    def r54105_condition(self):
        return not self.settings_manager.get_in_party_dakkon()
'''.strip()
test_result11_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_s518_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_dakkon(x),
            self.logic.s518_condition
        )


    def test_r54105_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_dakkon(x),
            self.logic.r54105_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case12 = f'''
IF ~~ THEN BEGIN 0 // from:
SAY #986 /* ~«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».~ */
IF ~~ THEN REPLY #987 /* ~«Кто ты?»~ */ GOTO 1
IF ~~ THEN REPLY #989 /* ~Не обращать внимания на говорящий череп и изучить комнату.~ */ EXIT
IF ~~ THEN REPLY #988 /* ~Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.~ */ EXIT
IF ~~ THEN REPLY #17833 /* ~«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».~ */ DO ~GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ EXIT
END
'''.strip()
test_tree12 = {
    'state_id': 0,
    'paths': [],
    'say_id': 986,
    'state_body': '«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': 987,
        'answer_body': '«Кто ты?»',
        'is_autoclick': False,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 989,
        'answer_body': 'Не обращать внимания на говорящий череп и изучить комнату.',
        'is_autoclick': False,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 988,
        'answer_body': 'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.',
        'is_autoclick': False,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': 'GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)',
        'answer_id': 17833,
        'answer_body': '«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».',
        'is_autoclick': False,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result12_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s0 # say986
label area_s0: # -
    SPEAKER '«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».'

    menu:
        '«Кто ты?»':
            # a0 # r987
            jump area_s1

        'Не обращать внимания на говорящий череп и изучить комнату.':
            # a1 # r989
            jump area_dispose

        'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.':
            # a2 # r988
            jump area_dispose

        '«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».':
            # a3 # r17833
            $ areaLogic.r17833_action()
            jump area_dispose
'''.strip()
test_result12_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r17833_action(self):
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_morte_value(1)
        self.settings_manager.set_read_scars(True)
        self.settings_manager.set_in_party_morte(True)
'''.strip()
test_result12_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r17833_action(self):
        morte_value_before = 0
        morte_value_after = 1
        morte_value_after_once = 1

        self.assertFalse(self.settings_manager.get_has_intro_key())
        self.assertEqual(self.settings_manager.get_morte_value(), morte_value_before)
        self.assertFalse(self.settings_manager.get_read_scars())
        self.assertFalse(self.settings_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.settings_manager.get_has_intro_key())
        self.assertEqual(self.settings_manager.get_morte_value(), morte_value_after)
        self.assertTrue(self.settings_manager.get_read_scars())
        self.assertTrue(self.settings_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.settings_manager.get_has_intro_key())
        self.assertEqual(self.settings_manager.get_morte_value(), morte_value_after_once)
        self.assertTrue(self.settings_manager.get_read_scars())
        self.assertTrue(self.settings_manager.get_in_party_morte())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()

test_case13 = f'''
IF ~~ THEN BEGIN 0 // from:
  SAY #822 /* ~Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 104
END
'''.strip()
test_tree13 = {
    'state_id': 0,
    'paths': [],
    'say_id': 822,
    'state_body': 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_autoclick': True,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 104,
            'other_npc': 'morte'
        }
    }]
}
test_result13_rpy = f'''
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s0 # say822
label area_s0: # -
    SPEAKER 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.'

    jump morte_s104  # EXTERN
'''.strip()
test_result13_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip()
test_result13_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip()


test_case14 = """
IF ~~ THEN BEGIN 2 // from: 1.0 1.1
SAY #706 /* ~Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — 'любовь моя'».~ [DEN001] */
IF ~~ THEN REPLY #707 /* ~«Кто ты?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
IF ~  CheckStatGT(Protagonist,11,INT) CheckStatLT(Protagonist,11,CHR) ~ THEN REPLY #708 /* ~«Любовь моя? Я знаю тебя?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
IF ~  CheckStatGT(Protagonist,10,CHR) ~ THEN REPLY #709 /* ~«Любовь моя? Я знаю тебя?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
END
""".strip()
test_tree14 = {
    'state_id': 2,
    'paths': [{
        'from_state_id': 1,
        'response_index': 0
    }, {
        'from_state_id': 1,
        'response_index': 1
    }],
    'say_id': 706,
    'state_body': 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — \'любовь моя\'»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'SetGlobal("Deionarra","GLOBAL",1)',
        'answer_id': 707,
        'answer_body': '«Кто ты?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 3
        }
    }, {
        'condition': 'CheckStatGT(Protagonist,11,INT) CheckStatLT(Protagonist,11,CHR)',
        'action': 'SetGlobal("Deionarra","GLOBAL",1)',
        'answer_id': 708,
        'answer_body': '«Любовь моя? Я знаю тебя?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 3
        }
    }, {
        'condition': 'CheckStatGT(Protagonist,10,CHR)',
        'action': 'SetGlobal("Deionarra","GLOBAL",1)',
        'answer_id': 709,
        'answer_body': '«Любовь моя? Я знаю тебя?»',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 3
        }
    }]
}
test_result14_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s2 # say706
label area_s2: # from 1.0 1.1
    SPEAKER 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — 'любовь моя'»'

    menu:
        '«Кто ты?»':
            # a0 # r707
            $ areaLogic.r707_action()
            jump area_s3

        '«Любовь моя? Я знаю тебя?»' if areaLogic.r708_condition():
            # a1 # r708
            $ areaLogic.r708_action()
            jump area_s3

        '«Любовь моя? Я знаю тебя?»' if areaLogic.r709_condition():
            # a2 # r709
            $ areaLogic.r709_action()
            jump area_s3
""".strip()
test_result14_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r707_action(self):
        self.settings_manager.set_deionarra_value(1)


    def r708_action(self):
        self.settings_manager.set_deionarra_value(1)


    def r709_action(self):
        self.settings_manager.set_deionarra_value(1)


    def r708_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 11 and \\
               self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 11


    def r709_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 10
""".strip()
test_result14_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r707_action(self):
        self._integer_equals_action(
            self.settings_manager.get_deionarra_value,
            1,
            self.logic.r707_action
        )


    def test_r708_action(self):
        self._integer_equals_action(
            self.settings_manager.get_deionarra_value,
            1,
            self.logic.r708_action
        )


    def test_r709_action(self):
        self._integer_equals_action(
            self.settings_manager.get_deionarra_value,
            1,
            self.logic.r709_action
        )


    def test_r708_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist'
        prop_charisma = 'charisma'
        delta_charisma = 11
        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.settings_manager.character_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r708_condition())
        self.settings_manager.character_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.settings_manager.character_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r708_condition())


    def test_r709_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r709_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip()

test_case1 = f'''
IF ~~ THEN BEGIN 19 // from: 1.3
SAY #3472 /* ~Женщина не отвечает.~ */
IF ~~ THEN JOURNAL #38205 /* ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ */ EXTERN ~DMORTE~ 56
END
'''.strip() + '\n'
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

    $ areaLogic.j38205_s19_action()
    jump morte_s56  # EXTERN
'''.strip() + '\n'
test_result1_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def j38205_s19_action(self):
        self.settings_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.') %$#
'''.strip() + '\n'
test_result1_tests = f'''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_j38205_s19_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j38205_s19_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


test_case2 = f'''
IF ~~ THEN BEGIN 20 // from: 5.2 5.4
SAY #3485 /* ~Она отворачивается... непохоже, чтобы она тебя услышала. ~ */
IF ~~ THEN EXTERN ~DMORTE~ 57
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result2_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case3 = f'''
IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
SAY #3493 /* ~Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел». ~ */
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) HasItem("KeyEm","EiVene") ~ THEN REPLY #3501 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ DO ~AddexperienceParty(250) SetGlobal("Embalm_Key_Quest","GLOBAL",2) GiveItem("KeyEm",Protagonist) ~ GOTO 18
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) !HasItem("KeyEm","EiVene") ~ THEN REPLY #3502 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ GOTO 24
IF ~~ THEN REPLY #4358 /* ~Уйти.~ */ EXIT
END
'''.strip() + '\n'
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
'''.strip() + '\n'
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
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case4 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result4_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case5 = f'''
IF ~~ THEN BEGIN 178 // from:
SAY #15348 /* ~«Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!»~ */
IF ~~ THEN DO ~SetGlobal("Know_Mimir","GLOBAL",1) ~ EXTERN ~DADYZOEL~ 35
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result5_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s178_action(self):
        self.settings_manager.set_know_mimir(True)
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case6 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ EXTERN ~DMORTE~ 57
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result6_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return
'''.strip() + '\n'
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
'''.strip() + '\n'

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
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result7_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case8 = f'''
IF ~~ THEN BEGIN 138 // from: 137.0
SAY #11947 /* ~Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»~ */
IF ~~ THEN EXIT
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result8_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case9 = f'''
IF ~~ THEN BEGIN 179 // from:
SAY #15349 /* ~«Это, э... что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».~ */
IF ~  GlobalLT("Morte_Mimir","GLOBAL",2) ~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0) ~ EXTERN ~DADYZOEL~ 36
IF ~  GlobalGT("Morte_Mimir","GLOBAL",1) ~ THEN REPLY #65537 /* ~«Но ты ведь НЕ мимир, Морт...»~ */ EXTERN ~DADYZOEL~ 36
END
'''.strip() + '\n'
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
        'journal_id': None,
        'journal_body': None,
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
'''.strip() + '\n'
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
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case10 = f'''
IF ~~ THEN BEGIN 206 // from: 204.0
  SAY #19704 /* ~«Это не то же самое, шеф...»~ */
  IF ~~ THEN GOTO 205
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result10_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case11 = f'''
IF ~~ THEN BEGIN 518 // from: 515.0 517.0
SAY #53668 /* ~Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они... слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны...»~ */
IF ~  NearbyDialog("DDakkon") ~ THEN EXTERN ~DDAKKON~ 183
IF ~  !NearbyDialog("DDakkon") ~ THEN REPLY #54105 /* ~«Продолжай...»~ */ GOTO 520
END
'''.strip() + '\n'
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
        'journal_id': None,
        'journal_body': None,
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
'''.strip() + '\n'
test_result11_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s518_condition(self):
        return self.settings_manager.get_in_party_dakkon()


    def r54105_condition(self):
        return not self.settings_manager.get_in_party_dakkon()
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case12 = f'''
IF ~~ THEN BEGIN 0 // from:
SAY #986 /* ~«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».~ */
IF ~~ THEN REPLY #987 /* ~«Кто ты?»~ */ GOTO 1
IF ~~ THEN REPLY #989 /* ~Не обращать внимания на говорящий череп и изучить комнату.~ */ EXIT
IF ~~ THEN REPLY #988 /* ~Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.~ */ EXIT
IF ~~ THEN REPLY #17833 /* ~«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».~ */ DO ~GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ EXIT
END
'''.strip() + '\n'
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
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 989,
        'answer_body': 'Не обращать внимания на говорящий череп и изучить комнату.',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 988,
        'answer_body': 'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': 'GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)',
        'answer_id': 17833,
        'answer_body': '«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».',
        'is_autoclick': False,
        'journal_id': None,
        'journal_body': None,
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
'''.strip() + '\n'
test_result12_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r17833_action(self):
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_morte_value(1)
        self.settings_manager.set_read_scars(True)
        self.settings_manager.set_in_party_morte(True)
'''.strip() + '\n'
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
'''.strip() + '\n'

test_case13 = f'''
IF ~~ THEN BEGIN 0 // from:
  SAY #822 /* ~Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 104
END
'''.strip() + '\n'
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
'''.strip() + '\n'
test_result13_logic = f'''
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
'''.strip() + '\n'
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
'''.strip() + '\n'


test_case14 = """
IF ~~ THEN BEGIN 2 // from: 1.0 1.1
SAY #706 /* ~Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — 'любовь моя'».~ [DEN001] */
IF ~~ THEN REPLY #707 /* ~«Кто ты?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
IF ~  CheckStatGT(Protagonist,11,INT) CheckStatLT(Protagonist,11,CHR) ~ THEN REPLY #708 /* ~«Любовь моя? Я знаю тебя?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
IF ~  CheckStatGT(Protagonist,10,CHR) ~ THEN REPLY #709 /* ~«Любовь моя? Я знаю тебя?»~ */ DO ~SetGlobal("Deionarra","GLOBAL",1) ~ GOTO 3
END
""".strip() + '\n'
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
    'state_body': 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — \'любовь моя\'».~ [DEN001]',
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
    SPEAKER 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью. «Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?.. — ее голос превращается в шипение. — 'любовь моя'».~ [DEN001]'

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
""".strip() + '\n'
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
""".strip() + '\n'
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
""".strip() + '\n'

test_case15 = """
IF ~~ THEN BEGIN 29 // from: 24.0
SAY #809 /* ~«Я знаю, что ты должен умереть... пока еще можешь. Круг *должен* замкнуться, любовь моя. Ты не предназначен для такой жизни. Ты должен найти то, что у тебя отнято, и уйти дальше, в земли мертвых».~ [DEN023] */
IF ~~ THEN REPLY #810 /* ~«Пока я еще могу?»~ */ JOURNAL #26087 /* ~Я встретил призрак женщины по имени Дейонарра, и она предсказала мне, что я столкнусь с тремя врагами, но «ни один из них не был бы мне ровней в период полного расцвета моих сил». Они — тени зла, добра и нейтральности, которых породили и извратили законы планов. Она сказала, что я попаду в тюрьму, построенную из «сожалений и скорби», где «даже тени теряют рассудок». Там меня попросят принести ужасную жертву... чтобы обрести покой, я должен «уничтожить то, что удерживает меня в живых, и отринуть свое бессмертие».~ */ GOTO 25
END
""".strip() + '\n'
test_tree15 = {
    'state_id': 29,
    'paths': [{
        'from_state_id': 24,
        'response_index': 0
    }],
    'say_id': 809,
    'state_body': '«Я знаю, что ты должен умереть... пока еще можешь. Круг *должен* замкнуться, любовь моя. Ты не предназначен для такой жизни. Ты должен найти то, что у тебя отнято, и уйти дальше, в земли мертвых».~ [DEN023]',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': 810,
        'answer_body': '«Пока я еще могу?»',
        'is_autoclick': False,
        'journal_id': 26087,
        'journal_body': 'Я встретил призрак женщины по имени Дейонарра, и она предсказала мне, что я столкнусь с тремя врагами, но «ни один из них не был бы мне ровней в период полного расцвета моих сил». Они — тени зла, добра и нейтральности, которых породили и извратили законы планов. Она сказала, что я попаду в тюрьму, построенную из «сожалений и скорби», где «даже тени теряют рассудок». Там меня попросят принести ужасную жертву... чтобы обрести покой, я должен «уничтожить то, что удерживает меня в живых, и отринуть свое бессмертие».',
        'target_state': {
            'id': 25
        }
    }]
}
test_result15_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s29 # say809
label area_s29: # from 24.0
    SPEAKER '«Я знаю, что ты должен умереть… пока еще можешь. Круг *должен* замкнуться, любовь моя. Ты не предназначен для такой жизни. Ты должен найти то, что у тебя отнято, и уйти дальше, в земли мертвых».~ [DEN023]'

    menu:
        '«Пока я еще могу?»':
            # a0 # r810
            $ areaLogic.j26087_s29_r810_action()
            jump area_s25
""".strip() + '\n'
test_result15_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def j26087_s29_r810_action(self):
        self.settings_manager.journal_manager.update_journal('26087')
        #$% .register('26087', 'Я встретил призрак женщины по имени Дейонарра, и она предсказала мне, что я столкнусь с тремя врагами, но «ни один из них не был бы мне ровней в период полного расцвета моих сил». Они — тени зла, добра и нейтральности, которых породили и извратили законы планов. Она сказала, что я попаду в тюрьму, построенную из «сожалений и скорби», где «даже тени теряют рассудок». Там меня попросят принести ужасную жертву... чтобы обрести покой, я должен «уничтожить то, что удерживает меня в живых, и отринуть свое бессмертие».') %$#
""".strip() + '\n'
test_result15_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_j26087_s29_r810_action(self):
        note_id = '26087'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j26087_s29_r810_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

test_case16 = """
IF ~~ THEN BEGIN 26 // from: 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
SAY #793 /* ~Дейонарра выглядит разъяренной. «Тогда уходи, как уходил уже триста раз! Зачем ты приходишь сюда? Чтобы помучить меня?! Уходи и никогда больше не возвращайся!» Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.~ */
IF ~  Global("Morte_Deionarra_Quip_1","GLOBAL",1) ~ THEN REPLY #6081 /* ~Уйти.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2) SetGlobal("Deio_Wake_Up","GLOBAL",0) ~ EXIT
IF ~  NearbyDialog("DMorte") Global("Morte_Deionarra_Quip_1","GLOBAL",0) ~ THEN REPLY #6082 /* ~Уйти.~ */ DO ~SetGlobal("Deionarra","GLOBAL",2) SetGlobal("Deio_Wake_Up","GLOBAL",0) ~ EXTERN ~DMORTE~ 105
IF ~  !NearbyDialog("DMorte") Global("Morte_Deionarra_Quip_1","GLOBAL",0) ~ THEN REPLY #13257 /* ~Уйти.~ */ DO ~SetGlobal("Deio_Wake_Up","GLOBAL",0) ~ EXIT
END
""".strip() + '\n'
test_tree16 = {
    'state_id': 26,
    'paths': [{
        'from_state_id': 3,
        'response_index': 5
    }, {
        'from_state_id': 4,
        'response_index': 1
    }, {
        'from_state_id': 6,
        'response_index': 5
    }, {
        'from_state_id': 6,
        'response_index': 6
    }, {
        'from_state_id': 7,
        'response_index': 5
    }, {
        'from_state_id': 15,
        'response_index': 0
    }, {
        'from_state_id': 15,
        'response_index': 3
    }, {
        'from_state_id': 20,
        'response_index': 3
    }, {
        'from_state_id': 21,
        'response_index': 2
    }, {
        'from_state_id': 21,
        'response_index': 5
    }, {
        'from_state_id': 28,
        'response_index': 2
    }, {
        'from_state_id': 47,
        'response_index': 4
    }],
    'say_id': 793,
    'state_body': 'Дейонарра выглядит разъяренной. «Тогда уходи, как уходил уже триста раз! Зачем ты приходишь сюда? Чтобы помучить меня?! Уходи и никогда больше не возвращайся!» Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.',
    'free': None,
    'answers': [{
        'is_autoclick': False,
        'condition': 'Global("Morte_Deionarra_Quip_1","GLOBAL",1)',
        'action': 'SetGlobal("Deionarra","GLOBAL",2) SetGlobal("Deio_Wake_Up","GLOBAL",0)',
        'answer_id': 6081,
        'answer_body': 'Уйти.',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'is_autoclick': False,
        'condition': 'NearbyDialog("DMorte") Global("Morte_Deionarra_Quip_1","GLOBAL",0)',
        'action': 'SetGlobal("Deionarra","GLOBAL",2) SetGlobal("Deio_Wake_Up","GLOBAL",0)',
        'answer_id': 6082,
        'answer_body': 'Уйти.',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 105,
            'other_npc': 'morte'
        }
    }, {
        'is_autoclick': False,
        'condition': '!NearbyDialog("DMorte") Global("Morte_Deionarra_Quip_1","GLOBAL",0)',
        'action': 'SetGlobal("Deio_Wake_Up","GLOBAL",0)',
        'answer_id': 13257,
        'answer_body': 'Уйти.',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result16_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s26 # say793
label area_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    SPEAKER 'Дейонарра выглядит разъяренной. «Тогда уходи, как уходил уже триста раз! Зачем ты приходишь сюда? Чтобы помучить меня?! Уходи и никогда больше не возвращайся!» Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.'

    menu:
        'Уйти.' if areaLogic.r6081_condition():
            # a0 # r6081
            $ areaLogic.r6081_action()
            jump area_dispose

        'Уйти.' if areaLogic.r6082_condition():
            # a1 # r6082
            $ areaLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Уйти.' if areaLogic.r13257_condition():
            # a2 # r13257
            $ areaLogic.r13257_action()
            jump area_dispose
""".strip() + '\n'
test_result16_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r6081_action(self):
        self.settings_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r6082_action(self):
        self.settings_manager.set_deionarra_value(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r13257_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r6081_condition(self):
        return self.settings_manager.get_morte_deionarra_quip_1()


    def r6082_condition(self):
        return self.settings_manager.get_in_party_morte() and \\
               not self.settings_manager.get_morte_deionarra_quip_1()


    def r13257_condition(self):
        return not self.settings_manager.get_in_party_morte() and \\
               not self.settings_manager.get_morte_deionarra_quip_1()
""".strip() + '\n'
test_result16_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r6081_action(self):
        self._integer_equals_action(
            self.settings_manager.get_deionarra_value,
            2,
            self.logic.r6081_action
        )


    def test_r6082_action(self):
        self._integer_equals_action(
            self.settings_manager.get_deionarra_value,
            2,
            self.logic.r6082_action
        )


    def test_r13257_action(self):
        self.logic.r13257_action()


    def test_r6081_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_deionarra_quip_1(x),
            self.logic.r6081_condition
        )


    def test_r6082_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r6082_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r6082_condition())


    def test_r13257_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13257_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13257_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

test_case17 = """
IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
~ THEN BEGIN 61 // from:
SAY #63390 /* ~Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.~ */
IF ~~ THEN REPLY #63391 /* ~«Дейонарра?..»~ */ DO ~SetGlobal("1200_Cut_Scene_2","GLOBAL",1) StartCutSceneMode() SetGlobal("cd_int_1","LOCALS",1) StartCutSceneEx("1200cut1",FALSE) ~ GOTO 62
IF ~~ THEN REPLY #63392 /* ~Оставить Дейонарру в покое.~ */ EXIT
END
""".strip() + '\n'
test_tree17 = {
    'state_id': 61,
    'paths': [],
    'say_id': 63390,
    'state_body': 'Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.',
    'free': 'IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)',
    'answers': [{
        'is_autoclick': False,
        'condition': None,
        'action': 'SetGlobal("1200_Cut_Scene_2","GLOBAL",1) StartCutSceneMode() SetGlobal("cd_int_1","LOCALS",1) StartCutSceneEx("1200cut1",FALSE)',
        'answer_id': 63391,
        'answer_body': '«Дейонарра?..»',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 62
        }
    }, {
        'is_autoclick': False,
        'condition': None,
        'action': None,
        'answer_id': 63392,
        'answer_body': 'Оставить Дейонарру в покое.',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result17_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s61 # say63390
label area_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    SPEAKER 'Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.'

    menu:
        '«Дейонарра?..»':
            # a0 # r63391
            $ areaLogic.r63391_action()
            jump area_s62

        'Оставить Дейонарру в покое.':
            # a1 # r63392
            jump area_dispose
""".strip() + '\n'
test_result17_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r63391_action(self):
        self.settings_manager.set_1200_cut_scene_2(True)
        #$% StartCutSceneMode() %$#
        self.settings_manager.set_cd_int_1(True)
        #$% ?.start_cut_scene('1200cut1') %$#
""".strip() + '\n'
test_result17_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r63391_action(self):
        self.assertFalse(self.settings_manager.get_1200_cut_scene_2())
        self.assertFalse(self.settings_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.settings_manager.get_1200_cut_scene_2())
        self.assertTrue(self.settings_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.settings_manager.get_1200_cut_scene_2())
        self.assertTrue(self.settings_manager.get_cd_int_1())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

test_case18 = """
IF ~~ THEN BEGIN 42 // from: 41.0 45.0
SAY #1427 /* ~В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.~ */
IF ~  Global("Choke_Memory","GLOBAL",0) ~ THEN REPLY #1428 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1) PlaySoundNotRanged("SPTR_01") IncrementGlobal("Choke_Dustman","GLOBAL",1) IncrementGlobal("Choke","GLOBAL",1) Kill(Myself) Deactivate(Myself) AddexperienceParty(15) ~ GOTO 43
IF ~  GlobalGT("Choke_Memory","GLOBAL",0) ~ THEN REPLY #1429 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1) IncrementGlobal("Choke","GLOBAL",1) Kill(Myself) Deactivate(Myself) AddexperienceParty(15) ~ EXIT
END
""".strip() + '\n'
test_tree18 = {
    'state_id': 42,
    'paths': [{
        'from_state_id': 41,
        'response_index': 0
    }, {
        'from_state_id': 45,
        'response_index': 0
    }],
    'say_id': 1427,
    'state_body': 'В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.',
    'free': None,
    'answers': [{
        'is_autoclick': False,
        'condition': 'Global("Choke_Memory","GLOBAL",0)',
        'action': 'SetGlobal("Choke_Memory","GLOBAL",1) PlaySoundNotRanged("SPTR_01") IncrementGlobal("Choke_Dustman","GLOBAL",1) IncrementGlobal("Choke","GLOBAL",1) Kill(Myself) Deactivate(Myself) AddexperienceParty(15)',
        'answer_id': 1428,
        'answer_body': '«Лучше ты, чем я, трухлявый».',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 43
        }
    }, {
        'is_autoclick': False,
        'condition': 'GlobalGT("Choke_Memory","GLOBAL",0)',
        'action': 'IncrementGlobal("Choke_Dustman","GLOBAL",1) IncrementGlobal("Choke","GLOBAL",1) Kill(Myself) Deactivate(Myself) AddexperienceParty(15)',
        'answer_id': 1429,
        'answer_body': '«Лучше ты, чем я, трухлявый».',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result18_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s42 # say1427
label area_s42: # from 41.0 45.0
    SPEAKER 'В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.'

    menu:
        '«Лучше ты, чем я, трухлявый».' if areaLogic.r1428_condition():
            # a0 # r1428
            $ areaLogic.r1428_action()
            jump area_s43

        '«Лучше ты, чем я, трухлявый».' if areaLogic.r1429_condition():
            # a1 # r1429
            $ areaLogic.r1429_action()
            jump area_dispose
""".strip() + '\n'
test_result18_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r1428_action(self):
        self.settings_manager.set_choke_memory(True)
        #$% ?.play_sound('SPTR_01') %$#
        self.settings_manager.inc_choke_dustman()
        self.settings_manager.inc_choke()
        self.settings_manager.set_dead_area(True)
        #$% Deactivate(Myself) %$#
        self.settings_manager.gain_experience('party', 15)


    def r1429_action(self):
        self.settings_manager.inc_choke_dustman()
        self.settings_manager.inc_choke()
        self.settings_manager.set_dead_area(True)
        #$% Deactivate(Myself) %$#
        self.settings_manager.gain_experience('party', 15)


    def r1428_condition(self):
        return not self.settings_manager.get_choke_memory()


    def r1429_condition(self):
        return self.settings_manager.get_choke_memory()
""".strip() + '\n'
test_result18_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r1428_action(self):
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertFalse(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_before)
        self.assertEqual(self.settings_manager.get_choke(), choke_before)
        self.assertFalse(self.settings_manager.get_dead_area())
        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)

        self.logic.r1428_action()

        self.assertTrue(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_after)
        self.assertEqual(self.settings_manager.get_choke(), choke_after)
        self.assertTrue(self.settings_manager.get_dead_area())
        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r1428_action()

        self.assertTrue(self.settings_manager.get_choke_memory())
        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_after_once)
        self.assertEqual(self.settings_manager.get_choke(), choke_after_once)
        self.assertTrue(self.settings_manager.get_dead_area())
        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r1429_action(self):
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_before)
        self.assertEqual(self.settings_manager.get_choke(), choke_before)
        self.assertFalse(self.settings_manager.get_dead_area())
        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)

        self.logic.r1429_action()

        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_after)
        self.assertEqual(self.settings_manager.get_choke(), choke_after)
        self.assertTrue(self.settings_manager.get_dead_area())
        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r1429_action()

        self.assertEqual(self.settings_manager.get_choke_dustman(), choke_dustman_after_once)
        self.assertEqual(self.settings_manager.get_choke(), choke_after_once)
        self.assertTrue(self.settings_manager.get_dead_area())
        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r1428_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r1428_condition
        )


    def test_r1429_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_choke_memory(x),
            self.logic.r1429_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

test_case19 = """
IF ~~ THEN BEGIN 73 // from: 72.0
SAY #66913 /* ~При этих словах Дейонарры твой череп пронзает внезапное озарение... неожиданно ты ощущаешь непреодолимое желание взглянуть на собственную руку. Подняв ее и *посмотрев* на нее, ты ВИДИШЬ кровь, текущую по запястью, омывающую твои мускулы, дающую силу твоим костям... ~ */
IF ~~ THEN REPLY #66914 /* ~«Чт...»~ */ DO ~AddexperienceParty(1000) SetGlobal("Deionarra_Raise_Dead","GLOBAL",1) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD) JOURNAL #66917 /* ~Я не знаю, ужасаться мне или удивляться... когда я пообщался с Дейонаррой в Морге, она сказала, что через свои бесконечные перерождения я обрел некоторую власть над жизнью и смертью. Если я вижу тело, то могу разглядеть слабые следы жизни в нем и воскресить его. По какой-то причине это действует только на тех, кто путешествовал вместе со мной, и только в том случае, если они умерли в моем присутствии... но почему? Быть может, в пути между нами появляется какая-то связь? ~ */ GOTO 74
END
""".strip() + '\n'
test_tree19 = {
    'state_id': 73,
    'paths': [{
        'from_state_id': 72,
        'response_index': 0
    }],
    'say_id': 66913,
    'state_body': 'При этих словах Дейонарры твой череп пронзает внезапное озарение... неожиданно ты ощущаешь непреодолимое желание взглянуть на собственную руку. Подняв ее и *посмотрев* на нее, ты ВИДИШЬ кровь, текущую по запястью, омывающую твои мускулы, дающую силу твоим костям...',
    'free': None,
    'answers':[{
        'is_autoclick': False,
        'condition': None,
        'action': 'AddexperienceParty(1000) SetGlobal("Deionarra_Raise_Dead","GLOBAL",1) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD) ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD)',
        'answer_id': 66914,
        'answer_body': '«Чт...»',
        'journal_id': 66917,
        'journal_body': 'Я не знаю, ужасаться мне или удивляться... когда я пообщался с Дейонаррой в Морге, она сказала, что через свои бесконечные перерождения я обрел некоторую власть над жизнью и смертью. Если я вижу тело, то могу разглядеть слабые следы жизни в нем и воскресить его. По какой-то причине это действует только на тех, кто путешествовал вместе со мной, и только в том случае, если они умерли в моем присутствии... но почему? Быть может, в пути между нами появляется какая-то связь?',
        'target_state': {
            'id': 74
        }
    }]
}
test_result19_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s73 # say66913
label area_s73: # from 72.0
    SPEAKER 'При этих словах Дейонарры твой череп пронзает внезапное озарение… неожиданно ты ощущаешь непреодолимое желание взглянуть на собственную руку. Подняв ее и *посмотрев* на нее, ты ВИДИШЬ кровь, текущую по запястью, омывающую твои мускулы, дающую силу твоим костям…'

    menu:
        '«Чт…»':
            # a0 # r66914
            $ areaLogic.j66917_s73_r66914_action()
            $ areaLogic.r66914_action()
            jump area_s74
""".strip() + '\n'
# Лера решила, что и так норм
test_result19_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def j66917_s73_r66914_action(self):
        self.settings_manager.journal_manager.update_journal('66917')
        #$% .register('66917', 'Я не знаю, ужасаться мне или удивляться... когда я пообщался с Дейонаррой в Морге, она сказала, что через свои бесконечные перерождения я обрел некоторую власть над жизнью и смертью. Если я вижу тело, то могу разглядеть слабые следы жизни в нем и воскресить его. По какой-то причине это действует только на тех, кто путешествовал вместе со мной, и только в том случае, если они умерли в моем присутствии... но почему? Быть может, в пути между нами появляется какая-то связь?') %$#


    def r66914_action(self):
        self.settings_manager.gain_experience('party', 1000)
        self.settings_manager.set_deionarra_raise_dead(True)
        self.settings_manager.set_can_raise_dead(True)
        self.settings_manager.set_can_raise_dead(True)
        self.settings_manager.set_can_raise_dead(True)
""".strip() + '\n'
test_result19_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_j66917_s73_r66914_action(self):
        note_id = '66917'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j66917_s73_r66914_action
        )


    def test_r66914_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 1000

        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.settings_manager.get_deionarra_raise_dead())
        self.assertFalse(self.settings_manager.get_can_raise_dead())
        self.assertFalse(self.settings_manager.get_can_raise_dead())
        self.assertFalse(self.settings_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.settings_manager.get_deionarra_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.settings_manager.get_deionarra_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())
        self.assertTrue(self.settings_manager.get_can_raise_dead())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

test_case20 = """
IF ~~ THEN BEGIN 2 // from: 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
SAY #309 /* ~Тленный отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.~ */
IF ~~ THEN REPLY #313 /* ~«Ну хорошо...»~ */ DO ~PlaySoundNotRanged("AMB_M01") Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("Mortuary_Alert","GLOBAL",1) ~ EXIT
END
""".strip() + '\n'
test_tree20 = {
    'state_id': 2,
    'paths': [{
        'from_state_id': 1,
        'response_index': 1
    }, {
        'from_state_id': 1,
        'response_index': 2
    }, {
        'from_state_id': 5,
        'response_index': 2
    }, {
        'from_state_id': 5,
        'response_index': 3
    }, {
        'from_state_id': 19,
        'response_index': 6
    }, {
        'from_state_id': 20,
        'response_index': 4
    }, {
        'from_state_id': 47,
        'response_index': 2
    }, {
        'from_state_id': 47,
        'response_index': 3
    }, {
        'from_state_id': 51,
        'response_index': 4
    }],
    'say_id': 309,
    'state_body': 'Тленный отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.',
    'free': None,
    'answers': [{
        'is_autoclick': False,
        'condition': None,
        'action': 'PlaySoundNotRanged("AMB_M01") Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("Mortuary_Alert","GLOBAL",1)',
        'answer_id': 313,
        'answer_body': '«Ну хорошо...»',
        'journal_id': None,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
test_result20_rpy = """
init 10 python:
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/AREA.DLG
# ###


# s2 # say309
label area_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    SPEAKER 'Тленный отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a0 # r313
            $ areaLogic.r313_action()
            jump area_dispose
""".strip() + '\n'
test_result20_logic = """
class AreaLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r313_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.settings_manager.set_mortualy_alarmed(True)
""".strip() + '\n'
test_result20_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.settings_manager)


    def test_r313_action(self):
        self._false_then_true_action(
            self.settings_manager.get_mortualy_alarmed,
            self.logic.r313_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'

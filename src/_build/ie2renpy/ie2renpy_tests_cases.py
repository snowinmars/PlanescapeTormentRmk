test_case1 = '''
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
test_result1_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s19 # say3472
label area_s19: # from 1.3
    'area_s19{#area_s19}'
    # nr 'Женщина не отвечает.{#area_s19_1}'

    $ areaLogic.j38205_s19_action()
    jump morte_s56  # EXTERN
'''.strip() + '\n'
test_result1_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.') %$#
'''.strip() + '\n'
test_result1_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_j38205_s19_action(self):
        note_id = '38205'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j38205_s19_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case2 = '''
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
test_result2_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s20 # say3485
label area_s20: # from 5.2 5.4
    'area_s20{#area_s20}'
    # nr 'Она отворачивается… непохоже, чтобы она тебя услышала.{#area_s20_1}'

    jump morte_s57  # EXTERN
'''.strip() + '\n'
test_result2_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
'''.strip() + '\n'
test_result2_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case3 = '''
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
test_result3_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s22 # say3493
label area_s22: # from 15.2 25.1 27.1
    'area_s22{#area_s22}'
    # nr 'Заметив тебя, она поворачивается, а затем хмурится.{#area_s22_1}'
    # area '«Тупые зомфи».{#area_s22_2}'
    # nr 'Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает.{#area_s22_3}'
    # area '«Ты готов. Все зашито. Пшел-пшел-пшел».{#area_s22_4}'

    menu:
        'area_s22_r3501{#area_s22_r3501}' if areaLogic.r3501_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#area_s22_r3501}'
            # a0 # r3501
            $ areaLogic.r3501_action()
            jump area_s18

        'area_s22_r3502{#area_s22_r3502}' if areaLogic.r3502_condition(): # '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»{#area_s22_r3502}'
            # a1 # r3502
            jump area_s24

        'area_s22_r4358{#area_s22_r4358}': # 'Уйти.{#area_s22_r4358}'
            # a2 # r4358
            jump area_dispose
'''.strip() + '\n'
test_result3_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r3501_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.inventory_manager.pick_item('has_keyem')


    def r3501_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \\
               not self.state_manager.inventory_manager.is_own_item('has_keyem')


    def r3502_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \\
               self.state_manager.inventory_manager.is_own_item('has_keyem')
'''.strip() + '\n'
test_result3_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r3501_action(self):
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 250
        embalm_key_quest_before = 1
        embalm_key_quest_after = 2
        embalm_key_quest_after_once = 2
        self.state_manager.world_manager.set_embalm_key_quest(embalm_key_quest_before)
        self.state_manager.inventory_manager.drop_all_items('has_keyem')

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_before)
        self.assertFalse(self.state_manager.inventory_manager.is_own_item('has_keyem'))

        self.logic.r3501_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_after)
        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_keyem'))

        self.logic.r3501_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_after_once)
        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_keyem'))


    def test_r3501_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.inventory_manager.pick_item('has_keyem')

        self.assertFalse(self.logic.r3501_condition())

        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.inventory_manager.drop_item('has_keyem')

        self.assertTrue(self.logic.r3501_condition())


    def test_r3502_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.inventory_manager.drop_item('has_keyem')

        self.assertFalse(self.logic.r3502_condition())

        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.inventory_manager.pick_item('has_keyem')

        self.assertTrue(self.logic.r3502_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case4 = '''
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
test_result4_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s16 # say3464
label area_s16: # from 15.0
    'area_s16{#area_s16}'
    # nr 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…{#area_s16_1}'

    $ areaLogic.s16_action()
    jump area_s26
'''.strip() + '\n'
test_result4_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return
'''.strip() + '\n'
test_result4_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_s16_action(self):
        self.logic.s16_action()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case5 = '''
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
test_result5_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s178 # say15348
label area_s178: # -
    'area_s178{#area_s178}'
    # area '«Что? Шеф, я всего лишь мимир! Я не умею „драться на дуэли“!»{#area_s178_1}'

    $ areaLogic.s178_action()
    jump adyzoel_s35  # EXTERN
'''.strip() + '\n'
test_result5_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def s178_action(self):
        self.state_manager.world_manager.set_know_mimir(True)
'''.strip() + '\n'
test_result5_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_s178_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_mimir,
            self.logic.s178_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case6 = '''
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
test_result6_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s16 # say3464
label area_s16: # from 15.0
    'area_s16{#area_s16}'
    # nr 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть…{#area_s16_1}'

    $ areaLogic.s16_action()
    jump morte_s57  # EXTERN
'''.strip() + '\n'
test_result6_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return
'''.strip() + '\n'
test_result6_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_s16_action(self):
        self.logic.s16_action()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case7 = '''
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
test_result7_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s0 # say300
label area_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    'area_s0{#area_s0}'
    # nr 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.{#area_s0_1}'

    menu:
        'area_s0_r302{#area_s0_r302}': # '«Приветствую».{#area_s0_r302}'
            # a0 # r302
            jump area_s1

        'area_s0_r303{#area_s0_r303}': # '«Кто ты?»{#area_s0_r303}'
            # a1 # r303
            jump area_s1

        'area_s0_r304{#area_s0_r304}': # '«Что это за место?»{#area_s0_r304}'
            # a2 # r304
            jump area_s1

        'area_s0_r305{#area_s0_r305}': # '«У меня есть пара вопросов…»{#area_s0_r305}'
            # a3 # r305
            jump morte_s59  # EXTERN

        'area_s0_r306{#area_s0_r306}': # 'Оставить его в покое.{#area_s0_r306}'
            # a4 # r306
            jump area_dispose
'''.strip() + '\n'
test_result7_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
'''.strip() + '\n'
test_result7_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case8 = '''
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
test_result8_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s138 # say11947
label area_s138: # from 137.0
    'area_s138{#area_s138}'
    # nr 'Морт глядит на твою ладонь.{#area_s138_1}'
    # area '«Ух-х-х».{#area_s138_2}'
    # nr 'Кажется, его покоробило.{#area_s138_3}'
    # area '«Вот уж мелкие уродцы, а?»{#area_s138_4}'

    jump area_dispose
'''.strip() + '\n'
test_result8_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
'''.strip() + '\n'
test_result8_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case9 = '''
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
test_result9_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s179 # say15349
label area_s179: # -
    'area_s179{#area_s179}'
    # area '«Это, э… что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».{#area_s179_1}'

    if areaLogic.s179_condition():
        $ areaLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        'area_s179_r65537{#area_s179_r65537}' if areaLogic.r65537_condition(): # '«Но ты ведь НЕ мимир, Морт…»{#area_s179_r65537}'
            # a0 # r65537
            jump adyzoel_s36  # EXTERN
'''.strip() + '\n'
test_result9_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def s179_action(self):
        self.state_manager.world_manager.inc_once_morte_mimir('globalmorte_mimir')


    def s179_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() < 2


    def r65537_condition(self):
        return self.state_manager.world_manager.get_morte_mimir() > 1
'''.strip() + '\n'
test_result9_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_s179_action(self):
        self._integer_inc_once_action(
            self.state_manager.world_manager.get_morte_mimir,
            1,
            self.logic.s179_action
        )


    def test_s179_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            2,
            self.logic.s179_condition
        )


    def test_r65537_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_morte_mimir(x),
            1,
            self.logic.r65537_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case10 = '''
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
test_result10_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s206 # say19704
label area_s206: # from 204.0
    'area_s206{#area_s206}'
    # area '«Это не то же самое, шеф…»{#area_s206_1}'

    jump area_s205
'''.strip() + '\n'
test_result10_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
'''.strip() + '\n'
test_result10_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case11 = '''
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
test_result11_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s518 # say53668
label area_s518: # from 515.0 517.0
    'area_s518{#area_s518}'
    # nr 'Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким.{#area_s518_1}'
    # area '«Те воспоминания, они… слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны…»{#area_s518_2}'

    if areaLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        'area_s518_r54105{#area_s518_r54105}' if areaLogic.r54105_condition(): # '«Продолжай…»{#area_s518_r54105}'
            # a0 # r54105
            jump area_s520
'''.strip() + '\n'
test_result11_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def s518_condition(self):
        return self.state_manager.world_manager.get_in_party_dakkon()


    def r54105_condition(self):
        return not self.state_manager.world_manager.get_in_party_dakkon()
'''.strip() + '\n'
test_result11_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_s518_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.s518_condition
        )


    def test_r54105_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_dakkon(x),
            self.logic.r54105_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case12 = '''
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
test_result12_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s0 # say986
label area_s0: # -
    'area_s0{#area_s0}'
    # area '«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».{#area_s0_1}'

    menu:
        'area_s0_r987{#area_s0_r987}': # '«Кто ты?»{#area_s0_r987}'
            # a0 # r987
            jump area_s1

        'area_s0_r989{#area_s0_r989}': # 'Не обращать внимания на говорящий череп и изучить комнату.{#area_s0_r989}'
            # a1 # r989
            jump area_dispose

        'area_s0_r988{#area_s0_r988}': # 'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.{#area_s0_r988}'
            # a2 # r988
            jump area_dispose

        'area_s0_r17833{#area_s0_r17833}': # '«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».{#area_s0_r17833}'
            # a3 # r17833
            $ areaLogic.r17833_action()
            jump area_dispose
'''.strip() + '\n'
test_result12_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r17833_action(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.world_manager.set_morte(1)
        self.state_manager.world_manager.set_read_scars(True)
        self.state_manager.world_manager.set_in_party_morte(True)
'''.strip() + '\n'
test_result12_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r17833_action(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        morte_before = 0
        morte_after = 1
        morte_after_once = 1
        self.state_manager.world_manager.set_morte(morte_before)
        self.state_manager.world_manager.set_read_scars(False)
        self.state_manager.world_manager.set_in_party_morte(False)

        self.assertFalse(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_before)
        self.assertFalse(self.state_manager.world_manager.get_read_scars())
        self.assertFalse(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after)
        self.assertTrue(self.state_manager.world_manager.get_read_scars())
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())

        self.logic.r17833_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_intro_key'))
        self.assertEqual(self.state_manager.world_manager.get_morte(), morte_after_once)
        self.assertTrue(self.state_manager.world_manager.get_read_scars())
        self.assertTrue(self.state_manager.world_manager.get_in_party_morte())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


test_case13 = '''
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
test_result13_rpy = '''
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s0 # say822
label area_s0: # -
    'area_s0{#area_s0}'
    # nr 'Прежде чем Морт успевает завершить свои разглагольствования, писарь начинает безудержно кашлять. Спустя минуту или две кашель прекращается, и дыхание писаря вновь становится неровным хрипом.{#area_s0_1}'

    jump morte_s104  # EXTERN
'''.strip() + '\n'
test_result13_logic = '''
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
'''.strip() + '\n'
test_result13_tests = '''
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
'''.strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s2 # say706
label area_s2: # from 1.0 1.1
    'area_s2{#area_s2}'
    # nr 'Ее глаза медленно открываются, секунду она смущенно моргает, будто не понимая, где она находится. Девушка медленно окидывает взглядом комнату. Увидев тебя, ее спокойное лицо искажается яростью.{#area_s2_1}'
    # area '«Ты! Что привело сюда *тебя*?! Захотел лично полюбоваться на причиненные тобой страдания? Или, быть может, даже после моей смерти ты надеешься получить от меня пользу?..»{#area_s2_2}'
    # nr 'Ее голос превращается в шипение.{#area_s2_3}'
    # area '«„Любовь моя“».{#area_s2_4}'
    # nr '~ [DEN001]{#area_s2_5}'

    menu:
        'area_s2_r707{#area_s2_r707}': # '«Кто ты?»{#area_s2_r707}'
            # a0 # r707
            $ areaLogic.r707_action()
            jump area_s3

        'area_s2_r708{#area_s2_r708}' if areaLogic.r708_condition(): # '«Любовь моя? Я знаю тебя?»{#area_s2_r708}'
            # a1 # r708
            $ areaLogic.r708_action()
            jump area_s3

        'area_s2_r709{#area_s2_r709}' if areaLogic.r709_condition(): # '«Любовь моя? Я знаю тебя?»{#area_s2_r709}'
            # a2 # r709
            $ areaLogic.r709_action()
            jump area_s3
""".strip() + '\n'
test_result14_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r707_action(self):
        self.state_manager.world_manager.set_deionarra(1)


    def r708_action(self):
        self.state_manager.world_manager.set_deionarra(1)


    def r709_action(self):
        self.state_manager.world_manager.set_deionarra(1)


    def r708_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 11 and \\
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') < 11


    def r709_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'charisma') > 10
""".strip() + '\n'
test_result14_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r707_action(self):
        self.state_manager.world_manager.set_deionarra(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra,
            1,
            self.logic.r707_action
        )


    def test_r708_action(self):
        self.state_manager.world_manager.set_deionarra(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra,
            1,
            self.logic.r708_action
        )


    def test_r709_action(self):
        self.state_manager.world_manager.set_deionarra(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra,
            1,
            self.logic.r709_action
        )


    def test_r708_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r708_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r708_condition())


    def test_r709_condition(self):
        who = 'protagonist_character_name'
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


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s29 # say809
label area_s29: # from 24.0
    'area_s29{#area_s29}'
    # area '«Я знаю, что ты должен умереть… пока еще можешь. Круг *должен* замкнуться, любовь моя. Ты не предназначен для такой жизни. Ты должен найти то, что у тебя отнято, и уйти дальше, в земли мертвых».{#area_s29_1}'
    # nr '~ [DEN023]{#area_s29_2}'

    menu:
        'area_s29_r810{#area_s29_r810}': # '«Пока я еще могу?»{#area_s29_r810}'
            # a0 # r810
            $ areaLogic.j26087_s29_r810_action()
            jump area_s25
""".strip() + '\n'
test_result15_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def j26087_s29_r810_action(self):
        self.state_manager.journal_manager.update_journal('26087')
        #$% .register('26087', 'Я встретил призрак женщины по имени Дейонарра, и она предсказала мне, что я столкнусь с тремя врагами, но «ни один из них не был бы мне ровней в период полного расцвета моих сил». Они — тени зла, добра и нейтральности, которых породили и извратили законы планов. Она сказала, что я попаду в тюрьму, построенную из «сожалений и скорби», где «даже тени теряют рассудок». Там меня попросят принести ужасную жертву... чтобы обрести покой, я должен «уничтожить то, что удерживает меня в живых, и отринуть свое бессмертие».') %$#
""".strip() + '\n'
test_result15_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_j26087_s29_r810_action(self):
        note_id = '26087'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j26087_s29_r810_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s26 # say793
label area_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    'area_s26{#area_s26}'
    # nr 'Дейонарра выглядит разъяренной.{#area_s26_1}'
    # area '«Тогда уходи, как уходил уже триста раз! Зачем ты приходишь сюда? Чтобы помучить меня?! Уходи и никогда больше не возвращайся!»{#area_s26_2}'
    # nr 'Закрыв глаза, Дейонарра исчезает с беззвучным вздохом.{#area_s26_3}'

    menu:
        'area_s26_r6081{#area_s26_r6081}' if areaLogic.r6081_condition(): # 'Уйти.{#area_s26_r6081}'
            # a0 # r6081
            $ areaLogic.r6081_action()
            jump area_dispose

        'area_s26_r6082{#area_s26_r6082}' if areaLogic.r6082_condition(): # 'Уйти.{#area_s26_r6082}'
            # a1 # r6082
            $ areaLogic.r6082_action()
            jump morte_s105  # EXTERN

        'area_s26_r13257{#area_s26_r13257}' if areaLogic.r13257_condition(): # 'Уйти.{#area_s26_r13257}'
            # a2 # r13257
            $ areaLogic.r13257_action()
            jump area_dispose
""".strip() + '\n'
test_result16_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6081_action(self):
        self.state_manager.world_manager.set_deionarra(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r6082_action(self):
        self.state_manager.world_manager.set_deionarra(2)
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#


    def r13257_action(self):
        #$% SetGlobal("Deio_Wake_Up","GLOBAL",0) %$#
        return


    def r6081_condition(self):
        return self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r6082_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \\
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()


    def r13257_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \\
               not self.state_manager.world_manager.get_morte_deionarra_quip_1()
""".strip() + '\n'
test_result16_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r6081_action(self):
        self.state_manager.world_manager.set_deionarra(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra,
            2,
            self.logic.r6081_action
        )


    def test_r6082_action(self):
        self.state_manager.world_manager.set_deionarra(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra,
            2,
            self.logic.r6082_action
        )


    def test_r13257_action(self):
        self.logic.r13257_action()


    def test_r6081_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r6081_condition
        )


    def test_r6082_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r6082_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r6082_condition())


    def test_r13257_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13257_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13257_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s61 # say63390
label area_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    'area_s61{#area_s61}'
    # nr 'Перед тобой призрачный силуэт Дейонарры. Ее призрачное платье будто колышется от какого-то неземного ветра. Она стоит на краю вымощенной черным камнем дороги, всматриваясь в пустоту плана.{#area_s61_1}'

    menu:
        'area_s61_r63391{#area_s61_r63391}': # '«Дейонарра?..»{#area_s61_r63391}'
            # a0 # r63391
            $ areaLogic.r63391_action()
            jump area_s62

        'area_s61_r63392{#area_s61_r63392}': # 'Оставить Дейонарру в покое.{#area_s61_r63392}'
            # a1 # r63392
            jump area_dispose
""".strip() + '\n'
test_result17_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r63391_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(True)
        #$% StartCutSceneMode() %$#
        self.state_manager.world_manager.set_cd_int_1(True)
        #$% ?.start_cut_scene('1200cut1') %$#
""".strip() + '\n'
test_result17_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r63391_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(False)
        self.state_manager.world_manager.set_cd_int_1(False)

        self.assertFalse(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertFalse(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s42 # say1427
label area_s42: # from 41.0 45.0
    'area_s42{#area_s42}'
    # nr 'В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.{#area_s42_1}'

    menu:
        'area_s42_r1428{#area_s42_r1428}' if areaLogic.r1428_condition(): # '«Лучше ты, чем я, трухлявый».{#area_s42_r1428}'
            # a0 # r1428
            $ areaLogic.r1428_action()
            jump area_s43

        'area_s42_r1429{#area_s42_r1429}' if areaLogic.r1429_condition(): # '«Лучше ты, чем я, трухлявый».{#area_s42_r1429}'
            # a1 # r1429
            $ areaLogic.r1429_action()
            jump area_dispose
""".strip() + '\n'
test_result18_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r1428_action(self):
        self.state_manager.world_manager.set_choke_memory(True)
        #$% ?.play_sound('SPTR_01') %$#
        self.state_manager.world_manager.inc_choke_dustman()
        self.state_manager.world_manager.inc_choke()
        self.state_manager.world_manager.set_dead_area(True)
        #$% Deactivate(Myself) %$#
        self.state_manager.gain_experience('party', 15)


    def r1429_action(self):
        self.state_manager.world_manager.inc_choke_dustman()
        self.state_manager.world_manager.inc_choke()
        self.state_manager.world_manager.set_dead_area(True)
        #$% Deactivate(Myself) %$#
        self.state_manager.gain_experience('party', 15)


    def r1428_condition(self):
        return not self.state_manager.world_manager.get_choke_memory()


    def r1429_condition(self):
        return self.state_manager.world_manager.get_choke_memory()
""".strip() + '\n'
test_result18_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r1428_action(self):
        self.state_manager.world_manager.set_choke_memory(False)
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        self.state_manager.world_manager.set_choke_dustman(choke_dustman_before)
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        self.state_manager.world_manager.set_choke(choke_before)
        self.state_manager.world_manager.set_dead_area(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertFalse(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_before)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_before)
        self.assertFalse(self.state_manager.world_manager.get_dead_area())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r1428_action()

        self.assertTrue(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after)
        self.assertTrue(self.state_manager.world_manager.get_dead_area())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r1428_action()

        self.assertTrue(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after_once)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after_once)
        self.assertTrue(self.state_manager.world_manager.get_dead_area())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r1429_action(self):
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        self.state_manager.world_manager.set_choke_dustman(choke_dustman_before)
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        self.state_manager.world_manager.set_choke(choke_before)
        self.state_manager.world_manager.set_dead_area(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_before)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_before)
        self.assertFalse(self.state_manager.world_manager.get_dead_area())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r1429_action()

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after)
        self.assertTrue(self.state_manager.world_manager.get_dead_area())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r1429_action()

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after_once)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after_once)
        self.assertTrue(self.state_manager.world_manager.get_dead_area())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r1428_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_choke_memory(x),
            self.logic.r1428_condition
        )


    def test_r1429_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_choke_memory(x),
            self.logic.r1429_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s73 # say66913
label area_s73: # from 72.0
    'area_s73{#area_s73}'
    # nr 'При этих словах Дейонарры твой череп пронзает внезапное озарение… неожиданно ты ощущаешь непреодолимое желание взглянуть на собственную руку. Подняв ее и *посмотрев* на нее, ты ВИДИШЬ кровь, текущую по запястью, омывающую твои мускулы, дающую силу твоим костям…{#area_s73_1}'

    menu:
        'area_s73_r66914{#area_s73_r66914}': # '«Чт…»{#area_s73_r66914}'
            # a0 # r66914
            $ areaLogic.j66917_s73_r66914_action()
            $ areaLogic.r66914_action()
            jump area_s74
""".strip() + '\n'
# Лера решила, что и так норм
test_result19_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def j66917_s73_r66914_action(self):
        self.state_manager.journal_manager.update_journal('66917')
        #$% .register('66917', 'Я не знаю, ужасаться мне или удивляться... когда я пообщался с Дейонаррой в Морге, она сказала, что через свои бесконечные перерождения я обрел некоторую власть над жизнью и смертью. Если я вижу тело, то могу разглядеть слабые следы жизни в нем и воскресить его. По какой-то причине это действует только на тех, кто путешествовал вместе со мной, и только в том случае, если они умерли в моем присутствии... но почему? Быть может, в пути между нами появляется какая-то связь?') %$#


    def r66914_action(self):
        self.state_manager.gain_experience('party', 1000)
        self.state_manager.world_manager.set_deionarra_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
        self.state_manager.world_manager.set_can_raise_dead(True)
""".strip() + '\n'
test_result19_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_j66917_s73_r66914_action(self):
        note_id = '66917'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j66917_s73_r66914_action
        )


    def test_r66914_action(self):
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 1000
        self.state_manager.world_manager.set_deionarra_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


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
    from game.engine.runtime import (runtime)
    from game.dlgs.area_logic import AreaLogic
    areaLogic = AreaLogic(runtime.global_state_manager)


# ###
# Original:  DLG/TEST.DLG
# ###


# s2 # say309
label area_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    'area_s2{#area_s2}'
    # nr 'Тленный отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#area_s2_1}'

    menu:
        'area_s2_r313{#area_s2_r313}': # '«Ну хорошо…»{#area_s2_r313}'
            # a0 # r313
            $ areaLogic.r313_action()
            jump area_dispose
""".strip() + '\n'
test_result20_logic = """
class AreaLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r313_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)
""".strip() + '\n'
test_result20_tests = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.area_logic import AreaLogic


class AreaLogicTest(LogicTest):
    def setUp(self):
        super(AreaLogicTest, self).setUp()
        self.logic = AreaLogic(self.state_manager)


    def test_r313_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r313_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip() + '\n'


################
################
################


test_case21 = """
IF ~~ THEN BEGIN 45 // from: 19.5
SAY #3889 /* ~Ты наклоняешься, чтобы «шепнуть» ему что-то на ухо, тленный тоже наклоняется. Как только он оказывается на расстоянии вытянутой руки, ты хватаешь его за виски и резко сворачиваешь голову влево. ~ */
IF ~~ THEN REPLY #3890 /* ~«Нельзя дать тебе предупредить своих друзей...»~ */ DO ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) ~ GOTO 42
END
""".strip() + '\n'
test_tree21 = {

}
test_result21_rpy = """
""".strip() + '\n'
test_result21_logic = """
""".strip() + '\n'
test_result21_tests = """
""".strip() + '\n'


################
################
################


test_case22 = """
IF ~~ THEN BEGIN 425 // from:
SAY #40082 /* ~Морт бурчит себе под нос: «Думаю, хорошо, что там *вообще* хоть что-нибудь есть».~ */
IF ~~ THEN REPLY #40083 /* ~«У меня другой вопрос, Ненни...»~ */ EXTERN ~DNENNY~ 3
IF ~~ THEN REPLY #40084 /* ~«Это все, что я хотел узнать, Ненни. Прощай».~ */ EXIT
END
""".strip() + '\n'
test_tree22 = {

}
test_result22_rpy = """
""".strip() + '\n'
test_result22_logic = """
""".strip() + '\n'
test_result22_tests = """
""".strip() + '\n'


################
################
################


test_case23 = """
IF ~~ THEN BEGIN 588 // from: 587.0
SAY #55909 /* ~«О, — Морт 'ухмыляется'. — Мог бы хоть ЧТО-ТО сказать. Пожалуйста, продолжай. Я не против... — Морт щелкает зубами, изображая Нордома. — Если хочешь что-нибудь узнать о модронах — спроси МЕНЯ».~ */
IF ~~ THEN REPLY #55910 /* ~«Ладно, Морт... Что ты можешь рассказать мне о модронах?»~ */ GOTO 590
IF ~~ THEN REPLY #55912 /* ~«Неважно. У меня есть другие вопросы к Нордому...»~ */ EXTERN ~DNORDOM~ 74
IF ~~ THEN REPLY #55913 /* ~«Забудь об этом. Идем».~ */ EXIT
END
""".strip() + '\n'
test_tree23 = {

}
test_result23_rpy = """
""".strip() + '\n'
test_result23_logic = """
""".strip() + '\n'
test_result23_tests = """
""".strip() + '\n'


################
################
################


test_case24 = """
IF ~~ THEN BEGIN 663 // from: 329.2 729.2
SAY #65611 /* ~«Эй! Чесание языком — моя лучшая черта». Он постукивает зубами, а затем 'скалится'. «А? А?»~ */
IF ~~ THEN REPLY #65612 /* ~«О-о, *очень* приятно это слышать».~ */ GOTO 664
IF ~  GlobalGT("Morte_Stolen","GLOBAL",2) ~ THEN REPLY #65613 /* ~«Да-да, я уже знаю о Потоке Проклятий, Морт. Мне очень интересно, чем ты занимался, когда оказался у Лотара».~ */ GOTO 667
IF ~~ THEN REPLY #65614 /* ~«У меня есть другие вопросы...»~ */ GOTO 329
IF ~~ THEN REPLY #65615 /* ~«Неважно Идем».~ */ EXIT
END
""".strip() + '\n'
test_tree24 = {

}
test_result24_rpy = """
""".strip() + '\n'
test_result24_logic = """
""".strip() + '\n'
test_result24_tests = """
""".strip() + '\n'


################
################
################


test_case25 = """
IF ~~ THEN BEGIN 715 // from: 329.8 714.0 729.8
SAY #65809 /* ~«Шеф, я же сказал: потому что я обещал, верно?- он выглядит раздраженным. — Что может быть еще?»~ */
IF ~~ THEN REPLY #65810 /* ~«Не знаю. Тебе ведь не обязательно кружить вокруг меня, раз я тебя освободил».~ */ GOTO 716
IF ~~ THEN REPLY #65811 /* ~«Неважно. У меня есть другие вопросы...»~ */ GOTO 329
IF ~~ THEN REPLY #65812 /* ~«Забудь об этом, Морт. Пошли».~ */ EXIT
END
""".strip() + '\n'
test_tree25 = {

}
test_result25_rpy = """
""".strip() + '\n'
test_result25_logic = """
""".strip() + '\n'
test_result25_tests = """
""".strip() + '\n'


################
################
################


test_case26 = """
IF ~~ THEN BEGIN 73 // from:
SAY #4658 /* ~Зомби ворчит: «Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания, — он кивает. — Удафи».~ */
IF ~~ THEN REPLY #4659 /* ~«Э-э... Ладно».~ */ EXIT
END
""".strip() + '\n'
test_tree26 = {

}
test_result26_rpy = """
""".strip() + '\n'
test_result26_logic = """
""".strip() + '\n'
test_result26_tests = """
""".strip() + '\n'


################
################
################


test_case27 = """
IF ~~ THEN BEGIN 2 // from: 1.0 1.1 3.0 3.3 4.0 4.1
SAY #1443 /* ~«О, силы!» Тленный подпрыгивает, затем внимательно смотрит на тебя. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок. «Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби, — он делает легкий поклон. — Я Соэго. Могу ли я спросить тебя, что ты делаешь здесь, — он косится на твои шрамы, — в таком виде?» ~ */
IF ~~ THEN REPLY #1444 /* ~«Это не твое дело».~ */ GOTO 6
IF ~~ THEN REPLY #1445 /* ~«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память... немного туманна».~ */ GOTO 7
IF ~  CheckStatGT(Protagonist,10,CHR) ~ THEN REPLY #1446 /* ~«Я заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»~ */ GOTO 8
IF ~~ THEN REPLY #1447 /* ~«Я пытаюсь выбраться отсюда».~ */ GOTO 13
IF ~~ THEN REPLY #1448 /* ~«Мне были нужны перемены в жизни».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Soego_2","GLOBALLaw",-1) ~ GOTO 16
IF ~~ THEN REPLY #4999 /* ~«У меня совершенно нет на это времени. Прощай».~ */ GOTO 17
END
""".strip() + '\n'
test_tree27 = {

}
test_result27_rpy = """
""".strip() + '\n'
test_result27_logic = """
""".strip() + '\n'
test_result27_tests = """
""".strip() + '\n'


################
################
################


test_case28 = """
IF ~~ THEN BEGIN 64 // from: 63.1 77.0 78.0
SAY #21661 /* ~«Я Соэго, фрактотум тленных. Я занимаюсь здесь миссионерской деятельностью», — он делает полупоклон.~ */
IF ~~ THEN REPLY #21662 /* ~«Миссионерской?»~ */ GOTO 65
IF ~  !Global("Dustman_Initiation","GLOBAL",5) ~ THEN REPLY #21663 /* ~«Что здесь делают тленные?»~ */ GOTO 66
IF ~~ THEN REPLY #64595 /* ~«Где я?»~ */ GOTO 77
IF ~~ THEN REPLY #64596 /* ~«Почему из меня сделали заключенного?»~ */ GOTO 78
IF ~~ THEN REPLY #21665 /* ~«Здравствуй и прощай».~ */ GOTO 71
END
""".strip() + '\n'
test_tree28 = {

}
test_result28_rpy = """
""".strip() + '\n'
test_result28_logic = """
""".strip() + '\n'
test_result28_tests = """
""".strip() + '\n'


################
################
################


test_case29 = """
IF ~~ THEN BEGIN 2 // from: 0.4
SAY #35565 /* ~Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #35566 /* ~Оставить скелет в покое.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1) ~ EXTERN ~DMORTE~ 394
IF ~  !NearbyDialog("DMorte") Global("Morte_Skel_Mort_Quip","GLOBAL",0) ~ THEN REPLY #35567 /* ~Оставить скелет в покое.~ */ EXIT
IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1) ~ THEN REPLY #35568 /* ~Оставить скелет в покое.~ */ EXIT
END
""".strip() + '\n'
test_tree29 = {

}
test_result29_rpy = """
""".strip() + '\n'
test_result29_logic = """
""".strip() + '\n'
test_result29_tests = """
""".strip() + '\n'


################
################
################


test_case30 = """
IF ~  Global("Bei","GLOBAL",0)
~ THEN BEGIN 0 // from:
SAY #6573 /* ~У этого поднятого трупа мужчины на лбу вырезан номер «1041». Несмотря на жесткую высушенную плоть, совершенно очевидно, что его лицо когда-то придавало ему довольно «экзотическую» внешность. Губы зомби крепко зашиты — скорее всего, чтобы не стонал все время, — а сам он сильно пахнет формальдегидом.~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #6576 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #6577 /* ~«Итак... что тут у нас интересного?»~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #6578 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) Global("Bei","GLOBAL",0) ~ THEN REPLY #6579 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~  Global("Speak_with_Dead","GLOBAL",1) Global("Bei","GLOBAL",1) ~ THEN REPLY #6580 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 37
IF ~~ THEN REPLY #6581 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~~ THEN REPLY #9095 /* ~Оставить труп в покое.~ */ EXIT
END
""".strip() + '\n'
test_tree30 = {

}
test_result30_rpy = """
""".strip() + '\n'
test_result30_logic = """
""".strip() + '\n'
test_result30_tests = """
""".strip() + '\n'


################
################
################


test_case31 = """
IF ~~ THEN BEGIN 4 // from: 3.0
SAY #9399 /* ~«Хе, хехе-ХУРХ!» — хохот духа резко прерывается тяжелыми спазмами, и он изрыгает поток бальзамирующей жидкости и черной гнили. Корчась от боли, дух начинает безудержно кашлять, периодически сплевывая желтоватую жидкость и оборванные швы с губ.~ */
IF ~~ THEN REPLY #9419 /* ~Терпеливо ждать окончания процесса.~ */ GOTO 5
IF ~~ THEN REPLY #9421 /* ~«У меня есть другие вопросы...»~ */ GOTO 9
IF ~~ THEN REPLY #9422 /* ~Оставить измученного духа его страданиям.~ */ EXIT
END
""".strip() + '\n'
test_tree31 = {

}
test_result31_rpy = """
""".strip() + '\n'
test_result31_logic = """
""".strip() + '\n'
test_result31_tests = """
""".strip() + '\n'


################
################
################


test_case32 = """
IF ~~ THEN BEGIN 5 // from: 4.0
SAY #9400 /* ~Ужасный кашель духа наконец-то утихает. «Нет, пень... ты... не можешь. Если... если только не махнешь в Баатор и не спасешь меня, я попал... по полной. Настало время... покаяться», — дух закрывает глаз и откидывает голову на пол.~ */
IF ~~ THEN REPLY #9423 /* ~«Понятно. У меня есть другой вопрос...»~ */ GOTO 9
IF ~~ THEN REPLY #9424 /* ~«Ладно. Прощай».~ */ EXIT
END
""".strip() + '\n'
test_tree32 = {

}
test_result32_rpy = """
""".strip() + '\n'
test_result32_logic = """
""".strip() + '\n'
test_result32_tests = """
""".strip() + '\n'

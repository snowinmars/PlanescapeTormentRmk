import unittest


from _build.renpy.dialogueReplacer import (DialogueReplacer)
from _build.renpy.dialogueTransformer import (DialogueTransformer)
from _build.ie2renpy.ie2abstract import (ie2abstract)
from _build.ie2renpy.abstract2renpy import (abstract2renpy)
from _build.ie2renpy.ie2renpy_tests_cases import (
    test_case1,
    test_tree1,
    test_result1_rpy,
    test_result1_logic,
    test_result1_tests,
    test_case2,
    test_tree2,
    test_result2_rpy,
    test_result2_logic,
    test_result2_tests,
    test_case3,
    test_tree3,
    test_result3_rpy,
    test_result3_logic,
    test_result3_tests,
    test_case4,
    test_tree4,
    test_result4_rpy,
    test_result4_logic,
    test_result4_tests,
    test_case5,
    test_tree5,
    test_result5_rpy,
    test_result5_logic,
    test_result5_tests,
    test_case6,
    test_tree6,
    test_result6_rpy,
    test_result6_logic,
    test_result6_tests,
    test_case7,
    test_tree7,
    test_result7_rpy,
    test_result7_logic,
    test_result7_tests,
    test_case8,
    test_tree8,
    test_result8_rpy,
    test_result8_logic,
    test_result8_tests,
    test_case9,
    test_tree9,
    test_result9_rpy,
    test_result9_logic,
    test_result9_tests,
    test_case10,
    test_tree10,
    test_result10_rpy,
    test_result10_logic,
    test_result10_tests,
    test_case11,
    test_tree11,
    test_result11_rpy,
    test_result11_logic,
    test_result11_tests,
    test_case12,
    test_tree12,
    test_result12_rpy,
    test_result12_logic,
    test_result12_tests,
    test_case13,
    test_tree13,
    test_result13_rpy,
    test_result13_logic,
    test_result13_tests,
    test_case14,
    test_tree14,
    test_result14_rpy,
    test_result14_logic,
    test_result14_tests,
    test_case15,
    test_tree15,
    test_result15_rpy,
    test_result15_logic,
    test_result15_tests,
    test_case16,
    test_tree16,
    test_result16_rpy,
    test_result16_logic,
    test_result16_tests,
    test_case17,
    test_tree17,
    test_result17_rpy,
    test_result17_logic,
    test_result17_tests,
    test_case18,
    test_tree18,
    test_result18_rpy,
    test_result18_logic,
    test_result18_tests,
    test_case19,
    test_tree19,
    test_result19_rpy,
    test_result19_logic,
    test_result19_tests,
    test_case20,
    test_tree20,
    test_result20_rpy,
    test_result20_logic,
    test_result20_tests,
)

class Ie2abstractTests(unittest.TestCase):
    def setUp(self):
        self.maxDiff = None
        self.area = 'test'
        self.state_prefix = '_s'
        self.replacer = DialogueReplacer()
        self.transformer = DialogueTransformer()
        self.transformer.set_replacements(self.replacer.build_replacements())
        self.warnings = []


    def test_case1(self):
        tree = ie2abstract(test_case1)[0]
        self.assert_equal_states(tree, test_tree1)
        rpy, logic, tests = abstract2renpy(
            states=[tree],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result1_rpy)
        self.assertEqual(logic, test_result1_logic)
        self.assertEqual(tests, test_result1_tests)
    def test_case2(self):
        tree = ie2abstract(test_case2)[0]
        self.assert_equal_states(tree, test_tree2)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree2],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result2_rpy)
        self.assertEqual(logic, test_result2_logic)
        self.assertEqual(tests, test_result2_tests)
    def test_case3(self):
        tree = ie2abstract(test_case3)[0]
        self.assert_equal_states(tree, test_tree3)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree3],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result3_rpy)
        self.assertEqual(logic, test_result3_logic)
        self.assertEqual(tests, test_result3_tests)
    def test_case4(self):
        tree = ie2abstract(test_case4)[0]
        self.assert_equal_states(tree, test_tree4)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree4],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result4_rpy)
        self.assertEqual(logic, test_result4_logic)
        self.assertEqual(tests, test_result4_tests)
    def test_case5(self):
        tree = ie2abstract(test_case5)[0]
        self.assert_equal_states(tree, test_tree5)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree5],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result5_rpy)
        self.assertEqual(logic, test_result5_logic)
        self.assertEqual(tests, test_result5_tests)
    def test_case6(self):
        tree = ie2abstract(test_case6)[0]
        self.assert_equal_states(tree, test_tree6)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree6],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result6_rpy)
        self.assertEqual(logic, test_result6_logic)
        self.assertEqual(tests, test_result6_tests)
    def test_case7(self):
        tree = ie2abstract(test_case7)[0]
        self.assert_equal_states(tree, test_tree7)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree7],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result7_rpy)
        self.assertEqual(logic, test_result7_logic)
        self.assertEqual(tests, test_result7_tests)
    def test_case8(self):
        tree = ie2abstract(test_case8)[0]
        self.assert_equal_states(tree, test_tree8)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree8],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result8_rpy)
        self.assertEqual(logic, test_result8_logic)
        self.assertEqual(tests, test_result8_tests)
    def test_case9(self):
        tree = ie2abstract(test_case9)[0]
        self.assert_equal_states(tree, test_tree9)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree9],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result9_rpy)
        self.assertEqual(logic, test_result9_logic)
        self.assertEqual(tests, test_result9_tests)
    def test_case10(self):
        tree = ie2abstract(test_case10)[0]
        self.assert_equal_states(tree, test_tree10)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree10],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result10_rpy)
        self.assertEqual(logic, test_result10_logic)
        self.assertEqual(tests, test_result10_tests)
    def test_case11(self):
        tree = ie2abstract(test_case11)[0]
        self.assert_equal_states(tree, test_tree11)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree11],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result11_rpy)
        self.assertEqual(logic, test_result11_logic)
        self.assertEqual(tests, test_result11_tests)
    def test_case12(self):
        tree = ie2abstract(test_case12)[0]
        self.assert_equal_states(tree, test_tree12)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree12],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result12_rpy)
        self.assertEqual(logic, test_result12_logic)
        self.assertEqual(tests, test_result12_tests)
    def test_case13(self):
        tree = ie2abstract(test_case13)[0]
        self.assert_equal_states(tree, test_tree13)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree13],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result13_rpy)
        self.assertEqual(logic, test_result13_logic)
        self.assertEqual(tests, test_result13_tests)
    def test_case14(self):
        tree = ie2abstract(test_case14)[0]
        self.assert_equal_states(tree, test_tree14)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree14],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result14_rpy)
        self.assertEqual(logic, test_result14_logic)
        self.assertEqual(tests, test_result14_tests)
    def test_case15(self):
        tree = ie2abstract(test_case15)[0]
        self.assert_equal_states(tree, test_tree15)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree15],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result15_rpy)
        self.assertEqual(logic, test_result15_logic)
        self.assertEqual(tests, test_result15_tests)
    def test_case16(self):
        tree = ie2abstract(test_case16)[0]
        self.assert_equal_states(tree, test_tree16)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree16],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result16_rpy)
        self.assertEqual(logic, test_result16_logic)
        self.assertEqual(tests, test_result16_tests)
    def test_case17(self):
        tree = ie2abstract(test_case17)[0]
        self.assert_equal_states(tree, test_tree17)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree17],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result17_rpy)
        self.assertEqual(logic, test_result17_logic)
        self.assertEqual(tests, test_result17_tests)
    def test_case18(self):
        tree = ie2abstract(test_case18)[0]
        self.assert_equal_states(tree, test_tree18)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree18],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result18_rpy)
        self.assertEqual(logic, test_result18_logic)
        self.assertEqual(tests, test_result18_tests)
    def test_case19(self):
        tree = ie2abstract(test_case19)[0]
        self.assert_equal_states(tree, test_tree19)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree19],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result19_rpy)
        self.assertEqual(logic, test_result19_logic)
        self.assertEqual(tests, test_result19_tests)
    def test_case20(self):
        tree = ie2abstract(test_case20)[0]
        self.assert_equal_states(tree, test_tree20)
        rpy, logic, tests = abstract2renpy(
            states=[test_tree20],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer,
            warnings=self.warnings
        )
        self.assertEqual(rpy, test_result20_rpy)
        self.assertEqual(logic, test_result20_logic)
        self.assertEqual(tests, test_result20_tests)


    def assert_equal_states(self, lhs, rhs):
        self.assertEqual(lhs['state_id'], rhs['state_id'])
        self.assertEqual(len(lhs['paths']), len(rhs['paths']))

        for i in range(len(lhs['paths'])):
            self.assert_euqal_paths(lhs['paths'][i], rhs['paths'][i])

        self.assertEqual(lhs['say_id'], rhs['say_id'])
        self.assertEqual(lhs['state_body'], rhs['state_body'])
        self.assertEqual(lhs['free'], rhs['free'])
        self.assertEqual(len(lhs['answers']), len(rhs['answers']))

        for i in range(len(lhs['answers'])):
            self.assert_equal_answers(lhs['answers'][i], rhs['answers'][i])


    def assert_euqal_paths(self, lhs, rhs):
        self.assertEqual(lhs['from_state_id'], rhs['from_state_id'])
        self.assertEqual(lhs['response_index'], rhs['response_index'])


    def assert_equal_answers(self, lhs, rhs):
        self.assertEqual(lhs['condition'], rhs['condition'])
        self.assertEqual(lhs['action'], rhs['action'])
        self.assertEqual(lhs['answer_id'], rhs['answer_id'])
        self.assertEqual(lhs['answer_body'], rhs['answer_body'])
        self.assertEqual(lhs['is_autoclick'], rhs['is_autoclick'])
        self.assertEqual(lhs['journal_id'], rhs['journal_id'])
        self.assertEqual(lhs['journal_body'], rhs['journal_body'])

        self.assertEqual(lhs['target_state']['id'], rhs['target_state']['id'])

        both_have_other_npc = 'other_npc' in lhs['target_state'] and 'other_npc' in rhs['target_state']
        neither_have_other_npc = 'other_npc' not in lhs['target_state'] and 'other_npc' not in rhs['target_state']
        self.assertTrue(both_have_other_npc or neither_have_other_npc)

        if both_have_other_npc:
            self.assertEqual(lhs['target_state']['other_npc'], rhs['target_state']['other_npc'])

    # def _print_dict(self, d):
    #     print("\n".join(f"{k}\t{v}" for k, v in d.items()))


if __name__ == '__main__':
    unittest.main() # pragma: no cover

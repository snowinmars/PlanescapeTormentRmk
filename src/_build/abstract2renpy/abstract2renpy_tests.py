import unittest


from _build.renpy.dialogueReplacer import (DialogueReplacer)
from _build.renpy.dialogueTransformer import (DialogueTransformer)
from _build.abstract2renpy.abstract2renpy import (abstract2renpy)
from _build.ie2renpy.tests_cases import (
    test_tree1,
    test_result1_rpy,
    test_result1_logic,
    test_result1_tests,
    test_tree2,
    test_result2_rpy,
    test_result2_logic,
    test_result2_tests,
    test_tree3,
    test_result3_rpy,
    test_result3_logic,
    test_result3_tests,
    test_tree4,
    test_result4_rpy,
    test_result4_logic,
    test_result4_tests,
    test_tree5,
    test_result5_rpy,
    test_result5_logic,
    test_result5_tests,
    test_tree6,
    test_result6_rpy,
    test_result6_logic,
    test_result6_tests,
    test_tree7,
    test_result7_rpy,
    test_result7_logic,
    test_result7_tests,
    test_tree8,
    test_result8_rpy,
    test_result8_logic,
    test_result8_tests,
    test_tree9,
    test_result9_rpy,
    test_result9_logic,
    test_result9_tests,
    test_tree10,
    test_result10_rpy,
    test_result10_logic,
    test_result10_tests,
    test_tree11,
    test_result11_rpy,
    test_result11_logic,
    test_result11_tests,
    test_tree12,
    test_result12_rpy,
    test_result12_logic,
    test_result12_tests,
    test_tree13,
    test_result13_rpy,
    test_result13_logic,
    test_result13_tests,
    test_tree14,
    test_result14_rpy,
    test_result14_logic,
    test_result14_tests,
)

class Ie2abstractTest(unittest.TestCase):
    def setUp(self):
        self.maxDiff = None
        self.area = 'area'
        self.state_prefix = '_s'
        self.replacer = DialogueReplacer()
        self.transformer = DialogueTransformer()
        self.transformer.set_replacements(self.replacer.build_replacements())


    def test_case1(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree1],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result1_rpy)
        self.assertEqual(logic, test_result1_logic)
        self.assertEqual(tests, test_result1_tests)
    def test_case2(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree2],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result2_rpy)
        self.assertEqual(logic, test_result2_logic)
        self.assertEqual(tests, test_result2_tests)
    def test_case3(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree3],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result3_rpy)
        self.assertEqual(logic, test_result3_logic)
        self.assertEqual(tests, test_result3_tests)
    def test_case4(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree4],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result4_rpy)
        self.assertEqual(logic, test_result4_logic)
        self.assertEqual(tests, test_result4_tests)
    def test_case5(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree5],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result5_rpy)
        self.assertEqual(logic, test_result5_logic)
        self.assertEqual(tests, test_result5_tests)
    def test_case6(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree6],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result6_rpy)
        self.assertEqual(logic, test_result6_logic)
        self.assertEqual(tests, test_result6_tests)
    def test_case7(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree7],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result7_rpy)
        self.assertEqual(logic, test_result7_logic)
        self.assertEqual(tests, test_result7_tests)
    def test_case8(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree8],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result8_rpy)
        self.assertEqual(logic, test_result8_logic)
        self.assertEqual(tests, test_result8_tests)
    def test_case9(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree9],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result9_rpy)
        self.assertEqual(logic, test_result9_logic)
        self.assertEqual(tests, test_result9_tests)
    def test_case10(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree10],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result10_rpy)
        self.assertEqual(logic, test_result10_logic)
        self.assertEqual(tests, test_result10_tests)
    def test_case11(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree11],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result11_rpy)
        self.assertEqual(logic, test_result11_logic)
        self.assertEqual(tests, test_result11_tests)
    def test_case12(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree12],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result12_rpy)
        self.assertEqual(logic, test_result12_logic)
        self.assertEqual(tests, test_result12_tests)
    def test_case13(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree13],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result13_rpy)
        self.assertEqual(logic, test_result13_logic)
        self.assertEqual(tests, test_result13_tests)
    def test_case14(self):
        rpy, logic, tests = abstract2renpy(
            states=[test_tree14],
            area=self.area,
            state_prefix=self.state_prefix,
            dialogue_transformer=self.transformer
        )
        self.assertEqual(rpy, test_result14_rpy)
        self.assertEqual(logic, test_result14_logic)
        self.assertEqual(tests, test_result14_tests)

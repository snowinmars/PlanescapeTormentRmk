import unittest


from _build.ie2abstract.ie2abstract import (ie2abstract)
from _build.ie2renpy.tests_cases import (
    test_case1,
    test_tree1,
    test_case2,
    test_tree2,
    test_case3,
    test_tree3,
    test_case4,
    test_tree4,
    test_case5,
    test_tree5,
    test_case6,
    test_tree6,
    test_case7,
    test_tree7,
    test_case8,
    test_tree8,
    test_case9,
    test_tree9,
    test_case10,
    test_tree10,
    test_case11,
    test_tree11,
    test_case12,
    test_tree12,
    test_case13,
    test_tree13,
)


class Ie2abstractTest(unittest.TestCase):
    def test_case_1(self):
        lhs = ie2abstract(test_case1)[0]
        rhs = test_tree1
        self.assert_equal_states(lhs, rhs)
    def test_case_2(self):
        lhs = ie2abstract(test_case2)[0]
        rhs = test_tree2
        self.assert_equal_states(lhs, rhs)
    def test_case_3(self):
        lhs = ie2abstract(test_case3)[0]
        rhs = test_tree3
        self.assert_equal_states(lhs, rhs)
    def test_case_4(self):
        lhs = ie2abstract(test_case4)[0]
        rhs = test_tree4
        self.assert_equal_states(lhs, rhs)
    def test_case_5(self):
        lhs = ie2abstract(test_case5)[0]
        rhs = test_tree5
        self.assert_equal_states(lhs, rhs)
    def test_case_6(self):
        lhs = ie2abstract(test_case6)[0]
        rhs = test_tree6
        self.assert_equal_states(lhs, rhs)
    def test_case_7(self):
        lhs = ie2abstract(test_case7)[0]
        rhs = test_tree7
        self.assert_equal_states(lhs, rhs)
    def test_case_8(self):
        lhs = ie2abstract(test_case8)[0]
        rhs = test_tree8
        self.assert_equal_states(lhs, rhs)
    def test_case_9(self):
        lhs = ie2abstract(test_case9)[0]
        rhs = test_tree9
        self.assert_equal_states(lhs, rhs)
    def test_case_10(self):
        lhs = ie2abstract(test_case10)[0]
        rhs = test_tree10
        self.assert_equal_states(lhs, rhs)
    def test_case_11(self):
        lhs = ie2abstract(test_case11)[0]
        rhs = test_tree11
        self.assert_equal_states(lhs, rhs)
    def test_case_12(self):
        lhs = ie2abstract(test_case12)[0]
        rhs = test_tree12
        self.assert_equal_states(lhs, rhs)
    def test_case_13(self):
        lhs = ie2abstract(test_case13)[0]
        rhs = test_tree13
        self.assert_equal_states(lhs, rhs)


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

        both_have_journal_id = 'journal_id' in lhs['target_state'] and 'journal_id' in rhs['target_state']
        neither_have_journal_id = 'journal_id' not in lhs['target_state'] and 'journal_id' not in rhs['target_state']
        self.assertTrue(both_have_journal_id or neither_have_journal_id)
        if both_have_journal_id:
            self.assertEqual(lhs['journal_id'], rhs['journal_id'])

        both_have_journal_body = 'journal_body' in lhs['target_state'] and 'journal_body' in rhs['target_state']
        neither_have_journal_body = 'journal_body' not in lhs['target_state'] and 'journal_body' not in rhs['target_state']
        self.assertTrue(both_have_journal_body or neither_have_journal_body)
        if both_have_journal_body:
            self.assertEqual(lhs['journal_body'], rhs['journal_body'])

        self.assertEqual(lhs['target_state']['id'], rhs['target_state']['id'])

        both_have_other_npc = 'other_npc' in lhs['target_state'] and 'other_npc' in rhs['target_state']
        neither_have_other_npc = 'other_npc' not in lhs['target_state'] and 'other_npc' not in rhs['target_state']
        self.assertTrue(both_have_other_npc or neither_have_other_npc)

        if both_have_other_npc:
            self.assertEqual(lhs['target_state']['other_npc'], rhs['target_state']['other_npc'])


def _print_dict(d):
    print("\n".join("{}\t{}".format(k, v) for k, v in d.items()))

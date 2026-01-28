import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.Zm79Logic import (Zm79LogicGenerated, Zm79Logic)


class Zm79LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm79LogicGeneratedTests, self).setUp()
        self.logic = Zm79LogicGenerated(self.state_manager)


    def test_r34943_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r34943_action
        )


    def test_r34946_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_copper_earring_secret,
            self.logic.r34946_action
        )


    def test_j64536_s3_r64279_action(self):
        note_id = '64536'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64536_s3_r64279_action
        )


    def test_j64537_s3_r64280_action(self):
        note_id = '64537'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64537_s3_r64280_action
        )


    def test_r34946_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_copper_earring_secret(x),
            self.logic.r34946_condition
        )


    def test_r34947_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r34947_condition
        )


    def test_r34948_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r34948_condition
        )


    def test_r64279_condition(self):
        self.state_manager.inventory_items_manager.pick_item('has_copper_earring_closed')
        self._boolean_invert_condition(
            lambda x: self.state_manager.inventory_items_manager.pick_item('has_copper_earring_closed') if x else self.state_manager.inventory_items_manager.drop_item('has_copper_earring_closed'),
            self.logic.r64279_condition
        )


    def test_r64280_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_items_manager.pick_item('has_copper_earring_closed') if x else self.state_manager.inventory_items_manager.drop_item('has_copper_earring_closed'),
            self.logic.r64280_condition
        )


class Zm79LogicTests(LogicTests):
    def setUp(self):
        super(Zm79LogicTests, self).setUp()
        self.logic = Zm79Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm79_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover

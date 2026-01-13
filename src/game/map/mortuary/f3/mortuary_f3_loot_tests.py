import unittest


from game.engine.tests import (LogicTest)
from game.map.mortuary.f3.mortuary_f3_loot_logic import (MortuaryF3LootLogic)


class MortuaryF3LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF3LootLogicTest, self).setUp()
        self.logic = MortuaryF3LootLogic(self.state_manager)


    def test_mortuary_key(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_mortuary_key,
            self.logic.mortuary_key
        )


    def test_mortuary_task_list(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_mortuary_task_list,
            self.logic.mortuary_task_list
        )


    def test_prybar(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_prybar,
            self.logic.prybar
        )


    def test_dustman_request(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_dustman_request,
            self.logic.dustman_request
        )


    def test_needle(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_needle,
            self.logic.needle
        )


    def test_garbage(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_garbage,
            self.logic.garbage
        )


    def test_get_where_party_stands(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        with self.assertRaises(KeyError):
            self.logic.get_where_party_stands()

if __name__ == '__main__':
    unittest.main() # pragma: no cover

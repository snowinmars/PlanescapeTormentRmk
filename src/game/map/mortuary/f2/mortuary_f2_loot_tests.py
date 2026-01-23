import unittest


from game.engine.tests import (LogicTest)
from game.map.mortuary.f2.mortuary_f2_loot_logic import (MortuaryF2LootLogic)


class MortuaryF2LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2LootLogicTest, self).setUp()
        self.logic = MortuaryF2LootLogic(self.state_manager)


    def test_prybar(self):
        self._false_then_true_action(
            lambda: self.state_manager.inventory_manager.is_own_item('has_scalpel'),
            self.logic.scalpel
        )


    def test_embalm(self):
        self._false_then_true_action(
            lambda: self.state_manager.inventory_manager.is_own_item('has_embalm'),
            self.logic.embalm
        )


    def test_copper_earring_closed(self):
        self._false_then_true_action(
            lambda: self.state_manager.inventory_manager.is_own_item('has_copper_earring_closed'),
            self.logic.copper_earring_closed
        )


    def test_get_where_party_stands(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        with self.assertRaises(KeyError):
            self.logic.get_where_party_stands()


if __name__ == '__main__':
    unittest.main() # pragma: no cover

import unittest


from game.engine.tests import (LogicTest)
from game.map.mortuary.f1.mortuary_f1_loot_logic import (MortuaryF1LootLogic)


class MortuaryF1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1LootLogicTest, self).setUp()
        self.logic = MortuaryF1LootLogic(self.state_manager)


    def test_get_where_party_stands(self):
        self.state_manager.locations_manager.set_location('mortuary_f1r1')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f1r2')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f1r3')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f1rc')
        self._coords_are_not_none(self.logic.get_where_party_stands())
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        with self.assertRaises(KeyError):
            self.logic.get_where_party_stands()

if __name__ == '__main__':
    unittest.main() # pragma: no cover

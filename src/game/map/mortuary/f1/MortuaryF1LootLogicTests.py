import unittest


from game.engine.LogicTests import (LogicTests)
from game.map.mortuary.f1.MortuaryF1LootLogic import (MortuaryF1LootLogic)


class MortuaryF1LootLogicTests(LogicTests):
    def setUp(self):
        super(MortuaryF1LootLogicTests, self).setUp()
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

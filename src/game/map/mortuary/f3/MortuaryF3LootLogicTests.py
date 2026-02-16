import unittest


from game.engine.LogicTests                   import (LogicTests)
from game.map.mortuary.f3.MortuaryF3LootLogic import (MortuaryF3LootLogic)


class MortuaryF3LootLogicTests(LogicTests):
    def setUp(self):
        super(MortuaryF3LootLogicTests, self).setUp()
        self.logic = MortuaryF3LootLogic(self.state_manager)


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

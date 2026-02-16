import unittest


from game.engine.LogicTests                   import (LogicTests)
from game.map.mortuary.f2.MortuaryF2LootLogic import (MortuaryF2LootLogic)


class MortuaryF2LootLogicTests(LogicTests):
    def setUp(self):
        super(MortuaryF2LootLogicTests, self).setUp()
        self.logic = MortuaryF2LootLogic(self.state_manager)


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

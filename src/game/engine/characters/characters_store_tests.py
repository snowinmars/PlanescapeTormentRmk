import pickle
import unittest

from game.engine.characters.character import (Character)
from game.engine.characters.characters_store import (CharactersStore)


class CharacterStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = CharactersStore()
        self.morte = Character(
            name='morte_character_name', current_class='Fighter', race='Human. Once', sex='Male', \
            max_health=20, current_health=20, ac=4, \
            good=60, law=-60, \
            lore=0, experience=2000, \
            strength=12, dexterity=16, intelligence=13, constitution=16, wisdom=9, charisma=6,
            looks_like=''
        )
        self.annah = Character(
            name='annah_character_name', current_class='Fighter/Thief', race='Tiefling', sex='Female', \
            max_health=38, current_health=38, ac=4, \
            good=0, law=-60, \
            lore=0, experience=0, \
            strength=14, dexterity=18, intelligence=12, constitution=16, wisdom=10, charisma=13,
            looks_like=''
        )


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95d\x00\x00\x00\x00\x00\x00\x00\x8c'game.engine.characters.characters_store\x94\x8c\x0fCharactersStore\x94\x93\x94)\x81\x94}\x94(\x8c\ncharacters\x94}\x94\x8c\tonce_keys\x94}\x94ub."
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"characters": {}, "once_keys": {}}'
        self.assertEqual(dump, expected)

        store = CharactersStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95\xdd\x01\x00\x00\x00\x00\x00\x00\x8c'game.engine.characters.characters_store\x94\x8c\x0fCharactersStore\x94\x93\x94)\x81\x94}\x94(\x8c\ncharacters\x94}\x94(\x8c\x05morte\x94\x8c game.engine.characters.character\x94\x8c\tCharacter\x94\x93\x94)\x81\x94}\x94(\x8c\x04name\x94h\x07\x8c\nmax_health\x94K\x14\x8c\x0ecurrent_health\x94K\x14\x8c\x04good\x94K<\x8c\x03law\x94J\xc4\xff\xff\xff\x8c\x04lore\x94K\x00\x8c\nexperience\x94M\xd0\x07\x8c\x08strength\x94K\x0c\x8c\tdexterity\x94K\x10\x8c\x0cintelligence\x94K\r\x8c\x0cconstitution\x94K\x10\x8c\x06wisdom\x94K\t\x8c\x08charisma\x94K\x06\x8c\nlooks_like\x94\x8c\x00\x94ub\x8c\x05annah\x94h\n)\x81\x94}\x94(h\rh\x1ch\x0eK&h\x0fK&h\x10K\x00h\x11J\xc4\xff\xff\xffh\x12K\x00h\x13K\x00h\x14K\x0eh\x15K\x12h\x16K\x0ch\x17K\x10h\x18K\nh\x19K\rh\x1ah\x1bubu\x8c\tonce_keys\x94}\x94(h\x07]\x94\x8c\rselfmortename\x94ah\x1c]\x94\x8c\rselfannahname\x94auub."
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(self.store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"characters": {"morte": {"name": "morte", "max_health": 20, "current_health": 20, "good": 60, "law": -60, "lore": 0, "experience": 2000, "strength": 12, "dexterity": 16, "intelligence": 13, "constitution": 16, "wisdom": 9, "charisma": 6, "looks_like": ""}, "annah": {"name": "annah", "max_health": 38, "current_health": 38, "good": 0, "law": -60, "lore": 0, "experience": 0, "strength": 14, "dexterity": 18, "intelligence": 12, "constitution": 16, "wisdom": 10, "charisma": 13, "looks_like": ""}}, "once_keys": {"morte": ["selfmortename"], "annah": ["selfannahname"]}}'
        self.assertEqual(dump, expected)

        store = CharactersStore.fromJson(dump)
        self._assert_filled_store(self.store)


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.characters)
        self.assertIsNotNone(store.once_keys)
        self.assertEqual(len(store.characters), 0)
        self.assertEqual(len(store.once_keys), 0)


    def _fill_store(self, store):
        store.characters[self.morte.name] = self.morte
        store.characters[self.annah.name] = self.annah
        store.once_keys[self.morte.name] = []
        store.once_keys[self.annah.name] = []
        store.once_keys[self.morte.name].append('selfmortename')
        store.once_keys[self.annah.name].append('selfannahname')


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.characters)
        self.assertIsNotNone(store.once_keys)
        self.assertEqual(len(store.characters), 2)
        self.assertEqual(len(store.once_keys), 2)
        self._assert_equal_characters(store.characters[self.morte.name], self.morte)
        self._assert_equal_characters(store.characters[self.annah.name], self.annah)
        self.assertTrue(self.morte.name in store.once_keys)
        self.assertTrue(self.annah.name in store.once_keys)
        self.assertEqual(len(store.once_keys[self.morte.name]), 1)
        self.assertEqual(len(store.once_keys[self.annah.name]), 1)
        self.assertEqual(store.once_keys[self.morte.name][0], 'selfmortename')
        self.assertEqual(store.once_keys[self.annah.name][0], 'selfannahname')


    def _assert_equal_characters(self, lhs, rhs):
        self.assertEqual(lhs.name, rhs.name)
        self.assertEqual(lhs.max_health, rhs.max_health)
        self.assertEqual(lhs.current_health, rhs.current_health)
        self.assertEqual(lhs.good, rhs.good)
        self.assertEqual(lhs.law, rhs.law)
        self.assertEqual(lhs.lore, rhs.lore)
        self.assertEqual(lhs.experience, rhs.experience)
        self.assertEqual(lhs.strength, rhs.strength)
        self.assertEqual(lhs.dexterity, rhs.dexterity)
        self.assertEqual(lhs.intelligence, rhs.intelligence)
        self.assertEqual(lhs.constitution, rhs.constitution)
        self.assertEqual(lhs.wisdom, rhs.wisdom)
        self.assertEqual(lhs.charisma, rhs.charisma)
        self.assertEqual(lhs.looks_like, rhs.looks_like)


if __name__ == "__main__":
    unittest.main()

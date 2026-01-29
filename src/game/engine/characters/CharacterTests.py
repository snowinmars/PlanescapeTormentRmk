import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.characters.Character import (Character)


class CharacterTests(LogicTests):
    def test_ctor(self):
        name='protagonist_character_name'
        current_class='Mage'
        race='Human'
        sex='Male'
        max_health=31
        current_health=31
        ac=10
        good=3
        law=5
        lore=7
        experience=9
        strength=11
        dexterity=13
        intelligence=17
        constitution=19
        wisdom=23
        charisma=27
        looks_like='looks_like'

        character = self._create_character(
            name=name, current_class=current_class, race=race, sex=sex, \
            max_health=max_health, current_health=current_health, ac=ac, \
            good=good, law=law, \
            lore=lore, experience=experience, \
            strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
            looks_like=looks_like
        )

        self.assertIsNotNone(character)

        self.assertEqual(character.name, name)
        self.assertEqual(character.current_class, current_class)
        self.assertEqual(character.race, race)
        self.assertEqual(character.sex, sex)
        self.assertEqual(character.max_health, max_health)
        self.assertEqual(character.current_health, current_health)
        self.assertEqual(character.ac, ac)
        self.assertEqual(character.good, good)
        self.assertEqual(character.law, law)
        self.assertEqual(character.lore, lore)
        self.assertEqual(character.experience, experience)
        self.assertEqual(character.strength, strength)
        self.assertEqual(character.dexterity, dexterity)
        self.assertEqual(character.intelligence, intelligence)
        self.assertEqual(character.constitution, constitution)
        self.assertEqual(character.wisdom, wisdom)
        self.assertEqual(character.charisma, charisma)
        self.assertEqual(character.looks_like, looks_like)


    def test_get_all_properties_when_all_ok(self):
        name='protagonist_character_name'
        current_class='Mage'
        race='Human'
        sex='Male'
        max_health=31
        current_health=31
        ac=10
        good=3
        law=5
        lore=7
        experience=9
        strength=11
        dexterity=13
        intelligence=17
        constitution=19
        wisdom=23
        charisma=27
        looks_like='looks_like'

        character = self._create_character(
            name=name, current_class=current_class, race=race, sex=sex, \
            max_health=max_health, current_health=current_health, ac=ac, \
            good=good, law=law, \
            lore=lore, experience=experience, \
            strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
            looks_like=looks_like
        )

        props = character.get_all_properties()

        self.assertEqual(props['name'], name)
        self.assertEqual(props['current_class'], current_class)
        self.assertEqual(props['race'], race)
        self.assertEqual(props['sex'], sex)
        self.assertEqual(props['max_health'], max_health)
        self.assertEqual(props['current_health'], current_health)
        self.assertEqual(props['ac'], ac)
        self.assertEqual(props['good'], good)
        self.assertEqual(props['law'], law)
        self.assertEqual(props['lore'], lore)
        self.assertEqual(props['experience'], experience)
        self.assertEqual(props['strength'], strength)
        self.assertEqual(props['dexterity'], dexterity)
        self.assertEqual(props['intelligence'], intelligence)
        self.assertEqual(props['constitution'], constitution)
        self.assertEqual(props['wisdom'], wisdom)
        self.assertEqual(props['charisma'], charisma)
        self.assertEqual(props['looks_like'], looks_like)


    def test_reserialize_pickle(self):
        character = self._create_character()

        dump = pickle.dumps(character)
        expected = b'\x80\x05\x95G\x01\x00\x00\x00\x00\x00\x00\x8c game.engine.characters.Character\x94\x8c\tCharacter\x94\x93\x94)\x81\x94}\x94(\x8c\x04name\x94\x8c\x1aprotagonist_character_name\x94\x8c\rcurrent_class\x94\x8c\x04Mage\x94\x8c\x04race\x94\x8c\x05Human\x94\x8c\x03sex\x94\x8c\x04Male\x94\x8c\nmax_health\x94K\x1f\x8c\x0ecurrent_health\x94K\x1f\x8c\x02ac\x94K\n\x8c\x04good\x94K\x03\x8c\x03law\x94K\x05\x8c\x04lore\x94K\x07\x8c\nexperience\x94K\t\x8c\x08strength\x94K\x0b\x8c\tdexterity\x94K\r\x8c\x0cintelligence\x94K\x11\x8c\x0cconstitution\x94K\x13\x8c\x06wisdom\x94K\x17\x8c\x08charisma\x94K\x1b\x8c\nlooks_like\x94h\x1aub.'
        self.assertEqual(dump, expected)

        restored_character = pickle.loads(dump)
        self._assert_character(character, restored_character)


    def test_reserialize_json(self):
        character = self._create_character()

        dump = character.toJson()
        expected = '{"name": "protagonist_character_name", "current_class": "Mage", "race": "Human", "sex": "Male", "max_health": 31, "current_health": 31, "ac": 10, "good": 3, "law": 5, "lore": 7, "experience": 9, "strength": 11, "dexterity": 13, "intelligence": 17, "constitution": 19, "wisdom": 23, "charisma": 27, "looks_like": "looks_like"}'
        self.assertEqual(dump, expected)

        restored_character = Character.fromJson(dump)
        self._assert_character(character, restored_character)


    def _create_character(self,
        name='protagonist_character_name',
        current_class='Mage',
        race='Human',
        sex='Male',
        max_health=31,
        current_health=31,
        ac=10,
        good=3,
        law=5,
        lore=7,
        experience=9,
        strength=11,
        dexterity=13,
        intelligence=17,
        constitution=19,
        wisdom=23,
        charisma=27,
        looks_like='looks_like'
    ):
        return Character(
            name=name, current_class=current_class, race=race, sex=sex, \
            max_health=max_health, current_health=current_health, ac=ac, \
            good=good, law=law, \
            lore=lore, experience=experience, \
            strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
            looks_like=looks_like
        )


    def _assert_character(self, lhs, rhs):
        self.assertEqual(lhs.name          , rhs.name)
        self.assertEqual(lhs.current_class , rhs.current_class)
        self.assertEqual(lhs.race          , rhs.race)
        self.assertEqual(lhs.sex           , rhs.sex)
        self.assertEqual(lhs.max_health    , rhs.max_health)
        self.assertEqual(lhs.current_health, rhs.current_health)
        self.assertEqual(lhs.ac            , rhs.ac)
        self.assertEqual(lhs.good          , rhs.good)
        self.assertEqual(lhs.law           , rhs.law)
        self.assertEqual(lhs.lore          , rhs.lore)
        self.assertEqual(lhs.experience    , rhs.experience)
        self.assertEqual(lhs.strength      , rhs.strength)
        self.assertEqual(lhs.dexterity     , rhs.dexterity)
        self.assertEqual(lhs.intelligence  , rhs.intelligence)
        self.assertEqual(lhs.constitution  , rhs.constitution)
        self.assertEqual(lhs.wisdom        , rhs.wisdom)
        self.assertEqual(lhs.charisma      , rhs.charisma)
        self.assertEqual(lhs.looks_like    , rhs.looks_like)


if __name__ == '__main__':
    unittest.main() # pragma: no cover

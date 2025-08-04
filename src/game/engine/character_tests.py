import unittest

from game.engine.tests import (LogicTest)
from game.engine.character import (Character)


class CharacterTest(LogicTest):
    def test_ctor(self):
        name='char'
        max_health=31
        current_health=31
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

        char = Character(
            name=name,
            max_health=max_health, current_health=current_health, \
            good=good, law=law, \
            lore=lore, experience=experience, \
            strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
            looks_like=looks_like
        )

        self.assertIsNotNone(char)

        self.assertEqual(char.name, name)
        self.assertEqual(char.max_health, max_health)
        self.assertEqual(char.current_health, current_health)
        self.assertEqual(char.good, good)
        self.assertEqual(char.law, law)
        self.assertEqual(char.lore, lore)
        self.assertEqual(char.experience, experience)
        self.assertEqual(char.strength, strength)
        self.assertEqual(char.dexterity, dexterity)
        self.assertEqual(char.intelligence, intelligence)
        self.assertEqual(char.constitution, constitution)
        self.assertEqual(char.wisdom, wisdom)
        self.assertEqual(char.charisma, charisma)
        self.assertEqual(char.looks_like, looks_like)


    def test_get_all_properties_when_all_ok(self):
        name='char'
        max_health=31
        current_health=31
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

        char = Character(
            name=name,
            max_health=max_health, current_health=current_health, \
            good=good, law=law, \
            lore=lore, experience=experience, \
            strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
            looks_like=looks_like
        )

        props = char.get_all_properties()

        self.assertEqual(props['name'], name)
        self.assertEqual(props['max_health'], max_health)
        self.assertEqual(props['current_health'], current_health)
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


if __name__ == '__main__':
    unittest.main() # pragma: no cover

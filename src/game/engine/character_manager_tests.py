import unittest

from game.engine.tests import (LogicTest)
from game.engine.event_manager import (EventManager)
from game.engine.character import (Character)
from game.engine.character_manager import (CharacterManager)


class CharacterManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.character_manager)
        self.assertIsNotNone(self.character_manager._characters)
        self.assertIsNotNone(self.character_manager._once_keys)
        self.assertIsNotNone(self.character_manager._event_manager)
        self.assertNotEqual(len(self.character_manager._characters), 0)
        self.assertEqual(len(self.character_manager._once_keys), 0)


    def test_get_character_when_all_ok(self):
        name = 'existing char'

        old_char = _create_char(name)
        self.character_manager.add_character(old_char)
        new_char = self.character_manager.get_character(name)

        self.assertEqual(old_char, new_char)


    def test_get_character_when_char_not_found(self):
        name = 'non existing char'

        with self.assertRaises(KeyError):
            self.character_manager.get_character(name)


    def test_get_property_when_all_ok(self):
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

        self.character_manager.add_character(char)

        self.assertEqual(self.character_manager.get_property(name, 'name'), name)
        self.assertEqual(self.character_manager.get_property(name, 'max_health'), max_health)
        self.assertEqual(self.character_manager.get_property(name, 'current_health'), current_health)
        self.assertEqual(self.character_manager.get_property(name, 'good'), good)
        self.assertEqual(self.character_manager.get_property(name, 'law'), law)
        self.assertEqual(self.character_manager.get_property(name, 'lore'), lore)
        self.assertEqual(self.character_manager.get_property(name, 'experience'), experience)
        self.assertEqual(self.character_manager.get_property(name, 'strength'), strength)
        self.assertEqual(self.character_manager.get_property(name, 'dexterity'), dexterity)
        self.assertEqual(self.character_manager.get_property(name, 'intelligence'), intelligence)
        self.assertEqual(self.character_manager.get_property(name, 'constitution'), constitution)
        self.assertEqual(self.character_manager.get_property(name, 'wisdom'), wisdom)
        self.assertEqual(self.character_manager.get_property(name, 'charisma'), charisma)
        self.assertEqual(self.character_manager.get_property(name, 'looks_like'), looks_like)


    def test_get_property_when_char_not_found(self):
        name = 'non existing char'
        prop = 'name'

        with self.assertRaises(KeyError):
            self.character_manager.get_property(name, prop)


    def test_get_property_when_prop_not_found(self):
        name = 'existing char'
        prop = 'non existing prop'

        char = _create_char(name)
        self.character_manager.add_character(char)

        with self.assertRaises(KeyError):
            self.character_manager.get_property(name, prop)


    def test_add_character_when_all_ok(self):
        name = 'existing char'

        old_char = _create_char(name)
        new_char = self.character_manager.add_character(old_char)

        self.assertEqual(old_char, new_char)


    def test_add_character_when_wrong_char_type_passed(self):
        name = 'existing char'

        with self.assertRaises(TypeError):
            new_char = self.character_manager.add_character(name)


    def test_add_character_when_char_already_exists(self):
        name = 'existing char'

        char = _create_char(name)
        self.character_manager.add_character(char)
        with self.assertRaises(ValueError):
            self.character_manager.add_character(char)


    def test_remove_character_when_all_ok(self):
        name = 'existing char'

        old_char = _create_char(name)
        self.character_manager.add_character(old_char)
        new_char = self.character_manager.remove_character(name)

        self.assertEqual(old_char, new_char)


    def test_remove_character_when_char_not_found(self):
        name = 'non existing char'

        with self.assertRaises(KeyError):
            self.character_manager.remove_character(name)


    def test_modify_property_when_all_ok(self):
        name = 'existing char'
        prop = 'experience'
        delta = 11

        char = _create_char(name)
        self.character_manager.add_character(char)

        before = self.character_manager.get_property(name, prop)
        new_value = self.character_manager.modify_property(name, prop, delta)
        after = self.character_manager.get_property(name, prop)

        self.assertEqual(before + delta, after)
        self.assertEqual(new_value, after)

        reset_value = self.character_manager.modify_property(name, prop, -delta)
        reset = self.character_manager.get_property(name, prop)

        self.assertEqual(before, reset)
        self.assertEqual(reset_value, reset)


    def test_modify_property_when_char_not_found(self):
        name = 'non existing char'
        prop = 'name'
        delta = 11

        with self.assertRaises(KeyError):
            self.character_manager.modify_property(name, prop, delta)


    def test_modify_property_when_prop_not_found(self):
        name = 'existing char'
        prop = 'non existing prop'
        delta = 11

        char = _create_char(name)
        self.character_manager.add_character(char)

        with self.assertRaises(KeyError):
            self.character_manager.modify_property(name, prop, delta)


    def test_modify_property_once_when_all_ok(self):
        name = 'existing char'
        prop = 'experience'
        delta = 11
        key = 'key'

        char = _create_char(name)
        self.character_manager.add_character(char)

        before = self.character_manager.get_property(name, prop)
        new_value = self.character_manager.modify_property_once(name, prop, delta, key)
        after = self.character_manager.get_property(name, prop)

        self.assertEqual(before + delta, after)
        self.assertEqual(new_value, after)

        reset_value = self.character_manager.modify_property_once(name, prop, -delta, key)
        reset = self.character_manager.get_property(name, prop)

        self.assertEqual(after, reset)
        self.assertEqual(reset_value, reset)


    def test_modify_property_once_when_creates_keys(self):
        name = 'existing char'
        prop = 'experience'
        delta = 11
        key = 'key'

        char = _create_char(name)
        self.character_manager.add_character(char)

        self.assertEqual(len(self.character_manager._once_keys), 0)

        self.character_manager.modify_property_once(name, prop, delta, key)

        self.assertEqual(len(self.character_manager._once_keys), 1)
        self.assertTrue(key in self.character_manager._once_keys.keys())
        self.assertEqual(len(self.character_manager._once_keys[key]), 1)
        self.assertEqual(self.character_manager._once_keys[key][0], prop)

        self.character_manager.modify_property_once(name, prop, delta, key)

        self.assertEqual(len(self.character_manager._once_keys), 1)
        self.assertTrue(key in self.character_manager._once_keys.keys())
        self.assertEqual(len(self.character_manager._once_keys[key]), 1)
        self.assertEqual(self.character_manager._once_keys[key][0], prop)


    def test_modify_property_once_when_char_not_found(self):
        name = 'non existing char'
        prop = 'name'
        delta = 11
        key = 'key'

        with self.assertRaises(KeyError):
            self.character_manager.modify_property_once(name, prop, delta, key)


    def test_modify_property_once_when_prop_not_found(self):
        name = 'existing char'
        prop = 'non existing prop'
        delta = 11
        key = 'key'

        char = _create_char(name)
        self.character_manager.add_character(char)

        with self.assertRaises(KeyError):
            self.character_manager.modify_property_once(name, prop, delta, key)


    def test_set_property_when_all_ok(self):
        name = 'existing char'
        prop = 'name'
        value = 'new existing char'

        char = _create_char(name)
        self.character_manager.add_character(char)

        before = self.character_manager.get_property(name, prop)
        new_value = self.character_manager.set_property(name, prop, value)
        after = self.character_manager.get_property(name, prop)

        self.assertNotEqual(before, after)
        self.assertEqual(new_value, after)
        self.assertEqual(value, after)


    def test_set_property_when_char_not_found(self):
        name = 'non existing char'
        prop = 'name'
        value = 'new existing char'

        with self.assertRaises(KeyError):
            self.character_manager.set_property(name, prop, value)


    def test_set_property_when_prop_not_found(self):
        name = 'existing char'
        prop = 'non existing prop'
        value = 'new existing char'

        char = _create_char(name)
        self.character_manager.add_character(char)

        with self.assertRaises(KeyError):
            self.character_manager.set_property(name, prop, value)


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

        self.character_manager.add_character(char)
        props = self.character_manager.get_all_properties(char.name)

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


    def test_get_all_properties_when_char_not_found(self):
        name = 'non existing char'

        with self.assertRaises(KeyError):
            self.character_manager.get_all_properties(name)


    def test_full_heal_when_all_ok(self):
        name = 'existing char'

        char = _create_char(name)
        self.character_manager.add_character(char)
        current_health_before = self.character_manager.get_property(char.name, 'current_health')
        max_health_before = self.character_manager.get_property(char.name, 'current_health')
        self.character_manager.set_property(char.name, 'current_health', current_health_before / 2)
        current_health_wounded = self.character_manager.get_property(char.name, 'current_health')
        self.assertNotEqual(current_health_before, current_health_wounded)

        self.character_manager.full_heal(name)

        current_health_after = self.character_manager.get_property(char.name, 'current_health')
        max_health_after = self.character_manager.get_property(char.name, 'max_health')
        self.assertEqual(current_health_before, current_health_after)
        self.assertEqual(max_health_after, current_health_after)


def _create_char(name):
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

    return Character(
        name=name,
        max_health=max_health, current_health=current_health, \
        good=good, law=law, \
        lore=lore, experience=experience, \
        strength=strength, dexterity=dexterity, intelligence=intelligence, constitution=constitution, wisdom=wisdom, charisma=charisma,
        looks_like=looks_like
    )


if __name__ == '__main__':
    unittest.main() # pragma: no cover

import logging

from game.engine.character import (Character)


devlog = logging.getLogger('log')


class CharacterManager:
    def __init__(self, event_manager):
        self._characters = {}
        self._once_keys = {}
        self._event_manager = event_manager


    def get_character(self, name):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)

        return char


    def get_property(self, name, prop):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        return char.get_all_properties()[prop]


    def add_character(self, char):
        if not isinstance(char, Character):
            raise TypeError("Only Character instances can be added")
        if char.name in self._characters:
            raise ValueError(f"Character '{char.name}' already exists")

        self._characters[char.name] = char

        self._log(f"add '{char.name}'")

        return char


    def remove_character(self, name):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)

        del self._characters[name]

        self._log(f"remove '{name}'")

        return char


    def modify_property(self, name, prop, amount):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        new_value = getattr(char, prop) + amount
        setattr(char, prop, new_value)

        self._log(f"modify '{name}'.'{prop}' + '{amount}' = '{getattr(char, prop)}'")

        return new_value


    def modify_property_once(self, name, prop, amount, key):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        if key not in self._once_keys:
            self._once_keys[key] = []

        if prop in self._once_keys[key]:
            self._log(f"already modified '{name}'.'{prop}' with '{key}'")
            return getattr(char, prop)

        new_value = getattr(char, prop) + amount
        setattr(char, prop, new_value)
        self._once_keys[key].append(prop)

        self._log(f"modify with '{key}' '{name}'.'{prop}' + '{amount}' = '{new_value}'")

        return new_value


    def set_property(self, name, prop, value):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        setattr(char, prop, value)

        self._log(f"set '{name}'.'{prop}' = '{value}'")

        return value


    def get_all_properties(self, name):
        char = self._characters.get(name)

        self._char_exists_or_throw(char, name)

        return char.get_all_properties()


    def full_heal(self, name):
        self.set_property(name, 'current_health', self.get_property(name, 'max_health'))


    def _char_exists_or_throw(self, char, name):
        if char is None:
            raise KeyError(f"Character '{name}' not found")


    def _char_prop_exists_or_throw(self, char, prop):
        if not hasattr(char, prop):
            raise KeyError(f"No '{prop}' known for character '{char.name}'")


    def _log(self, line):
        devlog.debug(line)
        self._event_manager.write_event(line)

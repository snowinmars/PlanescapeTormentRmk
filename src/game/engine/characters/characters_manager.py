import logging

from game.engine.characters.character import (Character)


class CharactersManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._characters_store = None
        self._report_change_callback = None


    def set_store(self, characters_store):
        self._characters_store = characters_store


    def register_report_change_callback(self, report_change_callback):
        self._report_change_callback = report_change_callback


    def get_character(self, name):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)

        return char


    def get_property(self, name, prop):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        return char.get_all_properties()[prop]


    def add_character(self, char):
        if not isinstance(char, Character):
            raise TypeError("Only Character instances can be added")
        if char.name in self._characters_store.characters:
            raise ValueError(f"Character '{char.name}' already exists")

        self._characters_store.characters[char.name] = char

        self._log(f"add '{char.name}'")

        return char


    def remove_character(self, name):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)

        del self._characters_store.characters[name]

        self._log(f"remove '{name}'")

        return char


    def modify_property(self, name, prop, amount):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        actual_value = getattr(char, prop) + amount
        setattr(char, prop, actual_value)

        self._report_change_callback(
            'character_manager_modify_property',
            {
                'name': name,
                'prop': prop,
                'amount': amount,
                'actual_value': actual_value
            }
        )

        self._log(f"modify '{name}'.'{prop}' + '{amount}' = '{actual_value}'")

        return actual_value


    def modify_property_once(self, name, prop, amount, key):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        if key not in self._characters_store.once_keys:
            self._characters_store.once_keys[key] = []

        if prop in self._characters_store.once_keys[key]:
            self._log(f"already modified '{name}'.'{prop}' with '{key}'")
            return getattr(char, prop)

        actual_value = getattr(char, prop) + amount
        setattr(char, prop, actual_value)
        self._characters_store.once_keys[key].append(prop)

        self._report_change_callback(
            'character_manager_modify_property_once',
            {
                'name': name,
                'prop': prop,
                'amount': amount,
                'actual_value': actual_value
            }
        )

        self._log(f"modify with '{key}' '{name}'.'{prop}' + '{amount}' = '{actual_value}'")

        return actual_value


    def set_property(self, name, prop, value):
        char = self._characters_store.characters.get(name)

        self._char_exists_or_throw(char, name)
        self._char_prop_exists_or_throw(char, prop)

        setattr(char, prop, value)

        self._report_change_callback(
            'character_manager_set_property',
            {
                'name': name,
                'prop': prop,
                'actual_value': value
            }
        )

        self._log(f"set '{name}'.'{prop}' = '{value}'")

        return value


    def get_all_properties(self, name):
        char = self._characters_store.characters.get(name)

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
        self._log_events_manager.write_log_event(line)

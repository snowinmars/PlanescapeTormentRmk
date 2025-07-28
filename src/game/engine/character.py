import logging

devlog = logging.getLogger('log')


class Character:
    def __init__(self, \
                name, \
                maxHealth=20, current_health=20, \
                good=0, law=0, \
                gold=0, \
                lore=0, experience=0, \
                in_party=False, \
                strength=3, dexterity=3, intelligence=3, constitution=3, wisdom=3, charisma=3):
        self.name = name
        self.maxHealth = maxHealth
        self.current_health = current_health
        self.good = good
        self.law = law
        self.gold = gold
        self.lore = lore
        self.experience = experience
        self.in_party = in_party
        self.strength = strength
        self.dexterity = dexterity
        self.intelligence = intelligence
        self.constitution = constitution
        self.wisdom = wisdom
        self.charisma = charisma

    def modify_property(self, prop, amount):
        if not hasattr(self, prop):
            raise Exception(f'No {prop} known for character {self.name}')
        setattr(self, prop, getattr(self, prop) + amount)

    def set_property(self, prop, value):
        if not hasattr(self, prop):
            raise Exception(f'No {prop} known for character {self.name}')
        setattr(self, prop, value)

    def get_all_properties(self):
        return {
            'name': self.name,
            'maxHealth': self.maxHealth,
            'current_health': self.current_health,
            'gold': self.gold,
            'good': self.good,
            'law': self.law,
            'lore': self.lore,
            'experience': self.experience,
            'in_party': self.in_party,
            'strength': self.strength,
            'dexterity': self.dexterity,
            'intelligence': self.intelligence,
            'constitution': self.constitution,
            'wisdom': self.wisdom,
            'charisma': self.charisma
        }

    def property_eq(self, prop, value):
        return hasattr(self, prop) and getattr(self, prop) == value
    def property_gt(self, prop, value):
        return hasattr(self, prop) and getattr(self, prop) > value
    def property_lt(self, prop, value):
        return hasattr(self, prop) and getattr(self, prop) < value

class CharacterManager:
    def __init__(self, event_manager):
        self.characters = {}
        self.once_keys = {}
        self.event_manager = event_manager

    def get_character(self, name):
        if name not in self.characters:
            raise KeyError(f"Character '{name}' not found")
        return self.characters[name]

    def add_character(self, character):
        if not isinstance(character, Character):
            raise TypeError("Only Character instances can be added")
        if character.name in self.characters:
            raise ValueError(f"Character '{character.name}' already exists")
        self.characters[character.name] = character

        line = f'Add character {character.name}'
        devlog.debug(line)
        self.event_manager.write_event(line)

    def remove_character(self, name):
        if name not in self.characters:
            raise KeyError(f"Character '{name}' not found")
        del self.characters[name]

        line = f'Remove character {character.name}'
        devlog.debug(line)
        self.event_manager.write_event(line)

    def modify_property(self, who, prop, amount):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        char.modify_property(prop, amount)

        line = f'{who}: {prop} += {amount}'
        devlog.debug(line)
        self.event_manager.write_event(line)

    def modify_property_once(self, who, prop, amount, key):
        if key not in self.once_keys:
            self.once_keys[key] = []

        if prop in self.once_keys[key]:
            line = f'{who}: {prop} with {key} was already modified, that why change by {amount} is ignored'
            devlog.debug(line)
            self.event_manager.write_event(line)
            return

        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        char.modify_property(prop, amount)
        self.once_keys[key].append(prop)

        line = f'{who}: {prop} with {key} is modified once with delta {amount}, further changes with this key will be ignored'
        devlog.debug(line)
        self.event_manager.write_event(line)

    def set_property(self, who, prop, value):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        char.set_property(prop, value)

        line = f'{who}: {prop} = {value}'
        devlog.debug(line)
        self.event_manager.write_event(line)

    def get_all_properties(self, who):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        return char.get_all_properties()

    def property_eq(self, who, prop, value):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        return char.property_eq(prop, value)
    def property_gt(self, who, prop, value):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        return char.property_gt(prop, value)
    def property_lt(self, who, prop, value):
        char = self.characters.get(who)
        if char is None:
            raise KeyError(f"Character '{who}' not found")
        return char.property_lt(prop, value)
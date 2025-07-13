class Character:
    def __init__(self, \
                name, \
                maxHealth=20, current_health=20, \
                good=0, law=0, \
                gold=0, \
                lore=0, experience=0, \
                strength=3, dexterity=3, intelligence=3, constitution=3, wisdom=3, charisma=3):
        self.name = name
        self.maxHealth = maxHealth
        self.current_health = current_health
        self.good = good
        self.law = law
        self.gold = gold
        self.lore = lore
        self.experience = experience
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
    def __init__(self):
        self.characters = {}

    def add_character(self, character):
        if not isinstance(character, Character):
            raise TypeError("Only Character instances can be added")
        if character.name in self.characters:
            raise ValueError(f"Character '{character.name}' already exists")
        self.characters[character.name] = character

    def remove_character(self, name):
        if name not in self.characters:
            raise KeyError(f"Character '{name}' not found")
        del self.characters[name]

    def modify_property(self, char_name, prop, amount):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        char.modify_property(prop, amount)

    def set_property(self, char_name, prop, value):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        char.set_property(prop, value)

    def get_all_properties(self, char_name):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        return char.get_all_properties()

    def property_eq(self, char_name, prop, value):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        return char.property_eq(prop, value)
    def property_gt(self, char_name, prop, value):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        return char.property_gt(prop, value)
    def property_lt(self, char_name, prop, value):
        char = self.characters.get(char_name)
        if char is None:
            raise KeyError(f"Character '{char_name}' not found")
        return char.property_lt(prop, value)
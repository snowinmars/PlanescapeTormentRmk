class Character:
    def __init__(self, \
                name, \
                max_health, current_health, \
                good, law, \
                lore, experience, \
                strength, dexterity, intelligence, constitution, wisdom, charisma,
                looks_like):
        self.name = name
        self.max_health = max_health
        self.current_health = current_health
        self.good = good
        self.law = law
        self.lore = lore
        self.experience = experience
        self.strength = strength
        self.dexterity = dexterity
        self.intelligence = intelligence
        self.constitution = constitution
        self.wisdom = wisdom
        self.charisma = charisma
        self.looks_like = looks_like


    def get_all_properties(self):
        return {
            'name': self.name,
            'max_health': self.max_health,
            'current_health': self.current_health,
            'good': self.good,
            'law': self.law,
            'lore': self.lore,
            'experience': self.experience,
            'strength': self.strength,
            'dexterity': self.dexterity,
            'intelligence': self.intelligence,
            'constitution': self.constitution,
            'wisdom': self.wisdom,
            'charisma': self.charisma,
            'looks_like': self.looks_like
        }



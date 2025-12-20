import json


class Character:
    def __init__(self, \
                name, current_class, race, sex, \
                max_health, current_health, ac, \
                good, law, \
                lore, experience, \
                strength, dexterity, intelligence, constitution, wisdom, charisma,
                looks_like):
        self.name = name
        self.current_class = current_class
        self.race = race
        self.sex = sex
        self.max_health = max_health
        self.current_health = current_health
        self.ac = ac
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
        return self.__getstate__()


    def __getstate__(self):
        return {
            'name': self.name,
            'current_class': self.current_class,
            'race': self.race,
            'sex': self.sex,
            'max_health': self.max_health,
            'current_health': self.current_health,
            'ac': self.ac,
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


    def __setstate__(self, state):
        self.name = state['name']
        self.current_class = state['current_class']
        self.race = state['race']
        self.sex = state['sex']
        self.max_health = state['max_health']
        self.current_health = state['current_health']
        self.ac = state['ac']
        self.good = state['good']
        self.law = state['law']
        self.lore = state['lore']
        self.experience = state['experience']
        self.strength = state['strength']
        self.dexterity = state['dexterity']
        self.intelligence = state['intelligence']
        self.constitution = state['constitution']
        self.wisdom = state['wisdom']
        self.charisma = state['charisma']
        self.looks_like = state['looks_like']


    def toJson(self):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        obj.__setstate__(data)
        return obj

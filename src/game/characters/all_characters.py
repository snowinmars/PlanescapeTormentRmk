from engine.character import (Character)

def build_all_characters(gcm):
    protagonist = Character(
        name='protagonist',
        maxHealth=20, current_health=20, \
        good=0, law=0, \
        gold=0, \
        lore=0, experience=0, \
        strength=9, dexterity=9, intelligence=9, constitution=9, wisdom=9, charisma=9
    )

    gcm.add_character(protagonist)
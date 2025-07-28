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
    morte = Character(
        name='morte',
        maxHealth=20, current_health=20, \
        good=60, law=-60, \
        gold=0, \
        lore=0, experience=2000, \
        strength=12, dexterity=16, intelligence=13, constitution=16, wisdom=9, charisma=6
    )

    gcm.add_character(protagonist)
    gcm.add_character(morte)
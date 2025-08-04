from game.engine.character import (Character)

def build_all_characters(gcm):
    protagonist = Character(
        name='protagonist',
        max_health=20, current_health=20, \
        good=0, law=0, \
        lore=0, experience=0, \
        strength=9, dexterity=9, intelligence=9, constitution=9, wisdom=9, charisma=9,
        looks_like=''
    )
    morte = Character(
        name='morte',
        max_health=20, current_health=20, \
        good=60, law=-60, \
        lore=0, experience=2000, \
        strength=12, dexterity=16, intelligence=13, constitution=16, wisdom=9, charisma=6,
        looks_like=''
    )
    annah = Character(
        name='annah',
        max_health=38, current_health=38, \
        good=0, law=-60, \
        lore=0, experience=0, \
        strength=14, dexterity=18, intelligence=12, constitution=16, wisdom=10, charisma=13,
        looks_like=''
    )
    ignus = Character(
        name='ignus',
        max_health=28, current_health=42, \
        good=0, law=-60, \
        lore=0, experience=0, \
        strength=13, dexterity=16, intelligence=19, constitution=20, wisdom=8, charisma=3,
        looks_like=''
    )
    grace = Character(
        name='grace',
        max_health=42, current_health=42, \
        good=0, law=60, \
        lore=0, experience=0, \
        strength=13, dexterity=16, intelligence=16, constitution=16, wisdom=16, charisma=19,
        looks_like=''
    )
    dakkon = Character(
        name='dakkon',
        max_health=33, current_health=33, \
        good=0, law=60, \
        lore=0, experience=0, \
        strength=17, dexterity=16, intelligence=13, constitution=16, wisdom=13, charisma=13,
        looks_like=''
    )
    nordom = Character(
        name='nordom',
        max_health=60, current_health=60, \
        good=0, law=60, \
        lore=0, experience=0, \
        strength=17, dexterity=16, intelligence=16, constitution=16, wisdom=8, charisma=8,
        looks_like=''
    )
    vhail = Character(
        name='vhail',
        max_health=60, current_health=60, \
        good=0, law=60, \
        lore=0, experience=0, \
        strength=18, dexterity=13, intelligence=10, constitution=18, wisdom=10, charisma=10,
        looks_like=''
    ) # 18/51

    gcm.add_character(protagonist)
    gcm.add_character(morte)
    gcm.add_character(annah)
    gcm.add_character(ignus)
    gcm.add_character(grace)
    gcm.add_character(dakkon)
    gcm.add_character(nordom)
    gcm.add_character(vhail)

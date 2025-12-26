from game.engine.characters.character import (Character)

def build_all_characters(gcm):
    protagonist = Character(
        name='protagonist_character_name', # The Nameless One
        current_class='protagonist_character_current_class', # Fighter
        race='protagonist_character_race', # Human
        sex='protagonist_character_sex', # Male
        max_health=20, current_health=20, ac=10,
        good=0, law=0,
        lore=0, experience=0,
        strength=9, dexterity=9, intelligence=9, constitution=9, wisdom=9, charisma=9,
        looks_like=''
    )
    morte = Character(
        name='morte_character_name', # 'Morte',
        current_class='morte_character_current_class', # 'Fighter',
        race='morte_character_race', # 'Human. Once',
        sex='morte_character_sex', # 'Male',
        max_health=20, current_health=20, ac=4,
        good=60, law=-60,
        lore=0, experience=2000,
        strength=12, dexterity=16, intelligence=13, constitution=16, wisdom=9, charisma=6,
        looks_like=''
    )
    annah = Character(
        name='annah_character_name', # 'Annah',
        current_class='annah_character_current_class', # 'Fighter/Thief',
        race='annah_character_race', # 'Tieffing',
        sex='annah_character_sex', # 'Female',
        max_health=38, current_health=38, ac=4,
        good=0, law=-60,
        lore=0, experience=0,
        strength=14, dexterity=18, intelligence=12, constitution=16, wisdom=10, charisma=13,
        looks_like=''
    )
    ignus = Character(
        name='ignus_character_name', # 'Ignus',
        current_class='ignus_character_current_class', # 'Mage',
        race='ignus_character_race', # 'Human',
        sex='ignus_character_sex', # 'Male',
        max_health=28, current_health=42, ac=5,
        good=0, law=-60,
        lore=0, experience=0,
        strength=13, dexterity=16, intelligence=19, constitution=20, wisdom=8, charisma=3,
        looks_like=''
    )
    grace = Character(
        name='grace_character_name', # 'Fall-From-Grace',
        current_class='grace_character_current_class', # 'Cleric',
        race='grace_character_race', # 'Succubus',
        sex='grace_character_sex', # 'Female',
        max_health=42, current_health=42, ac=2,
        good=0, law=60,
        lore=0, experience=0,
        strength=13, dexterity=16, intelligence=16, constitution=16, wisdom=16, charisma=19,
        looks_like=''
    )
    dakkon = Character(
        name='dakkon_character_name', # 'Dak’kon',
        current_class='dakkon_character_current_class', # 'Fighter/Mage',
        race='dakkon_character_race', # 'Githzerai',
        sex='dakkon_character_sex', # 'Male',
        max_health=33, current_health=33, ac=6,
        good=0, law=60,
        lore=0, experience=0,
        strength=17, dexterity=16, intelligence=13, constitution=16, wisdom=13, charisma=13,
        looks_like=''
    )
    nordom = Character(
        name='nordom_character_name', # 'Nordom',
        current_class='nordom_character_current_class', # 'Fighter',
        race='nordom_character_race', # 'Modron',
        sex='nordom_character_sex', # 'Neither',
        max_health=60, current_health=60, ac=4,
        good=0, law=60,
        lore=0, experience=0,
        strength=17, dexterity=16, intelligence=16, constitution=16, wisdom=8, charisma=8,
        looks_like=''
    )
    vhail = Character(
        name='vhail_character_name', # 'Vhail',
        current_class='vhail_character_current_class', # 'Fighter',
        race='vhail_character_race', # 'Restless Spirit',
        sex='vhail_character_sex', # 'Male',
        max_health=60, current_health=60, ac=2,
        good=0, law=60,
        lore=0, experience=0,
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

import json
from enum import (IntFlag)


class InventoryItemCategories(IntFlag):
    miscellaneous               =             1
    amulets_and_necklaces       =             2
    armor_chest_slot            =             4
    belts_and_girdles           =             8
    boots                       =             16
    arrows                      =             32
    bracers_and_gauntiets       =             64
    headgear                    =            128
    keys                        =            256
    potions                     =            512
    rings                       =           1024
    scrolls                     =           2048
    shields                     =           4096
    food                        =           8192
    bullets                     =          16384
    bows                        =          32768
    daggers                     =          65536
    maces                       =         131072
    slings                      =         262144
    small_swords                =         524288
    large_swords                =        1048576
    hammers                     =        2097152
    morning_stars               =        4194304
    flails                      =        8388608
    darts                       =        8388608
    axes                        =       33554432
    quarterstaves               =       67108864
    crossbows                   =      134217728
    hand_to_hand_weapons_0_slot =      134217728
    spears                      =      536870912
    halberds                    =     1073741824
    bolts                       =     2147483648
    cloaks_and_robes            =     4294967296
    gold_pieces                 =     8589934592
    gems                        =    17179869184
    wands                       =    34359738368
    containers                  =    68719476736
    tatoos                      =   137438953472
    lenses                      =   274877906944
    globes_hand_slot            =   549755813888
    eyeballs                    =  1099511627776
    earings                     =  2199023255552
    teeth_weapon_0_slot         =  4398046511104
    bracelets                   =  8796093022208
    ALL                         = 17591900831743 # get from __all
    @classmethod
    def __all(cls): # do not use it at runtime
        result = cls(0)
        for member in cls.__members__.values():
            result |= member
        return result
    def __str__(self):
        if self.value == 0:
            return '0'
        names = []
        for member in self.__class__.__members__.values():
            if member.value != 0 and (self.value & member.value):
                names.append(f'{self.__class__.__name__}.{member.name}')
        return '|'.join(names) if names else str(self.value)

class InventoryItemFlags(IntFlag): # TODO [snow]: after release clean unused flags
    unsellable                 =      1
    two_handed                 =      2
    droppable                  =      4
    displayable                =      8
    cursed                     =     16
    not_copyable               =     32
    magical                    =     64
    left_handed                =    128
    silver                     =    256
    cold_iron                  =    512
    steel                      =   1024
    conversiable               =   2048
    ee_fake_two_handed         =   4096
    ee_forbid_offhand_weapon   =   8192
    usable_in_inventory        =  16384
    ee_adamantine              =  32768
    ee_ex_undispellable        =  65536
    ee_ex_toggle_critical_hits = 131072
    ALL                        = 262143 # get from __all
    @classmethod
    def __all(cls): # do not use it at runtime
        result = cls(0)
        for member in cls.__members__.values():
            result |= member
        return result
    def __str__(self):
        if self.value == 0:
            return '0'
        names = []
        for member in self.__class__.__members__.values():
            if member.value != 0 and (self.value & member.value):
                names.append(f'{self.__class__.__name__}.{member.name}')
        return '|'.join(names) if names else str(self.value)


class InventoryItemUnusableBy(IntFlag): # TODO [snow]: after release clean unused flags
    none            =          0
    chaotic         =          1
    evil            =          2
    good            =          4
    x_neutral       =          8 # lawful neutral, true neutral, chaotic neutral
    lawful          =         16
    neutral_x       =         32 # neutral good, true neutral, neutral evil
    sensate         =         64
    priest          =        128
    godsman         =        256
    anarchist       =        512
    xaositect       =       1024
    fighter         =       2048
    non_aligned     =       4096
    fighter_mage    =       8192
    dustman         =      16384
    mercykiller     =      32768
    indep           =      65536
    fighter_theif   =     131072
    mage            =     262144
    mage_thief      =     524288
    dakkon          =    1048576
    fall_from_grace =    2097152
    thief           =    4194304
    vhailor         =    8388608
    ignus           =   16777216
    morte           =   33554432
    nordom          =   67108864
    human           =  134217728
    annah           =  268435456
    ee_monk         =  536870912
    nameless_one    = 1073741824
    ee_half_orc     = 2147483648
    ALL             = 4294967295 # get from __all
    @classmethod
    def __all(cls): # do not use it at runtime
        result = cls(0)
        for member in cls.__members__.values():
            result |= member
        return result
    def __str__(self):
        if self.value == 0:
            return '0'
        names = []
        for member in self.__class__.__members__.values():
            if member.value != 0 and (self.value & member.value):
                names.append(f'{self.__class__.__name__}.{member.name}')
        return '|'.join(names) if names else str(self.value)


class InventoryItem:
    def __init__(
        self                         ,
        the_id                       ,
        category                     ,
        flags                        ,
        unusable_by                  ,
        minimal_strength       = 0   ,
        minimal_dexterity      = 0   ,
        minimal_constitution   = 0   ,
        minimal_intelligence   = 0   ,
        minimal_wisdom         = 0   ,
        minimal_charisma       = 0   ,
        price                  = 0   ,
        lore_to_identify       = 0   ,
        enchantment            = None,
        weigth                 = 0   ,
        jump_on_use_to         = None,
        owned_count            = 0   ,
        identified             = True,
    ):
        self.the_id               = the_id
        self.category             = category
        self.flags                = flags
        self.unusable_by          = unusable_by
        self.minimal_strength     = minimal_strength
        self.minimal_dexterity    = minimal_dexterity
        self.minimal_constitution = minimal_constitution
        self.minimal_intelligence = minimal_intelligence
        self.minimal_wisdom       = minimal_wisdom
        self.minimal_charisma     = minimal_charisma
        self.price                = price
        self.lore_to_identify     = lore_to_identify
        self.enchantment          = enchantment
        self.weigth               = weigth
        self.jump_on_use_to       = jump_on_use_to
        self.owned_count          = owned_count
        self.identified           = identified

        self.general_name           = f'inventory_item_{the_id}_general_name'
        self.identified_name        = f'inventory_item_{the_id}_identified_name'
        self.general_description    = f'inventory_item_{the_id}_general_description'
        self.identified_description = f'inventory_item_{the_id}_identified_description'
        self.fake_properties        = f'inventory_item_{the_id}_fake_properties' # '1-4 damage\n+3 str'
        self.grid_image             = f'images_inventory_items_{the_id}_grid'
        self.detail_image           = f'images_inventory_items_{the_id}_detail'


    def __getstate__(self):
        return {
            'the_id'               : self.the_id              ,
            'category'             : self.category            ,
            'flags'                : self.flags               ,
            'unusable_by'          : self.unusable_by         ,
            'minimal_strength'     : self.minimal_strength    ,
            'minimal_dexterity'    : self.minimal_dexterity   ,
            'minimal_constitution' : self.minimal_constitution,
            'minimal_intelligence' : self.minimal_intelligence,
            'minimal_wisdom'       : self.minimal_wisdom      ,
            'minimal_charisma'     : self.minimal_charisma    ,
            'price'                : self.price               ,
            'lore_to_identify'     : self.lore_to_identify    ,
            'enchantment'          : self.enchantment         ,
            'weigth'               : self.weigth              ,
            'jump_on_use_to'       : self.jump_on_use_to      ,
            'owned_count'          : self.owned_count         ,
            'identified'           : self.identified
        }


    def __setstate__(self, state):
        self.the_id               = state['the_id']
        self.category             = state['category']
        self.flags                = state['flags']
        self.unusable_by          = state['unusable_by']
        self.minimal_strength     = state['minimal_strength']
        self.minimal_dexterity    = state['minimal_dexterity']
        self.minimal_constitution = state['minimal_constitution']
        self.minimal_intelligence = state['minimal_intelligence']
        self.minimal_wisdom       = state['minimal_wisdom']
        self.minimal_charisma     = state['minimal_charisma']
        self.price                = state['price']
        self.lore_to_identify     = state['lore_to_identify']
        self.enchantment          = state['enchantment']
        self.weigth               = state['weigth']
        self.jump_on_use_to       = state['jump_on_use_to']
        self.owned_count          = state['owned_count']
        self.identified           = state['identified']

        self.general_name           = f'inventory_item_{self.the_id}_general_name'
        self.identified_name        = f'inventory_item_{self.the_id}_identified_name'
        self.general_description    = f'inventory_item_{self.the_id}_general_description'
        self.identified_description = f'inventory_item_{self.the_id}_identified_description'
        self.fake_properties        = f'inventory_item_{self.the_id}_fake_properties' # '1-4 damage\n+3 str'
        self.grid_image             = f'images_inventory_items_{self.the_id}_grid'
        self.detail_image           = f'images_inventory_items_{self.the_id}_detail'


    def toJson(self, indent=None):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        state = json.loads(json_str)
        obj = cls(
            the_id                 = state['the_id']              ,
            category               = state['category']            ,
            flags                  = state['flags']               ,
            unusable_by            = state['unusable_by']         ,
            minimal_strength       = state['minimal_strength']    ,
            minimal_dexterity      = state['minimal_dexterity']   ,
            minimal_constitution   = state['minimal_constitution'],
            minimal_intelligence   = state['minimal_intelligence'],
            minimal_wisdom         = state['minimal_wisdom']      ,
            minimal_charisma       = state['minimal_charisma']    ,
            price                  = state['price']               ,
            lore_to_identify       = state['lore_to_identify']    ,
            enchantment            = state['enchantment']         ,
            weigth                 = state['weigth']              ,
            jump_on_use_to         = state['jump_on_use_to']      ,
            owned_count            = state['owned_count']         ,
            identified            = state['identified']
        )
        return obj

    def name(self):
        if self.identified:
            return self.identified_name
        return self.general_name
    def description(self):
        if self.identified:
            return self.identified_description
        return self.general_description
    def unusable_by_list(self): # unusable by x, y and z
        names = []
        if self.unusable_by == InventoryItemUnusableBy.none:
            return names
        for unusable_by in InventoryItemUnusableBy:
            if unusable_by.value != 0 and (self.unusable_by & unusable_by):
                names.append('InventoryItemUnusableBy.' + unusable_by.name)
        return names

    def unsellable(self):
        return (InventoryItemFlags.unsellable & self.flags) != 0
    def two_handed(self):
        return (InventoryItemFlags.two_handed & self.flags) != 0
    def droppable(self):
        return (InventoryItemFlags.droppable & self.flags) != 0
    def displayable(self):
        return (InventoryItemFlags.displayable & self.flags) != 0
    def cursed(self):
        return (InventoryItemFlags.cursed & self.flags) != 0
    def not_copyable(self):
        return (InventoryItemFlags.not_copyable & self.flags) != 0
    def magical(self):
        return (InventoryItemFlags.magical & self.flags) != 0
    def left_handed(self):
        return (InventoryItemFlags.left_handed & self.flags) != 0
    def silver(self):
        return (InventoryItemFlags.silver & self.flags) != 0
    def cold_iron(self):
        return (InventoryItemFlags.cold_iron & self.flags) != 0
    def steel(self):
        return (InventoryItemFlags.steel & self.flags) != 0
    def conversiable(self):
        return (InventoryItemFlags.conversiable & self.flags) != 0
    def fake_two_handed(self):
        return (InventoryItemFlags.ee_fake_two_handed & self.flags) != 0
    def forbid_offhand_weapon(self):
        return (InventoryItemFlags.ee_forbid_offhand_weapon & self.flags) != 0
    def usable_in_inventory(self):
        return (InventoryItemFlags.usable_in_inventory & self.flags) != 0
    def adamantine(self):
        return (InventoryItemFlags.ee_adamantine & self.flags) != 0
    def undispellable(self):
        return (InventoryItemFlags.ee_ex_undispellable & self.flags) != 0
    def toggle_critical_hits(self):
        return (InventoryItemFlags.ee_ex_toggle_critical_hits & self.flags) != 0

    def unusable_by_chaotic(self):
        return (InventoryItemUnusableBy.chaotic & self.unusable_by) != 0
    def unusable_by_evil(self):
        return (InventoryItemUnusableBy.evil & self.unusable_by) != 0
    def unusable_by_good(self):
        return (InventoryItemUnusableBy.good & self.unusable_by) != 0
    def unusable_by_x_neutral(self):
        return (InventoryItemUnusableBy.x_neutral & self.unusable_by) != 0
    def unusable_by_lawful(self):
        return (InventoryItemUnusableBy.lawful & self.unusable_by) != 0
    def unusable_by_neutral_x(self):
        return (InventoryItemUnusableBy.neutral_x & self.unusable_by) != 0
    def unusable_by_sensate(self):
        return (InventoryItemUnusableBy.sensate & self.unusable_by) != 0
    def unusable_by_priest(self):
        return (InventoryItemUnusableBy.priest & self.unusable_by) != 0
    def unusable_by_godsman(self):
        return (InventoryItemUnusableBy.godsman & self.unusable_by) != 0
    def unusable_by_anarchist(self):
        return (InventoryItemUnusableBy.anarchist & self.unusable_by) != 0
    def unusable_by_xaositect(self):
        return (InventoryItemUnusableBy.xaositect & self.unusable_by) != 0
    def unusable_by_fighter(self):
        return (InventoryItemUnusableBy.fighter & self.unusable_by) != 0
    def unusable_by_non_aligned(self):
        return (InventoryItemUnusableBy.non_aligned & self.unusable_by) != 0
    def unusable_by_fighter_mage(self):
        return (InventoryItemUnusableBy.fighter_mage & self.unusable_by) != 0
    def unusable_by_dustman(self):
        return (InventoryItemUnusableBy.dustman & self.unusable_by) != 0
    def unusable_by_mercykiller(self):
        return (InventoryItemUnusableBy.mercykiller & self.unusable_by) != 0
    def unusable_by_indep(self):
        return (InventoryItemUnusableBy.indep & self.unusable_by) != 0
    def unusable_by_fighter_theif(self):
        return (InventoryItemUnusableBy.fighter_theif & self.unusable_by) != 0
    def unusable_by_mage(self):
        return (InventoryItemUnusableBy.mage & self.unusable_by) != 0
    def unusable_by_mage_thief(self):
        return (InventoryItemUnusableBy.mage_thief & self.unusable_by) != 0
    def unusable_by_dakkon(self):
        return (InventoryItemUnusableBy.dakkon & self.unusable_by) != 0
    def unusable_by_fall_from_grace(self):
        return (InventoryItemUnusableBy.fall_from_grace & self.unusable_by) != 0
    def unusable_by_thief(self):
        return (InventoryItemUnusableBy.thief & self.unusable_by) != 0
    def unusable_by_vhailor(self):
        return (InventoryItemUnusableBy.vhailor & self.unusable_by) != 0
    def unusable_by_ignus(self):
        return (InventoryItemUnusableBy.ignus & self.unusable_by) != 0
    def unusable_by_morte(self):
        return (InventoryItemUnusableBy.morte & self.unusable_by) != 0
    def unusable_by_nordom(self):
        return (InventoryItemUnusableBy.nordom & self.unusable_by) != 0
    def unusable_by_human(self):
        return (InventoryItemUnusableBy.human & self.unusable_by) != 0
    def unusable_by_annah(self):
        return (InventoryItemUnusableBy.annah & self.unusable_by) != 0
    def unusable_by_monk(self):
        return (InventoryItemUnusableBy.ee_monk & self.unusable_by) != 0
    def unusable_by_nameless_one(self):
        return (InventoryItemUnusableBy.nameless_one & self.unusable_by) != 0
    def unusable_by_half_orc(self):
        return (InventoryItemUnusableBy.ee_half_orc & self.unusable_by) != 0

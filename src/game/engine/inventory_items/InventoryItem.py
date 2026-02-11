import json
from enum import (IntFlag)


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


class InventoryItemUnusableBy(IntFlag): # TODO [snow]: after release clean unused flags
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


class InventoryItem:
    def __init__(
        self                         ,
        the_id                       ,
        category                     ,
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
        flags                  = None,
        unusable_by            = None
    ):
        self.the_id               = the_id
        self.category             = category
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

        self.flags       = InventoryItemFlags(0)      if flags       is None else flags
        self.unusable_by = InventoryItemUnusableBy(0) if unusable_by is None else unusable_by

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
            'flags'                : self.flags               ,
            'unusable_by'          : self.unusable_by
        }


    def __setstate__(self, state):
        self.the_id               = state['the_id']
        self.category             = state['category']
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
        self.flags                = state['flags']
        self.unusable_by          = state['unusable_by']


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
            flags                  = state['flags']               ,
            unusable_by            = state['unusable_by']         ,
        )
        return obj


    def unsellable(self):
        return InventoryItemFlags.unsellable in self.flags
    def two_handed(self):
        return InventoryItemFlags.two_handed in self.flags
    def droppable(self):
        return InventoryItemFlags.droppable in self.flags
    def displayable(self):
        return InventoryItemFlags.displayable in self.flags
    def cursed(self):
        return InventoryItemFlags.cursed in self.flags
    def not_copyable(self):
        return InventoryItemFlags.not_copyable in self.flags
    def magical(self):
        return InventoryItemFlags.magical in self.flags
    def left_handed(self):
        return InventoryItemFlags.left_handed in self.flags
    def silver(self):
        return InventoryItemFlags.silver in self.flags
    def cold_iron(self):
        return InventoryItemFlags.cold_iron in self.flags
    def steel(self):
        return InventoryItemFlags.steel in self.flags
    def conversiable(self):
        return InventoryItemFlags.conversiable in self.flags
    def fake_two_handed(self):
        return InventoryItemFlags.ee_fake_two_handed in self.flags
    def forbid_offhand_weapon(self):
        return InventoryItemFlags.ee_forbid_offhand_weapon in self.flags
    def usable_in_inventory(self):
        return InventoryItemFlags.usable_in_inventory in self.flags
    def adamantine(self):
        return InventoryItemFlags.ee_adamantine in self.flags
    def undispellable(self):
        return InventoryItemFlags.ee_ex_undispellable in self.flags
    def toggle_critical_hits(self):
        return InventoryItemFlags.ee_ex_toggle_critical_hits in self.flags

    def unusable_by_chaotic(self):
        return InventoryItemUnusableBy.chaotic in self.unusable_by
    def unusable_by_evil(self):
        return InventoryItemUnusableBy.evil in self.unusable_by
    def unusable_by_good(self):
        return InventoryItemUnusableBy.good in self.unusable_by
    def unusable_by_x_neutral(self):
        return InventoryItemUnusableBy.x_neutral in self.unusable_by
    def unusable_by_lawful(self):
        return InventoryItemUnusableBy.lawful in self.unusable_by
    def unusable_by_neutral_x(self):
        return InventoryItemUnusableBy.neutral_x in self.unusable_by
    def unusable_by_sensate(self):
        return InventoryItemUnusableBy.sensate in self.unusable_by
    def unusable_by_priest(self):
        return InventoryItemUnusableBy.priest in self.unusable_by
    def unusable_by_godsman(self):
        return InventoryItemUnusableBy.godsman in self.unusable_by
    def unusable_by_anarchist(self):
        return InventoryItemUnusableBy.anarchist in self.unusable_by
    def unusable_by_xaositect(self):
        return InventoryItemUnusableBy.xaositect in self.unusable_by
    def unusable_by_fighter(self):
        return InventoryItemUnusableBy.fighter in self.unusable_by
    def unusable_by_non_aligned(self):
        return InventoryItemUnusableBy.non_aligned in self.unusable_by
    def unusable_by_fighter_mage(self):
        return InventoryItemUnusableBy.fighter_mage in self.unusable_by
    def unusable_by_dustman(self):
        return InventoryItemUnusableBy.dustman in self.unusable_by
    def unusable_by_mercykiller(self):
        return InventoryItemUnusableBy.mercykiller in self.unusable_by
    def unusable_by_indep(self):
        return InventoryItemUnusableBy.indep in self.unusable_by
    def unusable_by_fighter_theif(self):
        return InventoryItemUnusableBy.fighter_theif in self.unusable_by
    def unusable_by_mage(self):
        return InventoryItemUnusableBy.mage in self.unusable_by
    def unusable_by_mage_thief(self):
        return InventoryItemUnusableBy.mage_thief in self.unusable_by
    def unusable_by_dakkon(self):
        return InventoryItemUnusableBy.dakkon in self.unusable_by
    def unusable_by_fall_from_grace(self):
        return InventoryItemUnusableBy.fall_from_grace in self.unusable_by
    def unusable_by_thief(self):
        return InventoryItemUnusableBy.thief in self.unusable_by
    def unusable_by_vhailor(self):
        return InventoryItemUnusableBy.vhailor in self.unusable_by
    def unusable_by_ignus(self):
        return InventoryItemUnusableBy.ignus in self.unusable_by
    def unusable_by_morte(self):
        return InventoryItemUnusableBy.morte in self.unusable_by
    def unusable_by_nordom(self):
        return InventoryItemUnusableBy.nordom in self.unusable_by
    def unusable_by_human(self):
        return InventoryItemUnusableBy.human in self.unusable_by
    def unusable_by_annah(self):
        return InventoryItemUnusableBy.annah in self.unusable_by
    def unusable_by_monk(self):
        return InventoryItemUnusableBy.ee_monk in self.unusable_by
    def unusable_by_nameless_one(self):
        return InventoryItemUnusableBy.nameless_one in self.unusable_by
    def unusable_by_half_orc(self):
        return InventoryItemUnusableBy.ee_half_orc in self.unusable_by

import json
from enum import (IntFlag)


class ItemFlags(IntFlag): # TODO [snow]: after release clean unused flags
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
        self                 ,
        the_id               ,
        name                 ,
        description          , # Lore description
        grid_image           ,
        used_by        = None, # 'Used by Morte only'
        properties     = None, # '1-4 damage\n+3 str'
        detail_image   = None,
        jump_on_use_to = None,
        owned_count    = 0   ,
        flags          = None,
        unusable_by    = None
    ):
        self.the_id         = the_id
        self.name           = name
        self.description    = description
        self.used_by        = used_by
        self.properties     = properties
        self.grid_image     = grid_image
        self.detail_image   = detail_image or grid_image
        self.jump_on_use_to = jump_on_use_to
        self.owned_count    = owned_count
        self.flags          = ItemFlags(0)               if flags       is None else flags
        self.unusable_by    = InventoryItemUnusableBy(0) if unusable_by is None else unusable_by


    def __getstate__(self):
        return {
            'the_id'        : self.the_id        ,
            'name'          : self.name          ,
            'description'   : self.description   ,
            'used_by'       : self.used_by       ,
            'properties'    : self.properties    ,
            'grid_image'    : self.grid_image    ,
            'detail_image'  : self.detail_image  ,
            'jump_on_use_to': self.jump_on_use_to,
            'owned_count'   : self.owned_count   ,
            'flags'         : self.flags         ,
            'unusable_by'   : self.unusable_by
        }


    def __setstate__(self, state):
        self.the_id         = state['the_id']
        self.name           = state['name']
        self.description    = state['description']
        self.used_by        = state['used_by']
        self.properties     = state['properties']
        self.grid_image     = state['grid_image']
        self.detail_image   = state['detail_image']
        self.jump_on_use_to = state['jump_on_use_to']
        self.owned_count    = state['owned_count']
        self.flags          = state['flags']
        self.unusable_by    = state['unusable_by']


    def toJson(self, indent=None):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls(
            the_id         = data['the_id']        ,
            name           = data['name']          ,
            description    = data['description']   ,
            grid_image     = data['grid_image']    ,
            used_by        = data['used_by']       ,
            properties     = data['properties']    ,
            detail_image   = data['detail_image']  ,
            jump_on_use_to = data['jump_on_use_to'],
            owned_count    = data['owned_count']   ,
            flags          = data['flags']         ,
            unusable_by    = data['unusable_by']
        )
        return obj

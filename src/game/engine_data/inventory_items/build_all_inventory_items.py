from game.engine.inventory_items.InventoryItem import (
    InventoryItem,
    InventoryItemCategories,
    InventoryItemFlags,
    InventoryItemUnusableBy
)


def build_all_inventory_items(inventory_items_manager):
    default_flags       = InventoryItemFlags.droppable   | \
                          InventoryItemFlags.displayable | \
                          InventoryItemFlags.not_copyable

    all_party_npc_flags = InventoryItemUnusableBy.dakkon          | \
                          InventoryItemUnusableBy.fall_from_grace | \
                          InventoryItemUnusableBy.vhailor         | \
                          InventoryItemUnusableBy.ignus           | \
                          InventoryItemUnusableBy.morte           | \
                          InventoryItemUnusableBy.nordom          | \
                          InventoryItemUnusableBy.annah

    brests_flags        = InventoryItemUnusableBy.priest          | \
                          InventoryItemUnusableBy.fighter         | \
                          InventoryItemUnusableBy.fighter_theif   | \
                          InventoryItemUnusableBy.fall_from_grace | \
                          InventoryItemUnusableBy.thief           | \
                          InventoryItemUnusableBy.vhailor         | \
                          InventoryItemUnusableBy.morte           | \
                          InventoryItemUnusableBy.nordom          | \
                          InventoryItemUnusableBy.annah

    return inventory_items_manager \
        .register(InventoryItem(the_id='bandage' ,
                                category=InventoryItemCategories.miscellaneous,
                                price=5,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='bonechrm',
                                category=InventoryItemCategories.miscellaneous,
                                price=333,
                                flags=default_flags | InventoryItemFlags.magical,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='breast1' ,
                                category=InventoryItemCategories.scrolls,
                                price=150,
                                weigth=5,
                                flags=InventoryItemFlags.droppable | InventoryItemFlags.displayable | InventoryItemFlags.magical,
                                unusable_by=brests_flags)) \
        .register(InventoryItem(the_id='breast2' ,
                                category=InventoryItemCategories.scrolls,
                                price=150,
                                weigth=5,
                                flags=InventoryItemFlags.droppable | InventoryItemFlags.displayable | InventoryItemFlags.magical,
                                unusable_by=brests_flags)) \
        .register(InventoryItem(the_id='breast3' ,
                                category=InventoryItemCategories.scrolls,
                                price=150,
                                weigth=5,
                                flags=InventoryItemFlags.droppable | InventoryItemFlags.displayable | InventoryItemFlags.magical,
                                unusable_by=brests_flags)) \
        .register(InventoryItem(the_id='breast4' ,
                                category=InventoryItemCategories.scrolls,
                                price=150,
                                weigth=5,
                                flags=InventoryItemFlags.droppable | InventoryItemFlags.displayable | InventoryItemFlags.magical,
                                unusable_by=brests_flags)) \
        .register(InventoryItem(the_id='clotchrm',
                                category=InventoryItemCategories.miscellaneous,
                                price=50,
                                flags=default_flags | InventoryItemFlags.magical | InventoryItemFlags.usable_in_inventory,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='copearc' ,
                                category=InventoryItemCategories.miscellaneous,
                                price=50,
                                flags=default_flags | InventoryItemFlags.conversiable,
                                unusable_by=all_party_npc_flags,
                                jump_on_use_to='speak_copearc')) \
        .register(InventoryItem(the_id='copearo' ,
                                category=InventoryItemCategories.earings,
                                price=200,
                                flags=default_flags, # why not unusable_by=all_party_npc_flags ?
                                unusable_by=InventoryItemUnusableBy.dakkon | InventoryItemUnusableBy.vhailor | InventoryItemUnusableBy.ignus | InventoryItemUnusableBy.morte | InventoryItemUnusableBy.nordom)) \
        .register(InventoryItem(the_id='cube'    ,
                                category=InventoryItemCategories.miscellaneous,
                                price=1000,
                                weigth=1,
                                flags=default_flags | InventoryItemFlags.unsellable | InventoryItemFlags.conversiable,
                                unusable_by=all_party_npc_flags,
                                jump_on_use_to='speak_cube')) \
        .register(InventoryItem(the_id='decant'  ,
                                category=InventoryItemCategories.miscellaneous,
                                price=30,
                                lore_to_identify=15,
                                weigth=2,
                                flags=default_flags | InventoryItemFlags.magical | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='doornote',
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='dremind' ,
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='drequest',
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='dsupring',
                                category=InventoryItemCategories.rings,
                                price=5000,
                                flags=default_flags | InventoryItemFlags.magical,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.ee_half_orc)) \
        .register(InventoryItem(the_id='dustrobe',
                                category=InventoryItemCategories.armor_chest_slot,
                                price=1,
                                weigth=5,
                                flags=default_flags,
                                unusable_by=all_party_npc_flags)) \
        .register(InventoryItem(the_id='dwedring',
                                category=InventoryItemCategories.rings,
                                price=1000,
                                lore_to_identify=25,
                                flags=default_flags | InventoryItemFlags.magical,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.ee_half_orc)) \
        .register(InventoryItem(the_id='embalm'  ,
                                category=InventoryItemCategories.miscellaneous,
                                price=10,
                                weigth=1,
                                flags=default_flags | InventoryItemFlags.usable_in_inventory,
                                unusable_by=InventoryItemUnusableBy.dakkon | InventoryItemUnusableBy.fall_from_grace | InventoryItemUnusableBy.vhailor | InventoryItemUnusableBy.ignus | InventoryItemUnusableBy.nordom | InventoryItemUnusableBy.annah)) \
        .register(InventoryItem(the_id='fingbone',
                                category=InventoryItemCategories.miscellaneous,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='gsknife' ,
                                category=InventoryItemCategories.daggers,
                                price=10,
                                enchantment=1,
                                flags=default_flags | InventoryItemFlags.steel,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.priest)) \
        .register(InventoryItem(the_id='junk'    ,
                                category=InventoryItemCategories.miscellaneous,
                                weigth=1,
                                flags=default_flags | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='keyem'   ,
                                category=InventoryItemCategories.miscellaneous,
                                flags=default_flags | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='keymo'   ,
                                category=InventoryItemCategories.miscellaneous,
                                flags=default_flags | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='keymo2'  ,
                                category=InventoryItemCategories.miscellaneous,
                                flags=default_flags | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='keypr'   ,
                                category=InventoryItemCategories.miscellaneous,
                                flags=default_flags | InventoryItemFlags.unsellable,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='logpage' ,
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='n1201'   ,
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags | InventoryItemFlags.conversiable,
                                unusable_by=all_party_npc_flags,
                                jump_on_use_to='speak_n1201')) \
        .register(InventoryItem(the_id='needle'  ,
                                category=InventoryItemCategories.miscellaneous,
                                price=10,
                                flags=default_flags | InventoryItemFlags.usable_in_inventory,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='prybar'  ,
                                category=InventoryItemCategories.maces,
                                price=2,
                                weigth=3,
                                flags=default_flags | InventoryItemFlags.unsellable | InventoryItemFlags.cold_iron | InventoryItemFlags.steel,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.priest | InventoryItemUnusableBy.mage)) \
        .register(InventoryItem(the_id='quill'   ,
                                category=InventoryItemCategories.miscellaneous,
                                minimal_wisdom=12,
                                price=5,
                                lore_to_identify=10,
                                flags=default_flags | InventoryItemFlags.magical | InventoryItemFlags.usable_in_inventory | InventoryItemFlags.conversiable, # conversiable is not in sources, but I need it
                                unusable_by=InventoryItemUnusableBy.priest | InventoryItemUnusableBy.fighter | InventoryItemUnusableBy.fighter_theif | InventoryItemUnusableBy.fall_from_grace | InventoryItemUnusableBy.thief | InventoryItemUnusableBy.vhailor | InventoryItemUnusableBy.morte | InventoryItemUnusableBy.nordom | InventoryItemUnusableBy.annah,
                                jump_on_use_to='speak_quill')) \
        .register(InventoryItem(the_id='rags'    ,
                                category=InventoryItemCategories.keys,
                                weigth=1,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='scalpel' ,
                                category=InventoryItemCategories.daggers,
                                price=3,
                                flags=default_flags | InventoryItemFlags.unsellable | InventoryItemFlags.steel,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.priest)) \
        .register(InventoryItem(the_id='spike'   ,
                                category=InventoryItemCategories.daggers,
                                weigth=2,
                                flags=default_flags | InventoryItemFlags.cold_iron | InventoryItemFlags.steel,
                                unusable_by=all_party_npc_flags | InventoryItemUnusableBy.priest)) \
        .register(InventoryItem(the_id='strap'   ,
                                category=InventoryItemCategories.miscellaneous,
                                weigth=1,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='tasklist',
                                category=InventoryItemCategories.scrolls,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='tearring',
                                category=InventoryItemCategories.earings,
                                price=150,
                                lore_to_identify=90,
                                flags=default_flags | InventoryItemFlags.droppable | InventoryItemFlags.usable_in_inventory,
                                unusable_by=InventoryItemUnusableBy.dakkon | InventoryItemUnusableBy.vhailor | InventoryItemUnusableBy.ignus | InventoryItemUnusableBy.morte | InventoryItemUnusableBy.nordom)) \
        .register(InventoryItem(the_id='tomeba'  ,
                                category=InventoryItemCategories.miscellaneous,
                                price=150,
                                weigth=5,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none)) \
        .register(InventoryItem(the_id='xacheart',
                                category=InventoryItemCategories.miscellaneous,
                                lore_to_identify=50,
                                weigth=10,
                                flags=default_flags | InventoryItemFlags.droppable | InventoryItemFlags.magical | InventoryItemFlags.usable_in_inventory,
                                unusable_by=InventoryItemUnusableBy.priest | InventoryItemUnusableBy.mage | InventoryItemUnusableBy.mage_thief | InventoryItemUnusableBy.thief)) \
        .register(InventoryItem(the_id='xacliver',
                                category=InventoryItemCategories.miscellaneous,
                                weigth=3,
                                flags=default_flags,
                                unusable_by=InventoryItemUnusableBy.none))

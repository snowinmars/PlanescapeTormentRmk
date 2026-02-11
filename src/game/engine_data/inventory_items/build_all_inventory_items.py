from game.engine.inventory_items.InventoryItem import (InventoryItem)


def build_all_inventory_items(inventory_items_manager):
    return inventory_items_manager \
        .register(InventoryItem(the_id='keypr'   , category='')) \
        .register(InventoryItem(the_id='prybar'  , category='')) \
        .register(InventoryItem(the_id='tomeba'  , category='')) \
        .register(InventoryItem(the_id='copearc' , category='',
                                jump_on_use_to='speak_copearc')) \
        .register(InventoryItem(the_id='copearo' , category='')) \
        .register(InventoryItem(the_id='scalpel' , category='')) \
        .register(InventoryItem(the_id='needle'  , category='')) \
        .register(InventoryItem(the_id='n1201'   , category='',
                                jump_on_use_to='speak_n1201')) \
        .register(InventoryItem(the_id='logpage' , category='')) \
        .register(InventoryItem(the_id='bandage' , category='')) \
        .register(InventoryItem(the_id='embalm'  , category='')) \
        .register(InventoryItem(the_id='keyem'   , category='')) \
        .register(InventoryItem(the_id='tearring', category='')) \
        .register(InventoryItem(the_id='keymo'   , category='')) \
        .register(InventoryItem(the_id='keymo2'  , category='')) \
        .register(InventoryItem(the_id='quill'   , category='',
                                jump_on_use_to='speak_quill')) \
        .register(InventoryItem(the_id='fingbone', category='')) \
        .register(InventoryItem(the_id='dustrobe', category='')) \
        .register(InventoryItem(the_id='dremind' , category='')) \
        .register(InventoryItem(the_id='doornote', category='')) \
        .register(InventoryItem(the_id='drequest', category='')) \
        .register(InventoryItem(the_id='tasklist', category='')) \
        .register(InventoryItem(the_id='bonechrm', category='')) \
        .register(InventoryItem(the_id='breast1' , category='')) \
        .register(InventoryItem(the_id='breast2' , category='')) \
        .register(InventoryItem(the_id='breast3' , category='')) \
        .register(InventoryItem(the_id='breast4' , category='')) \
        .register(InventoryItem(the_id='clotchrm', category='')) \
        .register(InventoryItem(the_id='cube'    , category='')) \
        .register(InventoryItem(the_id='decant'  , category='')) \
        .register(InventoryItem(the_id='junk'    , category='')) \
        .register(InventoryItem(the_id='gsknife' , category='')) \
        .register(InventoryItem(the_id='rags'    , category='')) \
        .register(InventoryItem(the_id='spike'   , category='')) \
        .register(InventoryItem(the_id='strap'   , category='')) \
        .register(InventoryItem(the_id='dsupring', category='')) \
        .register(InventoryItem(the_id='dwedring', category='')) \
        .register(InventoryItem(the_id='xacheart', category='')) \
        .register(InventoryItem(the_id='xacliver', category=''))

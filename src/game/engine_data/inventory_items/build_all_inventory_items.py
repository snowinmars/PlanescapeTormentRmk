from game.engine.inventory_items.InventoryItem import (InventoryItem)


def build_all_inventory_items(inventory_items_manager):
    return inventory_items_manager \
        .register(InventoryItem(
            settings_id='has_intro_key',
            orig_id='keypr.itm',
            name='inventoryitem_has_intro_key_name',
            description='inventoryitem_has_intro_key_description',
            grid_image='images/icons/intro_key.png',
            used_by='inventoryitem_has_intro_key_used_by',
            properties='inventoryitem_has_intro_key_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_prybar',
            orig_id='prybar.itm',
            name='inventoryitem_has_prybar_name',
            description='inventoryitem_has_prybar_description',
            grid_image='images/icons/prybar.png',
            used_by='inventoryitem_has_prybar_used_by',
            properties='inventoryitem_has_prybar_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_tome_ba',
            orig_id='tomeba.itm',
            name='inventoryitem_has_tome_ba_name',
            description='inventoryitem_has_tome_ba_description',
            grid_image='images/icons/tomeba.png',
            used_by='inventoryitem_has_tome_ba_used_by',
            properties='inventoryitem_has_tome_ba_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_copper_earring_closed',
            orig_id='copearc.itm',
            name='inventoryitem_has_copper_earring_closed_name',
            description='inventoryitem_has_copper_earring_closed_description',
            grid_image='images/icons/copearc.png',
            used_by='inventoryitem_has_copper_earring_closed_used_by',
            properties='inventoryitem_has_copper_earring_closed_properties',
            jump_on_use_to='copearc_speak'
        )) \
        .register(InventoryItem(
            settings_id='has_copper_earring_opened',
            orig_id='copearo.itm',
            name='inventoryitem_has_copper_earring_opened_name',
            description='inventoryitem_has_copper_earring_opened_description',
            grid_image='images/icons/copearo.png',
            used_by='inventoryitem_has_copper_earring_opened_used_by',
            properties='inventoryitem_has_copper_earring_opened_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_scalpel',
            orig_id='scalpel.itm',
            name='inventoryitem_has_scalpel_name',
            description='inventoryitem_has_scalpel_description',
            grid_image='images/icons/scalpel.png',
            used_by='inventoryitem_has_scalpel_used_by',
            properties='inventoryitem_has_scalpel_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_needle',
            orig_id='needle.itm',
            name='inventoryitem_has_needle_name',
            description='inventoryitem_has_needle_description',
            grid_image='images/icons/needle.png',
            used_by='inventoryitem_has_needle_used_by',
            properties='inventoryitem_has_needle_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_1201_note',
            orig_id='n1201.itm',
            name='inventoryitem_has_1201_note_name',
            description='inventoryitem_has_1201_note_description',
            grid_image='images/icons/n1201.png',
            used_by='inventoryitem_has_1201_note_used_by',
            properties='inventoryitem_has_1201_note_properties',
            jump_on_use_to='n1201_speak'
        )) \
        .register(InventoryItem(
            settings_id='has_logpage',
            orig_id='logpage.itm',
            name='inventoryitem_has_logpage_name',
            description='inventoryitem_has_logpage_description',
            grid_image='images/icons/logpage.png',
            used_by='inventoryitem_has_logpage_used_by',
            properties='inventoryitem_has_logpage_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_bandages',
            orig_id='bandage.itm',
            name='inventoryitem_has_bandages_name',
            description='inventoryitem_has_bandages_description',
            grid_image='images/icons/bandage.png',
            used_by='inventoryitem_has_bandages_used_by',
            properties='inventoryitem_has_bandages_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_embalm',
            orig_id='embalm.itm',
            name='inventoryitem_has_embalm_name',
            description='inventoryitem_has_embalm_description',
            grid_image='images/icons/embalm.png',
            used_by='inventoryitem_has_embalm_used_by',
            properties='inventoryitem_has_embalm_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_keyem',
            orig_id='keyem.itm',
            name='inventoryitem_has_keyem_name',
            description='inventoryitem_has_keyem_description',
            grid_image='images/icons/keyem.png',
            used_by='inventoryitem_has_keyem_used_by',
            properties='inventoryitem_has_keyem_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_tearring',
            orig_id='tearring.itm',
            name='inventoryitem_has_tearring_name',
            description='inventoryitem_has_tearring_description',
            grid_image='images/icons/tearring.png',
            used_by='inventoryitem_has_tearring_used_by',
            properties='inventoryitem_has_tearring_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_mortuary_key',
            orig_id='keymo2.itm',
            name='inventoryitem_has_mortuary_key_name',
            description='inventoryitem_has_mortuary_key_description',
            grid_image='images/icons/keymo2.png',
            used_by='inventoryitem_has_mortuary_key_used_by',
            properties='inventoryitem_has_mortuary_key_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_dhall_feather',
            orig_id='quill.itm',
            name='inventoryitem_has_dhall_feather_name',
            description='inventoryitem_has_dhall_feather_description',
            grid_image='images/icons/quill.png',
            used_by='inventoryitem_has_dhall_feather_used_by',
            properties='inventoryitem_has_dhall_feather_properties',
            jump_on_use_to='start_dhall_feather'
        )) \
        .register(InventoryItem(
            settings_id='has_finger_bone',
            orig_id='fingbone.itm',
            name='inventoryitem_has_finger_bone_name',
            description='inventoryitem_has_finger_bone_description',
            grid_image='images/icons/fingbone.png',
            used_by='inventoryitem_has_finger_bone_used_by',
            properties='inventoryitem_has_finger_bone_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_dustrobe',
            orig_id='dustrobe.itm',
            name='inventoryitem_has_dustrobe_name',
            description='inventoryitem_has_dustrobe_description',
            grid_image='images/icons/dustrobe.png',
            used_by='inventoryitem_has_dustrobe_used_by',
            properties='inventoryitem_has_dustrobe_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_dremind',
            orig_id='dremind.itm',
            name='inventoryitem_has_dremind_name',
            description='inventoryitem_has_dremind_description',
            grid_image='images/icons/dremind.png',
            used_by='inventoryitem_has_dremind_used_by',
            properties='inventoryitem_has_dremind_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_mortuary_doornote',
            orig_id='doornote.itm',
            name='inventoryitem_has_mortuary_doornote_name',
            description='inventoryitem_has_mortuary_doornote_description',
            grid_image='images/icons/doornote.png',
            used_by='inventoryitem_has_mortuary_doornote_used_by',
            properties='inventoryitem_has_mortuary_doornote_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_dustman_request',
            orig_id='drequest.itm',
            name='inventoryitem_has_dustman_request_name',
            description='inventoryitem_has_dustman_request_description',
            grid_image='images/icons/drequest.png',
            used_by='inventoryitem_has_dustman_request_used_by',
            properties='inventoryitem_has_dustman_request_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_mortuary_task_list',
            orig_id='tasklist.itm',
            name='inventoryitem_has_mortuary_task_list_name',
            description='inventoryitem_has_mortuary_task_list_description',
            grid_image='images/icons/tasklist.png',
            used_by='inventoryitem_has_mortuary_task_list_used_by',
            properties='inventoryitem_has_mortuary_task_list_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_bone_chrm',
            orig_id='bonechrm.itm',
            name='inventoryitem_has_bone_chrm_name',
            description='inventoryitem_has_bone_chrm_description',
            grid_image='images/icons/bonechrm.png',
            used_by='inventoryitem_has_bone_chrm_used_by',
            properties='inventoryitem_has_bone_chrm_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_breast1',
            orig_id='breast1.itm',
            name='inventoryitem_has_breast1_name',
            description='inventoryitem_has_breast1_description',
            grid_image='images/icons/breast1.png',
            used_by='inventoryitem_has_breast1_used_by',
            properties='inventoryitem_has_breast1_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_breast2',
            orig_id='breast2.itm',
            name='inventoryitem_has_breast2_name',
            description='inventoryitem_has_breast2_description',
            grid_image='images/icons/breast2.png',
            used_by='inventoryitem_has_breast2_used_by',
            properties='inventoryitem_has_breast2_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_breast3',
            orig_id='breast3.itm',
            name='inventoryitem_has_breast3_name',
            description='inventoryitem_has_breast3_description',
            grid_image='images/icons/breast3.png',
            used_by='inventoryitem_has_breast3_used_by',
            properties='inventoryitem_has_breast3_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_breast4',
            orig_id='breast4.itm',
            name='inventoryitem_has_breast4_name',
            description='inventoryitem_has_breast4_description',
            grid_image='images/icons/breast4.png',
            used_by='inventoryitem_has_breast4_used_by',
            properties='inventoryitem_has_breast4_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_clotchrm',
            orig_id='clotchrm.itm',
            name='inventoryitem_has_clotchrm_name',
            description='inventoryitem_has_clotchrm_description',
            grid_image='images/icons/clotchrm.png',
            used_by='inventoryitem_has_clotchrm_used_by',
            properties='inventoryitem_has_clotchrm_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_cube',
            orig_id='cube.itm',
            name='inventoryitem_has_cube_name',
            description='inventoryitem_has_cube_description',
            grid_image='images/icons/cube.png',
            used_by='inventoryitem_has_cube_used_by',
            properties='inventoryitem_has_cube_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_decant',
            orig_id='decant.itm',
            name='inventoryitem_has_decant_name',
            description='inventoryitem_has_decant_description',
            grid_image='images/icons/decant.png',
            used_by='inventoryitem_has_decant_used_by',
            properties='inventoryitem_has_decant_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_garbage',
            orig_id='junk.itm',
            name='inventoryitem_has_garbage_name',
            description='inventoryitem_has_garbage_description',
            grid_image='images/icons/junk.png',
            used_by='inventoryitem_has_garbage_used_by',
            properties='inventoryitem_has_garbage_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_gs_knife',
            orig_id='gs_knife.itm',
            name='inventoryitem_has_gs_knife_name',
            description='inventoryitem_has_gs_knife_description',
            grid_image='images/icons/gs_knife.png',
            used_by='inventoryitem_has_gs_knife_used_by',
            properties='inventoryitem_has_gs_knife_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_rags',
            orig_id='rags.itm',
            name='inventoryitem_has_rags_name',
            description='inventoryitem_has_rags_description',
            grid_image='images/icons/rags.png',
            used_by='inventoryitem_has_rags_used_by',
            properties='inventoryitem_has_rags_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_spike',
            orig_id='spike.itm',
            name='inventoryitem_has_spike_name',
            description='inventoryitem_has_spike_description',
            grid_image='images/icons/spike.png',
            used_by='inventoryitem_has_spike_used_by',
            properties='inventoryitem_has_spike_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_strap',
            orig_id='strap.itm',
            name='inventoryitem_has_strap_name',
            description='inventoryitem_has_strap_description',
            grid_image='images/icons/strap.png',
            used_by='inventoryitem_has_strap_used_by',
            properties='inventoryitem_has_strap_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_sup_ring',
            orig_id='dsupring.itm',
            name='inventoryitem_has_sup_ring_name',
            description='inventoryitem_has_sup_ring_description',
            grid_image='images/icons/sup_ring.png',
            used_by='inventoryitem_has_sup_ring_used_by',
            properties='inventoryitem_has_sup_ring_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_wedding_ring',
            orig_id='dwedring.itm',
            name='inventoryitem_has_wedding_ring_name',
            description='inventoryitem_has_wedding_ring_description',
            grid_image='images/icons/wedding_ring.png',
            used_by='inventoryitem_has_wedding_ring_used_by',
            properties='inventoryitem_has_wedding_ring_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_xac_heart',
            orig_id='xacheart.itm',
            name='inventoryitem_has_xac_heart_name',
            description='inventoryitem_has_xac_heart_description',
            grid_image='images/icons/xac_heart.png',
            used_by='inventoryitem_has_xac_heart_used_by',
            properties='inventoryitem_has_xac_heart_properties'
        )) \
        .register(InventoryItem(
            settings_id='has_xac_liver',
            orig_id='xacliver.itm',
            name='inventoryitem_has_xac_liver_name',
            description='inventoryitem_has_xac_liver_description',
            grid_image='images/icons/xac_liver.png',
            used_by='inventoryitem_has_xac_liver_used_by',
            properties='inventoryitem_has_xac_liver_properties'
        ))

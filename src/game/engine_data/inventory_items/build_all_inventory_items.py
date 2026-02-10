from game.engine.inventory_items.InventoryItem import (InventoryItem)


def build_all_inventory_items(inventory_items_manager):
    return inventory_items_manager \
        .register(InventoryItem(
            the_id      = 'keypr'                          ,
            name        = 'inventoryitem_keypr_name'       ,
            description = 'inventoryitem_keypr_description',
            grid_image  = 'images_icons_intro_key'         ,
            used_by     = 'inventoryitem_keypr_used_by'    ,
            properties  = 'inventoryitem_keypr_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'prybar'                          ,
            name        = 'inventoryitem_prybar_name'       ,
            description = 'inventoryitem_prybar_description',
            grid_image  = 'images_icons_prybar'             ,
            used_by     = 'inventoryitem_prybar_used_by'    ,
            properties  = 'inventoryitem_prybar_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'tomeba'                          ,
            name        = 'inventoryitem_tomeba_name'       ,
            description = 'inventoryitem_tomeba_description',
            grid_image  = 'images_icons_tomeba'             ,
            used_by     = 'inventoryitem_tomeba_used_by'    ,
            properties  = 'inventoryitem_tomeba_properties'
        )) \
        .register(InventoryItem(
            the_id         = 'copearc'                          ,
            name           = 'inventoryitem_copearc_name'       ,
            description    = 'inventoryitem_copearc_description',
            grid_image     = 'images_icons_copearc'             ,
            used_by        = 'inventoryitem_copearc_used_by'    ,
            properties     = 'inventoryitem_copearc_properties' ,
            jump_on_use_to = 'speak_copearc'
        )) \
        .register(InventoryItem(
            the_id      = 'copearo'                          ,
            name        = 'inventoryitem_copearo_name'       ,
            description = 'inventoryitem_copearo_description',
            grid_image  = 'images_icons_copearo'             ,
            used_by     = 'inventoryitem_copearo_used_by'    ,
            properties  = 'inventoryitem_copearo_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'scalpel'                          ,
            name        = 'inventoryitem_scalpel_name'       ,
            description = 'inventoryitem_scalpel_description',
            grid_image  = 'images_icons_scalpel'             ,
            used_by     = 'inventoryitem_scalpel_used_by'    ,
            properties  = 'inventoryitem_scalpel_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'needle'                          ,
            name        = 'inventoryitem_needle_name'       ,
            description = 'inventoryitem_needle_description',
            grid_image  = 'images_icons_needle'             ,
            used_by     = 'inventoryitem_needle_used_by'    ,
            properties  = 'inventoryitem_needle_properties'
        )) \
        .register(InventoryItem(
            the_id         = 'n1201'                          ,
            name           = 'inventoryitem_n1201_name'       ,
            description    = 'inventoryitem_n1201_description',
            grid_image     = 'images_icons_n1201'             ,
            used_by        = 'inventoryitem_n1201_used_by'    ,
            properties     = 'inventoryitem_n1201_properties' ,
            jump_on_use_to = 'speak_n1201'
        )) \
        .register(InventoryItem(
            the_id      = 'logpage'                          ,
            name        = 'inventoryitem_logpage_name'       ,
            description = 'inventoryitem_logpage_description',
            grid_image  = 'images_icons_logpage'             ,
            used_by     = 'inventoryitem_logpage_used_by'    ,
            properties  = 'inventoryitem_logpage_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'bandage'                          ,
            name        = 'inventoryitem_bandage_name'       ,
            description = 'inventoryitem_bandage_description',
            grid_image  = 'images_icons_bandage'             ,
            used_by     = 'inventoryitem_bandage_used_by'    ,
            properties  = 'inventoryitem_bandage_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'embalm'                          ,
            name        = 'inventoryitem_embalm_name'       ,
            description = 'inventoryitem_embalm_description',
            grid_image  = 'images_icons_embalm'             ,
            used_by     = 'inventoryitem_embalm_used_by'    ,
            properties  = 'inventoryitem_embalm_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'keyem'                          ,
            name        = 'inventoryitem_keyem_name'       ,
            description = 'inventoryitem_keyem_description',
            grid_image  = 'images_icons_keyem'             ,
            used_by     = 'inventoryitem_keyem_used_by'    ,
            properties  = 'inventoryitem_keyem_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'tearring'                          ,
            name        = 'inventoryitem_tearring_name'       ,
            description = 'inventoryitem_tearring_description',
            grid_image  = 'images_icons_tearring'             ,
            used_by     = 'inventoryitem_tearring_used_by'    ,
            properties  = 'inventoryitem_tearring_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'keymo'                          ,
            name        = 'inventoryitem_keymo_name'       ,
            description = 'inventoryitem_keymo_description',
            grid_image  = 'images_icons_keymo'             ,
            used_by     = 'inventoryitem_keymo_used_by'    ,
            properties  = 'inventoryitem_keymo_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'keymo2'                          ,
            name        = 'inventoryitem_keymo2_name'       ,
            description = 'inventoryitem_keymo2_description',
            grid_image  = 'images_icons_keymo2'             ,
            used_by     = 'inventoryitem_keymo2_used_by'    ,
            properties  = 'inventoryitem_keymo2_properties'
        )) \
        .register(InventoryItem(
            the_id         = 'quill'                          ,
            name           = 'inventoryitem_quill_name'       ,
            description    = 'inventoryitem_quill_description',
            grid_image     = 'images_icons_quill'             ,
            used_by        = 'inventoryitem_quill_used_by'    ,
            properties     = 'inventoryitem_quill_properties' ,
            jump_on_use_to = 'speak_quill'
        )) \
        .register(InventoryItem(
            the_id      = 'fingbone'                          ,
            name        = 'inventoryitem_fingbone_name'       ,
            description = 'inventoryitem_fingbone_description',
            grid_image  = 'images_icons_fingbone'             ,
            used_by     = 'inventoryitem_fingbone_used_by'    ,
            properties  = 'inventoryitem_fingbone_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'dustrobe'                          ,
            name        = 'inventoryitem_dustrobe_name'       ,
            description = 'inventoryitem_dustrobe_description',
            grid_image  = 'images_icons_dustrobe'             ,
            used_by     = 'inventoryitem_dustrobe_used_by'    ,
            properties  = 'inventoryitem_dustrobe_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'dremind'                          ,
            name        = 'inventoryitem_dremind_name'       ,
            description = 'inventoryitem_dremind_description',
            grid_image  = 'images_icons_dremind'             ,
            used_by     = 'inventoryitem_dremind_used_by'    ,
            properties  = 'inventoryitem_dremind_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'doornote'                          ,
            name        = 'inventoryitem_doornote_name'       ,
            description = 'inventoryitem_doornote_description',
            grid_image  = 'images_icons_doornote'             ,
            used_by     = 'inventoryitem_doornote_used_by'    ,
            properties  = 'inventoryitem_doornote_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'drequest'                          ,
            name        = 'inventoryitem_drequest_name'       ,
            description = 'inventoryitem_drequest_description',
            grid_image  = 'images_icons_drequest'             ,
            used_by     = 'inventoryitem_drequest_used_by'    ,
            properties  = 'inventoryitem_drequest_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'tasklist'                          ,
            name        = 'inventoryitem_tasklist_name'       ,
            description = 'inventoryitem_tasklist_description',
            grid_image  = 'images_icons_tasklist'             ,
            used_by     = 'inventoryitem_tasklist_used_by'    ,
            properties  = 'inventoryitem_tasklist_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'bonechrm'                          ,
            name        = 'inventoryitem_bonechrm_name'       ,
            description = 'inventoryitem_bonechrm_description',
            grid_image  = 'images_icons_bonechrm'             ,
            used_by     = 'inventoryitem_bonechrm_used_by'    ,
            properties  = 'inventoryitem_bonechrm_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'breast1'                          ,
            name        = 'inventoryitem_breast1_name'       ,
            description = 'inventoryitem_breast1_description',
            grid_image  = 'images_icons_breast1'             ,
            used_by     = 'inventoryitem_breast1_used_by'    ,
            properties  = 'inventoryitem_breast1_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'breast2'                          ,
            name        = 'inventoryitem_breast2_name'       ,
            description = 'inventoryitem_breast2_description',
            grid_image  = 'images_icons_breast2'             ,
            used_by     = 'inventoryitem_breast2_used_by'    ,
            properties  = 'inventoryitem_breast2_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'breast3'                          ,
            name        = 'inventoryitem_breast3_name'       ,
            description = 'inventoryitem_breast3_description',
            grid_image  = 'images_icons_breast3'             ,
            used_by     = 'inventoryitem_breast3_used_by'    ,
            properties  = 'inventoryitem_breast3_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'breast4'                          ,
            name        = 'inventoryitem_breast4_name'       ,
            description = 'inventoryitem_breast4_description',
            grid_image  = 'images_icons_breast4'             ,
            used_by     = 'inventoryitem_breast4_used_by'    ,
            properties  = 'inventoryitem_breast4_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'clotchrm'                          ,
            name        = 'inventoryitem_clotchrm_name'       ,
            description = 'inventoryitem_clotchrm_description',
            grid_image  = 'images_icons_clotchrm'             ,
            used_by     = 'inventoryitem_clotchrm_used_by'    ,
            properties  = 'inventoryitem_clotchrm_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'cube'                          ,
            name        = 'inventoryitem_cube_name'       ,
            description = 'inventoryitem_cube_description',
            grid_image  = 'images_icons_cube'             ,
            used_by     = 'inventoryitem_cube_used_by'    ,
            properties  = 'inventoryitem_cube_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'decant'                          ,
            name        = 'inventoryitem_decant_name'       ,
            description = 'inventoryitem_decant_description',
            grid_image  = 'images_icons_decant'             ,
            used_by     = 'inventoryitem_decant_used_by'    ,
            properties  = 'inventoryitem_decant_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'junk'                          ,
            name        = 'inventoryitem_junk_name'       ,
            description = 'inventoryitem_junk_description',
            grid_image  = 'images_icons_junk'             ,
            used_by     = 'inventoryitem_junk_used_by'    ,
            properties  = 'inventoryitem_junk_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'gsknife'                          ,
            name        = 'inventoryitem_gsknife_name'       ,
            description = 'inventoryitem_gsknife_description',
            grid_image  = 'images_icons_gs_knife'            ,
            used_by     = 'inventoryitem_gsknife_used_by'    ,
            properties  = 'inventoryitem_gsknife_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'rags'                          ,
            name        = 'inventoryitem_rags_name'       ,
            description = 'inventoryitem_rags_description',
            grid_image  = 'images_icons_rags'             ,
            used_by     = 'inventoryitem_rags_used_by'    ,
            properties  = 'inventoryitem_rags_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'spike'                          ,
            name        = 'inventoryitem_spike_name'       ,
            description = 'inventoryitem_spike_description',
            grid_image  = 'images_icons_spike'             ,
            used_by     = 'inventoryitem_spike_used_by'    ,
            properties  = 'inventoryitem_spike_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'strap'                          ,
            name        = 'inventoryitem_strap_name'       ,
            description = 'inventoryitem_strap_description',
            grid_image  = 'images_icons_strap'             ,
            used_by     = 'inventoryitem_strap_used_by'    ,
            properties  = 'inventoryitem_strap_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'dsupring'                          ,
            name        = 'inventoryitem_dsupring_name'       ,
            description = 'inventoryitem_dsupring_description',
            grid_image  = 'images_icons_sup_ring'             ,
            used_by     = 'inventoryitem_dsupring_used_by'    ,
            properties  = 'inventoryitem_dsupring_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'dwedring'                          ,
            name        = 'inventoryitem_dwedring_name'       ,
            description = 'inventoryitem_dwedring_description',
            grid_image  = 'images_icons_wedding_ring'         ,
            used_by     = 'inventoryitem_dwedring_used_by'    ,
            properties  = 'inventoryitem_dwedring_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'xacheart'                          ,
            name        = 'inventoryitem_xacheart_name'       ,
            description = 'inventoryitem_xacheart_description',
            grid_image  = 'images_icons_xac_heart'            ,
            used_by     = 'inventoryitem_xacheart_used_by'    ,
            properties  = 'inventoryitem_xacheart_properties'
        )) \
        .register(InventoryItem(
            the_id      = 'xacliver'                          ,
            name        = 'inventoryitem_xacliver_name'       ,
            description = 'inventoryitem_xacliver_description',
            grid_image  = 'images_icons_xac_liver'            ,
            used_by     = 'inventoryitem_xacliver_used_by'    ,
            properties  = 'inventoryitem_xacliver_properties'
        ))

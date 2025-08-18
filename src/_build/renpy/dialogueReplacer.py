from dataclasses import dataclass


@dataclass(frozen=True)
class KnownSetting:
    name: str
    type: str


class DialogueReplacer:
    def __init__(self):
        self.known_settings = {}
        self._replacements = {}
        self._reported_about_not_conflict_replacement = []


    def build_replacements(self):
        self.tree()

        for x in name_variations('Morte'):
            self.party_npc(x, 'morte')
        for x in name_variations('Annah'):
            self.party_npc(x, 'annah')
        for x in name_variations('Ignus'):
            self.party_npc(x, 'ignus')
        for x in name_variations('Grace'):
            self.party_npc(x, 'grace')
        for x in name_variations('Dakkon'):
            self.party_npc(x, 'dakkon')
        for x in name_variations('Nordom'):
            self.party_npc(x, 'nordom')
        for x in name_variations('Vhail'):
            self.party_npc(x, 'vhail')

        self.npc('Aelwyn',         'aelwyn')
        self.npc('Asonje',         'asonje')
        self.npc('Bei',            'bei')
        self.npc('Crispy',         'crispy')
        self.npc('Death_of_Names', 'death_of_names')
        self.npc('Deionarra',      'deionarra')
        self.npc('Dhall',          'dhall')
        self.npc('Dust',           'dust')
        self.npc('Dustfem',        'dustfem')
        self.npc('EiVene',         'eivene')
        self.npc('Oinosian',       'oinosian')
        self.npc('Pharod',         'pharod')
        self.npc('Quentin',        'quentin')
        self.npc('Ravel',          'ravel')
        self.npc('Soego',          'soego', 'Global')
        self.npc('Soego',          'soego', 'GLOBAL')
        self.npc('Vaxis',          'vaxis')
        self.npc('Xach',           'xach')

        self.npc('DGIANTSK', 'giantsk')
        self.npc(None, 's1221')
        self.npc(None, 's42')
        self.npc(None, 's748')
        self.npc(None, 's863')
        self.npc(None, 's996')
        self.npc(None, 'zf1072')
        self.npc(None, 'zf1072')
        self.npc(None, 'zf1096')
        self.npc(None, 'zf1096')
        self.npc(None, 'zf114')
        self.npc(None, 'zf114')
        self.npc(None, 'zf1148')
        self.npc(None, 'zf1148')
        self.npc(None, 'zf444')
        self.npc(None, 'zf444')
        self.npc(None, 'zf594')
        self.npc(None, 'zf594')
        self.npc(None, 'zf626')
        self.npc(None, 'zf626')
        self.npc(None, 'zf679')
        self.npc(None, 'zf679')
        self.npc(None, 'zf832')
        self.npc(None, 'zf832')
        self.npc(None, 'zf891')
        self.npc(None, 'zf891')
        self.npc(None, 'zf916')
        self.npc(None, 'zf916')
        self.npc(None, 'zm1041')
        self.npc(None, 'zm1041')
        self.npc(None, 'zm1094')
        self.npc(None, 'zm1094')
        self.npc(None, 'zm1146')
        self.npc(None, 'zm1146')
        self.npc(None, 'zm1201')
        self.npc(None, 'zm1201')
        self.npc(None, 'zm1445')
        self.npc(None, 'zm1445')
        self.npc(None, 'zm1508')
        self.npc(None, 'zm1508')
        self.npc(None, 'zm1664')
        self.npc(None, 'zm1664')
        self.npc(None, 'zm199')
        self.npc(None, 'zm199')
        self.npc(None, 'zm257')
        self.npc(None, 'zm257')
        self.npc(None, 'zm310')
        self.npc(None, 'zm310')
        self.npc(None, 'zm396')
        self.npc(None, 'zm396')
        self.npc(None, 'zm463')
        self.npc(None, 'zm463')
        self.npc(None, 'zm475')
        self.npc(None, 'zm475')
        self.npc(None, 'zm506')
        self.npc(None, 'zm506')
        self.npc(None, 'zm569')
        self.npc(None, 'zm569')
        self.npc(None, 'zm613')
        self.npc(None, 'zm613')
        self.npc(None, 'zm732')
        self.npc(None, 'zm732')
        self.npc(None, 'zm782')
        self.npc(None, 'zm782')
        self.npc(None, 'zm79')
        self.npc(None, 'zm79')
        self.npc(None, 'zm825')
        self.npc(None, 'zm825')
        self.npc(None, 'zm965')
        self.npc(None, 'zm965')
        self.npc(None, 'zm985')
        self.npc(None, 'zm985')

        self.inventory_item('Bandage',  'bandages')
        self.inventory_item('BoneChrm', 'bone_chrm')
        self.inventory_item('Breast1',  'breast1')
        self.inventory_item('Breast2',  'breast2')
        self.inventory_item('Breast3',  'breast3')
        self.inventory_item('Breast4',  'breast4')
        self.inventory_item('Clotchrm', 'clotchrm')
        self.inventory_item('CopEarC',  'copper_earring_closed')
        self.inventory_item('CopEarO',  'copper_earring_opened')
        self.inventory_item('Cube',     'cube')
        self.inventory_item('Decant',   'decant')
        self.inventory_item('doornote', 'mortuary_doornote')
        self.inventory_item('dremind',  'dremind')
        self.inventory_item('DRemind',  'dremind')
        self.inventory_item('drequest', 'dustman_request')
        self.inventory_item('DsupRing', 'sup_ring')
        self.inventory_item('dustrobe', 'dustrobe')
        self.inventory_item('Dwedring', 'wedding_ring')
        self.inventory_item('DwedRing', 'wedding_ring')
        self.inventory_item('Embalm',   'embalm')
        self.inventory_item('fingbone', 'finger_bone')
        self.inventory_item('GSKnife',  'gs_knife')
        self.inventory_item('KeyEm',    'keyem')
        self.inventory_item('KeyMo',    'keymo')
        self.inventory_item('keymo2',   'mortuary_key')
        self.inventory_item('KeyPR',    'intro_key')
        self.inventory_item('KeyPr',    'intro_key') #  ?
        self.inventory_item('Logpage',  'logpage')
        self.inventory_item('N1201',    '1201_note')
        self.inventory_item('Needle',   'needle')
        self.inventory_item('ouill',    'dhall_feather')
        self.inventory_item('Prybar',   'prybar')
        self.inventory_item('Rags',     'rags')
        self.inventory_item('Scalpel',  'scalpel')
        self.inventory_item('Spike',    'spike')
        self.inventory_item('Strap',    'strap')
        self.inventory_item('tasklist', 'mortuary_task_list')
        self.inventory_item('TEarring', 'tearring')
        self.inventory_item('TomeBA',   'tome_ba')
        self.inventory_item('XacHeart', 'xac_heart')
        self.inventory_item('XacLiver', 'xac_liver')
        self.inventory_item(None,       'garbage')

        self.boolean('1200_Cut_Scene_2',              '1200_cut_scene_2')
        self.boolean('1201_Note_Retrieved',           '1201_note_retrieved')
        self.boolean('42_Secret',                     '42_secret')
        self.boolean('506_Thread',                    'has_506_thread')
        self.boolean('Able',                          'able')
        self.boolean('BD_MorteStory',                 'bd_morte_story')
        self.boolean('cd_int_1',                      'cd_int_1', 'LOCALS')
        self.boolean('Chaotic_Morte_1',               'chaotic_morte_1')
        self.boolean('Choke_Memory',                  'choke_memory')
        self.boolean('CW_Sal_Hint',                   'cw_sal_hint')
        self.boolean('Dakkon_Slave',                  'dakkon_slave', 'Global')
        self.boolean('Dakkon_Slave',                  'dakkon_slave')
        self.boolean('Death_of_Names_Dhall',          'pass_death_of_names_dhall')
        self.boolean('Death_of_Names_Quentin',        'pass_death_of_names_quentin')
        self.boolean('Deionarra_Curse',               'deionarra_curse')
        self.boolean('Deionarra_Forgives',            'deionarra_forgives')
        self.boolean('Deionarra_Portal',              'deionarra_portal')
        self.boolean('Deionarra_Raise_Dead',          'deionarra_raise_dead')
        self.boolean('EiVene_Delivery',               'eivene_delivery')
        self.boolean('Escape_Mortuary',               'escape_mortuary')
        self.boolean('Evil_Ingress_Teeth_1',          'evil_ingress_teeth_1')
        self.boolean('Fortress_Ignus_Battle',         'fortress_ignus_battle')
        self.boolean('Fortress_Vhailor_Battle',       'fortress_vhailor_battle')
        self.boolean('Gate_Open',                     'gate_open')
        self.boolean('Good_Ingress_Teeth_1',          'good_ingress_teeth_1')
        self.boolean('Grace_Silver_Mimir',            'grace_silver_mimir')
        self.boolean('Grace_Smell_Mimir',             'grace_smell_mimir')
        self.boolean('Ingress_Teeth_Installed',       'ingress_teeth_installed')
        self.boolean('Journal',                       'journal')
        self.boolean('Jumble_Reekwind',               'jumble_reekwind')
        self.boolean('Know_Acaste',                   'know_acaste')
        self.boolean('Know_Blood_War',                'know_blood_war')
        self.boolean('Know_Chaosmen',                 'know_chaosmen')
        self.boolean('Know_Copper_Earring_Secret',    'know_copper_earring_secret')
        self.boolean('Know_Gith',                     'know_gith')
        self.boolean('Know_Hargrimm',                 'know_hargrimm')
        self.boolean('Know_Lady',                     'know_lady')
        self.boolean('Know_Many',                     'know_many')
        self.boolean('Know_Mechanus',                 'know_mechanus')
        self.boolean('Know_Mimir',                    'know_mimir')
        self.boolean('Know_Ravel',                    'know_ravel')
        self.boolean('Know_Shadow_Player_Connection', 'know_shadow_player_connection')
        self.boolean('Know_Silent_King',              'know_silent_king')
        self.boolean('Know_Stale_Mary',               'know_stale_mary')
        self.boolean('Know_Xixi',                     'know_xixi')
        self.boolean('Lawful_Hargrimm_1',             'lawful_hargrimm_1')
        self.boolean('Lawful_Morte_1',                'lawful_morte_1')
        self.boolean('Lawful_Soego_1',                'lawful_soego_1')
        self.boolean('Lawful_Vaxis_1',                'vaxis_lawful')
        self.boolean('LL_1201',                       'll_1201')
        self.boolean('LR_1201',                       'lr_1201')
        self.boolean('Memory_Morte_Pillar',           'memory_morte_pillar')
        self.boolean('Met_Modrons',                   'met_modrons')
        self.boolean('Met_Soego2',                    'met_soego2')
        self.boolean('Mortai_Contract',               'mortai_contract')
        self.boolean('Morte_Deionarra_Quip_1',        'morte_deionarra_quip_1')
        self.boolean('Morte_Harlot_Quip_1',           'morte_harlot_quip_1')
        self.boolean('Morte_Morale_Fortress_Portal',  'morte_morale_fortress_portal', 'AR0202')
        self.boolean('Morte_Mortuary_Walkthrough_1',  'morte_mortuary_walkthrough_1'),
        self.boolean('Morte_Mortuary_Walkthrough_2',  'morte_mortuary_walkthrough_2'),
        self.boolean('Morte_Quip',                    'morte_quip')
        self.boolean('Morte_SDThug_Quip_1',           'morte_sdthug_quip_1')
        self.boolean('Morte_Skel_Mort_Quip',          'morte_skel_mort_quip')
        self.boolean('Morte_Skel_Mort_Quip2',         'morte_skel_mort_quip2')
        self.boolean('Morte_Story',                   'morte_story')
        self.boolean('Morte_Talent',                  'morte_talent')
        self.boolean('Morte_Tattoo_XP',               'morte_tattoo_xp')
        self.boolean('Morte_Vaxis_Quip_1',            'morte_vaxis_quip_1')
        self.boolean('Morte_Vaxis_Quip_2',            'morte_vaxis_quip_2')
        self.boolean('Morte_Warning',                 'morte_warning')
        self.boolean('Morte_Wilder_Quip_1',           'morte_wilder_quip_1')
        self.boolean('Morte_Zombie_Female_Bar_Quip',  'morte_zombie_female_bar_quip'),
        self.boolean('Mortuary_Alert',                'mortualy_alarmed')
        self.boolean('Mortuary_Soego_Killed',         'mortuary_soego_killed')
        self.boolean('Page_Taken',                    'has_zm1664_page')
        self.boolean('Pillar_Musk',                   'pillar_musk', 'AR1001')
        self.boolean('Prophecy',                      'prophecy')
        self.boolean('Scars',                         'read_scars')
        self.boolean('Silent_King',                   'silent_king')
        self.boolean('Skeleton_Chaotic',              'skeleton_chaotic')
        self.boolean('Skeleton_Examine',              'skeleton_examine')
        self.boolean('Soego_Adahn',                   'soego_adahn', 'AR0201')
        self.boolean('Soego_exposed',                 'soego_exposed')
        self.boolean('Soego_Journal',                 'soego_journal')
        self.boolean('Soego_Strangle',                'soego_strangle')
        self.boolean('Soego_Told',                    'soego_told')
        self.boolean('Speak_with_Dead',               'can_speak_with_dead')
        self.boolean('Speak_With_Dead',               'can_speak_with_dead')
        self.boolean('Story_Reekwind_Curse',          'story_reekwind_curse')
        self.boolean('Strong_Arm_Vaxis',              'strong_arm_vaxis')
        self.boolean('Topple_985',                    'topple_985')
        self.boolean('Limb985',                       'limb_985')
        self.boolean('Trans_Vanish',                  'trans_vanish')
        self.boolean('UL_1201',                       'ul_1201')
        self.boolean('UR_1201',                       'ur_1201')
        self.boolean('Vaxis_Exposed',                 'vaxis_exposed')
        self.boolean('Vaxis_Exposes_Soego',           'vaxis_exposes_soego')
        self.boolean('Vaxis_Help',                    'vaxis_help')
        self.boolean('Vaxis_Leave',                   'vaxis_leave')
        self.boolean('Vaxis_Orders',                  'vaxis_orders')
        self.boolean('Vaxis_Zombie_XP',               'vaxis_global_xp')
        self.boolean('Visit_Doubtful',                'visit_doubtful', 'AR1500')
        self.boolean('Where_Fhjull',                  'where_fhjull', 'AR1001')
        self.boolean('Xachariah_Gutted',              'xachariah_gutted')
        self.boolean('Xachariah_Name',                'know_xachariah_name')
        self.boolean('Xachariah_Request',             'xachariah_request')
        self.boolean('Yves_Shared',                   'yves_shared', 'AR0605')
        self.boolean('Zombie_Chaotic',                'zombie_chaotic')
        self.boolean(None,                            'has_bandages_zm396')
        self.boolean(None,                            'know_asonje_name')
        self.boolean(None,                            'know_bei_name')
        self.boolean(None,                            'know_oinosian_name')
        self.boolean(None,                            'know_vaxis_name')
        self.boolean(None,                            'know_dhall_name')
        self.boolean(None,                            'know_eivene_name')
        self.boolean(None,                            'know_zm257_spirit')
        self.boolean(None,                            'vaxis_has_keyem')

        self.integer('1201_Note',                '1201_note_quest',          [0, 1, 2])
        self.integer('Adahn',                    'adahn',                    [0, 1, 2, 3, 4])
        self.integer('Adyzoel',                  'adyzoel',                  [0, 1, 2], 'AR0400')
        self.integer('Annah_Talked_Morte',       'annah_talked_morte',       [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        self.integer('Appearance',               'appearance',               [0, 1, 2])
        self.integer('BariA',                    'baria',                    [0, 1, 2], 'AR0400')
        self.integer('BD_DAKKON_MORALE',         'bd_dakkon_morale',         [0, 1, -1])
        self.integer('BD_MORTE_MORALE',          'bd_morte_morale',          [0, 1, 2, 3, 4, 5, 6, -1])
        self.integer('Betray_Vaxis',             'vaxis_betrayed',           [0, 1, 2])
        self.integer('Chaotic_Malmaner_1',       'chaotic_malmaner_1',       [0, 1, 2, 3])
        self.integer('Choke_Dustman',            'choke_dustman',            [0, 1, 2])
        self.integer('Choke',                    'choke',                    [0, 1])
        self.integer('Coppereyes_Contract',      'coppereyes_contract',      [0, 1, 2, 3])
        self.integer('CR_Vic',                   'cr_vic',                   [0, 1, 2, 3, 4, 5, 6])
        self.integer('Deionarra_Death_Truth',    'deionarra_death_truth',    [0, 1, 2])
        self.integer('Doubtful_Skel',            'doubtful_skel',            [0, 1, 2])
        self.integer('Dustman_Initiation',       'dustman_initiation',       [0, 1, 2, 3, 4, 5])
        self.integer('Embalm_Key_Quest',         'embalm_key_quest',         [0, 1, 2, 3])
        self.integer('Fortress_Annah',           'fortress_annah',           [0, 1, 2, 3, 4])
        self.integer('Fortress_Dakkon',          'fortress_dakkon',          [0, 1, 2, 3, 4])
        self.integer('Fortress_Grace',           'fortress_grace',           [0, 1, 2, 3, 4])
        self.integer('Fortress_Ignus',           'fortress_ignus',           [0, 1, 2, 3, 4])
        self.integer('Fortress_Morte',           'fortress_morte',           [0, 1, 2, 3, 4])
        self.integer('Fortress_Nordom',          'fortress_nordom',          [0, 1, 2, 3, 4])
        self.integer('Fortress_Party_Roof',      'fortress_party_roof',      [0, 1, 2])
        self.integer('Fortress_Party',           'fortress_party',           [0, 1, 2])
        self.integer('Fortress_Vhailor',         'fortress_vhailor',         [0, 1, 2, 3, 4])
        self.integer('Gate_Cut_Scene',           'gate_cut_scene',           [0, 1, 2, 3, 4, 5], 'AR0201')
        self.integer('Giant_Skeleton_Enchant',   'giant_skeleton_enchant',   [0, 1, 2, 3, 4, 5])
        self.integer('GLOBALKnow_Dustmen',       'know_dustmen',             [0, 1, 2])
        self.integer('Grace_Talked_Morte',       'grace_talked_morte',       [0, 1, 2, 3])
        self.integer('Join_Chaosmen',            'join_chaosmen',            [0, 1, 2, 3])
        self.integer('Join_Dustmen',             'join_dustmen',             [0, 1, 2, 3])
        self.integer('Know_Marta_Work',          'know_marta_work',          [0, 1, 2, 3])
        self.integer('Know_Morte_Pillar',        'know_morte_pillar',        [0, 1, 2])
        self.integer('Know_Ravel_Key',           'know_ravel_key',           [0, 1, 2, 3])
        self.integer('Know_Source',              'know_source',              [0, 1, 2, 3])
        self.integer('Lecture_Death',            'lecture_death',            [0, 1, 2])
        self.integer('Lecture_Ghysis',           'lecture_ghysis',           [0, 1, 2])
        self.integer('Malmaner',                 'malmaner',                 [0, 1, 2, 3, 4, 5])
        self.integer('Morte_Mimir',              'morte_mimir',              [0, 1, 2])
        self.integer('Morte_Quip_Regret_Portal', 'morte_quip_regret_portal', [0, 1, 2])
        self.integer('Morte_Stolen',             'morte_stolen',             [0, 1, 2, 3])
        self.integer('Morte_Taunt',              'morte_taunt',              [0, 1])
        self.integer('Mortuary_Walkthrough',     'mortuary_walkthrough',     [0, 1, 2, 3])
        self.integer('Nemelle',                  'nemelle',                  [0, 1, 2, 3, 4])
        self.integer('Nenny',                    'nenny',                    [0, 1, 2])
        self.integer('Nordom_Talked_Morte',      'nordom_talked_morte',      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        self.integer('Nordom_Talked_Annah',      'nordom_talked_annah',      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        self.integer('Nordom_Talked_Grace',      'nordom_talked_grace',      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
        self.integer('Pharod_Quest',             'pharod_quest',             [0, 1])
        self.integer('Pillar ',                  'pillar',                   [0, 1, 2]),  # with space, ye
        self.integer('Pillar_Question',          'pillar_question',          [0, 1, 2, 3, 4], 'AR1001')
        self.integer('Qui_Sai',                  'qui_sai',                  [0, 1, 2])
        self.integer('Ravel_Annah',              'ravel_annah',              [0, 1, 2, 3])
        self.integer('Ravel_EiVene',             'ravel_eivene',             [0, 1, 2])
        self.integer('Ravel_Grace',              'ravel_grace',              [0, 1, 2, 3])
        self.integer('Ravel_Morte',              'ravel_morte',              [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        self.integer('Seek_Word',                'seek_word',                [0, 1, 2])
        self.integer('Soego_Fled',               'soego_fled',               [0, 1, 2])
        self.integer('Soego_Talk',               'soego_talk',               [0, 1, 2], 'AR1500')
        self.integer('Specialist',               'specialist',               [0, 1, 2, 3, 4, 5, 6])
        self.integer('Torment_Fell',             'torment_fell',             [0, 1, 2])
        self.integer('Translate_Dabus',          'translate_dabus',          [0, 1, 2, 3])
        self.integer('Tree_Helpers',             'tree_helpers',             [0, 1], 'AR0400')
        self.integer('Vaxis_Zombie_Disguise',    'vaxis_zombie_disguise',    [0, 1, 2])
        self.integer('Warning',                  'warning',                  [0, 1, 2])
        self.integer('Xachariah_Ring',           'xachariah_ring',           [0, 1, 2])
        self.integer('Xixi_Back',                'xixi_back',                [0, 1, 2, 3])

        self.ignore('Attack(Protagonist)')
        self.ignore('ClearAllActions()')
        self.ignore('Deactivate(Myself)')
        self.ignore('DropInventory()')
        self.ignore('EndCutSceneMode()')
        self.ignore('Enemy()')
        self.ignore('FaceObject(Protagonist)')
        self.ignore('FadeFromColor([20.0],0)')
        self.ignore('FadeToColor([20.0],0)')
        self.ignore('ForceAttack(Protagonist,Myself)')
        self.ignore('Kill(Protagonist)')
        self.ignore('LeaveParty()')
        self.ignore('OpenDoor("Statue")')
        self.ignore('QuitGame(FINALE,0,0)')
        self.ignore('SetAnimState(Myself,ANIM_MIMESTAND)')
        self.ignore('SetAnimState(Myself,ANIM_MIMEDIE)')
        self.ignore('SetDoorLocked("fakedoor",FALSE)')
        self.ignore('SetGlobal("0202_Dhall_Face_Player","AR0202",1)')
        self.ignore('SetGlobal("Deio_Wake_Up","GLOBAL",0)')
        self.ignore('SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)')
        self.ignore('SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)')
        self.ignore('ShowFirstTimeHelp()')
        self.ignore('StartCutSceneMode()')
        self.ignore('Wait(1)')
        self.ignore('Wait(2)')
        self.ignore('Wait(3)')
        self.ignore('ChangeAIScript("MDKTNO",DEFAULT)')
        self.ignore('GiveItemCreate("Knife",Protagonist,1,0,0)')

        self.add_setting('can_raise_dead', 'boolean')
        self.add_replacement('ApplySpell(Protagonist,SPECIAL_ADD_RAISE_DEAD)', 'self.settings_manager.set_can_raise_dead(True)')

        self.add_setting('has_cobble', 'boolean')
        self.add_replacement('!HasItem("Cobble","Post")', 'return not self.settings_manager.get_has_cobble() #$% Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).%$#')
        self.add_replacement('HasItem("Cobble","Post")', 'return self.settings_manager.get_has_cobble() #$% Checks if "Cobble" is in Quick Item Slot 4 Other possible values include "Weapon1", "Weapon2", "Shield", "Armor", "Helmet", "RingLeft", "RingRight", "Cloak", "Amulet", "Belt", "Boots", "Gloves", "QuickItem1-3", or "Inventory" (general inventory).%$#')

        self.add_replacement('TransformPartyItem("CopEarC","CopEarO",1,0,0)', 'self.settings_manager.set_has_copper_earring_closed(False) self.settings_manager.set_has_copper_earring_opened(True)')
        self.add_replacement('TransformPartyItem("Dwedring","DsupRing",1,0,0)', 'self.settings_manager.set_has_wedding_ring(False) self.settings_manager.set_has_sup_ring(True)')

        self.add_replacement('!HasItem("KeyEm","EiVene")', 'return self.settings_manager.get_has_keyem()')
        self.add_replacement('HasItem("KeyEm","EiVene")', 'return not self.settings_manager.get_has_keyem()')
        self.add_replacement('HasItem("Bandage","ZM396")', 'return not self.settings_manager.get_has_bandages_zm396()')
        self.add_replacement('GiveItem("KeyEm","Vaxis")', 'self.settings_manager.set_has_keyem(False) self.settings_manager.set_vaxis_has_keyem(True)')

        self.add_replacement('HPPercent(Protagonist,100)', 'return self.settings_manager.character_manager.get_property(\'protagonist\', \'current_health\') == self.settings_manager.character_manager.get_property(\'protagonist\', \'max_health\')')
        self.add_replacement('HPPercentGT(Protagonist,49)', 'return self.settings_manager.character_manager.get_property(\'protagonist\', \'current_health\') > self.settings_manager.character_manager.get_property(\'protagonist\', \'max_health\') / 2')
        self.add_replacement('HPPercentLT(Protagonist,50)', 'return self.settings_manager.character_manager.get_property(\'protagonist\', \'current_health\') <= self.settings_manager.character_manager.get_property(\'protagonist\', \'max_health\') / 2')

        self.add_replacement('ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)', 'self.settings_manager.set_in_party_morte(True)')
        self.add_replacement('SetNamelessDisguise(ZOMBIE)', "self.settings_manager.character_manager.set_property('protagonist', 'looks_like', 'zombie')")

        self.add_replacement('NumInParty(1)', 'return self.settings_manager.count_in_party() == 0')
        self.add_replacement('NumInPartyGT(1)', 'return self.settings_manager.count_in_party() > 0')

        return self._replacements


    def party_npc(self, from_var, to_var, env = 'GLOBAL'):
        self.add_setting(f'in_party_{to_var}', 'boolean')
        self.add_setting(f'morale_{to_var}', 'integer')

        self.npc(from_var, to_var, env)
        self.add_replacement(f'!InParty("{from_var}")', f'return not self.settings_manager.get_in_party_{to_var}()')
        self.add_replacement(f'!NearbyDialog("{from_var}")', f'return not self.settings_manager.get_in_party_{to_var}()')
        self.add_replacement(f'InParty("{from_var}")', f'return self.settings_manager.get_in_party_{to_var}()')
        self.add_replacement(f'MoraleDec("{from_var}",1)', f'self.settings_manager.dec_morale_{to_var}()')
        self.add_replacement(f'MoraleDec("{from_var}",2)', f'self.settings_manager.dec_morale_{to_var}(2)')
        self.add_replacement(f'MoraleDec("{from_var}",3)', f'self.settings_manager.dec_morale_{to_var}(3)')
        self.add_replacement(f'MoraleInc("{from_var}",1)', f'self.settings_manager.inc_morale_{to_var}()')
        self.add_replacement(f'MoraleInc("{from_var}",2)', f'self.settings_manager.inc_morale_{to_var}(2)')
        self.add_replacement(f'MoraleInc("{from_var}",3)', f'self.settings_manager.inc_morale_{to_var}(3)')
        self.add_replacement(f'NearbyDialog("{from_var}")', f'return self.settings_manager.get_in_party_{to_var}()')


    def npc(self, from_var, to_var, env = 'GLOBAL'):
            self.add_setting(f"talked_to_{to_var}_times", 'integer')
            self.add_setting(f"dead_{to_var}", 'boolean')
            self.add_setting(f"{to_var}_value", 'integer')
            self.add_setting(f"{to_var}_value", 'integer')

            if from_var is None:
                return

            for x in range(0, 5):
                self.add_replacement(f'!Global("{from_var}","{env}",{x})',   f'return self.settings_manager.get_{to_var}_value() != {x}')
                self.add_replacement(f'!GlobalGT("{from_var}","{env}",{x})',  f'return self.settings_manager.get_{to_var}_value() <= {x}')
                self.add_replacement(f'!GlobalLT("{from_var}","{env}",{x})',  f'return self.settings_manager.get_{to_var}_value() >= {x}')
                self.add_replacement(f'Global("{from_var}","{env}",{x})',    f'return self.settings_manager.get_{to_var}_value() == {x}')
                self.add_replacement(f'GlobalGT("{from_var}","{env}",{x})',  f'return self.settings_manager.get_{to_var}_value() > {x}')
                self.add_replacement(f'GlobalLT("{from_var}","{env}",{x})',  f'return self.settings_manager.get_{to_var}_value() < {x}')
                self.add_replacement(f'SetGlobal("{from_var}","{env}",{x})', f'self.settings_manager.set_{to_var}_value({x})')

            self.add_replacement(f'!Dead("{from_var}")', f'return not self.settings_manager.get_dead_{to_var}()')
            self.add_replacement(f'Dead("{from_var}")', f'return self.settings_manager.get_dead_{to_var}()')


    def inventory_item(self, from_var, to_var):
        self.add_setting(f'has_{to_var}', 'boolean')
        self.add_setting(f"talked_to_{to_var}_times", 'integer')

        for i in range(0, 6):  # manually add new values
            self.add_replacement(f'GiveItemCreate("{from_var}",Protagonist,{i},0,0)', f'self.settings_manager.set_has_{to_var}(True)')
            self.add_replacement(f'GiveItemCreate("{from_var}",Protagonist,{i},1,0)', f'self.settings_manager.set_has_{to_var}(True)')

        self.add_replacement(f'!HasItem("{from_var}",Myself)', f'return not self.settings_manager.get_has_{to_var}()')
        self.add_replacement(f'!PartyHasItem("{from_var}")', f'return not self.settings_manager.get_has_{to_var}()')
        self.add_replacement(f'DestroyPartyItem("{from_var}",TRUE)', f'self.settings_manager.set_has_{to_var}(False)')
        self.add_replacement(f'GiveItem("{from_var}",Protagonist)', f'self.settings_manager.set_has_{to_var}(True)')
        self.add_replacement(f'HasItem("{from_var}",Myself)', f'return self.settings_manager.get_has_{to_var}()')
        self.add_replacement(f'PartyHasItem("{from_var}")', f'return self.settings_manager.get_has_{to_var}()')
        self.add_replacement(f'TakeItem("{from_var}",Protagonist)', f'self.settings_manager.set_has_{to_var}(False)')
        self.add_replacement(f'TakePartyItemNum("{from_var}",1)', f'self.settings_manager.set_has_{to_var}(False)')


    def boolean(self, from_var, to_var, env = 'GLOBAL'):
            self.add_setting(to_var, 'boolean')

            if from_var is None:
                return

            prefix = f'self.settings_manager.get_{to_var}()'
            not_prefix = f'not {prefix}'

            #  May I be wrong? I mart.
            self.add_replacement(f'!Global("{from_var}","{env}",0)',   f'return {prefix}')
            self.add_replacement(f'!Global("{from_var}","{env}",1)',   f'return {not_prefix}')
            self.add_replacement(f'!GlobalGT("{from_var}","{env}",0)', f'return {not_prefix}')
            self.add_replacement(f'!GlobalGT("{from_var}","{env}",1)', f'return true  # !GlobalGT("{from_var}","{env}",1)')
            self.add_replacement(f'!GlobalLT("{from_var}","{env}",0)', f'return true  # !GlobalLT("{from_var}","{env}",0)')
            self.add_replacement(f'!GlobalLT("{from_var}","{env}",1)', f'return {prefix}')
            self.add_replacement(f'Global("{from_var}","{env}",0)',    f'return {not_prefix}')
            self.add_replacement(f'Global("{from_var}","{env}",1)',    f'return {prefix}')
            self.add_replacement(f'GlobalGT("{from_var}","{env}",0)',  f'return {prefix}')
            self.add_replacement(f'GlobalGT("{from_var}","{env}",1)',  f'return false  # GlobalGT("{from_var}","{env}",1)')
            self.add_replacement(f'GlobalLT("{from_var}","{env}",0)',  f'return false  # GlobalLT("{from_var}","{env}",0)')
            self.add_replacement(f'GlobalLT("{from_var}","{env}",1)',  f'return {not_prefix}')
            self.add_replacement(f'SetGlobal("{from_var}","{env}",0)', f'self.settings_manager.set_{to_var}(False)')
            self.add_replacement(f'SetGlobal("{from_var}","{env}",1)', f'self.settings_manager.set_{to_var}(True)')


    def integer(self, from_var, to_var, values, env='GLOBAL'):
        self.add_setting(to_var, 'integer')

        if from_var is None:
                return

        for i in [-1, 1, 2]:  # manually add new values
            self.add_replacement(f'IncrementGlobal("{from_var}","{env}",{i})', f'self.settings_manager.inc_{to_var}()')

        for value in values:
            self.add_replacement(f'SetGlobal("{from_var}","{env}",{value})', f'self.settings_manager.set_{to_var}({value})')

        for value in values:
            self.add_replacement(f'Global("{from_var}","{env}",{value})', f'return self.settings_manager.get_{to_var}() == {value}')

        for value in values:
            self.add_replacement(f'!Global("{from_var}","{env}",{value})', f'return self.settings_manager.get_{to_var}() != {value}')

        for value in values:
            self.add_replacement(f'GlobalLT("{from_var}","{env}",{value})', f'return self.settings_manager.get_{to_var}() < {value}')

        for value in values:
            self.add_replacement(f'GlobalGT("{from_var}","{env}",{value})', f'return self.settings_manager.get_{to_var}() > {value}')


    def ignore(self, line):
        self.add_replacement(line, f'#$% {line} %$#')


    def add_setting(self, name, setting_type):
        if name not in self.known_settings:
            self.known_settings[name] = KnownSetting(name, setting_type)


    def add_replacement(self, pattern, replacement):
        new_replacement = pattern not in self._replacements
        not_conflict_replacement = pattern in self._replacements and self._replacements[pattern] == replacement
        conflict_replacement = pattern in self._replacements and self._replacements[pattern] != replacement

        if new_replacement:
            self._replacements[pattern] = replacement

        if not_conflict_replacement:
            if pattern not in self._reported_about_not_conflict_replacement:
                self._reported_about_not_conflict_replacement.append(pattern)
                print(f"Warning: Replacement '{pattern}' already added as '{self._replacements[pattern]}'")

        if conflict_replacement:
            raise Exception(f"Replacement '{pattern}' already added as '{self._replacements[pattern]}', but tries to be added as '{replacement}'")


    def tree(self):
        letters = list('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
        for letter in letters:
            # self._add_setting(f'tree_{letter.lower()}', 'boolean')
            self.boolean(f'Tree_{letter}', f'tree_{letter.lower()}', 'AR0400')


def name_variations(npc): #  hello to devs)
    return [
        npc,
        f'D{npc}',
        f'D{first_lower(npc)}',
        f'D{npc}1'
    ]


def first_lower(x):
    if len(x) == 0:
        return x
    else:
        return x[0].lower() + x[1:]

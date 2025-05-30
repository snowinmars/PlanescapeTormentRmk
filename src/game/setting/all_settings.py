# Each settings_id will be transformed to a bunch of functions into the gsm
#   see the builder flow for more
def build_dz_settings(manager):
    manager \
        .register('meet_dzm79', False) \
        .register('meet_dzm199', False) \
        .register('meet_dzm257', False) \
        .register('meet_dzm310', False) \
        .register('meet_dzm396', False) \
        .register('meet_dzm463', False) \
        .register('meet_dzm475', False) \
        .register('meet_dzm506', False) \
        .register('meet_dzm569', False) \
        .register('meet_dzm613', False) \
        .register('meet_dzm732', False) \
        .register('meet_dzm782', False) \
        .register('meet_dzm825', False) \
        .register('meet_dzm965', False) \
        .register('meet_dzm985', False) \
        .register('meet_dzm1041', False) \
        .register('meet_dzm1094', False) \
        .register('meet_dzm1146', False) \
        .register('meet_dzm1201', False) \
        .register('meet_dzm1445', False) \
        .register('meet_dzm1508', False) \
        .register('meet_dzm1664', False) \
        .register('meet_dzf114', False) \
        .register('meet_dzf444', False) \
        .register('meet_dzf594', False) \
        .register('meet_dzf626', False) \
        .register('meet_dzf679', False) \
        .register('meet_dzf832', False) \
        .register('meet_dzf891', False) \
        .register('meet_dzf916', False) \
        .register('meet_dzf1072', False) \
        .register('meet_dzf1096', False) \
        .register('meet_dzf1148', False) \
        .register('dead_dzm79', False) \
        .register('dead_dzm199', False) \
        .register('dead_dzm257', False) \
        .register('dead_dzm310', False) \
        .register('dead_dzm396', False) \
        .register('dead_dzm463', False) \
        .register('dead_dzm475', False) \
        .register('dead_dzm506', False) \
        .register('dead_dzm569', False) \
        .register('dead_dzm613', False) \
        .register('dead_dzm732', False) \
        .register('dead_dzm782', False) \
        .register('dead_dzm825', False) \
        .register('dead_dzm965', False) \
        .register('dead_dzm985', False) \
        .register('dead_dzm1041', False) \
        .register('dead_dzm1094', False) \
        .register('dead_dzm1146', False) \
        .register('dead_dzm1201', False) \
        .register('dead_dzm1445', False) \
        .register('dead_dzm1508', False) \
        .register('dead_dzm1664', False) \
        .register('dead_dzf114', False) \
        .register('dead_dzf444', False) \
        .register('dead_dzf594', False) \
        .register('dead_dzf626', False) \
        .register('dead_dzf679', False) \
        .register('dead_dzf832', False) \
        .register('dead_dzf891', False) \
        .register('dead_dzf916', False) \
        .register('dead_dzf1072', False) \
        .register('dead_dzf1096', False) \
        .register('dead_dzf1148', False)


def build_npc_dead_or_alive_settings(manager):
    npcs = [
        'xixi',
        'quentin',
        'deionarra',
        'vaxis',
        'pharod',
        'dhall',
        'morte',
        'oinosian',
        'bei',
        'asonje',
        'crispy',
        'death_of_names',
    ]

    for npc in npcs:
        manager \
            .register(f'meet_{npc}', False) \
            .register(f'dead_{npc}', False)


def build_party_settings(manager):
    manager \
        .register('in_party_morte', False)


def build_other_settings(manager):
    manager \
        .register('dustmen', None) \
        .register('jorunal_allowed', False) \
        .register('adahn', 0) \
        .register('good', 0) \
        .register('law', 0) \
        .register('good_morte', 0) \
        .register('jorunal_allowed', False) \
        .register('can_speak_with_dead', False) \
        .register('death_of_names_quentin', False) \
        .register('death_of_names_dhall', False) \
        .register('death_of_names_adahn', False) \
        .register('know_xachariah_name', False) \
        .register('crier_quest', False) \
        .register('xixi_back', False) \
        .register('escape_mortuary', False) \
        .register('visited_ar0200', False) \
        .register('asonje_state', 0) \
        .register('has_intro_key', False) \
        .register('has_tome_ba', False) \
        .register('mortuary_walkthrough', 0) \
        .register('morte_mortuary_walkthrough_1', False) \
        .register('morte_mortuary_walkthrough_2', False) \
        .register('alarmed', False) \
        .register('vaxis_lawful', False) \
        .register('vaxis_left', False) \
        .register('vaxis_betrayed', False) \
        .register('vaxis_betray', 0) \
        .register('vaxis_exposed', False) \
        .register('saw_dhall', False) \
        .register('know_copper_earring_secret', False) \
        .register('has_copper_earring', False) \
        .register('has_506_thread', False) \
        .register('has_scalpel', False) \
        .register('has_needle', 0) \
        .register('has_1201_note', False) \
        .register('has_dzm1664_page', False) \
        .register('has_bandages', False) \
        .register('morte_quip', False)


def build_all_settings(manager):
    build_dz_settings(manager)
    build_npc_dead_or_alive_settings(manager)
    build_party_settings(manager)
    build_other_settings(manager)

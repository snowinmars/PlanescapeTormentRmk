def build_all_reactions(mng):
    return mng \
        .register(Reaction(
            'grant_achievement_mortuary_gate',
            lambda gsm: gsm.world_manager.get_gate_open(),
            lambda: achievement_mortuary_gate.grant())) \
        .register()
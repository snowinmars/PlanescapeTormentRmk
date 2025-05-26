init 1 python:
    renpy.add_python_directory('dlg')
    renpy.add_python_directory('engine')
    renpy.add_python_directory('settings')
    from engine.dialog import (
        start_dialog,
        get_available_responses,
        choose_response,
        advance_to_state,
        is_state_defined
    )
    from dlg.dlg_dmorte_one import (dlg_dmorte_one)
    from dlg.dlg_dmorte_two import (dlg_dmorte_two)
    from dlg.dlg_ddeathon   import (dlg_ddeathon)
    from dlg.dlg_ddhall     import (dlg_ddhall)
    from dlg.dlg_dzm79      import (dlg_dzm79)
    from dlg.dlg_dzm199     import (dlg_dzm199)
    from dlg.dlg_dzm257     import (dlg_dzm257)
    from dlg.dlg_dzm310     import (dlg_dzm310)
    from dlg.dlg_dzm396     import (dlg_dzm396)
    from dlg.dlg_dzm463     import (dlg_dzm463)
    from dlg.dlg_dzm475     import (dlg_dzm475)
    from dlg.dlg_dzm506     import (dlg_dzm506)
    from dlg.dlg_dzm569     import (dlg_dzm569)
    from dlg.dlg_dzm613     import (dlg_dzm613)
    from dlg.dlg_dzm732     import (dlg_dzm732)
    from dlg.dlg_dzm782     import (dlg_dzm782)
    from dlg.dlg_dzm825     import (dlg_dzm825)
    from dlg.dlg_dzm965     import (dlg_dzm965)
    from dlg.dlg_dzm985     import (dlg_dzm985)
    from dlg.dlg_dzm1041    import (dlg_dzm1041)
    from dlg.dlg_dzm1094    import (dlg_dzm1094)
    from dlg.dlg_dzm1146    import (dlg_dzm1146)
    from dlg.dlg_dzm1201    import (dlg_dzm1201)
    from dlg.dlg_dzm1445    import (dlg_dzm1445)
    from dlg.dlg_dzm1508    import (dlg_dzm1508)
    from dlg.dlg_dzm1664    import (dlg_dzm1664)

    renpy.store.characters = {
        'teller': teller,
        'morte_unknown': morte_unknown,
        'morte': morte,
        'scares': scares,
        'death_names': death_names,
        'dhall': dhall,
        'dhall_unknown': dhall_unknown,
        'bei': bei,
        'asonje': asonje,
        'dzm79': dzm79,
        'dzm199': dzm199,
        'dzm257': dzm257,
        'dzm310': dzm310,
        'dzm396': dzm396,
        'dzm463': dzm463,
        'dzm475': dzm475,
        'dzm506': dzm506,
        'dzm569': dzm569,
        'dzm613': dzm613,
        'dzm732': dzm732,
        'dzm782': dzm782,
        'dzm825': dzm825,
        'dzm965': dzm965,
        'dzm985': dzm985,
        'dzm1041': dzm1041,
        'dzm1094': dzm1094,
        'dzm1146': dzm1146,
        'dzm1201': dzm1201,
        'dzm1445': dzm1445,
        'dzm1508': dzm1508,
        'dzm1664': dzm1664,
    }
    renpy.store.character_reactions = {
        'morte_img default':  'morte_img default',
        'dhall_img default':   'dhall_img default',
        'dzm79_image': 'dzm79_image',
        'dzm199_image': 'dzm199_image',
        'dzm257_image': 'dzm257_image',
        'dzm310_image': 'dzm310_image',
        'dzm396_image': 'dzm396_image',
        'dzm463_image': 'dzm463_image',
        'dzm475_image': 'dzm475_image',
        'dzm506_image': 'dzm506_image',
        'dzm569_image': 'dzm569_image',
        'dzm613_image': 'dzm613_image',
        'dzm732_image': 'dzm732_image',
        'dzm782_image': 'dzm782_image',
        'dzm825_image': 'dzm825_image',
        'dzm965_image': 'dzm965_image',
        'dzm985_image': 'dzm985_image',
        'dzm1041_image': 'dzm1041_image',
        'dzm1094_image': 'dzm1094_image',
        'dzm1146_image': 'dzm1146_image',
        'dzm1201_image': 'dzm1201_image',
        'dzm1445_image': 'dzm1445_image',
        'dzm1508_image': 'dzm1508_image',
        'dzm1664_image': 'dzm1664_image',
    }

    dlg_dmorte_one()
    dlg_dmorte_two()
    dlg_ddeathon()
    dlg_ddhall()
    dlg_dzm79()
    dlg_dzm199()
    dlg_dzm257()
    dlg_dzm310()
    dlg_dzm396()
    dlg_dzm463()
    dlg_dzm475()
    dlg_dzm506()
    dlg_dzm569()
    dlg_dzm613()
    dlg_dzm732()
    dlg_dzm782()
    dlg_dzm825()
    dlg_dzm965()
    dlg_dzm985()
    dlg_dzm1041()
    dlg_dzm1094()
    dlg_dzm1146()
    dlg_dzm1201()
    dlg_dzm1445()
    dlg_dzm1508()
    dlg_dzm1664()

    def pronounce(npc_lines):
        for line in npc_lines:
            if line[2]:
                line[2]()
            renpy.say(line[0], line[1])


label start:
    $ from engine.label import (LabelFlowBuilder)
    $ from labels.morgue_labels import (build_label_flow)
    $ from engine.menu import (MenuManager)
    $ from labels.morgue_menu import (build_morgue_menu)

    $ global global_label_registry
    $ global global_menu_manager
    $ global_label_registry = {}
    $ global_menu_manager = MenuManager()

    $ label_builder = LabelFlowBuilder()
    $ build_label_flow(label_builder)
    $ label_builder.build(global_label_registry)

    $ global_menu_manager = build_morgue_menu(global_menu_manager)

    menu:
        "dev":
            jump dev
        "start_":
            jump start_


label start_:
    teller "Я прихожу в себя в тусклом помещении."
    teller "Голова раскалывается, первое движение отзывается резкой болью слева -"
    teller "Болью настолько сильной, что не очень понятно, где именно слева."
    teller "Я постепенно встаю с каменного...стола? и поднимаю взгляд."
    $ current_dialog_key = "dmorte_one_introducing"
    jump dialog_dispatcher


label end:
    'The conversation ends.'
    return
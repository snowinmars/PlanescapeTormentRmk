init 1 python:
    renpy.add_python_directory('dlg')
    renpy.add_python_directory('engine')
    renpy.add_python_directory('labels')
    renpy.add_python_directory('settings')

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


label start:
    $ from engine.label import (LabelFlowBuilder)
    $ from labels.morgue_labels import (build_label_flow)
    $ from engine.dialog import (DialogManager)
    $ from engine.menu import (MenuManager)
    $ from labels.morgue_menu import (build_morgue_menu)
    $ from dlg.dlg_all import (dlg_all)

    $ global global_label_registry
    $ global global_menu_manager
    $ global global_dialog_manager
    $ global_label_registry = {}
    $ global_menu_manager = MenuManager()
    $ global_dialog_manager = DialogManager()

    $ label_builder = LabelFlowBuilder()
    $ build_label_flow(label_builder)
    $ label_builder.build(global_label_registry)
    $ global_menu_manager = build_morgue_menu(global_menu_manager)
    $ dlg_all(global_dialog_manager)

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
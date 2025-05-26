init 1 python:
    import os
    import sys
    import logging
    import glob
    import time

    config_version = "0.0"
    log_level = logging.DEBUG
    log_format = '%(levelname)-6s %(asctime)-25s %(message)s'
    date_format='%Y-%m-%d %H:%M:%S'
    now = int(time.time())
    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    if not os.path.exists(logs_folder):
        os.mkdir(logs_folder)
    full_log_file_path = os.path.join(logs_folder, f"dev-{now}.log")
    max_log_files = 5

    logList = glob.glob(os.path.join(logs_folder, 'dev*.log'))
    if len(logList) > max_log_files: # Why +1 ?)
        for l in sorted(logList, reverse=True)[max_log_files:]:
            os.remove(l)

    config.version = config_version
    config.reject_backslash = False # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')

    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    # enable logging via the 'logging' module
    logging.basicConfig(level=log_level, format=log_format, datefmt=date_format)
    devlog = logging.getLogger('log')
    devlogfile = logging.FileHandler(full_log_file_path)
    devlogfile.setLevel(log_level)
    devlog.addHandler(devlogfile)
    devlog.critical(f"\n--- launch game ---")
    fm = logging.Formatter(log_format)
    devlogfile.setFormatter(fm)
    del fm

    devlog.info("Version: %s" % config_version)
    devlog.info("Log level: %s" % log_level)
    devlog.info("Game directory: %s" % gamedir)

init 2 python:
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
    python:
        from engine.label import (LabelFlowBuilder)
        from labels.morgue_labels import (build_label_flow)
        from engine.dialog import (DialogManager)
        from engine.menu import (MenuManager)
        from labels.morgue_menu import (build_morgue_menu)
        from dlg.dlg_all import (dlg_all)

        global global_label_registry
        global global_menu_manager
        global global_dialog_manager
        global_label_registry = {}
        global_menu_manager = MenuManager()
        global_dialog_manager = DialogManager()

        devlog = logging.getLogger('log')

        devlog.info('Building label flow...')
        now = int(time.time())
        label_builder = LabelFlowBuilder()
        build_label_flow(label_builder)
        label_builder.build(global_label_registry)
        devlog.info('Done building label flow, took %s', int(time.time()) - now)

        now = int(time.time())
        devlog.info('Building morgue menu...')
        build_morgue_menu(global_menu_manager)
        devlog.info('Done building morgue menu, took %s', int(time.time()) - now)

        now = int(time.time())
        devlog.info('Building dialog manager...')
        dlg_all(global_dialog_manager)
        devlog.info('Done building dialog manager, took %s', int(time.time()) - now)

    menu:
        "dev":
            jump dev
        "start_":
            teller "Я прихожу в себя в тусклом помещении."
            teller "Голова раскалывается, первое движение отзывается резкой болью слева -"
            teller "Болью настолько сильной, что не очень понятно, где именно слева."
            teller "Я постепенно встаю с каменного...стола? и поднимаю взгляд."
            $ current_dialog_key = "dmorte_one_introducing"
            jump dialog_dispatcher


label end:
    'The conversation ends.'
    return
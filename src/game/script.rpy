init 1 python:
    # setup logger
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
    # setup global characters and images
    renpy.add_python_directory('chars')
    renpy.add_python_directory('dlg')
    renpy.add_python_directory('dlg/dz')
    renpy.add_python_directory('menu')
    renpy.add_python_directory('engine')
    renpy.add_python_directory('labels')
    renpy.add_python_directory('settings')

    renpy.store.characters = {
        'the_nameless_one': the_nameless_one,
        'teller':           teller,
        'morte_unknown':    morte_unknown,
        'morte':            morte,
        'scares':           scares,
        'death_names':      death_names,
        'dhall':            dhall,
        'dhall_unknown':    dhall_unknown,
        'bei':              bei,
        'asonje':           asonje,
        'eivene':           eivene,
        'eivene_unknown':   eivene_unknown,
        'vaxis':            vaxis,
        'vaxis_unknown':    vaxis_unknown,
        'dzm79':   dzm79,
        'dzm199':  dzm199,
        'dzm257':  dzm257,
        'dzm310':  dzm310,
        'dzm396':  dzm396,
        'dzm463':  dzm463,
        'dzm475':  dzm475,
        'dzm506':  dzm506,
        'dzm569':  dzm569,
        'dzm613':  dzm613,
        'dzm732':  dzm732,
        'dzm782':  dzm782,
        'dzm825':  dzm825,
        'dzm965':  dzm965,
        'dzm985':  dzm985,
        'dzm1041': dzm1041,
        'dzm1094': dzm1094,
        'dzm1146': dzm1146,
        'dzm1201': dzm1201,
        'dzm1445': dzm1445,
        'dzm1508': dzm1508,
        'dzm1664': dzm1664,
        'dzf114' : dzf114,
        'dzf444' : dzf444,
        'dzf594' : dzf594,
        'dzf626' : dzf626,
        'dzf679' : dzf679,
        'dzf832' : dzf832,
        'dzf891' : dzf891,
        'dzf916' : dzf916,
        'dzf1072': dzf1072,
        'dzf1096': dzf1096,
        'dzf1148': dzf1148,
    }

    renpy.store.character_reactions = {
        'morte_img default':   'morte_img default',
        'dhall_img default':   'dhall_img default',
        'eivene_img default':  'eivene_img default',
        'vaxis_img default':   'vaxis_img default',
        'dzm79_img default':   'dzm79_img default',
        'dzm199_img default':  'dzm199_img default',
        'dzm257_img default':  'dzm257_img default',
        'dzm310_img default':  'dzm310_img default',
        'dzm396_img default':  'dzm396_img default',
        'dzm463_img default':  'dzm463_img default',
        'dzm475_img default':  'dzm475_img default',
        'dzm506_img default':  'dzm506_img default',
        'dzm569_img default':  'dzm569_img default',
        'dzm613_img default':  'dzm613_img default',
        'dzm732_img default':  'dzm732_img default',
        'dzm782_img default':  'dzm782_img default',
        'dzm825_img default':  'dzm825_img default',
        'dzm965_img default':  'dzm965_img default',
        'dzm985_img default':  'dzm985_img default',
        'dzm1041_img default': 'dzm1041_img default',
        'dzm1094_img default': 'dzm1094_img default',
        'dzm1146_img default': 'dzm1146_img default',
        'dzm1201_img default': 'dzm1201_img default',
        'dzm1445_img default': 'dzm1445_img default',
        'dzm1508_img default': 'dzm1508_img default',
        'dzm1664_img default': 'dzm1664_img default',
        'dzf114_img default':  'dzf114_img default',
        'dzf444_img default':  'dzf444_img default',
        'dzf594_img default':  'dzf594_img default',
        'dzf626_img default':  'dzf626_img default',
        'dzf679_img default':  'dzf679_img default',
        'dzf832_img default':  'dzf832_img default',
        'dzf891_img default':  'dzf891_img default',
        'dzf916_img default':  'dzf916_img default',
        'dzf1072_img default': 'dzf1072_img default',
        'dzf1096_img default': 'dzf1096_img default',
        'dzf1148_img default': 'dzf1148_img default',
    }

init 3 python:
    # engine warm up
    from engine.dialog import (DialogManager)
    from engine.menu import (MenuManager)
    from engine.settings import (SettingsManager)
    from engine.events import (EventManager)
    from engine.history import (HistoryManager)
    from engine.inventory import (InventoryManager)
    from engine.label_flow import (LabelFlowBuilder, LabelFlowManager)
    from labels.all_labels import (build_all_labels)
    from menus.all_menus import (build_all_menus)
    from dlg.all_dlgs import (build_all_dlgs)
    from setting.all_settings import (build_all_settings)
    from setting.all_inventory import (build_all_inventory)
    # Обычно тупорылые сыны собак пишут в node_modules
    # but for some reason if the 'setting' fodler name is 'settings', it fails to import

    renpy.store.global_event_manager = EventManager()
    renpy.store.global_label_registry = LabelFlowManager()
    renpy.store.global_settings_manager = SettingsManager(renpy.store.global_event_manager)
    renpy.store.global_menu_manager = MenuManager()
    renpy.store.global_dialog_manager = DialogManager()
    renpy.store.global_history_manager = HistoryManager()
    renpy.store.global_inventory_manager = InventoryManager(lambda x: renpy.store.global_settings_manager.get_setting_value(x))

    devlog = logging.getLogger('log')

    now = int(time.time())
    devlog.info('Building settings manager...')
    build_all_settings(renpy.store.global_settings_manager)
    devlog.info('Done building settings manager, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building inventory manager...')
    build_all_inventory(renpy.store.global_inventory_manager)
    devlog.info('Done building inventory manager, took %s', int(time.time()) - now)

    devlog.info('Building label flow...')
    now = int(time.time())
    label_flow_builder = LabelFlowBuilder()
    build_all_labels(label_flow_builder, renpy.store.global_settings_manager)
    renpy.store.global_label_registry.register(label_flow_builder)
    devlog.info('Done building label flow, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building mortuary menu...')
    build_all_menus(renpy.store.global_menu_manager, renpy.store.global_settings_manager)
    devlog.info('Done building mortuary menu, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building dialog manager...')
    build_all_dlgs(renpy.store.global_dialog_manager)
    devlog.info('Done building dialog manager, took %s', int(time.time()) - now)

    config.keymap['show_custom_history'] = ['mousedown_4', 'K_UP']
    config.underlay.append(
        renpy.Keymap(
            show_custom_history = Show("custom_history")
        )
    )
    config.keymap['HIDE_custom_screens'] = ['K_ESCAPE', 'mouseup_3']
    config.keymap['hide_windows'].append('HIDE_custom_screens')
    config.underlay.append(
        renpy.Keymap(
            HIDE_custom_screens = [Hide("custom_history"), Hide("history"), Hide("inventory_screen"), Return(-1)]
        )
    )
    config.keymap['show_inventory'] = ['i']
    config.underlay.append(
        renpy.Keymap(
            show_inventory = Show("inventory_screen")
        )
    )


label start:
    show screen event_manager_display
    show screen mouse_coordinates
    show screen inventory_button
    menu:
        "dev":
            $ renpy.store.global_dialog_key = "dev"
            jump dialog_dispatcher
        "start_":
            $ l1 = "Я прихожу в себя в тусклом помещении."
            $ l2 = "Голова раскалывается, первое движение отзывается резкой болью слева -"
            $ l3 = "Болью настолько сильной, что не очень понятно, где именно слева."
            $ l4 = "Я постепенно встаю с каменного...стола? и поднимаю взгляд."

            $ renpy.exports.say(teller, l1)
            $ renpy.store.global_history_manager.write_line(renpy.store.characters['the_nameless_one'].name, l1)
            $ renpy.exports.say(teller, l2)
            $ renpy.store.global_history_manager.write_line(renpy.store.characters['the_nameless_one'].name, l2)
            $ renpy.exports.say(teller, l3)
            $ renpy.store.global_history_manager.write_line(renpy.store.characters['the_nameless_one'].name, l3)
            $ renpy.exports.say(teller, l4)
            $ renpy.store.global_history_manager.write_line(renpy.store.characters['the_nameless_one'].name, l4)

            $ renpy.store.global_dialog_key = "dmorte_one_introducing"
            jump dialog_dispatcher


label end:
    'The conversation ends.'
    return

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


init 3 python:
    # engine warm up
#     from engine.dialog import (DialogManager)
    from engine.menu import (MenuManager)
    from engine.settings import (SettingsManager)
    from engine.events import (EventManager)
#     from engine.history import (HistoryManager)
    from engine.inventory import (InventoryManager)
#     from engine.label_flow import (LabelFlowBuilder, LabelFlowManager)
#     from labels.all_labels import (build_all_labels)
    from menus.all_menus import (build_all_menus)
#     from dlg.all_dlgs import (build_all_dlgs)
    from setting.all_settings import (build_all_settings)
    from setting.all_inventory import (build_all_inventory)
    # Обычно тупорылые сыны собак пишут в node_modules
    # but for some reason if the 'setting' fodler name is 'settings', it fails to import

    renpy.store.global_event_manager = EventManager()
#     renpy.store.global_label_registry = LabelFlowManager()
    renpy.store.global_settings_manager = SettingsManager(renpy.store.global_event_manager)
    renpy.store.global_menu_manager = MenuManager()
#     renpy.store.global_history_manager = HistoryManager()
#     renpy.store.global_dialog_manager = DialogManager()
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

#     devlog.info('Building label flow...')
#     now = int(time.time())
#     label_flow_builder = LabelFlowBuilder()
#     build_all_labels(label_flow_builder, renpy.store.global_settings_manager)
#     renpy.store.global_label_registry.register(label_flow_builder)
#     devlog.info('Done building label flow, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building mortuary menu...')
    build_all_menus(renpy.store.global_menu_manager, renpy.store.global_settings_manager)
    devlog.info('Done building mortuary menu, took %s', int(time.time()) - now)

#     now = int(time.time())
#     devlog.info('Building dialog manager...')
#     build_all_dlgs(renpy.store.global_dialog_manager)
#     devlog.info('Done building dialog manager, took %s', int(time.time()) - now)

#     config.keymap['show_custom_history'] = ['mousedown_4', 'K_UP']
#     config.underlay.append(
#         renpy.Keymap(
#             show_custom_history = Show("custom_history")
#         )
#     )
#     config.keymap['HIDE_custom_screens'] = ['K_ESCAPE', 'mouseup_3']
#     config.keymap['hide_windows'].append('HIDE_custom_screens')
#     config.underlay.append(
#         renpy.Keymap(
#             HIDE_custom_screens = [Hide("custom_history"), Hide("history"), Hide("inventory_screen"), Return(-1)]
#         )
#     )
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
            jump 'dev'
        "start":
            jump 'dmorte1_s0'


label end:
    'The conversation ends.'
    return

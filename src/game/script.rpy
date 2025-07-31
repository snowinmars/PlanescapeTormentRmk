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
    config.reject_backslash = False  # required to make the above work with with RenPy:
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
    renpy.add_python_directory('menu')
    renpy.add_python_directory('engine')
    renpy.add_python_directory('settings')
    renpy.add_python_directory('locations')


init 3 python:
    # engine warm up
    from engine.events import (EventManager)
    from engine.menu import (MenuManager)
    from engine.settings import (SettingsManager)
    from engine.inventory import (InventoryManager)
    from engine.locations import (LocationBuilder, LocationManager)
    from engine.character import (CharacterManager, Character)

    from menus.all_menus import (build_all_menus)
    from setting.all_settings import (build_all_settings)
    from setting.all_inventory import (build_all_inventory)
    from location.all_locations import (build_all_locations)
    from characters.all_characters import (build_all_characters)
    # Обычно тупорылые сыны собак пишут в node_modules
    # but for some reason if the 'setting' fodler name is 'settings', it fails to import
    # also true for location(s)

    renpy.store.global_event_manager = EventManager()
    renpy.store.global_location_manager = LocationManager(renpy.store.global_event_manager)
    renpy.store.global_character_manager = CharacterManager(renpy.store.global_event_manager)
    renpy.store.global_settings_manager = SettingsManager(renpy.store.global_event_manager, renpy.store.global_character_manager, renpy.store.global_location_manager)
    renpy.store.global_menu_manager = MenuManager()
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

    now = int(time.time())
    devlog.info('Building menu...')
    build_all_menus(renpy.store.global_menu_manager, renpy.store.global_settings_manager, renpy.store.global_location_manager)
    devlog.info('Done building menu, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building characters...')
    build_all_characters(renpy.store.global_settings_manager.gcm)
    devlog.info('Done building characters, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building locations mapping...')
    builder = LocationBuilder()
    builder = build_all_locations(builder)
    renpy.store.global_location_manager.register(builder.mappings, builder.build_reverse_mappings())
    devlog.info('Done building locations mapping, took %s', int(time.time()) - now)

    config.keymap['show_inventory'] = ['i']
    config.underlay.append(
        renpy.Keymap(
            show_inventory = Show("inventory_screen")
        )
    )

    config.keymap['character_screen'] = ['c']
    config.underlay.append(
        renpy.Keymap(
            character_screen = Show("character_screen", character=renpy.store.global_settings_manager.gcm.get_character('protagonist'))
        )
    )


label start:
    show screen event_manager_display
    show screen mouse_coordinates
    show screen inventory_button
    show screen character_screen_button
    menu:
        "dev":
            call quick_setup_as_mage
            $ gsm = renpy.store.global_settings_manager
            $ glm = renpy.store.global_location_manager
            $ glm.set_location('mortuary_f2r1')
            $ gsm.set_in_party_morte(True)
            $ gsm.gcm.set_property('protagonist', 'good', 10)
            # $ gsm.set_has_intro_key(True)
            # $ gsm.set_has_tome_ba(True)
            # $ gsm.set_has_copper_earring_closed(True)
            # $ gsm.set_has_scalpel(True)
            # $ gsm.set_has_needle(True)
            # $ gsm.set_has_1201_note(True)
            # $ gsm.set_has_dzm1664_page(True)
            # $ gsm.set_has_bandages(True)
            # $ gsm.set_has_embalm(True)
            # $ gsm.set_has_keyem(True)

            jump show_graphics_menu
        "Вступление для технодемки":
            jump introduction
        "Новая жизнь":
            call quick_setup_as_mage
            jump dmorte1_s0


label end:
    'The conversation ends.'
    return

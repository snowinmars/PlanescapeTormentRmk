init 1 python:
    import os
    import sys
    import time
    from game.engine.setup_logger import (setup_logger)

    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    config.version = "0.0"
    config.reject_backslash = False  # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')
    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    devlog = setup_logger(logs_folder)
    devlog.info("Version: %s" % config.version)


init 2 python:
    renpy.add_python_directory('menu')
    renpy.add_python_directory('engine')
    renpy.add_python_directory('settings')
    renpy.add_python_directory('locations')


init 3 python:
    # engine warm up
    from game.engine.event_manager import (EventManager)
    from game.engine.settings_manager import (SettingsManager)
    from game.engine.inventory_manager import (InventoryManager)
    from game.engine.location_manager import (LocationManager)
    from game.engine.character_manager import (CharacterManager)
    from game.engine.journal_manager import (JournalManager)

    from game.engine_data.settings.all_settings import (build_all_settings)
    from game.engine_data.inventory.all_inventory import (build_all_inventory)
    from game.engine_data.locations.all_locations import (build_all_locations)
    from game.engine_data.characters.all_characters import (build_all_characters)
    from game.engine_data.journal.all_notes import (build_all_notes)

    renpy.store.global_event_manager = EventManager()
    renpy.store.global_location_manager = LocationManager(renpy.store.global_event_manager)
    renpy.store.global_character_manager = CharacterManager(renpy.store.global_event_manager)
    renpy.store.global_journal_manager = JournalManager(renpy.store.global_event_manager)
    renpy.store.global_settings_manager = SettingsManager(renpy.store.global_event_manager, renpy.store.global_character_manager, renpy.store.global_location_manager, renpy.store.global_journal_manager)
    renpy.store.global_inventory_manager = InventoryManager(renpy.store.global_event_manager, lambda x: renpy.store.global_settings_manager.get_setting_value(x))

    devlog = logging.getLogger('log')

    now = int(time.time())
    devlog.info('Building settings manager…')
    build_all_settings(renpy.store.global_settings_manager)
    devlog.info('Done building settings manager, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building inventory manager…')
    build_all_inventory(renpy.store.global_inventory_manager)
    devlog.info('Done building inventory manager, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building characters…')
    build_all_characters(renpy.store.global_character_manager)
    devlog.info('Done building characters, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building locations mapping…')
    build_all_locations(renpy.store.global_location_manager)
    devlog.info('Done building locations mapping, took %s', int(time.time()) - now)

    now = int(time.time())
    devlog.info('Building journal notes…')
    build_all_notes(renpy.store.global_journal_manager)
    devlog.info('Done building journal notes, took %s', int(time.time()) - now)

    config.keymap['show_inventory'] = ['i']
    config.underlay.append(
        renpy.Keymap(
            show_inventory = Show("inventory_screen")
        )
    )

    config.keymap['character_screen'] = ['c']
    config.underlay.append(
        renpy.Keymap(
            character_screen = Show("character_screen", character=renpy.store.global_settings_manager.character_manager.get_character('protagonist'))
        )
    )


label start:
    show screen event_manager_display
    show screen mouse_coordinates
    show screen inventory_button
    show screen character_screen_button
    show screen hotkey_listener
    menu:
        "dev":
            jump end
            call quick_setup_as_mage
            $ gsm = renpy.store.global_settings_manager
            $ gcm = renpy.store.global_character_manager
            $ glm = renpy.store.global_location_manager
            $ glm.set_location('mortuary_f1r3')
            scene bg mortuary_f2r1
            $ gsm.set_morte_value(1)
            $ gsm.set_in_party_morte(True)
            $ gsm.set_has_intro_key(True)
            $ gsm.set_mortuary_walkthrough(1)
            # $ gcm.set_property('protagonist', 'good', 10)
            # $ gsm.set_mortualy_alarmed(True)
            # $ gsm.set_has_mortuary_key(True)
            # $ gsm.set_has_tome_ba(True)
            # $ gsm.set_has_copper_earring_closed(True)
            # $ gsm.set_has_scalpel(True)
            # $ gsm.set_has_needle(True)
            # $ gsm.set_has_1201_note(True)
            # $ gsm.set_has_zm1664_page(True)
            # $ gsm.set_has_bandages(True)
            # $ gsm.set_has_embalm(True)
            # $ gsm.set_has_keyem(True)

            jump graphics_menu
        "Вступление для технодемки":
            jump introduction
        "Новая жизнь":
            call quick_setup_as_mage
            jump intro


label end:
    snowinmars '…'
    snowinmars '………'
    snowinmars 'Спасибо.'
    # do not modify the next line. It's one of the first line in the game)
    'The conversation ends.'
    return

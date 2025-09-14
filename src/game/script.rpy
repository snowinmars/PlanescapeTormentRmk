init 1 python:
    import os
    import sys
    import time
    from game.engine.setup_logger import (setup_logger)

    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    config.version = "0.01"
    config.reject_backslash = False  # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')
    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    renpy.store.logger = setup_logger(renpy.emscripten, logs_folder)
    renpy.store.logger.info("Version: %s" % config.version)


init 2 python:
    renpy.add_python_directory('engine')
    renpy.add_python_directory('engine_data')


init 3 python:
    # engine warm up
    from game.engine.events.events_manager import (EventsManager)
    from game.engine.state.state_manager import (StateManager)
    from game.engine.inventory.inventory_manager import (InventoryManager)
    from game.engine.locations.locations_manager import (LocationsManager)
    from game.engine.characters.characters_manager import (CharactersManager)
    from game.engine.journal.journal_manager import (JournalManager)

    from game.engine_data.settings.all_settings import (build_all_settings)
    from game.engine_data.inventory.all_inventory import (build_all_inventory)
    from game.engine_data.locations.all_locations import (build_all_locations)
    from game.engine_data.characters.all_characters import (build_all_characters)
    from game.engine_data.journal.all_notes import (build_all_notes)

    logger = renpy.store.logger

    renpy.store.global_events_manager = EventsManager(renpy.store.logger)
    renpy.store.global_locations_manager = LocationsManager(renpy.store.global_events_manager)
    renpy.store.global_characters_manager = CharactersManager(renpy.store.global_events_manager)
    renpy.store.global_journal_manager = JournalManager(renpy.store.global_events_manager)
    renpy.store.global_state_manager = StateManager(renpy.store.global_events_manager, renpy.store.global_characters_manager, renpy.store.global_locations_manager, renpy.store.global_journal_manager)
    renpy.store.global_inventory_manager = InventoryManager(renpy.store.global_events_manager, lambda x: renpy.store.global_state_manager.get_setting_value(x))

    now = int(time.time())
    logger.info('Building settings manager…')
    build_all_settings(renpy.store.global_state_manager)
    logger.info('Done building settings manager, took %s', int(time.time()) - now)

    now = int(time.time())
    logger.info('Building inventory manager…')
    build_all_inventory(renpy.store.global_inventory_manager)
    logger.info('Done building inventory manager, took %s', int(time.time()) - now)

    now = int(time.time())
    logger.info('Building characters…')
    build_all_characters(renpy.store.global_characters_manager)
    logger.info('Done building characters, took %s', int(time.time()) - now)

    now = int(time.time())
    logger.info('Building locations mapping…')
    build_all_locations(renpy.store.global_locations_manager)
    logger.info('Done building locations mapping, took %s', int(time.time()) - now)

    now = int(time.time())
    logger.info('Building journal notes…')
    build_all_notes(renpy.store.global_journal_manager)
    def on_update_journal():
        renpy.exports.sound.play(renpy.store.audio.update_journal)
    renpy.store.global_journal_manager.register_on_update_journal(on_update_journal)
    logger.info('Done building journal notes, took %s', int(time.time()) - now)

    config.keymap['show_inventory'] = ['i']
    config.underlay.append(
        renpy.Keymap(
            show_inventory = Show("inventory_screen")
        )
    )

    config.keymap['character_screen'] = ['c']
    config.underlay.append(
        renpy.Keymap(
            character_screen = Show("character_screen", character=renpy.store.global_state_manager.characters_manager.get_character('protagonist'))
        )
    )


label start:
    show screen events_manager_display
    # show screen mouse_coordinates
    show screen inventory_button
    show screen character_screen_button
    show screen hotkey_listener

    $ enable_dev = True

    menu:
        "dev" if enable_dev:
            play music mortuary
            call quick_setup_as_mage from _call_quick_setup_as_mage
            $ gsm = renpy.store.global_state_manager
            $ gcm = renpy.store.global_characters_manager
            $ glm = renpy.store.global_locations_manager
            $ glm.set_location('mortuary_f2r1')
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

            jump morte1_s23
            # jump graphics_menu
        "Вступление для технодемки":
            jump introduction
        "Новая жизнь":
            call quick_setup_as_mage from _call_quick_setup_as_mage_1
            jump intro


label end:
    snowinmars '…'
    snowinmars '………'
    snowinmars 'Спасибо.'
    # do not modify the next line. It's one of the first line in the game)
    'The conversation ends.'
    return

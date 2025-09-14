init 1 python:
    import os
    import sys
    import time
    from game.engine.runtime import (runtime)
    from game.engine.setup_logger import (setup_logger)

    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    config.version = "0.01"
    config.reject_backslash = False  # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')
    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    runtime.logger = setup_logger(renpy.emscripten, logs_folder)
    runtime.logger.info("Version: %s" % config.version)


init 2 python:
    from game.engine.locations.locations_store import (LocationsStore)
    # import types, functools

    renpy.add_python_directory('engine')
    renpy.add_python_directory('engine_data')

    # def wrap_manager_methods(manager, prefix=("set_", "add_", "visit_")):
    #     for name in dir(manager):
    #         if name.startswith(prefix):
    #             orig = getattr(manager, name)
    #             if not callable(orig):
    #                 continue

    #             @functools.wraps(orig)
    #             def wrapper(*args, __orig=orig, **kwargs):
    #                 result = __orig(*args, **kwargs)
    #                 renpy.store._changed = True
    #                 return result

    #             # no MethodType, orig was already bound
    #             setattr(manager, name, wrapper)

    #     return manager


default locations_store = LocationsStore()


init 3 python:
    # engine warm up
    from game.engine.runtime import (runtime)

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

    runtime.global_events_manager = EventsManager(runtime.logger)
    runtime.global_locations_manager = LocationsManager(runtime.global_events_manager)
    runtime.global_characters_manager = CharactersManager(runtime.global_events_manager)
    runtime.global_journal_manager = JournalManager(runtime.global_events_manager)
    runtime.global_state_manager = StateManager(runtime.global_events_manager, runtime.global_characters_manager, runtime.global_locations_manager, runtime.global_journal_manager)
    runtime.global_inventory_manager = InventoryManager(runtime.global_events_manager, lambda x: runtime.global_state_manager.get_setting_value(x))

    def apply_stores():
        runtime.global_events_manager.write_event('apply_stores')
        runtime.global_locations_manager.set_store(locations_store)
        wrap_manager_methods(runtime.global_locations_manager)

    def init_managers():
        runtime.global_events_manager.write_event('init_managers')
        apply_stores()

        now = int(time.time())
        logger.info('Building settings manager…')
        build_all_settings(runtime.global_state_manager)
        logger.info('Done building settings manager, took %s', int(time.time()) - now)

        now = int(time.time())
        logger.info('Building inventory manager…')
        build_all_inventory(runtime.global_inventory_manager)
        logger.info('Done building inventory manager, took %s', int(time.time()) - now)

        now = int(time.time())
        logger.info('Building characters…')
        build_all_characters(runtime.global_characters_manager)
        logger.info('Done building characters, took %s', int(time.time()) - now)

        now = int(time.time())
        logger.info('Building locations mapping…')
        build_all_locations(runtime.global_locations_manager)
        logger.info('Done building locations mapping, took %s', int(time.time()) - now)

        now = int(time.time())
        logger.info('Building journal notes…')
        build_all_notes(runtime.global_journal_manager)
        def on_update_journal():
            renpy.exports.sound.play(runtime.audio.update_journal)
        runtime.global_journal_manager.register_on_update_journal(on_update_journal)
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
                character_screen = Show("character_screen", character=runtime.global_state_manager.characters_manager.get_character('protagonist'))
            )
        )

    config.after_load_callbacks.append(apply_stores)
    config.start_callbacks.append(init_managers)


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
            $ gsm = runtime.global_state_manager
            $ gcm = runtime.global_characters_manager
            $ glm = runtime.global_locations_manager
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

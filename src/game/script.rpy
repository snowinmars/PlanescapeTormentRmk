init 1 python:
    import os
    import sys
    import time
    from game.engine.runtime import (runtime)
    from game.engine.setup_logger import (setup_logger)

    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    config.version = "0.03"
    config.reject_backslash = False  # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')
    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    runtime.logger = setup_logger(renpy.emscripten, logs_folder)
    runtime.logger.info("Version: %s" % config.version)


init 2 python:
    from game.engine.locations.locations_store import (LocationsStore)
    from game.engine.journal.journal_store import (JournalStore)
    from game.engine.events.events_store import (EventsStore)
    from game.engine.characters.characters_store import (CharactersStore)
    from game.engine.inventory.inventory_store import (InventoryStore)
    from game.engine.world.world_store import (WorldStore)
    from game.engine.narrat.narrat_store import (NarratStore)

    # import types, functools

    renpy.add_python_directory('engine')
    renpy.add_python_directory('engine_data')


default locations_store = LocationsStore()
default journal_store = JournalStore()
default events_store = EventsStore()
default characters_store = CharactersStore()
default inventory_store = InventoryStore()
default world_store = WorldStore()
default narrat_store = NarratStore()

define config.rollback_enabled = False # as it is narrat now

init 3 python:
    # engine warm up
    from game.engine.runtime import (runtime)

    from game.engine.events.events_manager import (EventsManager)
    from game.engine.state.state_manager import (StateManager)
    from game.engine.inventory.inventory_manager import (InventoryManager)
    from game.engine.locations.locations_manager import (LocationsManager)
    from game.engine.characters.characters_manager import (CharactersManager)
    from game.engine.journal.journal_manager import (JournalManager)
    from game.engine.world.world_manager import (WorldManager)
    from game.engine.narrat.narrat_manager import (NarratManager)

    from game.engine_data.settings.all_settings import (build_all_settings)
    from game.engine_data.inventory.all_inventory import (build_all_inventory)
    from game.engine_data.locations.all_locations import (build_all_locations)
    from game.engine_data.characters.all_characters import (build_all_characters)


    runtime.global_events_manager = EventsManager(runtime.logger)
    runtime.global_locations_manager = LocationsManager(runtime.global_events_manager)
    runtime.global_characters_manager = CharactersManager(runtime.global_events_manager)
    runtime.global_journal_manager = JournalManager(runtime.global_events_manager)
    runtime.global_world_manager = WorldManager(runtime.global_events_manager)
    runtime.global_inventory_manager = InventoryManager(runtime.global_events_manager, lambda x: runtime.global_world_manager.get_setting_value(x))
    runtime.global_state_manager = StateManager(
        runtime.global_events_manager,
        runtime.global_world_manager,
        runtime.global_characters_manager,
        runtime.global_locations_manager,
        runtime.global_journal_manager,
        runtime.global_inventory_manager
    )
    runtime.global_narrat_manager = NarratManager(runtime.global_events_manager)


    def apply_stores():
        runtime.global_locations_manager.set_store(locations_store)
        runtime.global_journal_manager.set_store(journal_store)
        runtime.global_events_manager.set_store(events_store)
        runtime.global_characters_manager.set_store(characters_store)
        runtime.global_inventory_manager.set_store(inventory_store)
        runtime.global_world_manager.set_store(world_store)
        runtime.global_narrat_manager.set_store(narrat_store)


    def init_managers():
        apply_stores()
        runtime.global_events_manager.write_event('init_managers')

        now = int(time.time())
        runtime.logger.info('Building settings manager…')
        build_all_settings(runtime.global_state_manager)
        runtime.logger.info('Done building settings manager, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building inventory manager…')
        build_all_inventory(runtime.global_inventory_manager)
        runtime.logger.info('Done building inventory manager, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building characters…')
        build_all_characters(runtime.global_characters_manager)
        runtime.logger.info('Done building characters, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building locations mapping…')
        build_all_locations(runtime.global_locations_manager)
        runtime.logger.info('Done building locations mapping, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building journal notes…')
        register_note(runtime.global_journal_manager)
        def on_update_journal():
            renpy.exports.sound.play(renpy.store.audio.update_journal)
        runtime.global_journal_manager.register_on_update_journal(on_update_journal)
        runtime.logger.info('Done building journal notes, took %s', int(time.time()) - now)

        config.keymap['inventory_screen'] = ['i', 'I', 'ш', 'Ш']
        config.underlay.append(
            renpy.Keymap(
                inventory_screen = Show("inventory_screen")
            )
        )

        config.keymap['character_screen'] = ['c', 'C', 'с', 'С']
        config.underlay.append(
            renpy.Keymap(
                character_screen = Show("character_screen", character=runtime.global_state_manager.characters_manager.get_character('The Nameless One'))
            )
        )

        config.keymap['journal_screen'] = ['j', 'J', 'о', 'О']
        config.underlay.append(
            renpy.Keymap(
                journal_screen = Show("journal_screen", get_notes=runtime.global_journal_manager.build_journal)
            )
        )

    config.after_load_callbacks.append(apply_stores)
    config.start_callbacks.append(init_managers)


init 4 python: # inject narrat
    _original_say = renpy.say
    def narrat_say(who, what, *args, **kwargs):
        runtime.global_narrat_manager.add_history_entry(who, what)
        runtime.global_narrat_manager.update_current_dialogue(who, what)
        runtime.global_narrat_manager.update_menu_items([])
        return _original_say(who, what, *args, **kwargs)
    renpy.say = narrat_say


label start:
    # show screen events_manager_display
    # show screen mouse_coordinates
    show screen inventory_button
    show screen character_screen_button
    show screen hotkey_listener
    show screen narrat

    $ enable_dev = True

    menu:
        "dev" if enable_dev:
            jump dev
        "Вступление для технодемки":
            jump introduction
        "Новая жизнь":
            call quick_setup_as_mage from _call_quick_setup_as_mage_1
            jump intro


label dev:
    play music mortuary
    call quick_setup_as_mage from _call_quick_setup_as_mage
    $ gsm = runtime.global_state_manager
    $ gcm = runtime.global_characters_manager
    $ glm = runtime.global_locations_manager
    $ glm.set_location('mortuary_f2r1')
    $ gsm.world_manager.set_morte_value(1)
    $ gsm.world_manager.set_in_party_morte(True)
    $ gsm.world_manager.set_has_intro_key(True)
    $ gsm.world_manager.set_mortuary_walkthrough(1)
    # $ gcm.set_property('protagonist', 'good', 10)
    # $ gsm.world_manager.set_mortualy_alarmed(True)
    # $ gsm.world_manager.set_has_mortuary_key(True)
    # $ gsm.world_manager.set_has_tome_ba(True)
    $ gsm.world_manager.set_has_copper_earring_closed(True)
    # $ gsm.world_manager.set_has_scalpel(True)
    # $ gsm.world_manager.set_has_needle(True)
    $ gsm.world_manager.set_has_1201_note(True)
    # $ gsm.world_manager.set_has_zm1664_page(True)
    # $ gsm.world_manager.set_has_bandages(True)
    # $ gsm.world_manager.set_has_embalm(True)
    # $ gsm.world_manager.set_has_keyem(True)

    jump morte1_s23
    # jump graphics_menu


label end:
    snowinmars '…'
    snowinmars '………'
    snowinmars 'Спасибо.'
    # do not modify the next line. It's one of the first line in the game)
    'The conversation ends.'
    return

init 1 python: # init logger
    import os
    import sys
    import time
    from game.engine.runtime import (runtime)
    from game.engine.setup_logger import (setup_logger)

    enabled_dev = True
    config.version = "0.10"
    build.info['sha8'] = "899ae389"

    if not persistent.language:
        persistent.language = 'english'

    if persistent.language:
        config.language = persistent.language
        _preferences.language = persistent.language

    if not hasattr(_preferences, 'show_mouse_screen'):
        _preferences.show_mouse_screen = True

    if not persistent.add_custom_achievements:
        persistent.add_custom_achievements = True

    gamedir = os.path.normpath(config.gamedir)
    logs_folder = os.path.join(gamedir, 'logs')
    config.reject_backslash = False  # required to make the above work with with RenPy:
    os.environ['SDL_VIDEO_CENTERED'] = '1'
    sys.setdefaultencoding('utf-8')
    # Game may bug out on saving, in such case, comment should be removed
    # config.use_cpickle = False

    runtime.logger = setup_logger(renpy.emscripten, renpy.android, logs_folder)
    runtime.logger.info("Version: %s" % config.version)


init 2 python: # import and create stores
    from game.engine.locations.locations_store import (LocationsStore)
    from game.engine.journal.journal_store import (JournalStore)
    from game.engine.log_events.log_events_store import (LogEventsStore)
    from game.engine.characters.characters_store import (CharactersStore)
    from game.engine.inventory.inventory_store import (InventoryStore)
    from game.engine.world.world_store import (WorldStore)
    from game.engine.narrat.narrat_store import (NarratStore)
    from game.engine.quests.quests_store import (QuestsStore)

    renpy.add_python_directory('engine')
    renpy.add_python_directory('engine_data')


default locations_store = LocationsStore()
default journal_store = JournalStore()
default log_events_store = LogEventsStore()
default characters_store = CharactersStore()
default inventory_store = InventoryStore()
default world_store = WorldStore()
default narrat_store = NarratStore()
default quests_store = QuestsStore()

define config.rollback_enabled = False # as it is narrat now

init 3 python: # setup hooks for initialyzing managers and applying stores
    from game.engine.runtime import (runtime)

    from game.engine.log_events.log_events_manager import (LogEventsManager)
    from game.engine.state.state_manager import (StateManager)
    from game.engine.inventory.inventory_manager import (InventoryManager)
    from game.engine.locations.locations_manager import (LocationsManager)
    from game.engine.characters.characters_manager import (CharactersManager)
    from game.engine.journal.journal_manager import (JournalManager)
    from game.engine.world.world_manager import (WorldManager)
    from game.engine.narrat.narrat_manager import (NarratManager)
    from game.engine.quests.quests_manager import (QuestsManager)

    from game.engine_data.settings.all_settings import (build_all_settings)
    from game.engine_data.inventory.build_all_inventory import (build_all_inventory)
    from game.engine_data.locations.all_locations import (build_all_locations)
    from game.engine_data.characters.build_all_characters import (build_all_characters)
    from game.engine_data.journal.build_all_notes import (build_all_notes)
    from game.engine_data.quests.build_all_quests import (build_all_quests)


    runtime.global_log_events_manager = LogEventsManager(runtime.logger)
    runtime.global_locations_manager = LocationsManager(runtime.global_log_events_manager)
    runtime.global_characters_manager = CharactersManager(runtime.global_log_events_manager)
    runtime.global_journal_manager = JournalManager(runtime.global_log_events_manager)
    runtime.global_world_manager = WorldManager(runtime.global_log_events_manager)
    runtime.global_inventory_manager = InventoryManager(runtime.global_log_events_manager)
    runtime.global_narrat_manager = NarratManager(runtime.global_log_events_manager)
    runtime.global_quests_manager = QuestsManager(runtime.global_log_events_manager)
    runtime.global_state_manager = StateManager(
        runtime.global_log_events_manager,
        runtime.global_world_manager,
        runtime.global_characters_manager,
        runtime.global_locations_manager,
        runtime.global_journal_manager,
        runtime.global_inventory_manager,
        runtime.global_narrat_manager,
        runtime.global_quests_manager
    )


    def apply_stores():
        runtime.global_locations_manager.set_store(locations_store)
        runtime.global_journal_manager.set_store(journal_store)
        runtime.global_log_events_manager.set_store(log_events_store)
        runtime.global_characters_manager.set_store(characters_store)
        runtime.global_inventory_manager.set_store(inventory_store)
        runtime.global_world_manager.set_store(world_store)
        runtime.global_narrat_manager.set_store(narrat_store)
        runtime.global_quests_manager.set_store(quests_store)


    def init_managers():
        apply_stores()
        runtime.global_log_events_manager.write_log_event('init_managers')

        now = int(time.time())
        runtime.logger.info('Building settings manager…')
        build_all_settings(runtime.global_world_manager)
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
        build_all_notes(runtime.global_journal_manager)
        def on_update_journal():
            renpy.exports.sound.play(renpy.store.audio.update_journal)
        runtime.global_journal_manager.register_on_update_journal(on_update_journal) # TODO [snow]: to store event handling
        runtime.logger.info('Done building journal notes, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building quests…')
        build_all_quests(runtime.global_quests_manager)
        runtime.logger.info('Done building quests, took %s', int(time.time()) - now)

        config.keymap['inventory_screen'] = keymap_inventory_screen
        config.underlay.append(
            renpy.Keymap(
                inventory_screen=Show(
                    "inventory_screen",
                    get_owned_items=runtime.global_state_manager.inventory_manager.get_owned_items,
                    get_selected_item_id=runtime.global_state_manager.inventory_manager.get_selected_item_id,
                    set_selected_item_id=runtime.global_state_manager.inventory_manager.set_selected_item_id,
                    get_character=lambda: runtime.global_state_manager.characters_manager.get_character('protagonist_character_name'),
                    get_gold=runtime.global_state_manager.world_manager.get_gold
                )
            )
        )

        config.keymap['character_screen'] = keymap_character_screen
        config.underlay.append(
            renpy.Keymap(
                character_screen = Show(
                    "character_screen",
                    get_character=lambda: runtime.global_state_manager.characters_manager.get_character('protagonist_character_name'))
            )
        )

        config.keymap['journal_screen'] = keymap_journal_screen
        config.underlay.append(
            renpy.Keymap(
                journal_screen = Show(
                    "journal_screen",
                    get_started_quests=runtime.global_quests_manager.build_started_quests,
                    get_finished_quests=runtime.global_quests_manager.build_finished_quests,
                    get_notes=runtime.global_journal_manager.build_journal,
                    # get_beasts=runtime.global_beatiary_manager.build_bestiary,
                )
            )
        )

    config.after_load_callbacks.append(apply_stores)
    config.start_callbacks.append(init_managers)


init 5 python: # inject narrat
    renpy.add_layer('dialogue', above='screens')

    _original_say = renpy.say
    def narrat_say(who, what, *args, **kwargs):
        runtime.global_narrat_manager.add_history_entry(who, what)
        runtime.global_narrat_manager.update_current_dialogue(who, what)
        runtime.global_narrat_manager.update_menu_items([])
        return _original_say(who, what, *args, **kwargs)
    renpy.say = narrat_say


label start:
    # show screen events_manager_display
    show screen hotkey_listener
    show screen narrat

    menu:
        "dev" if enabled_dev:
            jump dev
        "Вступление для технодемки":
            jump introduction
        "Новая жизнь":
            call quick_setup_as_mage from _call_quick_setup_as_mage_1
            jump intro


label dev:
    $ gsm = runtime.global_state_manager
    $ gsm.world_manager.inventory_manager.pick_item('has_mortuary_key')

    jump intro


label end:
    $ achievement_mortuary_gate.grant()
    snowinmars '…'
    snowinmars '………'
    snowinmars 'Спасибо.'
    # do not modify the next line. It's one of the first line in the game)
    'The conversation ends.'
    return


define dialogue_stack = [] # stack with *_dispose labels
label dialogues_dispose:
    while dialogue_stack:
        $ label = dialogue_stack.pop()
        $ renpy.call(label)
    jump map_dispatcher

init 1 python: # init logger
    import os
    import sys
    import time
    from game.engine.runtime import (runtime)
    from game.engine.setup_logger import (setup_logger)

    enabled_dev = True
    config.version = '0.13'
    build.info['sha8'] = '418252ff'

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
    runtime.logger.info('Version: %s' % config.version)


init 2 python: # import and create stores
    from game.engine.locations.LocationsStore import (LocationsStore)
    from game.engine.journal_notes.JournalNotesStore import (JournalNotesStore)
    from game.engine.log_events.LogEventsStore import (LogEventsStore)
    from game.engine.characters.CharactersStore import (CharactersStore)
    from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)
    from game.engine.world.WorldStore import (WorldStore)
    from game.engine.narrat.NarratStore import (NarratStore)
    from game.engine.quests.QuestsStore import (QuestsStore)

    renpy.add_python_directory('engine')
    renpy.add_python_directory('engine_data')


default locations_store = LocationsStore()
default journal_notes_store = JournalNotesStore()
default log_events_store = LogEventsStore()
default characters_store = CharactersStore()
default inventory_items_store = InventoryItemsStore()
default world_store = WorldStore()
default narrat_store = NarratStore()
default quests_store = QuestsStore()

define config.rollback_enabled = False # as it is narrat now

init 3 python: # setup hooks for initialyzing managers and applying stores
    from game.engine.runtime import (runtime)

    from game.engine.log_events.LogEventsManager import (LogEventsManager)
    from game.engine.state.StateManager import (StateManager)
    from game.engine.inventory_items.InventoryItemsManager import (InventoryItemsManager)
    from game.engine.locations.LocationsManager import (LocationsManager)
    from game.engine.characters.CharactersManager import (CharactersManager)
    from game.engine.journal_notes.JournalNotesManager import (JournalNotesManager)
    from game.engine.world.WorldManager import (WorldManager)
    from game.engine.narrat.NarratManager import (NarratManager)
    from game.engine.quests.QuestsManager import (QuestsManager)

    from game.engine_data.settings.build_all_settings import (build_all_settings)
    from game.engine_data.inventory_items.build_all_inventory_items import (build_all_inventory_items)
    from game.engine_data.locations.build_all_locations import (build_all_locations)
    from game.engine_data.characters.build_all_characters import (build_all_characters)
    from game.engine_data.journal_notes.build_all_journal_notes import (build_all_journal_notes)
    from game.engine_data.quests.build_all_quests import (build_all_quests)


    runtime.global_log_events_manager = LogEventsManager(runtime.logger)
    runtime.global_locations_manager = LocationsManager(runtime.global_log_events_manager)
    runtime.global_characters_manager = CharactersManager(runtime.global_log_events_manager)
    runtime.global_journal_notes_manager = JournalNotesManager(runtime.global_log_events_manager)
    runtime.global_world_manager = WorldManager(runtime.global_log_events_manager)
    runtime.global_inventory_items_manager = InventoryItemsManager(runtime.global_log_events_manager)
    runtime.global_narrat_manager = NarratManager(runtime.global_log_events_manager)
    runtime.global_quests_manager = QuestsManager(runtime.global_log_events_manager)
    runtime.global_state_manager = StateManager(
        runtime.global_log_events_manager,
        runtime.global_world_manager,
        runtime.global_characters_manager,
        runtime.global_locations_manager,
        runtime.global_journal_notes_manager,
        runtime.global_inventory_items_manager,
        runtime.global_narrat_manager,
        runtime.global_quests_manager
    )


    def apply_stores():
        runtime.global_locations_manager.set_store(locations_store)
        runtime.global_journal_notes_manager.set_store(journal_notes_store)
        runtime.global_log_events_manager.set_store(log_events_store)
        runtime.global_characters_manager.set_store(characters_store)
        runtime.global_inventory_items_manager.set_store(inventory_items_store)
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
        build_all_inventory_items(runtime.global_inventory_items_manager)
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
        build_all_journal_notes(runtime.global_journal_notes_manager)
        def on_update_journal():
            renpy.exports.sound.play(renpy.store.audio.update_journal)
        runtime.global_journal_notes_manager.register_on_update_journal(on_update_journal) # TODO [snow]: to store event handling
        runtime.logger.info('Done building journal notes, took %s', int(time.time()) - now)

        now = int(time.time())
        runtime.logger.info('Building quests…')
        build_all_quests(runtime.global_quests_manager)
        runtime.logger.info('Done building quests, took %s', int(time.time()) - now)

        config.keymap['screen_inventory'] = keymap_inventory_screen
        config.underlay.append(renpy.Keymap(screen_inventory=Show('screen_inventory')))

        config.keymap['screen_character_screen'] = keymap_character_screen
        config.underlay.append(renpy.Keymap(screen_character_screen=Show('screen_character_screen')))

        config.keymap['screen_journal'] = keymap_journal_screen
        config.underlay.append(renpy.Keymap(screen_journal=Show('screen_journal')))

    config.after_load_callbacks.append(apply_stores)
    config.start_callbacks.append(init_managers)


init 5 python: # inject narrat
    renpy.add_layer('dialogue', above='screens')

    _original_say = renpy.say
    def narrat_say(who, what, *args, **kwargs):
        is_br = False # never sets here, but in narrat_manager.add_br
        is_change = False # never sets here, but in narrat_manager.report_change
        is_scars = hasattr(who, 'name') and who.name == 'scars'
        is_nameless = False # never sets here, but in narrat_manager.add_menu_choice
        is_npc = not is_scars and hasattr(who, 'name') and who.name is not None and who.name != ''
        is_nr = not is_scars and not is_npc
        runtime.global_narrat_manager.add_history_entry(
            who,
            who.who_args['color'],
            what,
            is_br=is_br,
            is_change=is_change,
            is_scars=is_scars,
            is_nameless=is_nameless,
            is_npc=is_npc,
            is_nr=is_nr
        )
        runtime.global_narrat_manager.update_current_dialogue(
            who,
            who.who_args['color'],
            what,
            is_br=is_br,
            is_change=is_change,
            is_scars=is_scars,
            is_nameless=is_nameless,
            is_npc=is_npc,
            is_nr=is_nr
        )
        runtime.global_narrat_manager.update_menu_items([])
        return _original_say(who, what, *args, **kwargs)
    renpy.say = narrat_say


init 6 python:
    import logging
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager

    def _dump_settings():
        runtime.logger.warn('\n\n== state_manager.characters_manager._characters_store ==')
        runtime.logger.warn(gsm.characters_manager._characters_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager._events_manager._events_store ==')
        runtime.logger.warn(gsm._events_manager._events_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.inventory_items_manager._inventory_items_store ==')
        runtime.logger.warn(gsm.inventory_items_manager._inventory_items_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.journal_notes_manager._journal_notes_store ==')
        runtime.logger.warn(gsm.journal_notes_manager._journal_notes_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.locations_manager._locations_store ==')
        runtime.logger.warn(gsm.locations_manager._locations_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.world_manager._world_store ==')
        runtime.logger.warn(gsm.world_manager._world_store.toJson(2))
        runtime.logger.warn('\n\n== global_narrat_manager._narrat_store ==')
        runtime.logger.warn('Cannot be serialized to json by design')
        runtime.global_log_events_manager.write_event('Dumped settings to log')


label start:
    # show screen events_manager_display
    # for x in ['z', 'Z', 'я', 'Я']:
    #     key x action Function(runtime.global_log_events_manager.ping)
    # for x in ['x', 'X', 'ч', 'Ч']:
    #     key x action Function(_dump_settings)

    show screen screen_narrat

    menu:
        'dev' if enabled_dev:
            jump dev
        'Вступление для технодемки':
            jump introduction
        'Новая жизнь':
            jump intro


label dev:
    $ gsm = runtime.global_state_manager
    $ gsm.world_manager.inventory_items_manager.pick_item('has_mortuary_key')

    jump intro


# do not modify the next line. It's one of the first line in the game)
label end:
    $ achievement_mortuary_gate.grant()
    snowinmars '…'
    snowinmars '………'
    snowinmars 'Спасибо.'
    menu:
        'Выйти.':
            $ renpy.full_restart()


define dialogue_stack = [] # stack with *_dispose labels
label dialogues_dispose:
    while dialogue_stack:
        $ label = dialogue_stack.pop()
        $ renpy.call(label)
    jump map_dispatcher

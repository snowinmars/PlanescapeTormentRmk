init 10 python:
    import logging
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager

    def _dump_settings():
        runtime.logger.warn('\n\n== state_manager.characters_manager._characters_store ==')
        runtime.logger.warn(gsm.characters_manager._characters_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager._events_manager._events_store ==')
        runtime.logger.warn(gsm._events_manager._events_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.inventory_manager._inventory_store ==')
        runtime.logger.warn(gsm.inventory_manager._inventory_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.journal_manager._journal_store ==')
        runtime.logger.warn(gsm.journal_manager._journal_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.locations_manager._locations_store ==')
        runtime.logger.warn(gsm.locations_manager._locations_store.toJson(2))
        runtime.logger.warn('\n\n== state_manager.world_manager._world_store ==')
        runtime.logger.warn(gsm.world_manager._world_store.toJson(2))
        runtime.logger.warn('\n\n== global_narrat_manager._narrat_store ==')
        runtime.logger.warn('Cannot be serialized to json by design')
        runtime.global_events_manager.write_event('Dumped settings to log')


screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(runtime.global_events_manager.ping)

    for x in ['x', 'X', 'ч', 'Ч']:
        key x action Function(_dump_settings)

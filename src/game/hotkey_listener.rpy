init 10 python:
    import logging
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager

    def _dump_dict(d):
        return "\n".join(f"{k}\t{v}" for k, v in d.items())

    def _dump_settings():
        runtime.logger.warn('\n\n== state_manager._once_keys ==')
        runtime.logger.warn(str(gsm._once_keys))
        runtime.logger.warn('\n\n== state_manager._registry ==')
        runtime.logger.warn(_dump_dict(gsm._registry))
        runtime.logger.warn('\n\n== state_manager.characters_manager._characters ==')
        runtime.logger.warn(_dump_dict(gsm.characters_manager._characters))
        runtime.logger.warn('\n\n== state_manager.characters_manager._once_keys ==')
        runtime.logger.warn(_dump_dict(gsm.characters_manager._once_keys))
        runtime.logger.warn('\n\n== state_manager.locations_manager._i2e_mapping ==')
        runtime.logger.warn(_dump_dict(gsm.locations_manager._i2e_mapping))
        runtime.logger.warn('\n\n== state_manager.locations_manager._e2i_mapping ==')
        runtime.logger.warn(_dump_dict(gsm.locations_manager._e2i_mapping))
        runtime.logger.warn('\n\n== state_manager.locations_manager._current_external ==')
        runtime.logger.warn(gsm.locations_manager._current_external)
        runtime.logger.warn('\n\n== state_manager.locations_manager._current_internal ==')
        runtime.logger.warn(gsm.locations_manager._current_internal)
        runtime.logger.warn('\n\n== state_manager.locations_manager._visited_externals ==')
        runtime.logger.warn(str(gsm.locations_manager._visited_externals))
        runtime.logger.warn('\n\n== state_manager.locations_manager._visited_internals ==')
        runtime.logger.warn(str(gsm.locations_manager._visited_internals))
        runtime.global_events_manager.write_event('Dumped settings to log')


screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(runtime.global_events_manager.ping)

    for x in ['x', 'X', 'ч', 'Ч']:
        key x action Function(_dump_settings)

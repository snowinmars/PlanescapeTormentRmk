init 10 python:
    import logging
    from game.engine.runtime import (runtime)
    logger = runtime.logger
    gsm = runtime.global_state_manager

    def _dump_dict(d):
        return "\n".join(f"{k}\t{v}" for k, v in d.items())

    def _dump_settings():
        logger.warn('\n\n== state_manager._once_keys ==')
        logger.warn(str(gsm._once_keys))
        logger.warn('\n\n== state_manager._registry ==')
        logger.warn(_dump_dict(gsm._registry))
        logger.warn('\n\n== state_manager.characters_manager._characters ==')
        logger.warn(_dump_dict(gsm.characters_manager._characters))
        logger.warn('\n\n== state_manager.characters_manager._once_keys ==')
        logger.warn(_dump_dict(gsm.characters_manager._once_keys))
        logger.warn('\n\n== state_manager.locations_manager._i2e_mapping ==')
        logger.warn(_dump_dict(gsm.locations_manager._i2e_mapping))
        logger.warn('\n\n== state_manager.locations_manager._e2i_mapping ==')
        logger.warn(_dump_dict(gsm.locations_manager._e2i_mapping))
        logger.warn('\n\n== state_manager.locations_manager._current_external ==')
        logger.warn(gsm.locations_manager._current_external)
        logger.warn('\n\n== state_manager.locations_manager._current_internal ==')
        logger.warn(gsm.locations_manager._current_internal)
        logger.warn('\n\n== state_manager.locations_manager._visited_externals ==')
        logger.warn(str(gsm.locations_manager._visited_externals))
        logger.warn('\n\n== state_manager.locations_manager._visited_internals ==')
        logger.warn(str(gsm.locations_manager._visited_internals))
        runtime.global_events_manager.write_event('Dumped settings to log')


screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(runtime.global_events_manager.ping)

    for x in ['x', 'X', 'ч', 'Ч']:
        key x action Function(_dump_settings)

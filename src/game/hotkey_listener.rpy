init 10 python:
    import logging
    logger = renpy.store.logger
    gsm = renpy.store.global_settings_manager

    def _dump_dict(d):
        return "\n".join(f"{k}\t{v}" for k, v in d.items())

    def _dump_settings():
        logger.warn('\n\n== settings_manager._once_keys ==')
        logger.warn(str(gsm._once_keys))
        logger.warn('\n\n== settings_manager._registry ==')
        logger.warn(_dump_dict(gsm._registry))
        logger.warn('\n\n== settings_manager.character_manager._characters ==')
        logger.warn(_dump_dict(gsm.character_manager._characters))
        logger.warn('\n\n== settings_manager.character_manager._once_keys ==')
        logger.warn(_dump_dict(gsm.character_manager._once_keys))
        logger.warn('\n\n== settings_manager.location_manager._i2e_mapping ==')
        logger.warn(_dump_dict(gsm.location_manager._i2e_mapping))
        logger.warn('\n\n== settings_manager.location_manager._e2i_mapping ==')
        logger.warn(_dump_dict(gsm.location_manager._e2i_mapping))
        logger.warn('\n\n== settings_manager.location_manager._current_external ==')
        logger.warn(gsm.location_manager._current_external)
        logger.warn('\n\n== settings_manager.location_manager._current_internal ==')
        logger.warn(gsm.location_manager._current_internal)
        logger.warn('\n\n== settings_manager.location_manager._visited_externals ==')
        logger.warn(str(gsm.location_manager._visited_externals))
        logger.warn('\n\n== settings_manager.location_manager._visited_internals ==')
        logger.warn(str(gsm.location_manager._visited_internals))
        renpy.store.global_event_manager.write_event('Dumped settings to log')


screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(renpy.store.global_event_manager.ping)

    for x in ['x', 'X', 'ч', 'Ч']:
        key x action Function(_dump_settings)

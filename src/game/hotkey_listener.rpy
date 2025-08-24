init 10 python:
    import logging
    devlog = logging.getLogger('log')
    gsm = renpy.store.global_settings_manager

    def _dump_dict(d):
        return "\n".join(f"{k}\t{v}" for k, v in d.items())

    def _dump_settings():
        devlog.warn('\n\n== settings_manager._once_keys ==')
        devlog.warn(str(gsm._once_keys))
        devlog.warn('\n\n== settings_manager._registry ==')
        devlog.warn(_dump_dict(gsm._registry))
        devlog.warn('\n\n== settings_manager.character_manager._characters ==')
        devlog.warn(_dump_dict(gsm.character_manager._characters))
        devlog.warn('\n\n== settings_manager.character_manager._once_keys ==')
        devlog.warn(_dump_dict(gsm.character_manager._once_keys))
        devlog.warn('\n\n== settings_manager.location_manager._i2e_mapping ==')
        devlog.warn(_dump_dict(gsm.location_manager._i2e_mapping))
        devlog.warn('\n\n== settings_manager.location_manager._e2i_mapping ==')
        devlog.warn(_dump_dict(gsm.location_manager._e2i_mapping))
        devlog.warn('\n\n== settings_manager.location_manager._current_external ==')
        devlog.warn(gsm.location_manager._current_external)
        devlog.warn('\n\n== settings_manager.location_manager._current_internal ==')
        devlog.warn(gsm.location_manager._current_internal)
        devlog.warn('\n\n== settings_manager.location_manager._visited_externals ==')
        devlog.warn(str(gsm.location_manager._visited_externals))
        devlog.warn('\n\n== settings_manager.location_manager._visited_internals ==')
        devlog.warn(str(gsm.location_manager._visited_internals))
        renpy.store.global_event_manager.write_event('Dumped settings to log')


screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(renpy.store.global_event_manager.ping)

    for x in ['x', 'X', 'ч', 'Ч']:
        key x action Function(_dump_settings)

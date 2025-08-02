screen hotkey_listener():
    layer "bottom"

    for x in ['z', 'Z', 'я', 'Я']:
        key x action Function(lambda: renpy.store.global_event_manager.ping())
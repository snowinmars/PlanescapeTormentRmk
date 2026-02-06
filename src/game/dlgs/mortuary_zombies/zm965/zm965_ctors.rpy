init 10 python:
    from game.engine.runtime import (runtime)
    gsm = runtime.global_state_manager


label speak_zm965:
    $ renpy.show_screen('screen_narrat')

    # IF ~  NearbyDialog("Dmorte")
    if gsm.world_manager.get_in_party_morte() and \
        not gsm.world_manager.get_heard_about_rule_of_threes():
        jump ctor_zm965_s0

    # IF ~  !NearbyDialog("Dmorte")
    if not gsm.world_manager.get_in_party_morte():
        jump ctor_zm965_s1

    jump ctor_zm965_s1


label ctor_zm965_s0:
    show dialogue_sprite_zm965_default at dialogue
    $ dialogue_stack.append('zm965_dispose')
    jump zm965_s0


label ctor_zm965_s1:
    show dialogue_sprite_zm965_default at dialogue
    $ dialogue_stack.append('zm965_dispose')
    jump zm965_s1


label zm965_dispose:
    $ renpy.hide_screen('screen_narrat')
    scene onlayer dialogue
    jump map_dispatcher

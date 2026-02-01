################################################################################
## Внутриигровые экраны
################################################################################


## Экран выбора ################################################################
##
## Этот экран используется, чтобы показывать внутриигровые выборы,
## представленные оператором menu. Один параметр, вложения, список объектов,
## каждый с заголовком и полями действия.
##
## https://www.renpy.org/doc/html/screen_special.html#choice

define click_actions = lambda item: [
    item.action,
    Function(narrator.add_history,
            kind='adv',
            who=__('protagonist_character_name'),
            what=__(item.caption)),
    Function(runtime.global_narrat_manager.add_menu_choice, item.caption)
]

# Narrated: choices renders in the 'narrat' screen, but it is useful to set handlers here
screen choice(items):
    on 'show' action Function(runtime.global_narrat_manager.update_menu_items, items)
    on 'hide' action Function(runtime.global_narrat_manager.update_menu_items, [])

    if len(items) == 1 and renpy.is_skipping():
        timer 0.00001 action click_actions(items[0])

    if len(items) == 1:
        key 'mouseup_1' action click_actions(items[0])
        key 'K_KP_ENTER' action click_actions(items[0])
        key 'K_KP1' action click_actions(items[0])

    for i, item in enumerate(items, 1):
        if i <= 9:
            key str(i) action click_actions(item)
            key 'K_KP{}'.format(i) action click_actions(item)

    modal False
    frame:
        background None
        xpos 0
        ypos 0
        xsize 1
        ysize 1

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


# Narrat below
screen choice(items):
    on "show" action [
        Function(runtime.global_narrat_manager.update_menu_items, items)
    ]
    on "hide" action Function(runtime.global_narrat_manager.update_menu_items, [])

    $ click_actions = lambda item: [
        item.action,
        Function(narrator.add_history,
                kind="adv",
                who=__('the_nameless_one'),
                what=__(item.caption)),
        Function(runtime.global_narrat_manager.add_menu_choice, item.caption)
    ]

    if len(items) == 1 and renpy.is_skipping():
        timer 0.00001 action click_actions(items[0])

    if len(items) == 1:
        key "mouseup_1" action click_actions(items[0])
        key "K_KP_ENTER" action click_actions(items[0])

    for i, item in enumerate(items, 1):
        if i <= 9:
            key str(i) action click_actions(item)

    modal False
    frame:
        background None
        xpos 0
        ypos 0
        xsize 1
        ysize 1

# Narrat above
# RenPy below

# screen choice(items):
#     style_prefix "choice"
#     $ click_actions = lambda item: [
#         item.action,
#         Function(narrator.add_history,
#                 kind="adv",
#                 who=__('the_nameless_one'),
#                 what=__(item.caption))
#     ]

#     if len(items) == 1 and renpy.is_skipping():
#         timer 0.00001 action click_actions(items[0])

#     if len(items) == 1:
#         key "mouseup_1" action click_actions(items[0])
#         key "K_KP_ENTER" action click_actions(items[0])

#     for i, item in enumerate(items, 1):
#         if i <= 9:
#             key str(i) action click_actions(item)

#     fixed:
#         xfill True
#         yfill True

#         $ xs = renpy.get_physical_size()[0] - 420
#         frame:
#             xalign 0
#             ypos 1.0
#             yanchor 1.0
#             xsize xs
#             ysize 200
#             yoffset -95
#             background Transform('bg/diabg_ans.png', fit='cover')
#             padding (20, 30)

#             viewport:
#                 id "choice_viewport"
#                 scrollbars "vertical"
#                 mousewheel True
#                 draggable True
#                 xfill True
#                 yfill True

#                 $ rows = (len(items) + 1) // 2
#                 grid 2 rows:
#                     xfill True
#                     spacing 0

#                     for i, item in enumerate(items, 1):
#                         use choice_item(item, i, click_actions)


# screen choice_item(item, i, click_actions):
#     frame:
#         background None
#         xfill True
#         padding (0, 0)

#         button:
#             action click_actions(item)
#             padding (10, 5)

#             text str(i) + '. ' + __(item.caption):
#                 xalign 0.0
#                 yalign 0.5
#                 text_align 0.0
#                 layout "tex"
#                 xfill True
#                 size 18
#                 color '#ff2e21'
#                 hover_color '#f0ede4'

# screen short_history():
#     $ yadj = ui.adjustment()
#     if yadj.value == yadj.range:
#         $ yadj.value = float('inf')

#     window:
#         xfill True
#         xsize 600
#         ysize 750
#         xalign 1.0
#         yalign 0.0
#         yoffset 0
#         background Transform('bg/diabg_his.png', fit='cover')
#         padding (40, 80)

#         viewport:
#             yinitial 1.0
#             scrollbars "vertical"
#             yadjustment yadj
#             draggable True
#             mousewheel True

#             vbox:
#                 spacing 7
#                 xfill True

#                 for h in (_history_list[:-1] if len(_history_list) <= 50 else _history_list[len(_history_list) - 50:-1]):
#                     $ what = renpy.filter_text_tags(h.what, allow=gui.history_allow_tags)

#                     if h.who is None or h.who == '':
#                         text what:
#                             id "what"
#                             size 18
#                             xalign 0
#                             color '#8ca57d'
#                             substitute False
#                     elif h.who == 'the_nameless_one':
#                         text __('Безымянный') + ' - ' + what:
#                             id "what"
#                             size 18
#                             xalign 0
#                             color '#a0c8d7'
#                             substitute False
#                     else:
#                         text f'{{color=#b8a175}}{h.who}{{/color}} - {what}':
#                             id "what"
#                             size 18
#                             xalign 0
#                             color '#8ca57d'
#                             substitute False

# style choice_vbox is vbox
# style choice_button is button
# style choice_button_text is button_text

# style choice_vbox:
#     xalign 0.5
#     yalign 1
#     background '#99000099'

#     spacing gui.choice_spacing

# style choice_button is default:
#     properties gui.button_properties("choice_button")
#     # background '#00990099'

# style choice_button_text is default:
#     properties gui.text_properties("choice_button")
#     # color '#ff0000'


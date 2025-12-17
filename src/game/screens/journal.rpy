screen journal_screen():
    $ notes = runtime.global_journal_manager.build_journal()
    key "j" action Hide("journal_screen")
    key "mouseup_3" action Hide("journal_screen")

    tag menu
    modal True

    # Полупрозрачный фон (70% прозрачности)
    add Solid("#000000B3")

    # Цветной фон для области журнала
    frame:
        xalign 0.5
        yalign 0.5
        xsize 900
        ysize 700
        background Solid("#333333")

        vbox:
            spacing 0
            xfill True
            yfill True

            # Верхняя панель с заголовком и кнопкой закрытия
            fixed:
                xfill True
                ysize 50

                # Заголовок по центру вверху
                text "Дневник":
                    xalign 0.5
                    yalign 0.5
                    size 28
                    color "#FFFFFF"

                # Кнопка закрытия в правом верхнем углу
                textbutton "Закрыть":
                    action Hide("journal_screen")
                    xalign 1.0
                    yalign 0.5
                    background "#FF0000"
                    text_color "#FFFFFF"

            # Прокручиваемая область с заметками (занимает всё оставшееся пространство)
            viewport:
                scrollbars "vertical"
                mousewheel True
                draggable True
                xfill True
                yfill True

                vbox:
                    spacing 10
                    xfill True

                    if notes:
                        for note in notes:
                            text note.content:
                                size 16
                                color "#FFFFFF"
                                xfill True
                            text '===':
                                size 12
                    else:
                        text "Заметок пока нет":
                            size 14
                            xalign 0.5
                            yalign 0.5
                            color "#AAAAAA"
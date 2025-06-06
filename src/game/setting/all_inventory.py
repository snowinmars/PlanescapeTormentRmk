import renpy
from engine.inventory import (InventoryItem)

def _has_copper_earring_closed_action():
    renpy.store.global_dialog_key = "dmorte_one_copearc"
    renpy.exports.jump('dialog_dispatcher')

def _has_1201_note_action():
    renpy.store.global_dialog_key = "dmorte_one_1201_note"
    renpy.exports.jump('dialog_dispatcher')

def build_all_inventory(manager):
    manager.register(InventoryItem(
        settings_id="has_intro_key",
        orig_id='keypr.itm',
        name="Ключ",
        description="Ручка этого бронзового ключа несколько раз перекручена по своей оси так, что она напоминает винт. Если верить Морту, он открывает одну из дверей в препараторской.",
        grid_image="images/icons/intro_key.png",
        detail_image="images/icons/intro_key.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_tome_ba",
        orig_id='tomeba.itm',
        name="Книга костей и праха",
        description="В этой изношенной книге в кожаном переплете перечисляются диаграммы и схемы нескольких малых заклятий и заклинаний. В ней есть множество рисунков скелетов и костей, а также способы их сохранения на протяжении длительного времени.\n\nОсобый интерес вызывает раздел, касающийся «стражей». По всей видимости, тленные оживляют трупы павших гигантов, чтобы те служили стражниками Морга. Чтобы сделать их еще более смертоносными, в их нагрудники вплетают защитные чары, чтобы помочь им защищаться от атак.\n\nКнига слишком сложна, чтобы ты осилил ее сразу, но, пожалуй, можно было бы перечитать некоторые разделы в случае необходимости.",
        grid_image="images/icons/tome_ba.png",
        detail_image="images/icons/tome_ba.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_copper_earring_closed",
        orig_id='copearc.itm',
        name="Cтаринная медная серьга",
        description="Эта медная серьга выглядит древней. Что довольно странно, у нее нет крючка или каких-либо других приспособлений для крепления на ухе. Однако, на внутренней поверхности серьги высечен ряд необычных вырезов, которые заслуживают более внимательного изучения.",
        grid_image="images/icons/copper_earring.png",
        detail_image="images/icons/copper_earring.png",
        use_action=_has_copper_earring_closed_action
    ))
    manager.register(InventoryItem(
        settings_id="has_copper_earring_opened",
        orig_id='copearo.itm',
        name="Cтаринная медная серьга",
        description="У этой старинной медной серьги на внутренней стороне есть несколько вырезов. Хотя на первый взгляд надеть ее невозможно, ее можно открыть, продев ноготь в третий вырез сверху и нажав.\n\nБлагодаря этому можно не только надевать серьгу, но и открыть небольшую полость внутри, куда можно поместить сообщения или другие небольшие предметы. В результате серьга может стоить гораздо дороже.",
        grid_image="images/icons/copper_earring.png",
        detail_image="images/icons/copper_earring.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_scalpel",
        orig_id='scalpel.itm',
        name="Скальпель",
        description="Похоже, этим простым хирургическим инструментом довольно часто пользовались.",
        grid_image="images/icons/scalpel.png",
        detail_image="images/icons/scalpel.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_needle",
        orig_id='needle.itm',
        name="Иголка и нитка",
        description="Это катушка ниток и небольшая костяная игла. Похоже, ими пользуются для зашивания ран... на живых или мертвых телах.",
        grid_image="images/icons/needle.png",
        detail_image="images/icons/needle.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_1201_note",
        orig_id='n1201.itm',
        name="ЗАПИСКА ОТ ТРУПА «1201»",
        description="Эта вонючая записка была извлечена изо рта одного из зомби Морга; похоже, она случайно была вшита в рот. Несмотря на состояние, текст все еще различим:\n\n«Прошу любого тленного, кто прочтет это — умоляю вас. Я знаю мои обязанности согласно Контракту Смерти, но я готов предложить нечто *большее*, чем моя подпись под обязательствами в случае, если мое тело будет кремировано, а не пробуждено. Я позаботился о том, чтобы эта записка была рядом с моим телом во время моей смерти. Если вы читаете это — пожалуйста, используйте эту записку, как это описано ниже, и получите нечто в обмен на мои обязательства по Контракту. Номер моего Контракта послужит в качестве ключа.»\n\nКажется, уже поздно предотвращать поднятие этого трупа... ниже ты замечаешь нарисованную диаграмму. Похоже, это указания для сгибания этого пергамента на какой-то странный манер.",
        grid_image="images/icons/1201_note.png",
        detail_image="images/icons/1201_note.png",
        use_action=_has_1201_note_action
    ))
    manager.register(InventoryItem(
        settings_id="has_dzm1664_page",
        orig_id='logpage.itm',
        name="Страница из регистрационного журнала",
        description="Эта потрепанная страница была аккуратно вырвана из книги. На ней есть записи в скучном и занудном стиле:\n\n16537, 5ое, ночь: Выпивший\n— повреждение грудной клетки\n— причина смерти: удар тупым предметом/абишай?\n— сборщик: Сифилитик\n— уплачено 3 медяка\n— личных вещей нет.\n\n16538: 5ое, ночь: Иссушенное тело\n— причина смерти: неопределима\n— возраст тела препятствует идентификации*\n— сборщик: Фарод\n— уплачено 3 медяка\n— личных вещей нет (Обобран? Следы ножа указывают на вскрытие.)\n\n16539: 5-е, ночь: тело со шрамами \n— причина смерти: неопределима (шрамы не являются причиной смерти\n— шоковая травма?) \n— сборщик: Фарод\n— уплачено 3 медяка\n— личные вещи:\n— кастет\n— тринадцать медяков\n— Средний стол, Приемная комната.\n\n16540: 5-е, ночь: Иссушенное тело #2\n— причина смерти: неопределима\n— возраст тела препятствует идентификации*\n— сборщик: Фарод\n— уплачено 3 медяка\n— личные вещи: следы ножа указывают на вскрытие, но недостаточно тщательное\n— медная серьга, найденная в брюшной полости; серьга заперта в юго-восточной препараторской. Посвященный Третьего круга провел его исследование: на нем такие же странные обозначения, как у контрактного рабочего #79.\n\n16541: 5-е, ночь: Скелет\n— причина смерти: неопределима\n— возраст тела препятствует идентификации*\n— сборщик: Фарод\n— уплачено 3 медяка\n— личных вещей нет (Обобран? Следы ножа указывают на вскрытие).\n\n* Как и в предыдущих записях, эти тела, доставленные Фародом, были предварительно вскрыты. Я попросил посвященного Эморика начать расследование этой закономерности. Более того, запись 16542 тоже из банды Фарода. Ранее я уже видел этого индивидуума\n— надо попросить Эморика разузнать, как умер этот мужчина.\n\n16542: 5-е, ночь: тифлинг, мужчина\n— причина смерти: следы резанных ран/изменение цвета ран вызвана трупным гниением (когти упыря?)\n— сборщик: Фарод\n— уплачено 3 медяка\n— личных вещей нет (Обобран? Следы ножа указывают на вскрытие).",
        grid_image="images/icons/dzm1664_page.png",
        detail_image="images/icons/dzm1664_page.png",
    ))
    manager.register(InventoryItem(
        settings_id="has_bandages",
        orig_id='bandage.itm',
        name="Бинты",
        description="Это рулон бинтов, полезный для перевязывания легких ран.",
        grid_image="images/icons/bandages.png",
        detail_image="images/icons/bandages.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_embalm",
        orig_id='embalm.itm',
        name="Бальзамирующая жидкость",
        description="Это запечатанная банка с бальзамирующей жидкостью. Она используется для сохранения мертвых тел. В добавок к этому запах жидкости начисто перебивает запах гниющего тела.",
        grid_image="images/icons/embalm.png",
        detail_image="images/icons/embalm.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_keyem",
        orig_id='keyem.itm',
        name="Ключ от бальзамационной",
        description="У этого длинного и тонкого ключа спиральная ручка. От него слегка попахивает бальзамирующей жидкостью. На вид он очень старый и покрыт множеством царапин.",
        grid_image="images/icons/keyem.png",
        detail_image="images/icons/keyem.png"
    ))
    manager.register(InventoryItem(
        settings_id="has_tearring",
        orig_id='tearring.itm',
        name="Cерьга «Gравило трех»",
        description="Ты получил эту небольшую серьгу, сложив особым образом записку изо рта одного из ходячих трупов в Морге. Серьга эта очень красивая, но, несмотря на свою красоту, она напоминает тебе о том, насколько странен тот мир, в котором ты очнулся.\n\nНа серьгу наложено слабое благословение одного из богов богатства из какого-то захолустного первичного мира; если, держа ее в в руке, прошептать слово «медь», она даст владельцу 33 медяка. Это благословение можно использовать только три раза, после чего оно иссякнет.",
        grid_image="images/icons/tearring.png",
        detail_image="images/icons/tearring.png"
    ))

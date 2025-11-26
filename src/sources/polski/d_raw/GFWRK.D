// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~Robotnik odwraca się i ujrzawszy cię, umyka w popłochu.~ */
  IF ~~ THEN REPLY #5504 /* ~Zrobione.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~Osobnik ten starannie ignoruje twoją osobę. Strażnicy przez ten czas eskortują cię do wyjścia.~ */
  IF ~~ THEN REPLY #5506 /* ~Zrobione.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"Słyszałem, że w pobliżu ciała kowala znaleziono szydło. Ale z drugiej strony myślę, że tego typu przedmioty można znaleźć w każdym innym miejscu. Gdybym się jednak miał zakładać, kto jest mordercą, postawiłbym wszystkie pieniądze na Tyldona. Trudno w Kuźni o większego drania."~ */
  IF ~~ THEN REPLY #5508 /* ~"Dzięki za pomoc. Ale chciałbym również, abyś odpowiedział na kilka moich pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"Dobrze. To już wszystko, co chciałem wiedzieć."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"Pytaj, o co chcesz."~ */
  IF ~~ THEN REPLY #5511 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"Co robisz?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"Kto jest twoim zwierzchnikiem?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"Nieważne. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"Dlaczego pytasz? Jesteś od Zaborców? Ja już spłaciłem swoje podatki."~ */
  IF ~~ THEN REPLY #5516 /* ~"Zaborców? A kto to taki?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"Nie, byłem po prostu ciekawy. Wiesz, ot, grzeczne zainteresowanie."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"Dobra nieważne. Chciałbym zresztą spytać się o coś innego."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"Zarabiam tu swoją dniówkę. Pracuję, aby zbliżyć się do doskonałości. Sprzątam to miejsce. Dbam o to, aby kowalom nie brakowało surowca. Po prostu czuwam nad tym, aby wykonane produkty trafiały tam, gdzie powinny się znaleźć. Tak właśnie pokrótce mógłbym przedstawić swoją pracę."~ */
  IF ~~ THEN REPLY #5521 /* ~"Więc twoja praca generalnie opiera się na sprzątaniu i najprostszych pracach?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"Ach tak. Mam jeszcze jedno pytanie do ciebie."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"Ach tak. Wobec tego na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"A co? Pracujesz dla niego?"~ */
  IF ~~ THEN REPLY #5525 /* ~"No... Tak."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"Żartujesz?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"No wiesz... poborcy podatków w mieście. Co z ciebie za tępak? Muszę wracać do roboty."~ */
  IF ~~ THEN REPLY #5528 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"Naprawdę nie mam czasu na przyjacielskie pogaduszki, szczególnie z nadzorcą stojącym mi nad głową. Ostatnimi czasy jesteśmy bardzo zajęci. Może odpowiem ci w ten sposób: możemy się zaprzyjaźnić, ale po zamknięciu projektu."~ */
  IF ~~ THEN REPLY #5530 /* ~"Dobrze. Może odpowiesz na jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"Jeżeli chcesz, możesz patrzyć na to w ten sposób. Odkąd czytuję księgi Bogowców, uważam to za próbę mojej wytrwałości. Patrzę na całe swoje życie, jak na próbę mojej własnej wytrwałości."~ */
  IF ~~ THEN REPLY #5533 /* ~"Więc dlaczego nie popatrzysz na to jako na próbę inteligencji i po prostu porzucisz tę pracę?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"I to naprawdę pomaga?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"Wobec tego to nie człowiek, a anioł. Wzór delikatności. Ponieważ ja osobiście mam niejakie trudności z prawieniem komplementów pod jego adresem, najlepiej będzie, jak wrócę do pracy. Bywaj." Robotnik odwraca się do ciebie plecami, i wszystko wskazuje, że ma zamiar pozostać głuchy na wszelkie dalsze nagabywania.~ */
  IF ~~ THEN REPLY #5537 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"To jeden z największych łajdaków, z jakimi kiedykolwiek przyszło mi się w życiu spotkać... A musisz wiedzieć, że wychowałem się w Ulu, gdzie nigdy nie było trudno o wielkich łotrów. Mam cichą nadzieję, że już wkrótce zabierze go bolesna i okropna śmierć. Inna sprawa, że oznaczałoby to również koniec nas wszystkich."~ */
  IF ~~ THEN REPLY #5539 /* ~"Ach tak. To może odpowiesz na jeszcze jedno pytanie."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"Zrozumiałem. Trzymaj się."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"Zająć się niby czym? Kto miałby mnie zatrudnić? Tutejszy system stwierdza dobitnie, że nie nadaję się do żadnej innej roboty, poza pracą służącego, ponieważ przyszedłem na świat w Ulu. Do diabła, i tak się cieszę, że przynajmniej tyle osiągnąłem. Póki nie znajdę lepszego zawodu, cieszę się tym, co mam. Zawsze lepsze to, niż zdychanie z głodu."~ */
  IF ~~ THEN REPLY #5542 /* ~"Och, proszę, możesz uczynić wszystko, jeżeli włożysz w to trochę wysiłku."~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"To przekonywujące. Ale czy nie uważasz, że mógłbyś to robić lepiej?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"A żebyś wiedział, że tak. Daje mi nadzieję na lepsze jutro. W tym życiu albo w następnym, nieważne. Może i jestem głupcem, ale wiedz, że człowiek, któremu życie nie poskąpiło goryczy, uczy się czerpać z niego wszystkie niewielkie radości. Życie warstw niższych nie bywa usłane różami. Trep z ciebie, jeśli tego nie wiesz." Robotnik odwraca się od ciebie. "Muszę wracać do pracy. Bywaj zdrów."~ */
  IF ~~ THEN REPLY #5545 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"Co, może mam skończyć jak ty, zombie o stu bliznach? Nie, dziękuję. Nie wiem, co ci się przydarzyło i nie ciekawi mnie to; cieszę się tym, co mam. Powolny postęp w życiu bardziej pasuje do moich przekonań. A teraz, proszę cię o wybaczenie, muszę wracać do swojej pracy." Robotnik odwraca się i jego zainteresowanie twoją osobą dobiega końca.~ */
  IF ~~ THEN REPLY #5547 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"Wiesz, co ci powiem... Ty żyjesz twoim życiem, a ja moim. Czyż nie? A teraz muszę wracać do swojej pracy." Robotnik odwraca się i jego zainteresowanie twoją osobą dobiega końca.~ */
  IF ~~ THEN REPLY #5549 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"Prawdę powiedziawszy, całe to zamieszanie ostatnich dni sprawiło, że za bardzo nie wiem, o co chodzi. To tak, jakbym nigdy nie opuszczał Ula... W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #5551 /* ~"Możesz odpowiedzieć na kilka moich pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"Nie możesz. Nieważne."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~Widzisz jeszcze jedną ponurą postać z Ula, zajętą taszczeniem skrzyń. Trudno ci nawet stwierdzić, jakiej jest płci. "Czego chcesz ode mnie?", powiada.~ */
  IF ~~ THEN REPLY #5554 /* ~"Tylko odpowiedzi na parę nurtujących mnie pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"Czego chcesz?"~ */
  IF ~~ THEN REPLY #5557 /* ~"Tylko odpowiedzi na parę nurtujących mnie pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"Niczego."~ */ EXIT
END

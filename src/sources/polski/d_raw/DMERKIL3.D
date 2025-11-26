// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL3~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10504 /* ~Posiwiały Łaskobójca obraca się wolno w twoim kierunku, przygląda dokładnie twojej twarzy i nagle, jego ręce puszczają się w ruch. Strzelają w górę, dzierżąc szczególnie paskudnie wyglądającą broń. "Chłopaki! Mamy tu pośród nas mordercę!" Rusza do ataku.~ */
  IF ~~ THEN REPLY #10505 /* ~Zaatakuj go.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10506 /* ~Uciekaj.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10507 /* ~Widzisz posiwiałego, krzepkiego mężczyznę w kolczastym pancerzu. Powoli i spokojnie mierzy cię z góry na dół, oceniając cię. Jego wzrok zatrzymuje się przez chwilę na twojej twarzy, jakby wydała mu się znajoma. Wzdycha wtedy i rzecze, "Czy mogę ci w czymś pomóc, przyjacielu?"~ */
  IF ~~ THEN REPLY #10508 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #10509 /* ~"Poznałeś mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #10510 /* ~"Kim są twoi przyjaciele, tutaj?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10511 /* ~"Szukam dziennika. Nie natknąłeś się na niego?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10512 /* ~"Szukam Zbieracza o imieniu Farod. Nie wiesz, przypadkiem, gdzie mogę go znaleźć?"~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10514 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 13
  IF ~~ THEN REPLY #10515 /* ~"Zechciej mi opowiedzieć o tym miejscu."~ */ GOTO 7
  IF ~~ THEN REPLY #10516 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10513 /* ~"Chcesz czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #10517 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #10518 /* ~"Poznałeś mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #10519 /* ~"Kim są twoi przyjaciele, tutaj?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10520 /* ~"Szukam dziennika. Nie natknąłeś się na niego?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10521 /* ~"Czy znasz Zbieracza o imieniu Farod? Szukam go."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10522 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 13
  IF ~~ THEN REPLY #10523 /* ~"Zechciej mi opowiedzieć o tym miejscu."~ */ GOTO 7
  IF ~~ THEN REPLY #10524 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.0
  SAY #10525 /* ~"Ja? Jestem Tarner."~ */
  IF ~~ THEN REPLY #10526 /* ~"Co to za strój?"~ */ GOTO 9
  IF ~~ THEN REPLY #10527 /* ~"Kim są twoi przyjaciele?"~ */ GOTO 5
  IF ~~ THEN REPLY #10528 /* ~"Bądź łaskaw odpowiedzieć mi kilka innych pytań"~ */ GOTO 8
  IF ~~ THEN REPLY #10529 /* ~"Dziękuję. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.1
  SAY #10530 /* ~"Wydawało mi się, że tak, ale te podobizny od wieków są nieaktualne i podejrzany pewnie już nie żyje. Oczywiście, to są sfery i dziwniejsze rzeczy się zdarzały. Jednak, jeśli jesteś tym, kim mi się wydaje, to wygląda na to, że narzędziem wymierzenia ci kary było cierpienie."~ */
  IF ~~ THEN REPLY #10531 /* ~"Co możesz powiedzieć mi o osobie, o której mówisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #10532 /* ~"Ha. Kto wie? Zechciej odpowiedzieć mi na kilka innych pytań"~ */ GOTO 8
  IF ~~ THEN REPLY #10533 /* ~"Więcej niż mógłbyś wiedzieć. Więcej niż *ja* wiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 3.1 8.2
  SAY #10534 /* ~"Kaleb i Ilsidon. Kaleb jest nowicjuszem - nowym rekrutem. Ilsidon to mięśnie. Ja jestem mózgiem."~ */
  IF ~~ THEN REPLY #10535 /* ~"Co tutaj robicie?"~ */ GOTO 11
  IF ~~ THEN REPLY #10536 /* ~"Rekrutem? Czy to dlatego wszyscy jesteście ubrani tak samo?"~ */ GOTO 9
  IF ~~ THEN REPLY #10537 /* ~"Rozumiem. Odpowiedz mi na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #10538 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 8.3
  SAY #10539 /* ~"Na nędznych ulicach Sigil, widzę więcej niż trzeba, przyjacielu. Jeśli ten dziennik nie był czymś naprawdę przyciągającym wzrok, to bardzo możliwe, że go nie widziałem."~ */
  IF ~~ THEN REPLY #10540 /* ~"Dobrze. Możesz odpowiedzieć na inne pytania?"~ */ GOTO 8
  IF ~~ THEN REPLY #10541 /* ~"Wydaje mi się, że będzie ciężko to zapamiętać. Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.6 8.6
  SAY #10542 /* ~"To? To gospoda 'Pod Gorejącym Człekiem'. Śpiewka głosi, że to miejsce jest pełne portali lub podobnych miejsc, ale z drugiej strony, to wszędzie w Sigil jest ich pełno. Są tu dobre, tanie napitki i jeśli nie przeszkadzają ci żule i biesy, to nie jest to takie złe miejsce. Chcesz wiedzieć więcej o tym miejscu, to pogadaj sobie z barmanem."~ */
  IF ~~ THEN REPLY #10543 /* ~"Rozumiem. Chciałbym wiedzieć coś jeszcze."~ */ GOTO 8
  IF ~~ THEN REPLY #10544 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.1 5.2 6.0 7.0 9.0 10.0 11.1 12.0 13.0
  SAY #10545 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #10546 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #10547 /* ~"Poznałeś mnie?"~ */ GOTO 4
  IF ~~ THEN REPLY #10548 /* ~"Kim są twoi przyjaciele?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10549 /* ~"Szukam dziennika. Nie natknąłeś się na niego?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10550 /* ~"Czy znasz Zbieracza o imieniu Farod? Szukam go."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10551 /* ~"Co możesz mi powiedzieć o Vhailorze?"~ */ GOTO 13
  IF ~~ THEN REPLY #10552 /* ~"Zechciej mi opowiedzieć o tym miejscu."~ */ GOTO 7
  IF ~~ THEN REPLY #10553 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 5.1 11.0
  SAY #10554 /* ~"To rodzaj munduru. Należymy do oddziałów Czerwonej Śmierci... Łaskobójców. Wymierzamy sprawiedliwość. Ktoś popełnia przestępstwo, a my doprowadzamy go przed oblicze sprawiedliwości. Naprawiamy wyrządzone krzywdy. Jeśli chcesz wiedzieć więcej, idź porozmawiać z którymś z rekrutów."~ */
  IF ~~ THEN REPLY #10555 /* ~"No dobra. Bądź łaskaw odpowiedzieć mi na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #10556 /* ~"Zatem do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY #10557 /* ~"Z tego co wiem, to był szczególnie brutalny przestępca. To było, rzecz jasna, wieki temu. Mówiono, że miał ogromną siłę i wystarczająco dużo gniewu, żeby zedrzeć głowę z bariaura. Z takimi skurlami się nie zadziera. Podobno kiedyś otoczył go patrol Czerwonej śmierci, ale on uciekł przez jeden z portali i od tej pory go nie widziano. Mają jego podobiznę. Gdyby odjąć ci te blizny, to można by cię wziąć za niego. Choć pewnie nim nie jesteś."~ */
  IF ~~ THEN REPLY #10558 /* ~"To z niego przykry gość. Mam kilka pytań dotyczących czegoś innego."~ */ GOTO 8
  IF ~~ THEN REPLY #10559 /* ~"Brzmi paskudnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10560 /* ~"Czekamy na przestępcę. Kaleb nie może się doczekać swojego pierwszego aresztowania - o ile trep, na którego czekamy, w ogóle się pojawi."~ */
  IF ~~ THEN REPLY #10561 /* ~"Czyli co, jesteście swego rodzaju siłami policyjnymi? Ten twój pancerz to jest co... mundur?"~ */ GOTO 9
  IF ~~ THEN REPLY #10562 /* ~"Rozumiem. Odpowiedz mi jeszcze na kilka innych pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #10563 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4 2.4 8.4
  SAY #10564 /* ~"Szukasz go, co? Sądząc po tonie twojego głosu, mogę się założyć, że nie chodzi tutaj o szybkiego drinka w lokalnej tawernie. Widzisz, znam Faroda od dawna. Jest szczwany, i to jak, i wiele czasu upłynie, zanim będziemy na niego coś mieli. Problem polega na tym, że tylko taki fanatyk jak Vhailor posłałby gościa na stryczek, nie mając przeciwko niemu najmniejszych dowodów. Chcę przez to powiedzieć, że nie wiem, gdzie jest ten skurl, ale trzeba ci wiedzieć, że jest podejrzany i że nie wyjdzie ci na dobre, jeśli ktoś cię z nim będzie widział."~ */
  IF ~~ THEN REPLY #10565 /* ~"Dziękuję za radę. Czy możesz odpowiedzieć mi jeszcze na coś?"~ */ GOTO 8
  IF ~~ THEN REPLY #10566 /* ~Dziękuję za cień, przyjacielu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 2.5 8.5
  SAY #10567 /* ~"Vhailor? Był fanatykiem. Nigdy nie wracał o niczym, jeśli sądził, że racja była po jego stronie, nawet gdyby ceną miało być jego życie. Tak bardzo oddany pojęciu sprawiedliwości, prawdziwej sprawiedliwości, że założę się, że zabiłby samą Śmierć, żeby tylko dostać się do informatora, który doprowadziłby go do przestępcy. Nie znał żadnych granic. Był natchnieniem dla nas wszystkich."~ */
  IF ~~ THEN REPLY #10568 /* ~"To się nazywa oddanie. Zechciej odpowiedzieć mi na kolejne pytanie."~ */ GOTO 8
  IF ~~ THEN REPLY #10569 /* ~"Założę się, że był. Żegnaj."~ */ EXIT
END

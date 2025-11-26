// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~Czaszka oddycha ociężale; mówi ociężale, "Dlaczego zakłócasz mój spokój? Tak wiele ostatnio się działo i choć chętnie witam nowe doznania, to muszę wyznać, że pragnę doznać ciszy i spokoju."~ */
  IF ~~ THEN REPLY #31581 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"Co tutaj robisz?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"Co możesz powiedzieć mi o Lotarze?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"Więc wróć do tego. Żegnaj."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"Jestem... Byłem... Oceanem-Przed-Burzą, Czuciowcem. Teraz, jestem niestety tylko dekoracją."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"Czuciowcem? Co to takiego?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"Musi ci być ciężko... nie za wiele tu doznań, co?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"Co możesz powiedzieć mi o Lotarze?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"Skąd się tu wziąłeś?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"Co wiesz o innych czaszkach?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"Opowiedz mi o innych czaszkach, które są na tej półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"Rozumiem. Zostawię cię z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"Siedzę na tej półce i pokrywam się kurzem, aż któryś ze szczurów Lotara wpadnie na to, że trzeba mnie odkurzyć. Odpowiadam na pytania Lotara i... oto mój cały, nędzny żywot."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"Nie, chodzi mi o to jak się tu dostałeś."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"Nie, chodzi mi o to jak się tu dostałeś."~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"Jakie pytania?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"Opowiedz mi o innych czaszkach, które są na tej półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"W takim razie nie przeszkadzam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"Nic, czego on sam nie chciałby ci powiedzieć. Ponieważ nie wiem, czy inne czaszki nie doniosłyby na mnie, gdy powiem coś niewłaściwego, po prostu nie powiem nic. I zanim spytasz, tak, tak bardzo się go boję."~ */
  IF ~~ THEN REPLY #31604 /* ~"Cóż takiego może ci zrobić?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"Opowiedz mi o innych czaszkach, które są na tej półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"Więc wróć do tego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"Och, nie są atrakcyjnym towarzystwem. Jest tu szczurołak Kozigrzebyk, anarchista Ponury Skalp, stary czarodziej-zabójca Stern. Nie wiem, czym Stern się zajmuje, ale jest zły."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"Pragmatyk? Czy to dlatego dźganie kogoś w plecy tak często wydaje się być rozwiązaniem twoich wszystkich problemów?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~Ocean-Przed-Burzą znów zwraca się do ciebie. "Widzisz? Z gruntu zły."~ */
  IF ~~ THEN REPLY #31613 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"Tak, rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"Czuciowiec to członek Stronnictwa Doznań - jednej z frakcji Sigil, która ma siedzibę w Gmachu Rozrywki w Dzielnicy Urzędników. Uważają, że można zrozumieć i kierować wszechświatem tylko przez zmysły i dlatego też powinniśmy zbierać jak najwięcej doznań. Myślę, że zasłużyłem na przydział na zakurzonej półce - mój próg znudzenia jest całkiem niski."~ */
  IF ~~ THEN REPLY #31618 /* ~"Czy mogę coś dla ciebie zrobić?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"Opowiedz mi o innych czaszkach, które są na tej półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"Przykro mi to słyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"Nie, ale miło, że pytasz. Kiedyś udało mi się spaść z półki i roztrzaskać na kawałki. Następna rzecz, jaką pamiętam to, że byłem z powrotem na półce i że wszystkich nas przyklejono. Kiedy Lotar się mną zmęczy, pozbędzie się mnie."~ */
  IF ~~ THEN REPLY #31625 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"Opowiedz mi o innych czaszkach, które są na tej półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"Zatem powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~Gapi się na ciebie. "Masz rację. Szydź sobie." Przerywa na dłuższą chwilę. "Odejdź."~ */
  IF ~~ THEN REPLY #31631 /* ~"Hej, żartowałem tylko..."~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"To długa historia i nie wolno mi o tym z tobą mówić, dopóki nie wypełnisz zadania dla Lotara."~ */
  IF ~~ THEN REPLY #31634 /* ~"Cóż takiego może ci zrobić?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"Mnie możesz powiedzieć."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"Więc opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"No dobrze. W takim razie opowiedz mi o innych czaszkach na półce."~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"No dobrze. W takim razie opowiedz mi o innych czaszkach na półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"W takim razie nie przeszkadzam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"To długa historia, która ma coś wspólnego z Ravelą Szaradną, nocną wiedźmą. Chcesz usłyszeć całą historię?"~ */
  IF ~~ THEN REPLY #31642 /* ~"Tak."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"Nieszczególnie."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~Gdyby mógł wzruszyć ramionami, na pewno by to zrobił: "Nic, czego ci już nie powiedziałem."~ */
  IF ~~ THEN REPLY #31645 /* ~"Więc opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~Gapi się na ciebie, a ty masz uczucie, że lekko drży. "Niezwykła jest ilość bólu, jaką można czuć nie mając zakończeń nerwowych. Ból nie jest tylko fizyczny, a emocje nie mają źródła tylko w umyśle. Wolałbym nie powielać tych dwóch doznań." Przerywa. "To koniec naszej rozmowy. Żegnaj."~ */
  IF ~~ THEN REPLY #31650 /* ~"Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"Och, różne rzeczy... moje doświadczenia, politykę Czuciowców - niestety już niezbyt na czasie! - doświadczenia ludzi, którzy tędy przechodzili i słowa, słowa, słowa. Zadają różne pytania, co doceniam bardziej, niż możesz sobie wyobrazić. Jeśli nie masz już więcej pytań, to chyba zamilknę. Żegnaj."~ */
  IF ~~ THEN REPLY #31662 /* ~"Nie, poczekaj, jeszcze parę pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~Czaszka patrzy obojętnym wzrokiem i nie odzywa się.~ */
  IF ~~ THEN REPLY #31665 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"Więc zamilknę. Żegnaj."~ */
  IF ~~ THEN REPLY #31667 /* ~"Nie, poczekaj, jeszcze parę pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"Żegnaj."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"Czy ja się od ciebie nie uwolnię?"~ */
  IF ~~ THEN REPLY #31670 /* ~"Opowiedz mi o sobie."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"A co z innymi czaszkami na półce?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"Opowiedz mi o innych czaszkach na półce."~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"Myślę, że tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"Dobrze. Pracowałem w Gmachu Rozrywki - kwaterze głównej Czuciowców - w sensorium. Ravela Szaradna, oby moce przeklęły jej czarną duszę, przychodziła tam, by odnaleźć rozwiązania zagadek, na które natrafiła. Była mistrzem w rozwiązywaniu zagadek - te, które łamały nasze najlepsze umysły, dla niej były niczym, - ale i tak napotykała na przeszkody, które musiał rozwiązać ktoś inny. Słyszałem, że chciała rozwiązać sekret samego Sigil."~ */
  IF ~~ THEN REPLY #31677 /* ~"Mów dalej."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"Jestem już zmęczony. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"Była okropnie brzydka i nie zawracała sobie głowy tym, żeby to ukryć magicznie - choć, jak słyszałem od czasu do czasu tak robi, a raczej ROBIŁA - i to ta potworność odstraszyła wielu potencjalnych członków frakcji. A jednak, musiałem ją spytać, o co jej chodziło i czy mogłaby nauczyć mnie tego, co wiedziała."~ */
  IF ~~ THEN REPLY #31680 /* ~"Wygląda na to, że mogła to być pomyłka."~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"Chyba rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"Tak było. Zaproponowała mi układ, gdyż żyła i zajmowała się zagadkami. Skoro miała odpowiedzieć na moje pytania, musiałem zgodzić się odpowiedzieć na jej. Gdyby moja odpowiedź nie była jak trzeba, moje życie miało należeć do niej. Zgodziłem się. Powiedziała mi, że ma zamiar rozwiązać zagadkę Klatki, otworzyć ją dla wszystkich, którzy chcą wejść - mocy, potworów, niebian, modronów i slaadi, nie mówiąc już o istotach ze sfer wewnętrznych. Najważniejsze dla niej było, żeby wszyscy wiedzieli, że tajemnica, której nikt nie mógł rozwikłać, została rozwikłana przez Ravelę."~ */
  IF ~~ THEN REPLY #31683 /* ~"Co stało się potem?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"Zapytała mnie. Nie umiałem odpowiedzieć, choć zapewniała mnie, że odpowiedź będzie prosta jak drut. Moi towarzysze czuciowcy znaleźli mnie wrzeszczącego w sensorium następnego ranka. Błagałem by mnie zabili i tak też zrobili. Nikt nawet nie próbował zasugerować, żebym rozkoszował się nowym doznaniem, tak okropne to było. I... oto jestem. Muszę odpocząć."~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"Jakie to było pytanie?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~Ocean-przez-Burzą, czaszka Czuciowca w bibliotece Lotara, opowiedział mi historię Raveli Szaradnej i jej niesławnych czynów.~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~"Odpowiesz mi jeszcze na kilka pytań?"~ */ JOURNAL #31348 /* ~Ocean-przez-Burzą, czaszka Czuciowca w bibliotece Lotara, opowiedział mi historię Raveli Szaradnej i jej niesławnych czynów.~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"Dobrze. Dziękuję za opowieść. Żegnaj."~ */ JOURNAL #31348 /* ~Ocean-przez-Burzą, czaszka Czuciowca w bibliotece Lotara, opowiedział mi historię Raveli Szaradnej i jej niesławnych czynów.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"Brzmiało tak: Cóż może zmienić naturę człowieka? Długo myślałem nad odpowiedzią i powiedziałem: 'Miłość'. Odparła, że wszyscy ludzie zbyt mocno kochają siebie, żeby coś tak zwykłego jak miłość mogła ich zmienić. A potem... potem... Muszę odpocząć."

Przypominasz sobie postać o zakrzywionym nosie i hebanowej skórze, która zadaje ci podobne pytanie... ale nie umiesz sobie przypomnieć odpowiedzi.~ */
  IF ~~ THEN REPLY #31690 /* ~"Odpowiesz mi jeszcze na kilka pytań?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"Współczuję ci. Żegnaj."~ */ EXIT
END

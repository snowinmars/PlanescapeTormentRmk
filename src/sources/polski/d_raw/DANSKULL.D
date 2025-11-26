// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31732 /* ~Syk wydostaje się spomiędzy zębów czaszki: "Masz na myśli, że jesteś czarodziejem, zabójcą i więźniem."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 8
END

IF ~  Global("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 1 // from:
  SAY #31733 /* ~Głos tej czaszki jest niski i chrapliwy, jak odgłosy hubki i krzesiwa. "Hmm... wydaje mi się, że już cię kiedyś widziałem, nieznajomy."~ */
  IF ~~ THEN REPLY #31734 /* ~"Gdzie mnie widziałeś?"~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31743 /* ~"Całkiem możliwe, ale nie mam na to czasu."~ */ DO ~SetGlobal("AnSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  GlobalGT("AnSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31744 /* ~"Znowu ty, hę? Czego teraz ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #31745 /* ~"Powiedziałeś, że mnie wcześniej widziałeś. Gdzie?"~ */ GOTO 3
  IF ~~ THEN REPLY #31746 /* ~"Opowiedz mi o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31747 /* ~"Jak się tu znalazłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31748 /* ~"Opowiedz mi o Lotarze."~ */ GOTO 6
  IF ~~ THEN REPLY #31749 /* ~"Opowiedz mi o innych czaszkach."~ */ GOTO 7
  IF ~~ THEN REPLY #31750 /* ~"Nic. Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 10.0 11.0
  SAY #31751 /* ~"Klątwa. Miasto-brama do Tartaru."~ */
  IF ~~ THEN REPLY #31752 /* ~"Klątwa? Miasto-brama? Tartar?"~ */ GOTO 8
  IF ~~ THEN REPLY #31753 /* ~"Co ja tam robiłem?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.0 6.2 7.0
  SAY #31754 /* ~"Ja? Jestem Ponury Skalp. Byłem kiedyś Anarchistą - jednym z Ligi Rewolucyjnej. Mieliśmy tajemnice i komórki. Mieliśmy zamiar obalić istotę sfer tak, aby każdy mógł być wolny. Mieliśmy cień na niektórych faktonów i byliśmy gotowi by ruszyć. Ale wtedy zdradziła nas inna frakcja. Ja zginąłem, a Lotar zabrał mnie ze względu na moje tajemnice. Dobrze, że większość z nich jest już nieaktualna - nie ma sposobu, by oprzeć się urokom Lotara."~ */
  IF ~~ THEN REPLY #31755 /* ~"Co możesz powiedzieć mi o Anarchistach?"~ */ GOTO 12
  IF ~~ THEN REPLY #31756 /* ~"Opowiedz mi o Lotarze."~ */ GOTO 6
  IF ~~ THEN REPLY #31757 /* ~"Opowiedz mi o innych czaszkach."~ */ GOTO 7
  IF ~~ THEN REPLY #31758 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 6.3 7.1
  SAY #31759 /* ~"Zdrada. Powinienem był się tego spodziewać, zważywszy na to, kim jestem - a raczej, kim byłem."~ */
  IF ~~ THEN REPLY #31760 /* ~"Kim byłeś?"~ */ GOTO 4
  IF ~~ THEN REPLY #31761 /* ~"Prawdopodobnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 4.1 7.2
  SAY #31762 /* ~"Wyśpiewałem cień wielu tajemnic, ale tego nie oddam. Widziałem przerażające rzeczy wykonane ręką Lotara, których nie powstydziłyby się nawet sztywne zasady Harmonium. On zna moje sekrety o wiele lepiej niż ja znam jego, i niech mnie cholera, jeśli przekażę je komuś innemu. Nawet tobie. Szczególnie tobie."~ */
  IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31763 /* ~"Czemu? Co o mnie wiesz?"~ */ GOTO 10
  IF ~  GlobalGT("Morte_Stolen","GLOBAL",0)
~ THEN REPLY #31764 /* ~"Czemu? Co o mnie wiesz?"~ */ GOTO 11
  IF ~~ THEN REPLY #31765 /* ~"Zatem opowiedz mi o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31766 /* ~"Zatem jak się tu znalazłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31767 /* ~"Co możesz powiedzieć mi o innych czaszkach?"~ */ GOTO 7
  IF ~~ THEN REPLY #31768 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 4.2 6.4
  SAY #31769 /* ~"One? To narzędzia, choć same o tym nie wiedzą. Ich marzenia są małe i osobiste. Nie widzą całości obrazu w swoich knowaniach. Nie widzą nic poza końcem własnego nosa. Są bezwartościowe. Nie rozmawiam z nimi."~ */
  IF ~~ THEN REPLY #31770 /* ~"Rozumiem. Opowiedz mi zatem o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31771 /* ~"Zatem jak się tu znalazłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31772 /* ~"A co z Lotarem?"~ */ GOTO 6
  IF ~~ THEN REPLY #31773 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 9.0
  SAY #31774 /* ~"Co ty jesteś, tępak? To miasto-brama, granica Zewnętrza i drzwi do sfery więziennej, Tartaru. To miejsce skrytobójców i zdrajców, pełne intryg jak bielizna baatezu. Przebywanie niedaleko Tartaru zmienia naturę tego grodu. Nie byłbym zaskoczony, gdyby miasto miało się niedługo ześlizgnąć."~ */
  IF ~~ THEN REPLY #31775 /* ~"Ześlizgnąć się? Co masz na myśli?"~ */ GOTO 16
  IF ~~ THEN REPLY #31776 /* ~"Co ja tam robiłem?"~ */ GOTO 9
  IF ~~ THEN REPLY #31777 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1 8.1
  SAY #31778 /* ~"Co tam robiłeś? Mamrotałeś coś o jakimś trepie starającym się ciebie zabić i wchodzeniu w niewłaściwe miejsca. Cóż, byłeś najwyraźniej całkiem zbzikowany, więc ja i kilku moich przyjaciół cię zrobiliśmy. Wepchnęliśmy w ciebie kosę i podzieliliśmy między siebie twoje rzeczy. Niedługo po tym mnie zdradzono, ale zdążyłem przedtem ukryć ich część."~ */
  IF ~~ THEN REPLY #31779 /* ~"Co możesz mi powiedzieć o Klątwie?"~ */ GOTO 8
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #31780 /* ~"Gdzie one są?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN REPLY #31781 /* ~"Gdzie one są?"~ */ GOTO 14
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31782 /* ~"Gdzie one są?"~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #31783 /* ~"Och. Cóż, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #31784 /* ~"Wiem, że w jakiś sposób jesteś dla Lotara ważny i jest w tobie coś, co on pragnie zrozumieć. Jesteś jak jakaś układanka. On się tobą interesuje, chłopcze, i chce odpowiedzi na swoje pytania. Będzie miał na ciebie oko. A ja wiem, że ty podróżujesz daleko - widziano cię już wcześniej."~ */
  IF ~~ THEN REPLY #31734 /* ~"Gdzie mnie widziałeś?"~ */ GOTO 3
  IF ~~ THEN REPLY #31794 /* ~"Będę o tym pamiętać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #31795 /* ~"Powiedziałem już większość twojemu przyjacielowi. W jakiś sposób jesteś dla Lotara ważny i jest w tobie coś, co on pragnie zrozumieć. Jesteś jak jakaś układanka. On się tobą interesuje, chłopcze, i chce odpowiedzi na swoje pytania. Będzie miał na ciebie oko. A ja wiem, że ty podróżujesz daleko - widziano cię już wcześniej."~ */
  IF ~~ THEN REPLY #31734 /* ~"Gdzie mnie widziałeś?"~ */ GOTO 3
  IF ~~ THEN REPLY #31797 /* ~"Będę o tym pamiętać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 16.0
  SAY #31798 /* ~"Jesteśmy tajnym stowarzyszeniem, komórkami, które działają samotnie albo przez dyrektywy przekazywane przez sieć informatorów i przywódców pozostająych w ukryciu. Naszym celem jest zniszczenie struktur władzy, aby uwolnić ludzi od kłamstw polityków i Mocy oraz pozwolić wszystkim żyć tak, jak im się podoba. Pracujemy w tajemnicy - pracowaliśmy w tajemnicy - i zmienialiśmy stale nasze sposoby postępowania, by uniknąć infiltracji. Mój czas miał miejsce wiele dziesiątek lat temu, więc wszystkie tajemnice, o których pamiętam, są już nieaktualne, poza twarzami, które pamiętam - a nawet te musiały się dotychczas zmienić."~ */
  IF ~~ THEN REPLY #31799 /* ~"Wygląda to na bandę paranoików."~ */ GOTO 13
  IF ~~ THEN REPLY #31800 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31801 /* ~"Jeśli należałbyś do społeczności, która żyje intrygami, infiltracją i nienawiścią do uznanych możnych, to ty też byłbyś ostrożny. To nie jest paranoja, kiedy oni naprawdę chcą cię dorwać. W naszej wierze ktoś pracujący dla trzech panów jest amatorem." Czaszka przygląda ci się przez chwilę bez wyrazu. "Sądzę, że dość już się z tobą nagadałem. Żegnaj."~ */
  IF ~~ THEN REPLY #31802 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1 9.2
  SAY #31803 /* ~"Nie powiem. Może kiedyś znajdę sobie z powrotem ciało i sam się po nie udam, a może nie, ale teraz wielką radość sprawia mi widok ciebie zastanawiającego się. Powodzenia w poszukiwaniach." Czaszka milknie i żadne pochlebstwa ani prośby nie są w stanie przekonać jej do dalszej rozmowy.~ */
  IF ~~ THEN REPLY #31804 /* ~"Drań."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #31805 /* ~Masz wrażenie, że czaszka mierzy cię wzrokiem. "Jesteś jednym z braci, prawda? Mam nosa do takich rzeczy - przynajmniej miałem - i sądzę, że jesteś jednym z nas. Zatem dobrze. Poszukaj w magazynie. Porozmawiaj z właścicielem tego miejsca i powiedz mu, że cię przysłałem. Nie mów mu, że nie żyję, a on powinien oddać ci to bez większych problemów."~ */
  IF ~~ THEN REPLY #31806 /* ~"Zapamiętam to. Dzięki, choć nie jestem zbyt szczęśliwy z faktu, że kiedyś mnie zabiłeś. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #31807 /* ~"Gdy wiara miasta-bramy zbytnio zbliży się do wiary graniczącej z nią sfery, jej siła wystarczy, by owa sfera pochłonęła je w całości. Zdarza się to cały czas - przynajmniej, gdy wmieszani są w to Anarchiści." Wypowiada to ostatnie z odcieniem ponurej dumy.~ */
  IF ~~ THEN REPLY #31808 /* ~"Opowiedz mi o Anarchistach."~ */ GOTO 12
  IF ~~ THEN REPLY #31809 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

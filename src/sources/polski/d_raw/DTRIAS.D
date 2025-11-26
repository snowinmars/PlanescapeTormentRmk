// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedTo(0)
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2995 /* ~Widzisz skrzydlatą istotę o skórze barwy najczystszej kości słoniowej i o oślepiająco białych włosach. Chociaż jej skrzydła są zwęglone, a pióra zniszczone, od istoty wciąż emanuje umiłowanie pokoju i dobroć. Istota stoi jakby pogrążona w medytacji, nieświadoma twojej obecności, z rozciągniętymi na boki ramionami. Na swych przedramionach dźwiga łańcuchy, przytwierdzone do podium, na którym stoi. Choć nie przypominasz sobie, abyś kiedykolwiek wcześniej oglądał devę, czujesz w głębi serca, że masz przed sobą tę właśnie istotę.~ */
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #2996 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 114
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #54306 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 115
  IF ~  NearbyDialog("DGrace")
NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54307 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 125
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #54308 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 126
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
~ THEN REPLY #54309 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN REPLY #54310 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 116
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #54311 /* ~"Szukałem cię, devo."~ */ DO ~SetGlobal("Trias","GLOBAL",1)
~ GOTO 4
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",0)
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #54313 /* ~"Czegóż sobie życzysz, śmiertelniku? Mów o co ci chodzi i odejdź."~ [TTB005] */
  IF ~~ THEN REPLY #54314 /* ~"Chciałbym zadać ci kilka pytań..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54315 /* ~"Mam przy sobie twój miecz."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54316 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",1)
!NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #54317 /* ~"Czego ci potrzeba, śmiertelniku?"~ [TTB002] */
  IF ~~ THEN REPLY #54318 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 117
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54319 /* ~"Mam przy sobie twój miecz."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54320 /* ~"Nic. Żegnaj."~ */ GOTO 117
END

IF WEIGHT #3 ~  Global("Current_Area","GLOBAL",702)
Global("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #54321 /* ~"Dzięki ci za to, żeś mnie uwolnił. Wiele ci zawdzięczam." Zwęglone skrzydła devy poczynają trzepotać. "Czego ode mnie pragniesz, śmiertelniku? Obawiam się, że nie mogę ofiarować ci wiele łask."~ [TTB098] */
  IF ~~ THEN REPLY #54322 /* ~"Mam do ciebie wiele pytań..."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ GOTO 53
  IF ~~ THEN REPLY #54323 /* ~"Więc cóż? Żegnaj."~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.6
  SAY #54324 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju."~ [TTB004] */
  IF ~~ THEN REPLY #54325 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł."~ */ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54326 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 13
  IF ~~ THEN REPLY #54327 /* ~"Co to za miejsce?"~ */ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 14
  IF ~~ THEN REPLY #54328 /* ~"Kim jesteś?"~ */ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 15
  IF ~~ THEN REPLY #54329 /* ~"Wspomnieniami raju?"~ */ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54871 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 11
  IF ~~ THEN REPLY #54872 /* ~"Mniejsza o to. Żegnaj, Trasie."~ */ JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 114.0
  SAY #54332 /* ~Deva podnosi głowę i obejmuje spojrzeniem Mortego. "Odór Baator wionie od ciebie, czaszko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 559
END

IF ~~ THEN BEGIN 6 // from: 115.0
  SAY #54333 /* ~Deva podnosi głowę i obejmuje spojrzeniem Mortego. "Odór Baator wionie od ciebie, czaszko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 560
END

IF ~~ THEN BEGIN 7 // from: 116.0
  SAY #54363 /* ~Deva podnosi głowę i obejmuje spojrzeniem Mortego. "Odór Baator wionie od ciebie, czaszko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 561
END

IF ~~ THEN BEGIN 8 // from:
  SAY #54364 /* ~"Plugawą masz kompanię, śmiertelniku... ale wypowiedz swe pytania i pozostaw mnie samego z moimi wspomnieniami raju."~ */
  IF ~~ THEN REPLY #54365 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54366 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54367 /* ~"Co to za miejsce?"~ */ GOTO 14
  IF ~~ THEN REPLY #54368 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~~ THEN REPLY #54369 /* ~"Wspomnieniami raju?"~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54370 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54371 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #54372 /* ~"Sprowadzasz *tanar'ri*" Deva słowo to wypowiada wzgardliwym syknięciem, "przed *moje* oblicze?"~ */
  IF ~~ THEN REPLY #54373 /* ~"Czyżby skrzydła to zdradziły?"~ */ GOTO 33
  IF ~~ THEN REPLY #54374 /* ~"Tak. Dlaczego nie?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 10 // from: 1.0 13.2 14.4 16.0 22.1 23.3 24.3 26.2 27.2 28.0 29.2 30.2 31.2 32.1 117.0 117.1
  SAY #54375 /* ~"Kolejna prośba?"~ */
  IF ~~ THEN REPLY #54376 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł."~ */ GOTO 12
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54377 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #54378 /* ~"Co to za miejsce?"~ */ GOTO 14
  IF ~~ THEN REPLY #54379 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~~ THEN REPLY #54380 /* ~"Mówiłeś coś o wspomnieniach raju."~ */ GOTO 16
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54381 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54382 /* ~"Jak to się stało, że twoje skrzydła spłonęły?"~ */ GOTO 28
  IF ~~ THEN REPLY #54383 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 4.5 8.5 10.5 21.0 117.2
  SAY #54384 /* ~Deva wygląda przez chwilę na oszołomionego. "Masz Niebiański Ogień? Odzyskałeś mój miecz? Uwolnisz mnie? Jeśli tak, nie wahaj się, roztrzaskaj moje łańcuchy!"~ */
  IF ~~ THEN REPLY #54385 /* ~"Najpierw chciałbym zadać ci kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #54386 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 20
  IF ~~ THEN REPLY #54387 /* ~Pchnij mieczem devę.~ */ GOTO 19
  IF ~~ THEN REPLY #54388 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 8.0 10.0
  SAY #54389 /* ~"Ravela... Ravela... To imię krzesze iskry w mojej pamięci, ale... nic poza tym. Te kajdany są jak mętne wody Styksu, im dłużej je dźwigam, tym mniej pamiętam. Gdybym tak odzyskał wolność, mój umysł wnet by przejaśniał i mógłbym udzielić ci bardziej zadowalającej odpowiedzi."~ */
  IF ~~ THEN REPLY #54390 /* ~"Jak można cię oswobodzić?"~ */ DO ~SetGlobal("Trias_Sword","GLOBAL",1)
~ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 21
  IF ~~ THEN REPLY #54391 /* ~"Zatem powrócę tu później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 8.1 10.1
  SAY #54393 /* ~"To ich własne dzieło. Wykuwając dla mnie te łańcuchy, sami więzy te osłabili goryczą i zdradą. Ich krótkowzroczność przesądziła o ich upadku. Gdyby posłuchali moich ostrzeżeń, ich los byłby inny." W oczach devy pojawia się głęboki smutek. "Żałuję ich w głębi serca."~ */
  IF ~~ THEN REPLY #54394 /* ~"Jak się tutaj znalazłeś?"~ */ GOTO 22
  IF ~~ THEN REPLY #54395 /* ~"Jakże więc można skruszyć te łańcuchy i uśmierzyć zarazę?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 21
  IF ~~ THEN REPLY #54396 /* ~"Mam do ciebie kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54397 /* ~"Żegnaj... Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.2 8.2 10.2 15.0
  SAY #54398 /* ~"Przebywasz na neutralnej ziemi Krain Zewnętrznych, w murach miasta-bramy Klątwa, matecznika zdrajców i krzywoprzysięzców, grodu graniczącego z więzienną sferą Tartaru. Znajdujesz się teraz w podziemnym więzieniu, ciśnięty do celi Triasa Potępionego, gdzie, ja, Trias, tkwię w więzach, póki ktoś nie wyzwoli mnie czynem dobrym, miłosiernym i sprawiedliwym."~ */
  IF ~~ THEN REPLY #54399 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 26
  IF ~~ THEN REPLY #54400 /* ~"Opowiedz mi o Tartarze."~ */ GOTO 27
  IF ~~ THEN REPLY #54401 /* ~"Jakim sposobem cię pokonano?"~ */ GOTO 22
  IF ~~ THEN REPLY #54402 /* ~"Jak można cię oswobodzić?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 21
  IF ~~ THEN REPLY #54403 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 15 // from: 4.3 8.3 10.3
  SAY #54404 /* ~"Jestem Triasem Potępionym, Triasem Ranionym, zaginionym dzieckiem Elizjum i generałem zastępów z Wyższych Sfer."~ */
  IF ~~ THEN REPLY #54405 /* ~"Co to za miejsce?"~ */ GOTO 14
  IF ~~ THEN REPLY #54406 /* ~"Jak się tutaj znalazłeś?"~ */ GOTO 22
  IF ~~ THEN REPLY #54407 /* ~"Sfery Wyższe?"~ */ GOTO 23
  IF ~~ THEN REPLY #54408 /* ~"Potępiony?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 4.4 8.4 10.4
  SAY #54409 /* ~"To wszystko, co pozostało mi w tym miejscu. A teraz powiedz, czego sobie życzysz, śmiertelniku? Mów o co ci chodzi i odejdź."~ */
  IF ~~ THEN REPLY #54410 /* ~"Chciałbym zadać ci kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54411 /* ~"Jak się tutaj znalazłeś?"~ */ GOTO 22
  IF ~~ THEN REPLY #54412 /* ~"Co możesz mi powiedzieć o tym raju?"~ */ GOTO 23
  IF ~~ THEN REPLY #54413 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0 118.0
  SAY #54414 /* ~"Śmiertelny człowiecze, odpowiem na wszystkie twoje pytania, kiedy mnie uwolnisz. Mój umysł wówczas znacznie się rozjaśni. A teraz krusz moje kajdany i zwróć mi mój miecz!"~ */
  IF ~~ THEN REPLY #54415 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Pchnij mieczem devę.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54416 /* ~Pchnij mieczem devę.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54417 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #4 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Know_Sword","GLOBAL",1)
PartyHasItem("Celestia")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #54418 /* ~"Tak?"~ [TTB003C] */
  IF ~~ THEN REPLY #54419 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 118
  IF ~~ THEN REPLY #54420 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54421 /* ~Pchnij mieczem devę.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Pchnij mieczem devę.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54422 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.2 17.1 18.2 118.2
  SAY #54423 /* ~Kiedy zadajesz cios devie, twój miecz ogarnia pożar białego ognia. Deva umierając wydaje przeraźliwy krzyk. W tym głosie zawarty jest dźwięk ginącego świata, a ty nie możesz oprzeć się wrażeniu, że to co przed momentem uczyniłeś, było wielkim błędem.~ */
  IF ~~ THEN REPLY #54424 /* ~"Zrobione..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.1 17.0 18.1 49.0 118.1
  SAY #54425 /* ~Kajdany łatwo ustępują pod ostrzem, a ich szczęk długo tętni echem w twoich uszach. Na moment wszystko ogarnia ciemność, a trzymany przez ciebie miecz znika z twoich rąk.~ */
  IF ~~ THEN REPLY #54426 /* ~Czekaj...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.0 13.1 14.3 22.0 24.1 32.0
  SAY #54427 /* ~"Jedynie dobry uczynek może sprawić, że odzyskam wolność. Mój miecz - moja dusza - to narzędzie takiej dobroci. Przynieś mój miecz i skrusz nim moje kajdany. Jest przetrzymywany gdzieś tutaj w więzieniu, w zamkniętej i silnie strzeżonej komnacie. Ale znam hasło." Deva wypowiada trzysylabową tajemną sentencję, która natychmiast zatapia się w twojej pamięci. "Uwolnij mnie, a będę twoim... dłużnikiem. Może będę mógł pomóc ci w twoich poszukiwaniach."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54428 /* ~Czy to nie twój miecz? Znalazłem go w środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #54429 /* ~"A cóż tobie wiadomo o tym, czego szukam?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ GOTO 25
  IF ~~ THEN REPLY #68139 /* ~"Zrobię tak. Żegnaj."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.2 15.1 16.1 26.1 27.1
  SAY #54430 /* ~"Spotkała mnie zdrada, w mieście, które słynie ze zdrad. Wydawało mi się, że mogę wykrzesać tam kilka iskierek dobra, wydrzeć kilka dusz z pułapek, jakie same na siebie zastawiły. Miast tego, sam wpadłem w pułapkę, dzieło moich dawnych popleczników. Tak to moim więzieniem stała się ta mroczna szkatuła, ukryta głęboko pod ziemią."~ */
  IF ~~ THEN REPLY #54431 /* ~"Jak można cię oswobodzić?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 21
  IF ~~ THEN REPLY #54432 /* ~"Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54433 /* ~"Zatem powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.2 16.2
  SAY #54434 /* ~Przez twarz devy przebiega cień. "Lękam się, że już nigdy ich nie obaczę tej regularnej piękności Arkadii, tych cudnych widoków Elizjum, Siedmiu Szczytów Niebiańskiej Góry... Ani drobny cień szpetoty Sfer Niższych nie ma wstępu w te świetliste rejony, gdzie wiara w odkupienie nie cudem jest, a faktem. Zbyt wielu jednak, ku mojej zgrozie, szuka inspiracji i pokrzepienia w bagnie Sfer Niższych."~ */
  IF ~~ THEN REPLY #54435 /* ~"Co możesz mi powiedzieć o Arkadii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54436 /* ~"Co możesz mi powiedzieć o Elizjum?"~ */ GOTO 30
  IF ~~ THEN REPLY #54437 /* ~"Co możesz mi powiedzieć o Niebiańskiej Górze?"~ */ GOTO 31
  IF ~~ THEN REPLY #54438 /* ~"Ach tak... Mam kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54439 /* ~"Niewykluczone. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.3 24.2
  SAY #54440 /* ~"Byłem wodzem zastępów ze Sfer Wyższych, ujarzmiono mię jednak i żywcem pogrzebano pod tym obrzydliwym grodem. Wiele bym dał, by móc rozwinąć skrzydła i odlecieć stąd, byle dalej od tych kajdan, które sprowadziły martwotę na moją znękaną duszę."~ */
  IF ~~ THEN REPLY #54441 /* ~"O co chodzi z tymi łańcuchami?"~ */ GOTO 32
  IF ~~ THEN REPLY #54442 /* ~"Jak można cię oswobodzić?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 21
  IF ~  False()
~ THEN REPLY #54443 /* ~"Ale przecież twoje skrzydła są zwęglone. Nie możesz wznieść się w powietrze."~ */ GOTO 24
  IF ~~ THEN REPLY #54444 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54445 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #54446 /* ~Deva uśmiecha się smutno. "Ślady tego nosisz na swojej twarzy i w swoim sercu. Gdyby tak zrzucić ze mnie te kajdany... wtedy mógłbym bardziej wnikliwie spojrzeć na to, czego szukasz, i lepiej tobą pokierować. Do tego czasu..." Deva wzrusza ramionami. "Do tego czasu nie jestem w stanie nawet obdarzyć cię dobrą radą. Te łańcuchy krępują moją pamięć i intuicję."~ */
  IF ~~ THEN REPLY #54447 /* ~"Dobrze. Odszukam twój miecz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 14.0 27.0
  SAY #54448 /* ~Twarz devy ciemnieje, a zaraz potem rozbłyskuje miłosierdziem. "To gród zdrajców, zdrajców własnego sumienia i zdrajców bliźnich. Zaufanie to puste tam, obce słowo, a zagmatwane, podłe spiski to rzecz codzienna... Nawet pośród tych, którzy poświęcili się dobru."~ */
  IF ~~ THEN REPLY #54449 /* ~"Co możesz mi powiedzieć o Tartarze?"~ */ GOTO 27
  IF ~~ THEN REPLY #54450 /* ~"W jaki sposób cię zdradzono?"~ */ GOTO 22
  IF ~~ THEN REPLY #54451 /* ~"Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54452 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 14.1 26.0
  SAY #54453 /* ~"To jest więzienie w Sferach, to sfera, gdzie każda potęga okazuje się bezradną wobec zdrady. Garstka ledwie czasem opuszcza to miejsce, a i ci szczęśliwcy, wychodząc stamtąd innymi są, niż, gdy ich tam wtrącano."~ */
  IF ~~ THEN REPLY #54454 /* ~"Opowiedz mi o Klątwie."~ */ GOTO 26
  IF ~~ THEN REPLY #54455 /* ~"W jaki sposób cię zdradzono?"~ */ GOTO 22
  IF ~~ THEN REPLY #54456 /* ~"Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54457 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 10.6
  SAY #54458 /* ~"To była część wielkiej zdrady - związano mnie i podpalono moje skrzydła, tak abym nie mógł oderwać się od ziemi. Niszczycielska nienawiść wobec zjawisk pięknych to podstawowa cecha tego miejsca."~ */
  IF ~~ THEN REPLY #54459 /* ~"Ach tak. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54460 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 30.0 31.0
  SAY #54461 /* ~"To raj, raj porządku i regularności, i w formie i w zawartości, wolny od chaosu i zdrady niższych światów. Raj zjawisk i kompozycji przekraczających twoją imaginację."~ */
  IF ~~ THEN REPLY #54462 /* ~"Co możesz mi powiedzieć o Elizjum?"~ */ GOTO 30
  IF ~~ THEN REPLY #54463 /* ~"Co możesz mi powiedzieć o Niebiańskiej Górze?"~ */ GOTO 31
  IF ~~ THEN REPLY #54464 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54465 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 29.0 31.1
  SAY #54466 /* ~"Sfera Ukojenia to sfera cichego spoczynku, której mieszkańcy kąpią się w falach chaosu i porządku, wypłukując esencję dobra. Są tam i strzeliste lasy, i dywanami traw pokryte równiny, wszystko, to co nie jest jedynie echem prawdziwej piękności, ale jest same w sobie prawdziwą pięknością. To miejsce inne od wszystkich innych krain we wszechświecie. To sama iglica gmachu dobroci i miłosierdzia."~ */
  IF ~~ THEN REPLY #54467 /* ~"Co możesz mi powiedzieć o Arkadii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54468 /* ~"Co możesz mi powiedzieć o Niebiańskiej Górze?"~ */ GOTO 31
  IF ~~ THEN REPLY #54469 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54470 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 29.1 30.1
  SAY #54471 /* ~"Siedem Wzgórz Dobroci i Prawości to sfera, gdzie wszystko skąpane jest w ciepłej aurze sprawiedliwości i miłosierdzia. To sfera ideału. Jej mieszkańcy dążą niestrudzenie ku czystej prawości i miłości, a nie igrają jedynie tymi wartościami, w imię czczych pozorów. Tam mieszkają ideały, które winny być bezustannie umacniane, a wzgardliwie odsuwane od obłudników i chciwców."~ */
  IF ~~ THEN REPLY #54472 /* ~"Co możesz mi powiedzieć o Arkadii?"~ */ GOTO 29
  IF ~~ THEN REPLY #54473 /* ~"Co możesz mi powiedzieć o Elizjum?"~ */ GOTO 30
  IF ~~ THEN REPLY #54474 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54475 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.0
  SAY #54476 /* ~"W tych łańcuchach mieszka moc, która więzi mnie, chociaż nie krępuje mnie fizycznie. Moi oprawcy ogłuszyli moje wspomnienia, kierując je ku martwym nurtom, tak, aby wiedza moja z wolna rozpadała się i słabła. Nie mogę własnymi siłami wydrzeć się z tej matni; tylko nieśmiertelna, boska siła, użyta w akcie sprawiedliwości i miłosierdzia. może przynieść mi wyzwolenie."~ */
  IF ~~ THEN REPLY #54477 /* ~"Co to za siła?"~ */ GOTO 21
  IF ~~ THEN REPLY #54478 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #54479 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.0 9.1
  SAY #54480 /* ~"Nie będę dawał posłuchu słowom tego, kto w swej kompanii ma biesy. Tanar'ri, gibkość twojej formy nie omami mojego umysłu tak łatwo, jak tego śmiertelnika. Wypowiedz przeto swoje myśli, potem zaś pozostaw Triasa samego w jego więziennej pustelni."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 178
END

IF ~~ THEN BEGIN 34 // from:
  SAY #54481 /* ~"Twoja mowa jest zręczna, tanar'ri, co też zresztą leży w naturze wszystkich nieczystych istot. Zadawaj swoje pytania, śmiertelniku i odejdź."~ */
  IF ~~ THEN REPLY #54482 /* ~"Nie jestem śmiertelnikiem."~ */ GOTO 35
  IF ~~ THEN REPLY #54483 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł. Powiedziała, że ty wiesz, gdzie przebywa moja skradziona śmiertelność."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54484 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54485 /* ~"Co to za miejsce?"~ */ GOTO 38
  IF ~~ THEN REPLY #54486 /* ~"Kim jesteś?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54487 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54488 /* ~"Jak to się stało, że twoje skrzydła spłonęły?"~ */ GOTO 41
  IF ~~ THEN REPLY #54489 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #54490 /* ~Deva wybucha czystym srebrzystym śmiechem. "Jak sobie życzysz, śmiertelniku. Czegóż więc chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #54491 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł. Powiedziała, że ty wiesz, gdzie przebywa moja skradziona śmiertelność."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54492 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54493 /* ~"Co to za miejsce?"~ */ GOTO 38
  IF ~~ THEN REPLY #54494 /* ~"Kim jesteś?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54495 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54496 /* ~"Jak to się stało, że twoje skrzydła spłonęły?"~ */ GOTO 41
  IF ~~ THEN REPLY #54497 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0 45.0 52.0
  SAY #54498 /* ~"Ravela... Nocna wiedźma... Skradziona śmiertelność... Wszystko to wydaje mi się znajome, ale obawiam się, że dźwigając te łańcuchy nie będę w stanie głębiej wzruszyć pokładów mojej pamięci."~ */
  IF ~~ THEN REPLY #54499 /* ~"Dlaczego nie?"~ */ GOTO 42
  IF ~~ THEN REPLY #54500 /* ~"Jakże więc można skruszyć te łańcuchy?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 42
  IF ~~ THEN REPLY #54501 /* ~"Dlaczego cię uwięziono?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1 45.1 52.1
  SAY #54502 /* ~"To ich własne dzieło. Wykuwając dla mnie te łańcuchy, sami więzy te osłabili goryczą i zdradą. Ich krótkowzroczność przesądziła o ich upadku. Gdyby posłuchali moich ostrzeżeń, ich los byłby inny." W oczach devy pojawia się głęboki smutek. "Żałuję ich w głębi serca."~ */
  IF ~~ THEN REPLY #54503 /* ~"A o co chodzi z tymi łańcuchami?"~ */ GOTO 42
  IF ~~ THEN REPLY #54504 /* ~"Jakże więc można skruszyć te łańcuchy?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 43
  IF ~~ THEN REPLY #54505 /* ~"Mam więcej pytań..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 38 // from: 34.3 35.2 39.0 45.2 52.2
  SAY #54506 /* ~"To miejsce? To lochy położone pod miastem-bramą Klątwa, u portalu do Tartaru, więziennej sfery bóstw. To matecznik zdrajców, skazańców, frustratów... To gród potępionych - tych, którzy na los ten zasłużyli, i tych, którzy są bez winy."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 180
END

IF ~~ THEN BEGIN 39 // from: 34.4 35.3 45.3 52.3
  SAY #54507 /* ~"Jestem Trias, Potępiony, niegdyś generał zastępów ze Sfer Wyższych, teraz zaś wrak gnijący w stęchłej szkatule pod powierzchnią najnędzniejszego z miast-bram."~ */
  IF ~~ THEN REPLY #54508 /* ~"Co to za miejsce?"~ */ GOTO 38
  IF ~~ THEN REPLY #54509 /* ~"Jak się tutaj znalazłeś?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 34.5 35.4 43.0 45.4 52.4
  SAY #54510 /* ~Deva wygląda przez chwilę na oszołomionego. "Masz Niebiański Ogień? Odzyskałeś mój miecz? Uwolnisz mnie? Jeśli tak, nie wahaj się, roztrzaskaj moje łańcuchy!"~ */
  IF ~~ THEN REPLY #54511 /* ~"Najpierw chciałbym zadać ci kilka pytań..."~ */ GOTO 49
  IF ~~ THEN REPLY #54512 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 50
  IF ~~ THEN REPLY #54513 /* ~Pchnij mieczem devę.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54514 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.6 35.5 45.5 52.5
  SAY #54515 /* ~"To była część wielkiej zdrady - związano mnie i podpalono moje skrzydła, tak abym nie mógł oderwać się od ziemi. Niszczycielska nienawiść wobec zjawisk pięknych to podstawowa cecha tego miejsca."~ */
  IF ~~ THEN REPLY #54516 /* ~"Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 45
  IF ~~ THEN REPLY #54517 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1 37.0
  SAY #54518 /* ~"Łańcuchy te to więzy nie tylko dla mojego ciała. Godzą one również w moją duszę, moją wiedzę, krusząc ją i łamiąc."~ */
  IF ~~ THEN REPLY #54519 /* ~"Jakże więc można skruszyć te łańcuchy?"~ */ JOURNAL #54392 /* ~Trias powiedział mi, że uwolnić można go jedynie w drodze dobrego uczynku - w tym akurat wypadku chodzi o odzyskanie jego miecza i skruszenie łańcuchów spowijających devę.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 37.1 42.0
  SAY #54520 /* ~"Gdybym odzyskał symbol mojej pozycji, te łańcuchy opadły by ze mnie bez trudu. Mój miecz, Niebiański Ogień padł łupem mętów z tego miasta, i służy im do wzmacniania władzy nad tym nędznym więzieniem. Gdyby tak tylko mój oręż wrócił do moich dłoni, poznałbym znów smak wolności. Mój miecz jest przetrzymywany gdzieś tutaj, w tym plugawym więzieniu, w zamkniętej i silnie strzeżonej komnacie. Ale znam hasło." Deva wypowiada trzysylabową tajemną sentencję, która natychmiast zatapia się w twojej pamięci. "Wróć z moim mieczem i uderz nim w te łańcuchy, a moja odrodzona pamięć oświeci nas obu."~ */
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54521 /* ~"Czy to nie twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #68140 /* ~"Rozumiem. Powrócę tu."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.2 39.1
  SAY #54522 /* ~"Lud tego miasta, sami zdrajcy, nie znają smaku prawdy i piękności. Nie umieją nawet tego uszanować. Zwabili mnie tutaj i skrępowali łańcuchami. Śmiertelnikom brakuje głębi duchowej, która pomogłaby im wzmocnić siłę charakteru i wznieść się ponad zgubne żądze. Tegom ich właśnie nauczał, wszelako nadaremnie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 179
END

IF ~~ THEN BEGIN 45 // from: 37.2 41.0 46.0 47.1 48.0
  SAY #54523 /* ~"Znowu?"~ */
  IF ~~ THEN REPLY #54524 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł. Powiedziała, że ty wiesz, gdzie przebywa moja skradziona śmiertelność."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54525 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54526 /* ~"Co to za miejsce?"~ */ GOTO 38
  IF ~~ THEN REPLY #54527 /* ~"Kim jesteś?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54528 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54529 /* ~"Jak to się stało, że twoje skrzydła spłonęły?"~ */ GOTO 41
  IF ~~ THEN REPLY #54530 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #54531 /* ~Szyderczy uśmiech przemyka przez piękną twarz devy. "Naturalnie, panno tanar'ri, nie wierzysz w to, aby śmiertelnicy kiedykolwiek mieli osiągnąć głębię duchową? Nigdy w to nie uwierzysz, pókiś jest tym, kim jesteś. Na myśl o tym, że śmiertelni mieliby wznieść się ponad przyziemne żądze, cała twoja natura buntuje się przeraźliwie, czyż nie?"~ */
  IF ~~ THEN REPLY #54532 /* ~"Dobra, już wystarczy. Mam do ciebie jeszcze kilka innych pytań, Triasie."~ */ GOTO 45
  IF ~~ THEN REPLY #54533 /* ~"Dobra, już wystarczy. Żegnaj, Triasie."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #54534 /* ~Z oczu devy sypią się błyskawice. "Władcy zastępów pozwolili, aby ich serca zwątpiły, albowiem nie ośmielili się stanąć oko w oko z biesami. Gdzież podział się ich duch, ich umiłowanie czystości! Moi panowie rozumnie kierowali wojną z oddali, popychając zastępy biesów do krwawych bratobójczych walk, dając im broń i wskazówki, jak mają ze sobą walczyć, tak, aby mogli zadać sobie jak największe rany i tak, aby nigdy nie mogli podnieść głów ku naszym złocistym polom."~ */
  IF ~~ THEN REPLY #54535 /* ~"Jak więc można zmienić ten stan rzeczy?"~ */ GOTO 48
  IF ~~ THEN REPLY #54536 /* ~"Ach tak... Mam kilka innych pytań..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #54537 /* ~Trias opanowuje się, ale jego zwęglone skrzydła trzepoczą nieznacznie. "Są sposoby na to, by nawet nieśmiertelni wodzowie zmienili zdanie, śmiertelniku. Któregoś dnia do tego dojdzie. Nie mam co do tego najmniejszych wątpliwości."~ */
  IF ~~ THEN REPLY #54538 /* ~"Ach tak... Mam kilka innych pytań..."~ */ GOTO 45
  IF ~~ THEN REPLY #54539 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 40.0
  SAY #54540 /* ~"Śmiertelniku, odpowiem na wszystkie twoje pytania, kiedy mnie oswobodzisz. A i mój umysł wówczas będzie nieporównanie jaśniejszy. Teraz zaś krusz moje kajdany i oddaj mi mój miecz."~ */
  IF ~~ THEN REPLY #54541 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 20
  IF ~~ THEN REPLY #54542 /* ~Pchnij mieczem devę.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #54543 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 40.1
  SAY #54544 /* ~Kajdany łatwo ustępują pod ostrzem, a ich szczęk długo tętni echem w twoich uszach. Na moment wszystko ogarnia ciemność, a trzymany przez ciebie miecz znika z twoich rąk.~ */
  IF ~~ THEN REPLY #54545 /* ~Czekaj...~ */ DO ~TakePartyItemNum("Celestia",1)
AddexperienceParty(306250)
SetGlobal("Trias_Sword","GLOBAL",2)
FadeToColor([20.0],0)
Wait(3)
Polymorph(Trias)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #54546 /* ~Kiedy zadajesz cios devie, twój miecz ogarnia pożar białego ognia. Deva umierając wydaje przeraźliwy krzyk. W tym głosie zawarty jest dźwięk ginącego świata, a ty nie możesz oprzeć się wrażeniu, że to, co przed momentem uczyniłeś, było wielkim, niewybaczalnym błędem.~ */
  IF ~~ THEN REPLY #54547 /* ~"Zrobione..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ EXIT
END

IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
GlobalLT("Trias_Sword","GLOBAL",2)
~ THEN BEGIN 52 // from:
  SAY #54548 /* ~"Masz następne pytanie?"~ [TTB034] */
  IF ~~ THEN REPLY #54549 /* ~"Wiedźma Ravela poradziła mi, abym cię odnalazł. Powiedziała, że ty wiesz, gdzie przebywa moja skradziona śmiertelność."~ */ GOTO 36
  IF ~  Global("Deva_Plague","GLOBAL",1)
~ THEN REPLY #54550 /* ~"Doszły mnie słuchy o zarazie, która poczęła szerzyć się, kiedy otworzono to więzienie."~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",2)
~ GOTO 37
  IF ~~ THEN REPLY #54551 /* ~"Co to za miejsce?"~ */ GOTO 38
  IF ~~ THEN REPLY #54552 /* ~"Kim jesteś?"~ */ GOTO 39
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #54553 /* ~"Czy to twój miecz? Znalazłem go w samym środku więzienia."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #54554 /* ~"Jak to się stało, że twoje skrzydła spłonęły?"~ */ GOTO 41
  IF ~~ THEN REPLY #54555 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.0 112.0
  SAY #54556 /* ~"Czy szukasz władzy nad umysłami innych śmiertelników? Czy chcesz, aby spełniły się wszystkie twoje zachcianki? Czy potrzebujesz bogactwa? Czy chciałbyś więcej dusz, aby móc je do woli dręczyć?"~ */
  IF ~~ THEN REPLY #54557 /* ~"Szukam wiedzy, a nie władzy, ani bogactw."~ */ GOTO 56
  IF ~~ THEN REPLY #54558 /* ~"Daj mi tę władzę."~ */ GOTO 54
  IF ~~ THEN REPLY #54559 /* ~"Opowiedz mi o bogactwie."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.1 55.0
  SAY #54560 /* ~"Nie mogę obdarzyć cię władzą w inny sposób, jak poprzez przekazanie ci mądrości i przenikliwości. Przymioty te nie da się zdobyć inaczej jak własnym wysiłkiem i doświadczeniem. Kto ze śmiertelnych nie pojmuje tego, ten będzie bliski upadku."~ */
  IF ~~ THEN REPLY #54561 /* ~"Więc daj mi wiedzę."~ */ GOTO 56
  IF ~~ THEN REPLY #54562 /* ~"Więc daj mi te bogactwa."~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 53.2 54.1
  SAY #54563 /* ~"Zatem zapracuj sobie na nie, i patrz, jak twa natura zmniejsza się, a twoje wartości rosną. Nie rozmawiaj ze mną w języku kupców."~ */
  IF ~~ THEN REPLY #54564 /* ~"Więc daj mi tę władzę."~ */ GOTO 54
  IF ~~ THEN REPLY #54565 /* ~"Więc daj mi tę wiedzę."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.0 54.0 55.1
  SAY #54566 /* ~"Zatem wypowiedz swoje pragnienia."~ */
  IF ~~ THEN REPLY #54567 /* ~"Okradziono mnie z mojej śmiertelności. Chcę ją odzyskać."~ */ JOURNAL #54569 /* ~Deva Trias oznajmił mi, że bies o imieniu Fhjull Rozdwojony Język będzie mógł w pewien sposób pomóc mi w mojej misji. Bies ten zamieszkuje w Krainach Zewnętrznych i ma wobec Triasa jakieś zobowiązania.~ */ GOTO 57
  IF ~~ THEN REPLY #54568 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #54570 /* ~"Głupota przemawia przez twe słowa. Ale jest ktoś, kto mógłby pomóc ci w twoich poszukiwaniach. To bies, imieniem Fhjull Rozdwojony-Język. On ci dopomoże." Usta devy układając się w lekkim uśmiechu. "Fhjull jest zobowiązany do dobroczynności."~ */
  IF ~~ THEN REPLY #54571 /* ~"Jak mógę się do niego dostać?"~ */ JOURNAL #54572 /* ~Mogę opuścić Klątwę i odnaleźć Fhjulla. Jeżeli wezmę ogniwo skruszonych łańcuchów Triasa i odnajdę portal, położony gdzieś na północy...~ */ GOTO 59
END

IF ~~ THEN BEGIN 58 // from: 102.1 104.0
  SAY #54573 /* ~"Jej pomieszczenia wioną mrokiem i pustką, ale udręczone dusze, jak ty, ciągną do niej jak do wodopoju. Jest taka jak ty, pusta, ale wciąż pełna szczątków przeszłości. I jak ty, to żywy pomnik udręki. Chcesz wiedzieć więcej o tych duszach, wędrowcze?"~ */
  IF ~~ THEN REPLY #54574 /* ~"Tak."~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #54575 /* ~"W północnej części więzienia znajduje się portal. Kluczem do niego są skruszone kajdany." Deva spogląda znacząco na szczątki łańcuchów, walające się u jego stóp, schyla się, podnosi kawałek żelastwa i wciska ci w dłoń. "To odpowiedni klucz, dla tego, kto chce opuścić Klątwę."~ */
  IF ~~ THEN REPLY #54576 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Outland_Portal","GLOBAL",1)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from: 58.0
  SAY #54577 /* ~Jego krwawy uśmiech rozszerza się "To dusze tych, którzy zmarli zamiast ciebie. Wstąpili do świata cieni, abyś ty mógł żyć dalej. To są *twoje* cienie, ślady, jakie pozostawiłeś za sobą. Oni ciebie znajdą, wędrowcze, i sprawią, że będziesz cierpiał za ich udrękę. Z ich rąk odbierzesz to, na co sobie zasłużyłeś. A kara ta nie ominie i tych, którzy w swojej głupocie zdecydowali się ci towarzyszyć."~ */
  IF ~~ THEN REPLY #54578 /* ~"Nie wątpię. Opowiedz mi coś o tym strażniku."~ */ GOTO 103
  IF ~~ THEN REPLY #54579 /* ~"Dzięki za słowa zachęty, Triasie. A teraz giń."~ */ GOTO 105
  IF ~~ THEN REPLY #54580 /* ~"Pomyślimy o tym. A co będziesz robił, kiedy cię opuszczę, Triasie?"~ */ GOTO 106
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #54581 /* ~"Żegnaj, śmiertelniku. Mam... pewne sprawy, którymi muszę bezzwłocznie się zająć." Deva znacząco spogląda na strop swego więzienia i zwinnym skokiem pogrąża się w ziemi nad twoją głową, jak nurek znikający w wodach oceanu."~ */
  IF ~~ THEN REPLY #61264 /* ~Odejdź.~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #54582 /* ~.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  Global("Trias_Defeated","GLOBAL",1)
~ THEN BEGIN 63 // from:
  SAY #54583 /* ~"Tym razem poddaję ci się, śmiertelniku. Moja niewola osłabiła mnie.. w tym stanie nie mogę się z tobą równać."~ [TTB120] */
  IF ~~ THEN REPLY #54584 /* ~"Triasie, nawet u szczytu swej chwały, nie dorównujesz mi. A teraz opowiedz mi o tym, co chcę wiedzieć."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 93
  IF ~~ THEN REPLY #54585 /* ~"Ciągle potrzebuję od ciebie wskazówek, Triasie. Powiedz mi, jak mogę dotrzeć do Fortecy Żalu."~ */ DO ~SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 94
  IF ~~ THEN REPLY #54586 /* ~Zabij devę.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
SetGlobal("cd_int_1","LOCALS",1)
~ GOTO 98
END

IF ~~ THEN BEGIN 64 // from: 119.0
  SAY #54587 /* ~"Spójrz tylko na nich, jak chciwie strzegą swych nędznych własności i swych nędznych żywotów. Zauważyłem, że nie uczyniłeś nic, aby im pomóc. Twój egoizm uczynił mnie silniejszym."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 12
END

IF ~~ THEN BEGIN 65 // from: 120.0
  SAY #54588 /* ~"Spójrz tylko na nich, jak chciwie strzegą swych nędznych własności i swych nędznych żywotów. Zauważyłem, że nie uczyniłeś nic, aby im pomóc. Twój egoizm uczynił mnie silniejszym."~ */
  IF ~~ THEN REPLY #54589 /* ~"Dlaczego mnie okłamałeś?"~ */ GOTO 71
  IF ~~ THEN REPLY #54590 /* ~"Dlaczego przeciągnąłeś Klątwę ku Krainom Zewnętrznym?"~ */ GOTO 72
  IF ~~ THEN REPLY #54591 /* ~"Nieźle pomyślana ta heca z miastem, Triasie. A teraz powiedz mi tylko, jak mogę dotrzeć do Fortecy Żalu i nie będę ci więcej zawracał głowy."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54592 /* ~Zaatakuj go.~ */ GOTO 70
END

IF ~~ THEN BEGIN 66 // from: 121.0
  SAY #54599 /* ~Próbowałeś uzdrowić to miasto i jego mieszkańców, śmiertelniku, ale już na to za późno. Niechaj teraz spożywają owoce własnej niewierności."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 67 // from: 122.0
  SAY #54600 /* ~Próbowałeś uzdrowić to miasto i jego mieszkańców, śmiertelniku, ale już na to za późno. Niechaj teraz spożywają owoce własnej niewierności."~ */
  IF ~~ THEN REPLY #54601 /* ~"Dlaczego mnie okłamałeś?"~ */ GOTO 71
  IF ~~ THEN REPLY #54602 /* ~"Dlaczego przeciągnąłeś Klątwę ku Krainom Zewnętrznym?"~ */ GOTO 72
  IF ~~ THEN REPLY #54603 /* ~"Nieźle pomyślana ta heca z miastem, Triasie. A teraz powiedz mi tylko, jak mogę dotrzeć do Fortecy Żalu i nie będę ci więcej zawracał głowy."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 75
  IF ~~ THEN REPLY #54604 /* ~Zaatakuj go.~ */ GOTO 70
END

IF ~~ THEN BEGIN 68 // from: 123.0
  SAY #54605 /* ~Trias spogląda na miasto. "Wiele dobrego dokonałeś w tak krótkim przeciągu czasu, śmiertelniku. Wszelako nie wystarczy to, aby zdrajcy ci mogli uświadomić sobie głębię swojego szaleństwa."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 13
END

IF ~~ THEN BEGIN 69 // from: 124.0
  SAY #54606 /* ~Trias spogląda na miasto. "Wiele dobrego dokonałeś w tak krótkim przeciągu czasu, śmiertelniku. Wszelako nie wystarczy to, aby zdrajcy ci mogli uświadomić sobie głębię swojego szaleństwa."~ */
  IF ~~ THEN REPLY #54607 /* ~"Dlaczego mnie okłamałeś?"~ */ GOTO 71
  IF ~~ THEN REPLY #54608 /* ~"Dlaczego przeciągnąłeś Klątwę ku Krainom Zewnętrznym?"~ */ GOTO 72
  IF ~~ THEN REPLY #54609 /* ~"Nieźle pomyślana ta heca z miastem, Triasie. A teraz powiedz mi tylko, jak mogę dotrzeć do Fortecy Żalu i nie będę ci więcej zawracał głowy."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
  IF ~~ THEN REPLY #54610 /* ~Zaatakuj go.~ */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 65.3 67.3 69.3 80.2 86.2
  SAY #54611 /* ~W oczach Triasa pojawia się światło a na klindze jego miecza tańczą iskry "A teraz sprawdzimy czy możesz umrzeć... Przynajmniej będziesz cierpiał."~ [TTB118] */
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54612 /* ~Zaatakuj go.~ */ DO ~ForceAttack(Protagonist,Myself)
ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54613 /* ~Poczekaj...~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54614 /* ~"Porozmawiajmy o tym!"~ */ DO ~ForceAttack("Vhailor",Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54615 /* ~Zaatakuj devę.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54616 /* ~Poczekaj...~ */ DO ~Enemy()
~ EXIT
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54617 /* ~"Porozmawiajmy o tym!"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 71 // from: 65.0 67.0 69.0
  SAY #54618 /* ~"Potrzebne były ci wskazówki. Ceną tego okazała się zdrada. Dlaczego więc uważasz, że zapracowałeś sobie na prawo do wszelkich prawd? Prawd tego żywota, czy też następnego? Toż to zwykła arogancja. Tak naprawdę, to twoim obowiązkiem, jako istoty niższego rzędu, było oswobodzenie mnie. Niczego ci nie zawdzięczam i tyleż samo ofiarowuję ci w podzięce. Dałem ci więcej, niż się tobie należało. Uwolniłeś mnie, aby pomóc samemu sobie."~ */
  IF ~~ THEN REPLY #54619 /* ~"Zatem dlaczego przeciągnąłeś Klątwę ku Krainom Zewnętrznym?"~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 65.1 67.1 69.1 71.0
  SAY #54620 /* ~"Mieszkańcy miasta zdrajców zostali zdradzeni i otrzymali to, co im się należało. Dlatego wszelkie pytania o przyczynę są nie na miejscu. To pieczętuje moją umowę zawartą ze Sferami Niższymi. To kwestia wyższego dobra."~ */
  IF ~~ THEN REPLY #54621 /* ~"Działałeś w porozumieniu ze Sferami Niższymi?"~ */ GOTO 73
  IF ~~ THEN REPLY #54622 /* ~"Wyższe dobro? A cóż oznacza to wyższe dobro?"~ */ GOTO 74
  IF ~~ THEN REPLY #54623 /* ~"A któż wyznaczył się na kata? Jakim prawem chcesz to uczynić?"~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #54624 /* ~"Nikt w pojedynkę nie wedrze się na zbocza Niebiańskiej Góry. Może uczynić to tylko armia. A skład tej armii to rzecz godna mojej uwagi. Znacznie łatwiej jest zwerbować te istoty, niżeli pchnąć je do walki."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54625 /* ~"Masz zamiar zaatakować Niebiańską Górę z pomocą biesów? Czy bratanie się z biesami nie jest ci wstrętne?"~ */ GOTO 76
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54626 /* ~"Masz zamiar zaatakować Niebiańską Górę z pomocą biesów? Czy bratanie się z biesami nie jest ci wstrętne?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 74 // from: 72.1
  SAY #54627 /* ~"Krew rozlaną przez armię nieczystych odkupi szlachetny gniew Niebiańskich Zastępów. Ci, którzy polegną, umrą w imię wyższego dobra. To miasto ginie w imię wyższego dobra; wyplenienia zła. To niewielka ofiara, wziąwszy pod uwagę, kto będzie złożony w ofierze."~ */
  IF ~~ THEN REPLY #54628 /* ~"Obawiam się, że ze złych pobudek nie wyrośnie nigdy żadne dobro."~ */ GOTO 86
  IF ~~ THEN REPLY #54629 /* ~"Tak, zgadzam się z tobą. A teraz tylko powiedz mi, jak można dotrzeć do Fortecy Żalu i pozostawię cię samego z twoją ofiarą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 67.2 72.2 92.0
  SAY #54630 /* ~"Ja jestem tutaj. Widzę zło. Chcę oddziałać na zło. Moja wola daje mi do tego prawo."~ */
  IF ~~ THEN REPLY #54631 /* ~"Wola to jeszcze nie prawo, Trasie."~ */ GOTO 86
  IF ~~ THEN REPLY #54632 /* ~"Tak, zgadzam się z tobą. A teraz tylko powiedz mi, jak można dotrzeć do Fortecy Żalu i pozostawię cię samego z twoją ofiarą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_1","GLOBALGood",-2)
~ GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 73.0
  SAY #54633 /* ~Twarz devy ciemnieje. "Robię to dla odkupienia prawdziwego imienia Dobra.", głos Triasa chrypi "Kiedy generałowie ze Sfer Wyższych kulą się za swoimi złocistymi bramami i podsycają krwawą wojnę, która pochłania niewinnych, ja sprawię, że staną oko w oko z tym, czego się lękają, i sprawię, że poprzez tę konfrontację przezwyciężą swe lęki."~ */
  IF ~~ THEN REPLY #54634 /* ~"Zdradzając własną ojczyznę?"~ */ GOTO 80
  IF ~~ THEN REPLY #54635 /* ~"I zbrukasz pola Dobra obecnością nieczystych istot?"~ */ GOTO 90
  IF ~~ THEN REPLY #54636 /* ~"Musi być jeszcze inny sposób, Triasie."~ */ GOTO 91
END

IF ~~ THEN BEGIN 77 // from: 73.1
  SAY #54637 /* ~Twarz devy ciemnieje. "Robię to dla odkupienia prawdziwego imienia Dobra.", głos Triasa zachrypiał "Kiedy generałowie ze Sfer Wyższych kulą się za swoimi złocistymi bramami i podsycają krwawą wojnę, która pochłania niewinnych, ja sprawię, że staną oko w oko z tym, czego się lękają, i sprawię, że poprzez tę konfrontację przezwyciężą swe lęki."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 182
END

IF ~~ THEN BEGIN 78 // from:
  SAY #54638 /* ~"Zbyt wiele po nich oczekujesz, tanar'ri. Właściwy moment walki jest silniejszy od każdej armii. A cóż tobie wiadomo o sztuce prowadzenia wojny, *kusicielko*? Twoje umiejętności upodobały sobie inne miejsca." Oczy devy błądzą po jej ciele. "Pozostaw strategię, tym, którzy się na niej znają."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 183
END

IF ~~ THEN BEGIN 79 // from:
  SAY #54639 /* ~"Jesteś dla mnie zagadką, tanar'ri. A jestem pewien, że tak właśnie chcesz być postrzegana." Uwaga devy znowu skupia się na tobie.~ */
  IF ~~ THEN REPLY #54640 /* ~"Myślisz, że rozwiążesz ten problem zdradzając własną ojczyznę?"~ */ GOTO 80
  IF ~~ THEN REPLY #54641 /* ~"I zbrukasz pola Dobra obecnością nieczystych istot?"~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54642 /* ~"Musi być jeszcze inny sposób, Triasie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54643 /* ~"Musi być jeszcze inny sposób, Triasie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_1","GLOBALGood",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 80 // from: 76.0 79.0 90.0
  SAY #54644 /* ~"Opowiem ci o zdradzie, człowieku. Zdrada to odstąpienie od wojny ze złem. Zdrada to tchórzostwo, to sprzedawanie broni konkurentom z samego strachu, że mogą kiedyś przestać się zabijać i zjednoczyć swój oręż przeciw tobie. Zdrada to odmowa wobec prośby, by świecić przykładem dla innych. Zdrada to przymknięcie oczu na fakt, że biesy biorą w swe władanie wszystkie Sfery, aż nie ostaje się już ani jedna dusza wolna od wpływów zła. Nie pytaj przeto, czemu wspinam się na Niebiańską Górę i chcę na jej przytulnych zboczach wzniecić pożogę wojenną. To nie zdrada."~ */
  IF ~~ THEN REPLY #54645 /* ~"W ten sposób zbrukasz pola Dobra obecnością nieczystych istot. To mi wygląda na zdradę."~ */ GOTO 81
  IF ~~ THEN REPLY #54646 /* ~"Zdrada pozostaje zdradą."~ */ GOTO 81
  IF ~~ THEN REPLY #54647 /* ~"Dość już mam twojej pychy, Triasie. Gotuj się na śmierć."~ */ GOTO 70
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1 86.0 86.1
  SAY #54648 /* ~"Jest wiele definicji zdrady. Trzeba długo żyć, aby zakosztować wszystkich zdrad. Nawet twój żywot, gdyby jego przepastna pamięć była ci dana, nie jest na tyle długi, abyś mógł zawrzeć w nim wszystkie odcienie wiarołomstwa. Taka zdrada nie jest żadną zdradą."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #54649 /* ~"Co tak naprawdę przytrafiło się twoim skrzydłom, Triasie?"~ */ GOTO 82
  IF ~~ THEN REPLY #54650 /* ~"Powstrzymaj się, Triasie, a nie będzie potrzeby krzyżować mieczy."~ */ GOTO 83
  IF ~~ THEN REPLY #54651 /* ~"Dość już, Triasie. Broń się."~ */ GOTO 84
  IF ~~ THEN REPLY #54652 /* ~"Opowiedz mi, jak mogę dotrzeć do Fortecy Żalu, a zostawię cię w spokoju."~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 81.0 91.0
  SAY #54653 /* ~"Ognie Baator w istocie parzą, ale są tylko płomykami w porównaniu z gniewem ojca." Deva trzepocze zwęglonymi szczątkami skrzydeł. "Nie ma na świecie większego bólu, jak być strąconym z Niebiańskiej Góry."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalGT("Good","GLOBAL",14)
~ THEN REPLY #54654 /* ~"Powstrzymaj się, Triasie. Twoje odkupienie jest wciąż jeszcze możliwe."~ */ GOTO 87
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Good","GLOBAL",15)
~ THEN REPLY #54655 /* ~"Powstrzymaj się, Triasie. Twoje odkupienie jest wciąż jeszcze możliwe."~ */ GOTO 88
  IF ~~ THEN REPLY #54656 /* ~"A więc jesteś upadłym aniołem. Jakiż głupiec ze mnie, że dałem posłuch twoim słowom."~ */ GOTO 92
END

IF ~~ THEN BEGIN 83 // from: 81.1 90.1 91.1
  SAY #54657 /* ~"Czy twoja nieroztropność jest tak wielka, że chcesz wypróbować swą sztuczną nieśmiertelność w konfrontacji z nieśmiertelnością prawdziwą? Odstąp, człowieku, bowiem próba ta nie przyniesie ci satysfakcji."~ */
  IF ~~ THEN REPLY #54658 /* ~"Zaczynaj, Triasie."~ */ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 81.2 83.0 88.0
  SAY #54659 /* ~"Minęło wiele czasu od kiedy krzyżowałem z kimś miecz. Staniemy do pojedynku."~ [TTB119] */
  IF ~~ THEN REPLY #54660 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from: 65.2 69.2 74.1 75.1 81.3
  SAY #54661 /* ~Oczy Triasa płoną "Nie sądzę, śmiertelniku. Twoja obecność gwałci rytm rzeczywistości, budzi gniew pośród niebian, a ja jestem władny, by pokierować się ku Światłu." Na ostrzu miecza devy tańczą białe płomienie. "Staniemy do pojedynku."~ */
  IF ~~ THEN REPLY #54662 /* ~"Zgoda, Triasie, ale zważ, że... mam zamiar cię zgładzić."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 74.0 75.0
  SAY #54663 /* ~"Nie będziesz mnie sądził, śmiertelniku. Nie z tymi nędznymi żywotami, któreś przebył. Zdrada to tchórzostwo, to sprzedawanie broni konkurentom z samego strachu, że mogą kiedyś przestać się zabijać i zjednoczyć swój oręż przeciw tobie. Zdrada to odmowa wobec prośby, by świecić przykładem dla innych. Zdrada to przymknięcie oczu na fakt, że biesy biorą w swe władanie wszystkie Sfery, aż nie ostaje się już ani jedna dusza wolna od wpływów zła. Nie pytaj przeto, czemu wspinam się na Niebiańską Górę i chcę na jej przytulnych zboczach wzniecić pożogę wojenną. To nie zdrada."~ */
  IF ~~ THEN REPLY #54664 /* ~"W ten sposób zbrukasz pola Dobra obecnością nieczystych istot. To mi wygląda na zdradę."~ */ GOTO 81
  IF ~~ THEN REPLY #54665 /* ~"Zdrada pozostaje zdradą."~ */ GOTO 81
  IF ~~ THEN REPLY #54666 /* ~"Dość już mam twojej pychy, Triasie. Gotuj się na śmierć."~ */ GOTO 70
END

IF ~~ THEN BEGIN 87 // from: 79.2 82.0
  SAY #54667 /* ~Trias spogląda głęboko w twoje oczy. "Czas odkupienia minął, śmiertelniku. Niczego nie żałuję. Tego, kto święcie wierzy w jakąś sprawę, musi być gotów ją zdradzić. Ja prawdziwie wierzę w Dobro, dlatego zdecydował się je zdradzić."~ */
  IF ~~ THEN REPLY #54668 /* ~"Może sprawię, że zmienisz zdanie..."~ */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 79.3 82.1
  SAY #54669 /* ~Deva mówi z szyderstwem w głosie. "Nie tobie wypowiadać się o odkupieniu, śmiertelniku. Cuchniesz złem. Twe słowa są podstępne i kłamliwe. Nie, ten plan nie ulegnie zmianie. Wkrótce bramy niebiańskie zapłoną."~ */
  IF ~~ THEN REPLY #54670 /* ~"Zatem będziemy walczyć."~ */ GOTO 84
END

IF ~~ THEN BEGIN 89 // from: 87.0 92.1
  SAY #54671 /* ~"Więc niechaj zetrą się nasze bronie, a zobaczymy, czyje poglądy mają silniejszą wymowę. Broń się, śmiertelniku."~ */
  IF ~~ THEN REPLY #54672 /* ~Przygotuj się.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #54673 /* ~Zaatakuj devę.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 76.1 79.1
  SAY #54674 /* ~"Zniewaga nie utrzyma się zbyt długo i zmyje ją czyste ręce tych, którzy pozostaną. To poświęcenie w imię wyższego, lepszego dobra."~ */
  IF ~~ THEN REPLY #54675 /* ~"Zdradzając własną ojczyznę?"~ */ GOTO 80
  IF ~~ THEN REPLY #54676 /* ~"Dość już, Triasie. Powstrzymaj się, albo będziemy walczyć."~ */ GOTO 83
END

IF ~~ THEN BEGIN 91 // from: 76.2
  SAY #54677 /* ~"Ty, który przemawiasz w kategoriach ludzkiego żywota, ośmielasz się sugerować istocie prawdziwie nieśmiertelnej, że istnieje inna droga? Sprawdziłem wszystkie wyjścia, i ta droga jest jedyna."~ */
  IF ~~ THEN REPLY #54678 /* ~"Co tak naprawdę stało się twoim skrzydłom, Triasie?"~ */ GOTO 82
  IF ~~ THEN REPLY #54679 /* ~"Dość już, Triasie. Powstrzymaj się, albo będziemy walczyć."~ */ GOTO 83
END

IF ~~ THEN BEGIN 92 // from: 82.2
  SAY #54680 /* ~"Nie opowiadaj mi o zdradzie i upadku, śmiertelniku. Ja gotów jestem poświęcić nawet samego siebie dla triumfu Dobra."~ */
  IF ~~ THEN REPLY #54681 /* ~"To szlachetne, Triasie, ale kto dał ci do tego prawo?"~ */ GOTO 75
  IF ~~ THEN REPLY #54682 /* ~"Mam nadzieję, że jesteś gotów do wypełnienia swojej ofiary Triasie. Mam zamiar odegrać rolę narzędzia twego samosądu."~ */ GOTO 89
END

IF ~~ THEN BEGIN 93 // from: 63.0
  SAY #54683 /* ~"Zatrzymaj swoją dłoń, śmiertelniku. Przybyłeś do mnie w poszukiwaniu wiedzy, której nie posiada nikt poza mną. Nikt inny we wszystkich Sferach nie opowie ci tego, co ja mogę ci rzec. Jeśli naprawdę pragniesz zdobyć tę wiedzę, musisz obiecać, że mnie oszczędzisz."~ */
  IF ~~ THEN REPLY #54684 /* ~"Nie zgadzam się, Triasie. Albo mi teraz powiesz, albo uśmiercę cię, i i do diabła z wszelkimi konsekwencjami."~ */ GOTO 95
  IF ~~ THEN REPLY #54685 /* ~"Oszczędzę cię, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ GOTO 96
  IF ~~ THEN REPLY #54686 /* ~"Przysięgam, że oszczędzę twoje życie, jeżeli wyjawisz mi wiedzę, której poszukuję.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54687 /* ~Zabij devę.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 94 // from: 63.1
  SAY #54688 /* ~Deva kaszle krwawą śliną. "Zanim zacznę mówić, muszę mieć twoją obietnicę. Musisz przysiąc, że oszczędzisz mnie."~ */
  IF ~~ THEN REPLY #54689 /* ~"Nie zgadzam się, Triasie. Albo mi teraz powiesz, albo uśmiercę cię, i do diabła z wszelkimi konsekwencjami."~ */ GOTO 95
  IF ~~ THEN REPLY #54690 /* ~"Oszczędzę cię, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ GOTO 96
  IF ~~ THEN REPLY #54691 /* ~"Przysięgam, że oszczędzę twoje życie, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54692 /* ~Zabij devę.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 95 // from: 93.0 94.0
  SAY #54693 /* ~"Albo zdobędziesz tę wiedzę, albo będziesz cierpiał... bez końca."~ */
  IF ~~ THEN REPLY #54694 /* ~"Powiedziałem, *Mów!*"~ */ GOTO 97
  IF ~~ THEN REPLY #54695 /* ~"Oszczędzę twoje życie, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ GOTO 96
  IF ~~ THEN REPLY #54696 /* ~"Przysięgam, że oszczędzę twoje życie, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54697 /* ~Zabij devę.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 96 // from: 93.1 93.2 94.1 94.2 95.1 95.2 97.0 97.1
  SAY #54698 /* ~"Portal prowadzący do miejsca, którego poszukujesz, znajduje się w torusie ponad iglicą, w mieście Sigil, Mieście Drzwi. W mieście tym jest miejsce, gdzie gromadzi się zmarłych, twojej rasy..."~ */
  IF ~~ THEN REPLY #54699 /* ~"Masz na myśli Kostnicę?"~ */ GOTO 99
  IF ~~ THEN REPLY #54700 /* ~"A co jest kluczem?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 97 // from: 95.0
  SAY #54701 /* ~Deva wybucha cichym śmiechem. "Nie masz zbyt dużego wyboru, śmiertelniku. Przysięgaj albo nigdy więcej nie zbliżysz się do tej wiedzy."~ */
  IF ~~ THEN REPLY #54702 /* ~"Dobrze więc. Oszczędzę cię, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ GOTO 96
  IF ~~ THEN REPLY #54703 /* ~"Dobrze więc. Przysięgam, że oszczędzę twoje życie, jeżeli wyjawisz mi wiedzę, której poszukuję."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trias_1","GLOBALLaw",1)
~ GOTO 96
  IF ~~ THEN REPLY #54704 /* ~Zabij devę.~ */ DO ~SetGlobal("Game_Over","GLOBAL",3)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 63.2 93.3 94.3 95.3 97.2 107.0
  SAY #54705 /* ~Zadajesz mu cios, roztrzaskując kości jego dumnej twarzy, niszcząc jego nieskazitelną formę. W ostatnim przedśmiertnym wysiłku woli, deva szepce: "Wiedz, że sam siebie przekląłeś. Zabijając mnie, strzaskałeś ostatni puklerz, jakim mogłeś osłonić się przed okropnościami, które cię trawią. Bies, który był na moich usługach... jest teraz wolny..." Z ust jeszcze wydobywa mu się słaby chichot, a światło w jego oczach gaśnie bezpowrotnie.~ */
  IF ~~ THEN REPLY #54706 /* ~"Giń wreszcie."~ */ DO ~AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 96.0
  SAY #54707 /* ~"Czy to nie tam ostatnio się przebudziłeś? Tak, ostatnimi czasy wiele spraw w Sferach przybiera ironiczny obrót. A więc byłeś wtedy bardzo blisko celu."~ */
  IF ~~ THEN REPLY #54708 /* ~"A co jest kluczem?"~ */ GOTO 100
END

IF ~~ THEN BEGIN 100 // from: 96.1 99.0
  SAY #54709 /* ~"Spoiwem murów Fortecy Żalu są łzy i myśli pełne łez. Aby wejść do Fortecy, musisz złożyć tam własny dar. Kiedy będziesz w pobliżu portalu, musisz swoje serce napełnić smutkiem, a poczujesz obecność portalu, jak dotknięcie lodowatego ramienia śmierci."~ */
  IF ~~ THEN REPLY #54710 /* ~"I?"~ */ DO ~SetGlobal("Regret","GLOBAL",1)
~ JOURNAL #54711 /* ~Trias Zdrajca wręczył mi klucz do Fortecy Żalu. Portal wiodący w te okolice znajduje się gdzieś w Kostnicy. Trafię do niego, jeżeli będę przemierzał Kostnicę ze świeżym żalem w sercu. Wówczas w pewnym momencie poczuję chłód bijący z okolic portalu. Kiedy znajdę się przed portalem, muszę zerwać ze swojego ciała płat skóry i napisać na nim treść mojego żalu za pomocą krwi wytoczonej z lewego palca wskazującego.~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #54712 /* ~"Kiedy ogarnie cię chłód, musisz wydrzeć skrawek swojej skóry i napisać na niej o swoim żalu krwią z lewego wskazującego palca. Portal otworzy się, a ty odkryjesz prawdę o sobie w głębinach Fortecy Żalu, a może i spotkasz samego strażnika."~ */
  IF ~~ THEN REPLY #54713 /* ~"Skąd to wiesz?"~ */ GOTO 102
  IF ~~ THEN REPLY #54714 /* ~"Co możesz mi powiedzieć o strażniku Fortecy?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #54715 /* ~"Wielu sojuszników poszukiwałem pośród Sfer. W tych poszukiwaniach dotarłem do Fortecy, i odbyłem tam rozmowę z władcą i strażnikiem tych mrocznych komnat. Nie podlega wątpliwości, że powinieneś powrócić do Sigil. Krew, w której skąpane są twoje dłonie, posłuży jako klucz do tego portalu. Po prostu wejdź w drzwi, którymi tu wszedłeś, a powrócisz tam."~ */
  IF ~~ THEN REPLY #54716 /* ~"Co możesz mi powiedzieć o tym strażniku?"~ */ GOTO 103
  IF ~~ THEN REPLY #54717 /* ~"Co możesz mi powiedzieć o tej Fortecy?"~ */ GOTO 58
  IF ~~ THEN REPLY #54718 /* ~"Dzięki, Triasie. A teraz umieraj."~ */ GOTO 105
  IF ~~ THEN REPLY #54719 /* ~"A co będziesz robił, kiedy cię opuszczę, Triasie?~ */ GOTO 106
END

IF ~~ THEN BEGIN 103 // from: 60.0 101.1 102.0
  SAY #54720 /* ~"Jest niezwykle potężny. Nie pokonasz go, ani nie będziesz w stanie wydrzeć swojej śmiertelności z jego chłodnego uścisku. Już jej nie odzyskasz. Podróż w jaką wyruszyłeś, to pochód głupców."~ */
  IF ~~ THEN REPLY #54721 /* ~"Może jestem głupi, ale wkrótce będę wiedział znacznie wiecej o tym strażniku."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
  IF ~~ THEN REPLY #54722 /* ~"Kontynuuj."~ */ DO ~SetGlobal("Know_Keeper_Mortality","GLOBAL",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #54723 /* ~"Śmiertelność człowieka jest kompasem, który wyznacza jego drogę w życiu. Jeśli można ją schwycić na podobieństwo zwykłego przedmiotu, wiele można dowiedzieć się o człowieku, któremu została wydarta. Twój przeciwnik więcej wie o tobie, niż ty będziesz kiedykolwiek wiedział. On obserwował cię i studiował przez wiele twoich pół-żywotów. Znam jego serce. Nie odda ci tego, czego szukasz."~ */
  IF ~~ THEN REPLY #54717 /* ~"Co możesz mi powiedzieć o tej Fortecy?"~ */ GOTO 58
  IF ~~ THEN REPLY #54724 /* ~"Dzięki, Triasie. A teraz umieraj."~ */ GOTO 105
  IF ~~ THEN REPLY #54725 /* ~"A co będziesz robił, kiedy cię opuszczę, Triasie?~ */ GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 60.1 102.2 104.1
  SAY #54726 /* ~"Przecież przysięgałeś..."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54727 /* ~"Skłamałem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54728 /* ~"To nie była żadna przysięga. Po prostu oznajmiłem, że oszczędzę cię. A potem zmieniłem zdanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~~ THEN REPLY #54729 /* ~"Żartuję. A co będziesz robił, kiedy cię opuszczę, Triasie?~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 60.2 102.3 104.2 105.2
  SAY #54730 /* ~"Będę jeszcze raz usiłował poprowadzić zastępy przeciw bramom Raju. Nie cofnę się przed tym, bo i też nie widzę innego celu dla mojej egzystencji."~ */
  IF ~~ THEN REPLY #54731 /* ~"Więc będę musiał powstrzymać cię. Jak najszybciej."~ */ GOTO 108
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #54732 /* ~"Triasie, czy zapomniałeś twarz swego ojca?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_2","GLOBALGood",1)
~ GOTO 109
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54733 /* ~"Życzę ci powodzenia w twoim dziele. Żegnaj."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54734 /* ~"Życzę ci powodzenia w twoim dziele. Żegnaj."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 107 // from: 105.0 105.1 108.0 108.1
  SAY #54735 /* ~"Rzucam na ciebie klątwę żywota w pustce i mroku. Będziesz cierpiał w swojej wiecznej, bolesnej skorupie i nigdy nie odzyskasz słodkich wspomnień światła i miłości. Jedyną rzeczą, która łączyć cię będzie z człowieczeństwem, będzie twoja śmierć, śmiertelniku."~ */
  IF ~~ THEN REPLY #54736 /* ~Powal go. "Żegnaj, Triasie." ~ */ GOTO 98
END

IF ~~ THEN BEGIN 108 // from: 106.0 111.1
  SAY #54737 /* ~"Przysięgałeś, że oszczędzisz mnie, śmiertelniku."~ */
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54738 /* ~"Powiedzmy, że robię to w imię większego dobra, Triasie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ GOTO 107
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54739 /* ~"To nie była żadna przysięga. Po prostu oznajmiłem, że oszczędzę cię. A potem doszedłem do wniosku, że to bez sensu. Innymi słowy, zmieniłem zdanie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ GOTO 107
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54740 /* ~"Zatem ruszaj. Ale wiedz, że będę przygotowany na to, co niesiesz. Żegnaj, Triasie. Oby ci się nigdy nie powiodło."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54741 /* ~"Zatem ruszaj. Ale wiedz, że będę przygotowany na to, co niesiesz. Żegnaj, Triasie. Oby ci się nigdy nie powiodło."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 109 // from: 106.1
  SAY #54742 /* ~"Co masz na myśli?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #54743 /* ~"Sfery Wyższe to dom sprawiedliwości, piękności dobra. A także wybaczenia. Wracaj do domu. Przyznaj się do błędów, ukórz się i proś o przebaczenie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #54744 /* ~"Sfery Wyższe to dom sprawiedliwości, piękności dobra. A także wybaczenia. Wracaj do domu. Przyznaj się do błędów, ukórz się i proś o przebaczenie."~ */ GOTO 111
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54745 /* ~"Mniejsza o to. Żegnaj, Trasie."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54746 /* ~"Mniejsza o to. Żegnaj, Trasie."~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0
  SAY #54747 /* ~Deva otwiera usta, aby wygłosić gniewną mowę... ale nagle przerywa, opanowując się. "Twoje słowa brzmią przekonywująco, śmiertelniku, a ich mądrość poraża mnie. Będę szukał przebaczenia u moich ojców i przyjmę wszelką pokutę. Weź to śmiertelniku i żegnaj. Może kiedy spotkamy się następnym razem, ukażę się tobie już jako istota odkupiona."~ */
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54748 /* ~"Życzę powodzenia, Triasie. Żegnaj."~ */ DO ~GiveItem("SPWI901",Protagonist)
AddexperienceParty(375000)
StickySinisterPoof("S113SMOK",Myself,1)
Wait(1)
DestroySelf()
~ JOURNAL #54750 /* ~Przekonałem Triasa, aby poszukał przebaczenia na Sferach Wyższych.~ */ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54749 /* ~"Życzę powodzenia, Triasie. Żegnaj."~ */ DO ~GiveItem("SPWI901",Protagonist)
~ JOURNAL #54751 /* ~Przekonałem Triasa, aby poszukał przebaczenia na Sferach Wyższych i wtedy Vhailor zaatakował go.~ */ EXTERN ~DVHAIL~ 14
END

IF ~~ THEN BEGIN 111 // from: 109.1
  SAY #54752 /* ~Jego twarz rozjaśnia się, a zaraz potem ciemnieje. Odwraca wzrok. "Nie mogę powrócić. Moja przemiana jest już zbyt duża. Nie ma przebaczenia dla takich, jak ja. Będę służył Dobru na mój własny sposób."~ */
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #54753 /* ~"Na tym polega przebaczenie, Triasie. Tyś jest kimś potężniejszym niż skromny petent, ale i moce Sfer Wyższych, których będziesz prosił o łaskę, są nieskończenie potężniejsze od ciebie. Nie jesteś sam jeden uosobieniem dobroci. Pamiętaj, że możesz im ufać."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Trias_3","GLOBALGood",5)
SetGlobal("Trias_Redeem","GLOBAL",1)
~ GOTO 110
  IF ~~ THEN REPLY #54754 /* ~"Zatem będę musiał cię powstrzymać."~ */ GOTO 108
  IF ~  !NearbyDialog("DVhail")
~ THEN REPLY #54755 /* ~"Zatem żegnaj i zawsze pamiętaj, żeś miał szansę odkupienia, ale nią wzgardziłeś."~ */ DO ~SinisterPoof("S0P2CUR3",[2577.3268],1)
PlaySoundNotRanged("CURES03")
DestroySelf()
~ EXIT
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #54756 /* ~"Zatem żegnaj i zawsze pamiętaj, żeś miał szansę odkupienia, ale nią wzgardziłeś."~ */ EXTERN ~DVHAIL~ 14
END

IF WEIGHT #13 /* Triggers after states #: 124 123 122 121 120 119 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
NumTimesTalkedToGT(0)
Global("Trias_Sword","GLOBAL",3)
~ THEN BEGIN 112 // from:
  SAY #54757 /* ~"Znowu?"~ [TTB037] */
  IF ~~ THEN REPLY #54758 /* ~"Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 53
  IF ~~ THEN REPLY #54759 /* ~"Nie, doprawdy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #54760 /* ~Vhailor zadaje mu cios, roztrzaskując kości jego dumnej twarzy i niszcząc jego nieskazitelną formę. W ostatnim przedśmiertnym wysiłku woli, deva szepce: "Wiedz, że sam siebie przekląłeś. Zabijając mnie, strzaskałeś ostatni puklerz, jakim mogłeś osłonić się przed okropnościami, które cię trawią. Bies, który był na moich usługach... jest teraz wolny..." Z ust jeszcze wydobywa mu się słaby chichot, a światło w jego oczach gaśnie bezpowrotnie."~ */
  IF ~~ THEN REPLY #106512 /* ~"Niech to diabli, Vhailor, zdajesz sobie sprawę z tego, co zrobiłeś?!"~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXTERN ~DVHAIL~ 170
  IF ~~ THEN REPLY #54761 /* ~"Giń wreszcie."~ */ DO ~SetGlobal("Trias_Redeem","GLOBAL",0)
AddexperienceParty(375000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from: 0.0
  SAY #61293 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju." Otwierasz usta, aby mu odpowiedzieć i wtedy dostrzegasz, że rysy jego twarzy ulegają zmianie.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 5
END

IF ~~ THEN BEGIN 115 // from: 0.1
  SAY #61294 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju." Otwierasz usta, aby mu odpowiedzieć i wtedy dostrzegasz, że rysy jego twarzy ulegają zmianie.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 6
END

IF ~~ THEN BEGIN 116 // from: 0.4 0.5
  SAY #61295 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju." Otwierasz usta, aby mu odpowiedzieć i wtedy dostrzegasz, że rysy jego twarzy ulegają zmianie.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ GOTO 7
END

IF ~~ THEN BEGIN 117 // from: 2.0 2.2
  SAY #61296 /* ~"Znalazłeś mój miecz?"~ */
  IF ~  !PartyHasItem("Celestia")
~ THEN REPLY #61297 /* ~"Na razie nie. Natomiast chciałbym ci zadać jeszcze kilka pytań..."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61298 /* ~"Jestem pewien, że miecz jest gdzieś tutaj w pobliżu. Ale najpierw *musisz* odpowiedzieć na kilka moich pytań."~ */ GOTO 10
  IF ~  PartyHasItem("Celestia")
~ THEN REPLY #61299 /* ~"Mam twój miecz."~ */ DO ~SetGlobal("Know_Sword","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #61300 /* ~"Nieważne. Powrócę tu jeszcze."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 18.0
  SAY #61305 /* ~"Nie chcesz uwolnić mnie, śmiertelniku? Ależ... Wiedz, że posiadam wiedzę, która może okazać się dla ciebie użyteczna..."~ */
  IF ~~ THEN REPLY #61306 /* ~"Po prostu szukam odpowiedzi na kilka nurtujących mnie pytań..."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61307 /* ~Uderz mieczem w łańcuchy.~ */ GOTO 20
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Pchnij mieczem devę.~ */ GOTO 19
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #61308 /* ~Pchnij mieczem devę.~ */ EXTERN ~DGRACE~ 181
  IF ~~ THEN REPLY #61309 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #7 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
NearbyDialog("DVhail")
~ THEN BEGIN 119 // from:
  SAY #61310 /* ~W oczach Triasa goreje płomień niebiańskiego gniewu. "Ci ludzie... to zdrajcy, kłamcy, mordercy... zasłużyli na swój los."~ [TTB111] */
  IF ~~ THEN GOTO 64
END

IF WEIGHT #8 ~  Global("Current_Area","GLOBAL",901)
GlobalLT("Curst_Counter","GLOBAL",3)
!NearbyDialog("DVhail")
~ THEN BEGIN 120 // from:
  SAY #61311 /* ~W oczach Triasa goreje płomień niebiańskiego gniewu. "Ci ludzie... to zdrajcy, kłamcy, mordercy... zasłużyli na swój los."~ [TTB111] */
  IF ~~ THEN GOTO 65
END

IF WEIGHT #9 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
NearbyDialog("DVhail")
~ THEN BEGIN 121 // from:
  SAY #61312 /* ~Trias spogląda z pogardą. "I tak psy powracają."~ [TTB100] */
  IF ~~ THEN GOTO 66
END

IF WEIGHT #10 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",2)
GlobalLT("Curst_Counter","GLOBAL",6)
!NearbyDialog("DVhail")
~ THEN BEGIN 122 // from:
  SAY #61313 /* ~Trias spogląda z pogardą. "I tak psy powracają."~ [TTB100] */
  IF ~~ THEN GOTO 67
END

IF WEIGHT #11 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
NearbyDialog("DVhail")
~ THEN BEGIN 123 // from:
  SAY #61316 /* ~"Co masz nadzieję tutaj uzyskać?"~ [TTB106] */
  IF ~~ THEN GOTO 68
END

IF WEIGHT #12 ~  Global("Current_Area","GLOBAL",901)
GlobalGT("Curst_Counter","GLOBAL",5)
!NearbyDialog("DVhail")
~ THEN BEGIN 124 // from:
  SAY #61317 /* ~"Co masz nadzieję tutaj uzyskać?"~ [TTB106] */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 125 // from: 0.2
  SAY #61293 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju." Otwierasz usta, aby mu odpowiedzieć i wtedy dostrzegasz, że rysy jego twarzy ulegają zmianie.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ EXTERN ~DGRACE~ 176
END

IF ~~ THEN BEGIN 126 // from: 0.3
  SAY #61293 /* ~Deva podnosi głowę i przenika cię jasnym spojrzeniem. Głos devy brzmi melodyjnie i nadzwyczaj czysto. "Czego sobie życzysz, śmiertelniku? Wypowiedz swoje myśli i pozostaw mnie samego z moimi wspomnieniami raju." Otwierasz usta, aby mu odpowiedzieć i wtedy dostrzegasz, że rysy jego twarzy ulegają zmianie.~ [TTB004] */
  IF ~~ THEN JOURNAL #54312 /* ~Odnalazłem anioła, o którym mówiła Ravela, niejakiego "Triasa", uwięzionego w Klątwie. To nie do pomyślenia, że mieszkańcy tego miasta mogli w ten sposób potraktować niebiańską istotę... To naprawdę gród podrzynaczy gardeł i zbójców z najciemniejszych zaułka. Inna sprawa, że można to samo powiedzieć właściwie o KAŻDYM innym miejscu, do jakiego dotychczas zawitałem.~ */ EXTERN ~DGRACE~ 177
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~Oczy tej githzerai o ciemnej twarzy są pełne nienawiści. "*Wiedz*, że okradłeś mnie z cech mojego ludu. *Wiedz*, że będziesz *cierpiał*." Zaczyna wymachiwać dłońmi.~ */
  IF ~~ THEN REPLY #2922 /* ~"Co masz na myśli?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~Kobieta ma żółty odcień skóry i ostre rysy. Jej ciało pokrywają tatuaże, przy boku nosi długi miecz. Jej oczy są, niczym dwie małe, czarne perły. Obserwują każdy twój krok.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"Witaj."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"Przepraszam, pomyliłem się. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~Kobieta ma żółty odcień skóry i ostre rysy. Jej ciało pokrywają tatuaże, przy boku nosi długi miecz. Jej oczy są, niczym dwie małe, czarne perły. Obserwują każdy twój krok.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"Witaj."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"Przepraszam, pomyliłem się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"Mój Lud... *zna* cię, jako przyjaciela. Ale ja *nie*. Nie mogę ci pomóc."~ */
  IF ~~ THEN REPLY #43601 /* ~"Mam tylko kilka pytań..."~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"Więc może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~Jej oczy błyszczą, gdy patrzy. "Słuchaj i *poznaj* me myśli: Nie mogę ci pomóc. Odejdź."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"Nie *znam* cię. *Wiedz*, że nie mam ci nic do powiedzenia."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"Żegnaj, więc."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"Nie *znam* cię. *Wiedz*, że nie mam ci nic do powiedzenia."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~Jest trochę spięta. "Skąd *znasz* tę nazwę?"~ */
  IF ~~ THEN REPLY #43614 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"Słyszałem na ulicy."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"Nieważne."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~Przebiega oczyma po twej twarzy. Czujesz, jak cię obserwuje. "*Wiedz*, że masz wdzięczność ludu githzerai. Nie zapomnimy tego. Słońce zachodzi nad Haldar, wędrowcze - muszę ostrzec mój lud."~ */
  IF ~~ THEN REPLY #43618 /* ~"No to powodzenia. Żegnaj."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Powiedziałem jednej z githzerai to, czego się dowiedziałem o planowanym przez githyanki ataku na twierdzę Vristigor. Wyszła w pośpiechu.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~Patrzy kamiennym wzrokiem. "Podaj mi źródło informacji."~ */
  IF ~~ THEN REPLY #43620 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"Nic nie mówię."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"Obyś spojrzał w Oko Vilquara, jeśli mi nie powiesz!"~ */
  IF ~~ THEN REPLY #43623 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"Dlaczego miałbym ci to powiedzieć?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~Syczy i zaczyna kreślić dłońmi zawiłe wzory...~ */
  IF ~~ THEN REPLY #43626 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~Kobieta ma żółty odcień skóry i ostre rysy. Jej ciało pokrywają tatuaże, przy boku nosi długi miecz. Jej oczy są, niczym dwie małe, czarne perły. Obserwują każdy twój krok. "Składam ci ukłon klanu Zerchai. *Wiem* jak jesteś mądry i to jak nam pomogłeś. Powiedz, w czym mogę ci pomóc."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"Zaszczyt to dla wędrowcy. Mam nadzieję, że odpowiesz mi na parę pytań."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"Mam kilka pytań, na które, mam nadzieję, odpowiesz."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"Kim jesteś?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"Przepraszam, pomyliłem się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"Mów. Wysłucham cię."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"Czym różnią się githyanki od githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"Czym różnią się githyanki od githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"Nauczysz mnie mowy githzerai?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"Ukażesz mi nauki Zerthimona?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"Nie mam już więcej pytań. Dziękuję, że poświęciłaś mi trochę czasu."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"Jestem Kii'na. Jestem *zerthem*. Uczę Drogi Zerthimona, i prowadzę Lud drogą ku przeznaczeniu."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"Czym różnią się githyanki od githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"Czym różnią się githyanki od githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"Nauczysz mnie mowy githzerai?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"Ukażesz mi Drogę Zerthimona?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"Nie mam już więcej pytań. Dziękuję, że poświęciłaś mi trochę czasu."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"Słońce zachodzi nad Haldar, wędrowcze. Jesteś jak Elezpah na górze, dzielny i odważny."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"Jadłem przy stole Toryga. Żegnaj." ("Jestem ci wdzięczny.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"Wielkie dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"Pozdrawiam cię, dzierżący-miecz."~ */
  IF ~~ THEN REPLY #43649 /* ~"Pozdrawiam. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"Pozdrawiam, Kii'na, i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~Przez chwilę spogląda na ciebie surowo. "Gith była wielkim wojownikiem, który wyrwał nasz lud z niewoli *illithidów* - władców niewolników. Zerthimon był jej porucznikiem. Kiedy tych dwoje uwolniło nasz lud, Gith zaatakowała Zerthimona na Spopielonej Równinie. Padły ostre słowa, wyciągnięto broń - i jeden lud stał się dwoma. Ci, którzy zostali przy królowej-suce przyjęli nazwę Githyanki. Ci z nas, którzy poszli za Zerthimonem zostali wierni Ludowi i przyjęli imię Githzerai."~ */
  IF ~~ THEN REPLY #43652 /* ~"I to dlatego tak bardzo się nienawidzicie?"~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"Wielkie dzięki. Żegnaj."~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"Mowa Githzerai opiera się na historii. Wszystko jest dla nas historią; metafora to potężne narzędzie, inspiruje w nas heroizm i powstrzymuje nas od złych uczynków. Kiedy mówimy o stole Toryga, pamiętamy, że Toryg znany był ze swej gościnności i dobrej woli. Kiedy mówimy o sercu Selqanta, przypominamy sobie jego lubieżną i okrutną naturę. Rozumiesz?"~ */
  IF ~~ THEN REPLY #43656 /* ~"Tak."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Zerth Kii'na nauczył mnie języka githzerai. Język ten opiera się na metaforze, alegorii i opowieściach wysnutych z dziejów rasy githzerai.~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"Nie."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"W takim razie nie mogę cię więcej nauczyć."~ */
  IF ~~ THEN REPLY #43659 /* ~"Dobrze. Mam jeszcze inne pytania..."~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"Oba nasze ludy są jak muł z Penansk - uparte, ślepe i nieznośne. Githyanki są dodatkowo okrutni. Nienawidzą nas za to, że rozwijamy się w dziedzinach, których nie rozumieją."~ */
  IF ~~ THEN REPLY #43662 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~Zaczynasz naukę:
Mądry człowiek to ten, który 'napisał księgę Anarchów'.
Oskarżyć kogoś o zdradę to przypominać o 'Oku Vilquara'.
Mówi się, że hojni ludzie mają 'otwarte komody'.
Popularne powitania to 'Pozdrawiam cię, dzierżący-miecz' i 'Składam ci ukłon klanu Zerchai', na które należy odpowiedzieć 'Zaszczyt to dla wędrowcy'.
Zapamiętujesz jeszcze wiele tego typu fraz.~ */
  IF ~~ THEN REPLY #43665 /* ~"Wielkie dzięki, Kii'na. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"Dziękuję, Kii'na. Słońce zachodzi nad Haldar." ("Było mi bardzo przyjemnie.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"Nie mogę. Jesteś zbyt podzielony, zbyt... ludzki... żeby *poznać* Drogę."~ */
  IF ~~ THEN REPLY #43668 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"Wielkie Dzięki, Kii'na. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~Kobieta ma żółty odcień skóry i ostre rysy. Jej ciało pokrywają tatuaże, przy boku nosi długi miecz. Jej oczy są, niczym dwie małe, czarne perły. Obserwują każdy twój krok.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"Witaj."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"Przepraszam, pomyliłem się. Żegnaj."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~Gdy podchodzisz, spokojnie cię obserwuje.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"Witaj."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"Kim jesteś?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"Przepraszam, pomyliłem się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~Nie jest zaniepokojona. "Nie... *znam* cię. Żadne z nas nic nie zyska na tym spotkaniu. Żegnaj."~ */
  IF ~~ THEN REPLY #43685 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"Nie *znam* cię, ale witasz mnie tak, jak to czyni mój lud. Nieważne... Nie mogę ci pomóc, wędrowcze. Żegnaj."~ */
  IF ~~ THEN REPLY #43687 /* ~"Wypływa łódź w solnej skorupie."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~Kobieta ma żółty odcień skóry i ostre rysy. Jej ciało pokrywają tatuaże, przy boku nosi długi miecz. Jej oczy są, niczym dwie małe, czarne perły. Obserwują każdy krok Dak'kona.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~Gdy wracacie, Zerth obserwuje Dak'kona. Odwraca się do was plecami, jak gdyby chciała, żeby ją zaatakował.~ */
  IF ~~ THEN REPLY #43690 /* ~"Dak'konie, zabij ją."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"Przestań, Kii'na. Znasz twierdzę Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~Gdy podchodzisz, zupełnie nie zwraca na ciebie uwagi. Dak'kon lekko jej się kłania, czego też wydaje się nie zauważać. Rzuca Dak'konowi parę ostrych słów, a on odpowiada jej w podobnym stylu. Ten fakt wydaje się ją rozwścieczać.~ */
  IF ~~ THEN REPLY #43694 /* ~"Dak'konie, będziesz moim tłumaczem?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"Co powiedziała?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"Zapytaj jej, czy zna twierdzę Vristigor."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~Poczekaj.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"Wynośmy się stąd."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"Dlaczego obrażasz Nieprzerwany Krąg Zerthimona nosząc go przy sercu? Nie zaliczasz się do Ludu, zdrajco spod Shrak'at'lor! Anarchowie i *zerthowie* przemówili i będziemy przestrzegać ich słów. Masz ze mną nie rozmawiać... ani z żadnym *zerthem*."~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~Dak'kon przerywa jej w pół zdania kłaniając się oficjalnie. Odwraca od niego głowę i spogląda na ciebie. "Idziesz w cieniu wyrzutka!"~ */
  IF ~~ THEN REPLY #43701 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"Nie musi dla ciebie tłumaczyć. Powiem ci. Jesteś człowiekiem, który nosi płaszcz z blizn i krwi, niezdolny, by słuchać słów Zerthimona. Idziesz w cieniu wyrzutka. Mimo to przekonał mnie, żebym pozwoliła ci wysłuchać mych słów. *Poznam* twą wolę."~ */
  IF ~~ THEN REPLY #43703 /* ~"Mam tylko kilka pytań..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"Znasz twierdzę Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"Niczego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~Wygląda zarówno na rozbawioną i skonsternowaną. "Tak, uderz, Dak'konie i niech twa zdrada wypłynie z twego serca githyanki." Obnaża gardło.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~Znów mówi do Dak'kona. "Czy uderzysz mnie dla kogoś spoza Ludu? Czy jego słowa są ważniejsze, niż słowa *zertha*? Naprawdę jesteś zagubiony, Dak'konie. Jak do tego doszło?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"Zbłądziłeś Dak'konie. *Wiedz*, że mam nadzieję, iż odnajdziesz swą drogę. Szkoda mi cię. Żegnaj."~ */
  IF ~~ THEN REPLY #43709 /* ~"Chodźmy, Dak'konie."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~Obserwuje cię - surowo. "Skąd ty, który idziesz w cieniu wyrzutka, *znasz* tę nazwę?"~ */
  IF ~~ THEN REPLY #43711 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"Słyszałem na ulicy."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"Nieważne."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"*Wiedz*... *wiedz*, że masz mą wdzięczność... ty i ten *zerth*. *Wiedz*, że tego nie zapomnę." Odwraca się do Dak'kona. "*Wiedz*, że to NIE wystarczy, by odpokutować upadek Shrak'at'lor. Zdanie Anarchów jest niezmienne."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"Ummm... Żegnaj."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~Powiedziałem jednej z githzerai to, czego się dowiedziałem o planowanym przez githyanki ataku na twierdzę Vristigor. Wyszła w pośpiechu.~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"Ummm... Żegnaj."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Powiedziałem jednej z githzerai to, czego się dowiedziałem o planowanym przez githyanki ataku na twierdzę Vristigor. Wyszła w pośpiechu.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"Muszę *znać* gdzie słyszałeś tę nazwę."~ */
  IF ~~ THEN REPLY #43718 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"Czy nie wyrażam się jasno? Nie powiem ci."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"Oko Vilquara!" Odwraca się do Dak'kona. "Spraw, by powiedział!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"Więc umrzecie obaj." Zaczyna wymachiwać dłońmi.~ */
  IF ~~ THEN REPLY #43722 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~Po następnej nawałnicy słów, kobieta nagle przestaje rozmawiać z Dak'konem. "Nie będę cię słuchać. Ty wysłuchasz mnie, człowieku. Nie *znam* cię, ale twój wygląd mówi o tobie źle. Twe ciało to książka napisana bliznami i krwią, a ty idziesz w cieniu wyrzutka, który nie *zna* Zerthimona, ani nie *zna* siebie. Mów!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"Witaj."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"W cieniu wyrzutka? Co masz na myśli?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"W cieniu wyrzutka? Co masz na myśli?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"Grupa githyanki planuje najechać twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"Nauczysz mnie języka githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"Czy ukażesz mi Drogę Zerthimona?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~Poirytowana syczy. "Twe uprzejmości są niczym pył. Zbliża się żałoba - nie ma czasu, człowieku. *Poznam* twe pytania, a potem odejdziesz, gdyż taka jest moja wola."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"Co miałaś na myśli mówiąc, że idę w cieniu wyrzutka?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"Co miałaś na myśli mówiąc, że idę w cieniu wyrzutka?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"Grupa githyanki planuje najechać twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"Nauczysz mnie języka githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"Czy ukażesz mi Drogę Zerthimona?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"Idziesz z wyrzutkiem i nie *znasz* jego historii? Jest chętny do mówienia o innych rzeczach, ale milczy w sprawie swej historii? Zapytaj go o Shrak'at'lor, o poddaniu potężnej twierdzy githyanki i zobaczymy, co ujawni jego podzielony umysł. Zapytaj go, jak mówi słowami Zerthimona, ale jego *karach* jest niczym mgła."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"Nie ma wątpliwości w tym jak wymawia się słowa Zerhimona. Pokolenia *zerthów* są jak Klejnot Rrakmy, mają takie samo zdanie. Twoją zaś cechą jest podzielony umysł. Pełen wątpliwości, które są echem twej własnej niewierności."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"Spoczniesz razem z martwymi z Shrak'at'lor w zmiennym chaosie, bo wszystko widzisz Okiem Vilquara. Twój umysł jest podzielony, twój *karach* słaby!"~ */
  IF ~~ THEN REPLY #43747 /* ~Stań im na drodze.~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"Dak'konie, masz natychmiast przestać."~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"Daj spokój, Dak'konie."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~Zaatakuj zertha.~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"Psie! Zdradziecki psie Githyanki!" Rzuca się na ciebie z mieczem w dłoni!~ */
  IF ~~ THEN REPLY #43752 /* ~"Pora umierać, Kii'no."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~Ostrza obydwojga uderzają w siebie jak grom!~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~Dak'kon niechętnie opuszcza miecz. Przez chwilę Kii'na obserwuje go z niedowierzaniem, a potem szeroko się uśmiecha. "Nareszcie, prawda. Twój umysł nie jest podzielony. Jesteś... *niewolnikiem* tego człowieka. Mówi do ciebie niczym Anarch, a ty *słuchasz*."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"Jego słowa mają taką samą wagę jak twoje, a ich forma jest niczym Limbo. Nie będę cię słuchać, Dak'konie."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"Słowa Zerthimona nie są przeznaczone dla ludzkich uszu. Ich umysły nie są jednością, a gdziekolwiek przybędą przynoszą podzielenie. Ten tu, pokryty bliznami i krwią, podróżuje ze zdrajcą. W twej piersi bije serce Vilquara, jeśli prosisz bym go wysłuchała."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"Nie wysłucham go. To on posłucha mnie."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~Kobieta odwraca się do ciebie. Jej czarne, perliste oczy błyszczą niebezpiecznie. "Nie *znam* cię, ale twój wygląd mówi o tobie źle. Twe ciało to książka napisana bliznami i krwią, a ty chodzisz w cieniu wyrzutka, który twierdzi, że mówi w imieniu samego Zerthimona. Mów!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"Witaj, dzierżąca-miecz."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"Witaj."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"W cieniu wyrzutka? Co masz na myśli?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"W cieniu wyrzutka? Co masz na myśli?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"Grupa githyanki planuje najechać twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"Nauczysz mnie języka githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"Czy ukażesz mi Drogę Zerthimona?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~Przez chwilę patrzy *groźnie* na Dak'kona. "Gith była wielkim wojownikiem, który wyrwał nasz lud z niewoli *illithidów* - władców niewolników. Zerthimon był jej porucznikiem. Kiedy tych dwoje uwolniło nasz lud, Gith zaatakowała Zerthimona na Spopielonej Równinie. Padły ostre słowa, wyciągnięto broń - i jeden lud stał się dwoma. Ci, którzy zostali przy królowej-suce przyjęli nazwę Githyanki. Ci z nas, którzy poszli za Zerthimonem zostali wierni Ludowi i przyjęli imię Githzerai."~ */
  IF ~~ THEN REPLY #43770 /* ~"I to dlatego tak bardzo się nienawidzicie?"~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"Dziękuję. Żegnaj."~ */ JOURNAL #39486 /* ~Odkryłem, że współzawodnictwo pomiędzy githzerazi i githyanki wynika ze starożytnego dziedzictwa - obie strony nienawidzą tego czym stała się druga strona. Dziwne jak często dwie wyrastające z tego samego źródła rzeczy stają się czymś całkowicie przeciwnym.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"Oba nasze ludy są jak muł z Penansk - uparte, ślepe i nieznośne. Githyanki są dodatkowo okrutni. Nienawidzą nas za to, że rozwijamy się w dziedzinach, których nie rozumieją."~ */
  IF ~~ THEN REPLY #43774 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"Tonąca Ach'ali! Pytaj, a usłyszysz odpowiedzi."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"Co miałaś na myśli mówiąc, że idę w cieniu wyrzutka?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"Co miałaś na myśli mówiąc, że idę w cieniu wyrzutka?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"Grupa githyanki planuje najechać tę twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"Nauczysz mnie języka githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"Czy ukażesz mi Drogę Zerthimona?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"Jeśli temu, z którym podróżujesz, nie można czymś takim zawracać głowy, nauczę cię. Mowa Githzerai opiera się na historii. Wszystko jest dla nas historią; metafora to potężne narzędzie, inspiruje w nas heroizm i powstrzymuje nas od złych uczynków. Kiedy mówimy o stole Toryga, pamiętamy, że Toryg znany był ze swej gościnności i dobrej woli. Kiedy mówimy o sercu Selqanta, przypominamy sobie jego lubieżną i okrutną naturę. Rozumiesz?"~ */
  IF ~~ THEN REPLY #43786 /* ~"Tak."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Zerth Kii'na nauczył mnie języka githzerai. Język ten opiera się na metaforze, alegorii i opowieściach wysnutych z dziejów rasy githzerai.~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"Nie."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~Kontynuujesz naukę:
Mądry człowiek to ten, który 'napisał księgę Anarchów'.
Oskarżyć kogoś o zdradę to przypominać o 'Oku Vilquara'.
Mówi się, że hojni ludzie mają 'otwarte komody'.
Popularne powitania to 'Pozdrawiam cię, dzierżący-miecz' i 'Składam ci ukłon klanu Zerchai', na które należy odpowiedzieć 'Zaszczyt to dla wędrowcy'.
Zapamiętujesz jeszcze wiele tego typu fraz.~ */
  IF ~~ THEN REPLY #43789 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"Więc nie mogę ci już pomóc. Pozwól, by ten, z którym podróżujesz wyraził swą opinię."~ */
  IF ~~ THEN REPLY #43792 /* ~"Po prostu mam jeszcze kilka pytań..."~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"Może namówię go, żeby tak zrobił, ponieważ to, co mówisz, jest bez sensu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~Jej wzrok twardnieje. "Podróżujesz z kimś, kto mieni się *zerthem* i poucza mnie o moralności, a jednak pytasz, czy mogę wskazać ci Drogę? Poproś by *on* cię nauczył, bo ja tego nie zrobię!"~ */
  IF ~~ THEN REPLY #43798 /* ~"Uspokój się i odpowiedz jeszcze na parę pytań."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"Może tak zrobię. Żegnaj."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"Wróciłeś, by mnie męczyć? Czego chcesz tym razem?"~ */
  IF ~~ THEN REPLY #43801 /* ~"Po prostu mam jeszcze kilka pytań..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"Grupa githyanki planuje najechać twierdzę za siedem dni. Już są w drodze."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~Gdy podchodzisz Zerth kłania się niechętnie. "*Wiedz*, że twe słowa ocaliły nas od tragedii. Składamy Przysięgę Złotej Dłoni, człowieku. Twój wybór towarzyszy podróży nie jest najszczęśliwszy..." Rzuca okiem na Dak'kona. "Ale pokazałeś, że jesteś przyjacielem Ludu. Wysłucham cię." Pomimo tych słów, wydaje się niechętnie mieć z tobą do czynienia.~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"Co wiesz o Dak'konie?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"Co wiesz o Dak'konie?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"Czy nauczysz mnie jak odróżnić githzerai od githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"Nauczysz mnie języka githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"Czy ukażesz mi Drogę Zerthimona?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

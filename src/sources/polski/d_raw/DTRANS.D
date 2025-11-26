// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~"A WIĘC PRZYSZEDŁEŚ."~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~"NIE JESTEŚ TU MILE WIDZIANY."~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~"Coś uczynił moim przyjaciołom?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~"Coś uczynił mojemu przyjacielowi?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~"Coś uczynił moim towarzyszom?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~"Coś uczynił mojemu towarzyszowi?"~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~"Znam cię z tego, czym jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~"Znam cię z tego, czym jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~"Kim jesteś?"~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~"ONI ZMARLI DLA CIEBIE, TAK JAK WIELU IM PODOBNYCH. TAKIM TO TOREM TOCZĄ SIĘ SPRAWY ŚMIERTELNYCH."~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~"ON ZMARŁ DLA CIEBIE, TAK JAK WIELU JEMU PODOBNYCH. TAKIM TO TOREM TOCZĄ SIĘ SPRAWY ŚMIERTELNYCH."~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~"ONA ZMARŁA DLA CIEBIE, TAK JAK WIELU JEJ PODOBNYCH. TAKIM TO TOREM TOCZĄ SIĘ SPRAWY ŚMIERTELNYCH."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~"TAKI LOS JEST UDZIAŁEM WSZYSTKICH, KTÓRZY PODĄŻAJĄ ZA TOBĄ, POŁAMAŃCZE. WIELE JEST RZECZY, O KTÓRYCH ZAPOMNIAŁEŚ."~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~"Dlaczego to uczyniłeś?"~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~"Dlaczego to uczyniłeś?"~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~"Dlaczego to uczyniłeś?"~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~"Dlaczego to uczyniłeś?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~"PRÓBOWALI MNIE SKRZYWDZIĆ. WŁAŚNIE *TUTAJ*. OBRONIŁEM SIĘ. A KIEDY TO UCZYNIŁEM, PRZYPOMNIAŁA SOBIE O NICH ICH ŚMIERTELNOŚĆ. ODEBRALI ŚMIERĆ Z WŁASNYCH RĄK."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~"PRÓBOWAŁ MNIE SKRZYWDZIĆ. WŁAŚNIE *TUTAJ*. OBRONIŁEM SIĘ. A KIEDY TO UCZYNIŁEM, PRZYPOMNIAŁA SOBIE O NIM JEGO ŚMIERTELNOŚĆ. ODEBRAŁ ŚMIERĆ Z WŁASNEJ RĘKI."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~"PRÓBOWAŁA MNIE SKRZYWDZIĆ. WŁAŚNIE *TUTAJ*. OBRONIŁEM SIĘ. A KIEDY TO UCZYNIŁEM, PRZYPOMNIAŁA SOBIE O NIEJ JEJ ŚMIERTELNOŚĆ. ODEBRAŁA ŚMIERĆ Z WŁASNEJ RĘKI."~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~"PRÓBOWAŁA MNIE SKRZYWDZIĆ. WŁAŚNIE *TUTAJ*. OBRONIŁEM SIĘ. A KIEDY TO UCZYNIŁEM, PRZYPOMNIAŁA SOBIE O NIEJ JEJ ŚMIERTELNOŚĆ. ODEBRAŁA ŚMIERĆ Z WŁASNEJ RĘKI."~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~"DAŁEM IM SZANSĘ NA OPUSZCZENIE TEGO MIEJSCA. ALE ONI BYLI NIEUGIĘCI W SWOIM POSTANOWIENIU PRZYJŚCIA CI Z POMOCĄ I NIC POZA TYM DLA NICH SIĘ NIE LICZYŁO."~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~"Zatem *zabiłeś* ich."~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~"Zatem *zabiłeś* ich."~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~"Zatem *zabiłeś* ich."~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~"Zatem *zabiłeś* ich."~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~"DAŁEM MU SZANSĘ NA OPUSZCZENIE TEGO MIEJSCA. ALE ON BYŁ NIEUGIĘTY W SWOIM POSTANOWIENIU PRZYJŚCIA CI Z POMOCĄ I NIC POZA TYM DLA NIEGO SIĘ NIE LICZYŁO."~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~"DAŁEM JEJ SZANSĘ NA OPUSZCZENIE TEGO MIEJSCA. ALE ONA BYŁ NIEUGIĘTA W SWOIM POSTANOWIENIU PRZYJŚCIA CI Z POMOCĄ I NIC POZA TYM DLA NIEJ SIĘ NIE LICZYŁO."~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~"DAŁEM JEJ SZANSĘ NA OPUSZCZENIE TEGO MIEJSCA. ALE ONA BYŁ NIEUGIĘTA W SWOIM POSTANOWIENIU PRZYJŚCIA CI Z POMOCĄ I NIC POZA TYM DLA NIEJ SIĘ NIE LICZYŁO."~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~"WALCZYŁA W TWOJEJ OBRONIE JAK SZALONA. JEJ PRZYWIĄZANIE DO CIEBIE ROZPALAŁO JĄ SILNIEJ, NIŻ OGNIE ELIZJUM."~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~"BYŁA MOCNA. BÓL, KTÓRY POTRAFIŁA ZNIEŚĆ, POŁOŻYŁBY TRUPEM TRZY WIĘKSZE DEMONY."~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~"NIE CZERPAŁEM ŻADNEJ PRZYJEMNOŚCI Z ICH ŚMIERCI."~ */
  IF ~~ THEN REPLY #64051 /* ~"Zatem dlaczego to *uczyniłeś*?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~"DZIEWCZYNA DIABELSTWO WALCZYŁA W TWOJEJ OBRONIE JAK SZALONA. JEJ PRZYWIĄZANIE DO CIEBIE ZAGRZEWAŁO JĄ SILNIEJ, NIŻ OGNIE ELIZJUM."~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~"DZIEWCZYNA DIABELSTWO WALCZYŁA W TWOJEJ OBRONIE JAK SZALONA. JEJ PRZYWIĄZANIE DO CIEBIE ZAGRZEWAŁO JĄ SILNIEJ, NIŻ OGNIE ELIZJUM."~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~"I TANAR'RI... BYŁA MOCNA. BÓL, KTÓRY POTRAFIŁA ZNIEŚĆ, POWINIEN OKRYĆ WSTYDEM WSZYSTKIE BAATEZU."~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~"TANAR'RI BYŁA MOCNA. BÓL, KTÓRY POTRAFIŁA ZNIEŚĆ, POWINIEN OKRYĆ WSTYDEM WSZYSTKIE BAATEZU."~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~"NIE CZERPAŁEM ŻADNEJ PRZYJEMNOŚCI Z JEGO ŚMIERCI."~ */
  IF ~~ THEN REPLY #64049 /* ~"Zatem dlaczego *to* uczyniłeś?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~"NIE CZERPAŁEM ŻADNEJ PRZYJEMNOŚCI Z JEJ ŚMIERCI."~ */
  IF ~~ THEN REPLY #64050 /* ~"Zatem dlaczego *to* uczyniłeś?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~"TAKA NIE BYŁA MOJA WOLA. TO NIE JA ICH TUTAJ SPROWADZIŁEM."~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~"TAKA NIE BYŁA MOJA WOLA. TO NIE JA GO TUTAJ SPROWADZIŁEM."~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~"TAKA NIE BYŁA MOJA WOLA. TO NIE JA JĄ TUTAJ SPROWADZIŁEM."~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~"KAŻDE Z NICH MOGŁO DOKONAĆ INNEGO WYBORU, ALE WOLELI UMRZEĆ ZA CIEBIE."~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~"MÓGŁ DOKONAĆ INNEGO WYBORU, ALE WOLAŁ UMRZEĆ ZA CIEBIE."~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~"MOGŁA DOKONAĆ INNEGO WYBORU, ALE WOLAŁA UMRZEĆ ZA CIEBIE."~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~"TAK ZAWSZE BYWA Z TYMI, KTÓRZY PODĄŻAJĄ ZA TOBĄ. ALBOWIEM ONI SĄ UDRĘCZONYMI DUSZAMI, POSZUKUJĄCYMI WYZWOLENIA. ALE NIE SĄ TEGO ŚWIADOMI."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~"ZAPOMNIAŁEŚ O TYM. I ZAPOMNISZ ZNOWU."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~"Znam cię z tego, czym jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~"Znam cię z tego, czym jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~"Kim jesteś? Dlaczego to uczyniłeś?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~"CZYŻ MOŻLIWE JEST, ABYŚ PRZESZEDŁ TĘ CAŁĄ DROGĘ, NIE WIEDZĄC, CO LEŻY U JEJ KRESU?"~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~"Nie, ja wiem, kim jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~"Nie, ja wiem, kim jesteś - jesteś moją śmiertelnością. Twoja zbroja - jest poskręcana jak gałęzie drzew. Z takich rzeczy słynie magia Raveli."~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~"Co masz na myśli?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~"JESTEM TYM, KTÓRY TOWARZYSZY KAŻDEMU ŻYCIU. MÓJ GŁOS JEST RZĘŻENIEM ŚMIERCI, OSTATNI ODDECHEM W SŁABNĄCYCH PŁUCACH, OSTATNIM SZEPTEM KONAJĄCEGO."~ */
  IF ~~ THEN REPLY #64065 /* ~"Jesteś... moja śmiertelnością."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~"TAK. JA JESTEM TYM, KTÓREGO WYDARTO Z TWEGO WNĘTRZA ZA SPRAWĄ MOCY TAMTEJ WIEDŹMY. ZOSTAŁEM WYZWOLONY Z WIĘZIENIA TWEGO CIAŁA."~ */
  IF ~~ THEN REPLY #64066 /* ~"Wyzwolony ode mnie?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~"TAK. JA JESTEM TYM, KTÓREGO WYDARTO Z TWEGO WNĘTRZA ZA SPRAWĄ MOCY TAMTEJ WIEDŹMY."~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~"JESTEM TYM, KTÓRY TOWARZYSZY KAŻDEMU ŻYCIU. MÓJ GŁOS JEST RZĘŻENIEM ŚMIERCI, OSTATNI ODDECHEM W SŁABNĄCYCH PŁUCACH, OSTATNIM SZEPTEM KONAJĄCEGO."~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~"ZOSTAŁEM WYZWOLONY Z WIĘZIENIA TWEGO CIAŁA."~ */
  IF ~~ THEN REPLY #64068 /* ~"Wyzwolony ode mnie?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~"W CHWILI, W KTÓREJ DANE MI BYŁO WYDOSTAĆ SIĘ Z TWOJEJ CHOREJ POWŁOKI, ZAKOSZTOWAŁEM SMAKU ŻYCIA. ZAKOSZTOWAŁEM SMAKU WOLNOŚCI. NIE UGNĘ SIĘ PRZED TOBĄ."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~"My nie możemy być rozdzieleni. Sfery cierpią na naszym rozdzieleniu."~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~"Okazałeś się bardzo kłopotliwy dla mnie w tym i w moich poprzednich żywotach, duchu. Nie powinniśmy byli zostać rozdzieleni."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~"NIE WIESZ NIC O PRZEZNACZENIU I O NASZYM ROZDZIELENIU. ZANIM TWOJA PAMIĘĆ UMRZE PO RAZ KOLEJNY, WIEDZ, ŻE NIGDY NIE BYŁO NAM PRZEZNACZONE ZŁĄCZYĆ SIĘ W *JEDEN* BYT."~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~"TO JUŻ OSTATNI RAZ, KIEDY ROZMAWIAMY, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #64074 /* ~"Zatem jest coś, co chcę wiedzieć, duchu - przybyłem z bardzo daleka i jest wiele pytań, na które możesz mi odpowiedzieć."~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~"Nie ugnę się przed tobą. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~"ZASPOKOJĘ CIĘ PO RAZ OSTATNI. A WÓWCZAS FORTECĘ TĘ OGARNIA NA POWRÓT CISZA."~ */
  IF ~~ THEN REPLY #65848 /* ~"Zatem moje pytania są następujące..."~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~"Nie ugnę się przed tobą. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~"CZYŻ SĄDZISZ, ŻE LĘKAM SIĘ KONFRONTACJI Z TOBĄ, POŁAMAŃCZE? NIC BARDZIEJ MYLNEGO."~ */
  IF ~~ THEN REPLY #65852 /* ~"Czy to właśnie dlatego wolałeś słać przeciwko mnie cienie, niżeli stanąć ze mną do otwartej walki? Tym cieniom ani razu nie udało się zgładzić mnie, i nigdy im się to nie uda."~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~"Żelazny golem, wykuty z oręża, powiedział mi to kiedyś. Jeżeli ktoś zadaje się śmierć z oddali i nie ukazuje swojej osoby, to daje wyraz swojej słabości. Tak walczy tchórz."~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~"Czy to właśnie dlatego wolałeś słać przeciwko mnie cienie, niżeli stanąć ze mną do otwartej walki? Tym cieniom nigdy nie udało się mnie unicestwić... Ale nie taki był cel ich ataków, nieprawdaż? One tylko zabijały mnie, abym ciągle zapominał."~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~"Jeżeli jeszcze nie lękasz się mnie, pozostała ci do nauczenia jeszcze jedna rzecz. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~"POSŁUGUJĘ SIĘ CIENIAMI, ALBOWIEM ONE POTRAFIĄ SIĘGNĄĆ DALEKO. A MOJE OCZY SŁUŻĄ IM ZA PRZEWODNIKÓW."~ */
  IF ~~ THEN REPLY #65857 /* ~"Zatem cienie potrafią pokonywać odległości, których nie jesteś w stanie przebyć."~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~"Rozumiem. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~"NIE JESTEM W STANIE NIC NA TO PORADZIĆ."~ */
  IF ~~ THEN REPLY #65860 /* ~"Ale ty nigdy nie opuściłeś tych murów, aby zmierzyć się ze mną... Słałeś na mnie tylko te cienie. Tak walczą tchórze."~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~"MOJE MOCE SĄ KONIECZNE, ABY UTRZYMYWAĆ TO MIEJSCE PRZY ŻYCIU, POŁAMAŃCZE. GDYBY BYŁO INACZEJ TO MOJA DŁOŃ ZACISNĘŁABY SIĘ NA TWOIM GARDLE ZA KAŻDYM TWOIM ZGONEM. NIE MOGĘ NA DŁUGO OPUSZCZAĆ MURÓW TEJ FORTECY."~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~"Nie wierzę ci. Myślę, że po prostu boisz się stawić mi czoła. Albo po prostu okłamujesz mnie, a coś zupełnie innego sprawia, że pozostajesz w tych murach..."~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~"Nie wierzę ci. Myślę, że po prostu boisz się stawić mi czoła. Albo po prostu okłamujesz mnie, a coś zupełnie innego sprawia, że pozostajesz w tych murach..."~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~"Nie wierzę ci. Myślę, że po prostu boisz się stawić mi czoła. Albo po prostu okłamujesz mnie, a coś zupełnie innego sprawia, że pozostajesz w tych murach..."~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~"Nawet wówczas, kiedy znalazłem się już we wnętrzu tej Fortecy, posłałeś Vhailora, aby mnie powstrzymał. A przecież mogłeś zrobić to już wtedy sam.~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~"Nawet wówczas, kiedy znalazłem się już we wnętrzu tej Fortecy, posłałeś tę pustą wewnątrz zbroję, aby mnie powstrzymała. A przecież mogłeś zrobić to już wtedy sam."~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~"Nawet wówczas, kiedy już znalazłem się we wnętrzu tej Fortecy, posłałeś Ignusa, aby mnie powstrzymał. A przecież mogłeś zrobić to już wtedy sam."~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~"Nawet wówczas, kiedy już znalazłem się we wnętrzu tej Fortecy, posłałeś tego szalonego płonącego czarownika, aby mnie powstrzymał. A przecież mogłeś zrobić to już wtedy sam."~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~"A więc ten kryształ, który ustanowiłeś, aby podzielić mnie i uwięzić. Ty nie chciałeś mnie zabić. Ty chciałeś mnie tylko uwięzić."~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~"DUCH ŁASKOBÓJCY BYŁ... BARDZO PORĘCZNY. WIELE NIESPRAWIEDLIWOŚCI PRZYSZŁO CI POPEŁNIĆ, I WIELE Z NICH POZOSTAWIŁO BOLESNE ŚLADY POŚRÓD SFER. DAŁEM TEJ WIDMOWEJ ZBROI SZANSĘ NA TO, ABY NAPRAWIĆ TE ZBRODNIE."~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~"Co takiego mu powiedziałeś, co sprawiło, że obrócił się przeciwko mnie? On był moim sojusznikiem, on za mną tutaj przyszedł..."~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~"Zatem ustawiłeś ten kryształ, aby uwięzić mnie i to ci się nie udało."~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~"POWIEDZIAŁEM MU O TWOICH ZBRODNIACH. POWIEDZIAŁEM MU O TYM, JAK INNI UMIERALI PO TO, ABYŚ TY MÓGŁ ŻYĆ. TO NAPEŁNIŁO GO SIŁĄ."~ */
  IF ~~ THEN REPLY #65875 /* ~"Ale to również TWOJA zbrodnia. Tak długo, jak pozostaniemy rozdzieleni, inni nadal będą umierać . Tak więc Vhaior powinien był spróbować ciebie zabić, nie mnie."~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~"Zatem ustawiłeś ten kryształ, aby uwięzić mnie i to ci się nie udało."~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~"*JA* NIE POPEŁNIŁEM ŻADNEJ ZBRODNI."~ */
  IF ~~ THEN REPLY #65878 /* ~"*Ty* jesteś tym, który ciągle mnie uśmierca. *Ty* jesteś tym, który gromadzi ciała innych w stosy, tak wysokie, że galerie Fortecy są teraz WYPEŁNIONE cieniami. I ty OŚMIELASZ się mówić, że nie popełniłeś żadnej zbrodni? Ciesz się, że pomiędzy żywymi nie ma już Vhailora, bo inaczej miałbyś już nad sobą jego topór.""~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~"NIE MÓW *MI* O SPRAWIEDLIWOŚCI I OSĄDZENIU. NIEBAWEM SFERY OSĄDZĄ CIĘ WEDŁUG WŁASNEJ SPRAWIEDLIWOŚCI I TO BĘDZIE JUŻ KONIEC SPRAW POMIĘDZY MNĄ A TOBĄ, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #65880 /* ~"Ale nawet wówczas, kiedy Vhailor poległ, ty *nie zdecydowałeś się* stanąć przeciwko mnie oko w oko. Nie zrobiłeś tego, chociaż mogłeś to uczynić. Po prostu pozostawiłeś na mojej drodze ten kryształ, abym znalazł w nim więzienie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~"TEN CZARNOKSIĘŻNIK BYŁ... BARDZO PORĘCZNY. JEGO WŚCIEKŁOŚĆ I GNIEW NA CIEBIE SIĘGAŁY DALEKO. POMYŚLAŁEM, ŻE STOSOWNE BĘDZIE, JEŻELI POZWOLĘ MU NA TO, ABY WYWARŁ NA TOBIE *ZEMSTĘ*. ALBOWIEM SĄDZIŁEM, ŻE JEŚLI SFERY NIE POTRAFIĄ NAUCZYĆ CIĘ MIŁOSIERDZIA, TO MOŻE BÓL DOKONA TEJ SZTUKI."~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~"On pragnął zemsty? Za to, że nauczyłem go Sztuki i sprawiłem, że cierpiał?"~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~"On pragnął zemsty? Za co?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~"TAK. ALBOWIEM TAK, JAK BÓL BYŁ JEGO NAUCZYCIELEM, SĄDZIŁEM, ŻE I CIEBIE NAUCZY. ALE CZARNOKSIĘŻNIK BYŁ SŁABSZY NIŻ SĄDZIŁEM I DLATEGO ZNALAZŁEŚ SIĘ TUTAJ. TUTAJ NIEBAWEM ZAKOŃCZĄ SIĘ SPRAWY POMIĘDZY MNĄ A TOBĄ, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #65885 /* ~"Zatem posłałeś Ignusa, aby mnie powstrzymał... Ale kiedy mu się to nie udało, ty *wciąż* nie zdecydowałeś się stanąć przeciwko mnie oko w oko, chociaż mogłeś to zrobić. Po prostu pozostawiłeś na mojej drodze ten kryształ, abym znalazł w nim więzienie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~"TO JEST BEZ ZNACZENIA. ZAPOMNIAŁEŚ O TYCH SPRAWACH, I ZAPOMNISZ O NICH PONOWNIE."~ */
  IF ~~ THEN REPLY #65887 /* ~"Zatem posłałeś go, aby mnie powstrzymał... Ale kiedy mu się to nie udało, ty *wciąż* nie zdecydowałeś się stanąć przeciwko mnie oko w oko, chociaż mogłeś to zrobić. Po prostu pozostawiłeś na mojej drodze ten kryształ, abym znalazł w nim więzienie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~"TAK. KRYSZTAŁ JEST WIĘZIENIEM, MOŻLIWE, ŻE NAWET NAJWIĘKSZYM WIĘZIENIEM, JAKIE KIEDYKOLWIEK WYNALEZIONO."~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~"UŻYŁEM TEGO, BOWIEM ZMĘCZYŁO MNIE JUŻ ŚLEDZENIE TWYCH POCZYNAŃ POŚRÓD SFER, BEZIMIENNY. NIEŁATWO CIĘ ZNALEŹĆ. WOLAŁEM, ŻEBYŚ BYŁ GDZIEŚ W POBLIŻU, W JEDNYM MIEJSCU, GDZIE MÓGŁBYM NIE SPUSZCZAĆ CIĘ Z OKA. A MIEJSCEM TAKIM JEST WŁAŚNIE KRYSZTAŁ."~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~"CHCIAŁBYM WIEDZIEĆ, *JAK* WYDOSTAŁEŚ SIĘ Z WNĘTRZA KRYSZTAŁU."~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~"A dlaczegóż tak trudno mnie odszukać?"~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~"Ktoś mi pomógł. Kobieta, którą niegdyś tutaj sprowadziłem, Deionarra, uwolniła mnie."~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~"Moje drogi będą prowadzić dokądkolwiek zechcę. Wiedz, że to więzienie nie powstrzyma mnie. Tak samo, jak i ty nie jesteś w stanie w żaden sposób mnie powstrzymać."~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~"TO RZECZ BEZ ZNACZENIA."~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~"Więc dlaczego mi tego nie powiesz? Przecież i tak to wkrótce zapomnę, a przynajmniej dowiedziałbym się całej prawdy."~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~"Zatem gdybyś mi to powiedział, nic by się nie stało."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~"TAK SAMO, JAK MOC TKWI W IMIONACH, MOC TKWI RÓWNIEŻ W BRAKU WSZELKIEGO IMIENIA. SFERY ZWYKŁY TRACIĆ Z OCZU ISTOTY BEZIMIENNE. A TY JESTEŚ JEDNĄ Z NICH. I JA RÓWNIEŻ."~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~"ACH... DUCH ROZDARTY MIŁOŚCIĄ. CZASEM POZWALAM, ABY ECHA JEJ GŁOSU WĘDROWAŁY PRZEZ SALE TEJ FORTECY. ALE ONA *NIE* UWOLNI CIĘ PONOWNIE."~ */
  IF ~~ THEN REPLY #65899 /* ~"To *nie będzie* już potrzebne. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~"CÓŻ ZA AROGANCJA. BĘDZIEMY MUSIELI NIEBAWEM PODDAĆ TĘ AROGANCJĘ PRÓBIE, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #65901 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~"NIE WIESZ *NIC*."~ */
  IF ~~ THEN REPLY #65903 /* ~"Dlaczego utrzymanie się tego miejsca przy życiu jest dla ciebie tak ważne? Jeżeli naprawdę jesteś tak potężny, jak uważasz, to dlaczego chcesz tutaj pozostać? Przecież tutaj NICZEGO nie ma."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~"TO MOJA FORTECA. TO MÓJ DOM."~ */
  IF ~~ THEN REPLY #65905 /* ~"A cóż to za dom? Spoiwem tej budowli są moje żale, a jedynymi mieszkańcami tych sal są cienie naszych ofiar, snujące się pośród reliktów przeszłości, przykrytych grubą warstwą kurzu. Jedyne, na czym tu można oprzeć oczy, to wysysające wszelkie życie fantomy Sfery Negatywnej Materii. Mówisz, że to twój dom. Na takie miejsca są inne nazwy, a najbliższą spośród nich jest *więzienie*."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~"KAŻDYM SŁOWEM ZDRADZASZ SWOJĄ IGNORANCJĘ, POŁAMAŃCZE. FORTECA TONIE W *CISZY*. COKOLWIEK TUTAJ PRZYCHODZI, *UMIERA* ZANIM ZDOŁA ZAKŁÓCIĆ MÓJ SPOKÓJ. A CIENIE TO BEZGŁOŚNE STWORZENIA."~ */
  IF ~~ THEN REPLY #65907 /* ~"Sądzę, że *musisz* tutaj pozostawać, pośród cieni i duchów, ponieważ sam jesteś zjawą, taką jak one. Wątpię w to, że to ty utrzymujesz to miejsce przy życiu. Myślę, że to ono *ciebie* podtrzymuje."~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~"POZOSTAJĘ TUTAJ Z WYBORU."~ */
  IF ~~ THEN REPLY #65909 /* ~"Doprawdy? A więc, kiedy powiedziałeś, że nie możesz na długo opuszczać tej Fortecy, kłamałeś? I jak to się dzieje, że Forteca zbudowana z MOICH żalów potrzebuje TWOJEJ obecności, aby utrzymać się przy życiu?"~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~"BĘDĘ CIĘ JESZCZE OGLĄDAŁ UMIERAJĄCEGO *TYSIĄCE* RAZY ZA TWOJĄ BEZCZELNOŚĆ, POŁAMAŃCZE. JESTEŚ TU INTRUZEM, A JA DOPILNUJĘ, ABYŚ TU *NIGDY* NIE POWRÓCIŁ."~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~"Weź pod uwagę, że łączy nas wspólna więź. Zatem kiedy ja cierpię, ty musisz cierpieć również. Może jesteś uwięziony w tym miejscu, ponieważ cierpisz, ale inaczej niż ja."~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~"Jestem już zmęczony twoimi jałowymi pogróżkami. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~"O JAKIEJ TO NIEDORZECZNOŚCI MÓWISZ?"~ */
  IF ~~ THEN REPLY #65916 /* ~"Czy to możliwe, że z chwilą, kiedy umieram śmiercią umysłu, ty z kolei umierasz śmiercią ciała? I podczas gdy ja tracę ducha, ty tracisz materię? To dlatego opuszczenie Fortecy jest dla ciebie z czasem coraz to bardziej trudne. Ta Forteca to nie tylko twoje więzienie. Ona jest również twoim grobowcem."~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~"NIEMOŻLIWE."~ */
  IF ~~ THEN REPLY #65919 /* ~"Naprawdę? Powiedziałeś, że łączy nas pewna więź. Myślę, że coraz mniej masz ciała, dlatego odziewasz się w te drzewne twory Raveli i choć pogardzasz nią i jej sztuką, to równocześnie potrzebujesz tej obudowy, aby spowolnić proces twojego rozpadu."~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~"NAWET, GDYBY W TWOICH SŁOWACH MIESZKAŁA PRAWDA, NIC NIE MOŻESZ ZROBIĆ. PRĘDZEJ UMRĘ CIELESNĄ ŚMIERCIĄ, TUTAJ W TEJ FORTECY, NIŻELI ZGODZĘ SIĘ NA TO, ABY DZIELIĆ Z TOBĄ CIERPIENIA ISTNIENIA."~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~"Ale dlaczego mamy wybierać tę powolną, mozolną drogę do ostatecznego zapomnienia, jeżeli mamy jeszcze inne rozwiązanie? Gdyby tak doszło do naszego zjednoczenia, obaj przestalibyśmy cierpieć, stalibyśmy się jednym bytem."~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~"Ale dlaczego mamy powoli obumierać, jeżeli możemy się na nowo zjednoczyć i zlać się w jedną istotę? Moglibyśmy położyć kres naszym obopólnym cierpieniom."~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~"TWOJE SŁOWA TCHNĄ DLA MNIE *TRUCIZNĄ*. NIE CHCĘ JUŻ BYĆ CZĘŚCIĄ CIEBIE I DZIELIĆ Z TOBĄ TWOJE *KALEKIE* ISTNIENIE. SPÓJRZ NA SAMEGO SIEBIE. TWOJA POWŁOKA JEST ROZBITA I TONIE W BLIZNACH. WOLAŁBYM RACZEJ DOBROWOLNIE UMRZEĆ, NIŻELI POZWOLIĆ SIĘ ZAMKNĄĆ WE WNĘTRZU TWOJEJ SKORUPY."~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~"Ale spójrz na samego siebie. Jesteś widmowym stworem, który przybiera rozmaite pozy i chełpi się, ale twoje życie i twoja moc to ledwie marne ślady tego czym dawniej było życie. Czy chcesz, aby Sfery pamiętały cię właśnie takim, kiedy przyjdzie ci poddać się ostatecznemu zapomnieniu?"~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~"Rozumiem. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~"NIE MAM OCHOTY ZMIENIAĆ JEDNEGO OSTATECZNEGO ZAPOMNIENIA NA DRUGIE. NIE ZAMIERZAM ZAMIESZKAĆ WE WNĘTRZU TWOJEJ SKORUPY, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #65929 /* ~"To nie musi być ostateczne zapomnienie. Kto wie, co się stanie, kiedy się zjednoczymy? Może to ty staniesz się dawnym sobą, a ja zginę? Albo może połączeni w jeden byt będzie daleko potężniejsi niżeli każdy z osobna?"~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~"Rozumiem. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~"NIE WIESZ, O CZYM MÓWISZ. GDYBY DOSZŁO MIĘDZY NAM DO PONOWNEGO ZJEDNOCZENIA, WÓWCZAS NADSZEDŁBY NASZ KONIEC. DLA NAS NIE BYŁOBY ŻADNEJ *PRZYSZŁOŚCI*. PRZED NAMI TYLKO NASTĘPNE, KOLEJNE UDRĘKI. WIEM TO."~ */
  IF ~~ THEN REPLY #65932 /* ~"Zatem złączymy razem te wszystkie udręki i złożymy je w jeden byt. I tym sposobem pokonamy je ostatecznie."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~"WIEDZ O TYM, ŻE JEŻELI DOJDZIE DO NASZEGO ZJEDNOCZENIA, OBAJ BĘDZIEMY CIERPIEĆ. ZBYT *WIELE* JEST W NAS NATURY TEGO PIERWSZEGO, ABYŚMY MOGLI W TAKIEJ POSTACI PRZETRWAĆ. BĘDZIEMY PRZEKLĘCI."~ */
  IF ~~ THEN REPLY #65934 /* ~"A zatem wytoczymy bój naszemu własnemu potępieniu, a kiedy je pokonamy, odzyskamy na nowo wolność."~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~"WIEDZ O TYM, ŻE ZAWSZE *NIENAWIDZIŁEM* CIĘ, POŁAMAŃCZE. JEŻELI DOJDZIE MIĘDZY NAMI DO ZJEDNOCZENIA, NADAL BĘDĘ CIĘ *NIENAWIDZIŁ*. A KIEDY TWOJA SKORUPA ROZPADNIE SIĘ I UMRZE NARESZCIE, WIEDZ, ŻE ZNAJDĘ *PRZYJEMNOŚĆ* W TWOJEJ ŚMIERCI."~ */
  IF ~~ THEN REPLY #65936 /* ~"Mogę z tym żyć. I tak samo mogą z tym żyć Sfery. A jeżeli zostaniemy pokonani, wówczas będziesz czerpał przyjemność z mojej klęski i cierpienia. Ale lepiej jeżeli przyłączysz się do mnie i będziesz w ten sposób mnie nienawidził, niż gdybyśmy mieli umierać w rozłączeniu, z niczym innym jak ostatecznym zapomnieniem u kresu naszej drogi."~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~"WIEDZ, ŻE MOJA NIENAWIŚĆ DLA CIEBIE *UNICESTWI* SFERY. PRZYGOTUJ SIĘ. ZJEDNOCZYMY SIĘ ZNOWU. AŻ PO KRES TWOJEGO ŻYCIA."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~"Ale zanim to wszystko cię stanie, co z moim przyjaciółmi? Czy można ich ocalić?"~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~"Ale zanim to wszystko cię stanie, co z moim towarzyszami? Chciałbym, aby wrócono im życie."~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~"Zanim staniemy się jednym bytem, chcę, aby powrócono życie mojemu przyjacielowi."~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~"Zanim to się stanie, żądam, abyś wskrzesił mojego przyjaciela."~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~"JESTEM ŚMIERTELNOŚCIĄ SAMĄ W SOBIE. NATURA ŻYCIA I ŚMIERCI JEST MI DOBRZE ZNANA... JEŻELI SIĘ ZJEDNOCZYMY, MOJA WIEDZA STANIE SIĘ TWOJĄ."~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~"Dobrze. Jestem gotów na to, aby stać się znowu śmiertelnikiem..."~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~"NIE MA *NICZEGO* W SKORUPIE TWOJEGO UMYSŁU, POŁAMAŃCZE, CO MIAŁOBY JAKIEKOLWIEK ZNACZENIE."~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~"Z wyjątkiem jednej rzeczy - teraz wiem, kim jesteś i wiem, czym jesteś. Mogę to teraz powiedzieć innym i jeśli zechcę, mogę odszukać cię znowu. Któregoś dnia zapragnę znowu do ciebie dotrzeć, a ty będziesz musiał znowu stawić mi czoła. To dlatego chcesz, abym zapominał, czyż nie?"~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~"Z wyjątkiem jednej rzeczy. Słup Czaszek powiedział mi, że były trzy istoty, które wiedziały, gdzie się znajdujesz i jak do ciebie dotrzeć - jedną był Trias, drugą ty, a trzecią ja. Jeżeli zgładzisz Triasa i mnie, nie pozostanie nikt, kto będzie wiedział, kim jesteś i jak do ciebie dotrzeć."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~"Z wyjątkiem jednej rzeczy. Słup Czaszek powiedział mi, że były trzy istoty, które wiedziały, gdzie się znajdujesz i jak do ciebie dotrzeć - jedną był Trias, ale on nie żyje. Drugą byłeś ty, a trzecią ja. A jeżeli ja zapomnę, nie będzie już nikogo pośród żywych, kto będzie wiedział, kim jesteś i jak do ciebie dotrzeć."~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~"TAK, ANIOŁ, KTÓRY JAK PUKLERZEM POSŁUGUJE SIĘ ZŁOTYMI KŁAMSTWAMI. ZAPROWADZIŁEŚ MNIE DO NIEGO WRESZCIE. ZDRAJCĘ OWEGO, PODOBNIE JAK I CIEBIE, NIE ŁATWO BYŁO ZNALEŹĆ. SPOTKA GO OSTATECZNA ŚMIERĆ."~ */
  IF ~~ THEN REPLY #65949 /* ~"Zatem wykorzystałeś mnie, aby do niego dotrzeć? Chciałeś, abym go zgładził, czy tak? Aby jego wiedza odeszła razem z nim? A potem próbowałeś mnie zabić, abym zapomniał, jak można do ciebie dotrzeć?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~"WIDZĘ, ŻE OSTRZE CZASU NIE UPUŚCIŁO CI Z UMYSŁU JESZCZE CAŁEGO ROZSĄDKU. A MÓJ CEL BYŁ ZAWSZE NIEZMIENNY. SPRAWIĆ, ABYŚ ZAPOMNIAŁ."~ */
  IF ~~ THEN REPLY #65951 /* ~"Ale *dlaczego*? Dlaczego..."~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~"PONIEWAŻ NIE ŻYCZĘ SOBIE JUŻ NIGDY CIERPIEĆ ZA SPRAWĄ TWOJEJ *OBECNOŚCI*, POŁAMAŃCZE. TWOJE ISTNIENIE ROZDRAŻNIA MNIE. JESTEŚ PRZYPOMNIENIEM TEGO WSZYSTKIEGO, CO KIEDYŚ BYŁO TREŚCIĄ ŻYCIA, A MNIE WSTRĘTNE SĄ TAKIE WSPOMNIENIA. CHCĘ SPOCZĄĆ W POKOJU WE WNĘTRZU MOJEJ FORTECY."~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~"TAK SAMO, JAK TY ZAPOMNIAŁEŚ O MNIE, JA ŻYCZĘ SOBIE ZAPOMNIEĆ O TOBIE. NA ZAWSZE."~ */
  IF ~~ THEN REPLY #65955 /* ~"Zatem jest to dla mnie do przyjęcia. Ale wiedz, że nie będę już cierpiał z powodu twoich ataków. Będziesz trzymał przy sobie swoje cienie i pozwolisz mi żyć własnym życiem. Ja zaś pozwolę ci żyć twoim własnym życiem."~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~"Ale nie wydaje mi się, żeby to był ten powód. Sądzę, że chcesz, abym zapominał, ponieważ BOISZ się mnie."~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~"Ale ja już nie będą tracił pamięci z każdą kolejną śmiercią. Tak się działo kiedyś, ale to już przeszłość."~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~"KŁAMIESZ. ZAWSZE ZAPOMINAŁEŚ. A JA ZAWSZE ZAPAMIĘTYWAŁEM. ZAWSZE TAK SIĘ DZIAŁO."~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~"'Zawsze' nie musi oznaczać tego, co kiedyś oznaczało. Już raz umarłem, lecz moje wspomnienia powróciły do mnie nietknięte."~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~"'Zawsze' nie musi oznaczać tego, co kiedyś oznaczało. Już wielokrotnie umierałem, lecz moje wspomnienia powracały do mnie nietknięte."~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~"TWOJE PODSTĘPY NIE OCALĄ CIĘ TUTAJ, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #65962 /* ~"Taka jest prawda. Jeżeli zabijesz mnie, nie zatrzymasz mnie, bo zgładzenie mnie już nie będzie oznaczało tego, że wszystko zapomnę. Będę już zawsze cię znał, i będę pamiętał wszystko, co zrobiłem. I będę wiedział, jak do ciebie dotrzeć. I jak cię zniszczyć."~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~"ZATEM UWIĘŻĘ CIĘ, BEZIMIENNY. JEŻELI JUŻ NIE ZAPOMINASZ, TO NIE POZWOLĘ CI ODZYSKAĆ WOLNOŚCI."~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~"Ale ja już raz zbiegłem z tego 'największego więzienia, jakie kiedykolwiek wynaleziono'. Nie możesz mnie uśmiercić, nie możesz mnie uwięzić i nie potrafisz już sprawić, abym znowu zaczął zapominać."~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~"Ale ja już raz zbiegłem z tego kryształowego więzienia, jakie postawiłeś na mojej drodze. Nie możesz mnie uśmiercić, nie możesz mnie uwięzić i nie potrafisz już sprawić, abym znowu zaczął zapominać."~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~"TAK... ALE TO NIE BYŁA TWOJA ZASŁUGA. TO TEN TARGANY MIŁOŚCIĄ DUCH UWOLNIŁ CIĘ. ALE TA ZJAWA NIE UCZYNI TEGO JUŻ WIĘCEJ. Z CHWILĄ, KIEDY ZMIAŻDŻĘ KOŚCI TWOJEGO CIAŁA, SCHWYCĘ TWOJĄ ZNISZCZONĄ SKORUPĘ I WCISNĘ JĄ DO WNĘTRZA KRYSZTAŁU. I NIGDY JUŻ TWOJA NOGA NIE POSTANIE NA ŻADNEJ ZE SFER."~ */
  IF ~~ THEN REPLY #65967 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~"Można spróbować. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~"A ZATEM RZUCĘ CIĘ NA POŻARCIE CIENIOM. POKONAM CIĘ TUTAJ, A POTEM CISNĘ CIĘ KU CIENISTYM GALERIOM, A ICH MIESZKAŃCY BĘDĄ MIELI Z CIEBIE UCZTĘ. CIENIE ZABIJĄ CIĘ. ZABIJĄ TWÓJ BYT NA PRZESTRZENI WIELU WIECZNOŚCI. I NIGDY JUŻ TWOJA NOGA NIE POSTANIE NA ŻADNEJ ZE SFER."~ */
  IF ~~ THEN REPLY #65970 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~"Można spróbować. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~"NIE MASZ ŻADNEGO *WYBORU*, POŁAMAŃCZE. KIEDY ODEJDZIESZ STĄD, ZAPOMNISZ O WSZYSTKIM, CZEGO SIĘ O SOBIE DOWIEDZIAŁEŚ. NIE ŻYCZĘ SOBIE, ABYŚ WIEDZIAŁ, JAK DO MNIE DOTRZEĆ. UMRZESZ ŚMIERCIĄ SWOJEGO UMYSŁU, JESZCZE RAZ I JESZCZE RAZ, BO TAKA JEST MOJA WOLA."~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~"Ale ja już nie zapominam, kiedy umieram. Może kiedyś tak się działo, ale już nie."~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~"TO RZECZ BEZ ZNACZENIA. NIE MOŻESZ UMRZEĆ. TWÓJ UMYSŁ MOŻE ODEJŚĆ, ALE TWOJE CIAŁO POZOSTANIE PRZY ŻYCIU."~ */
  IF ~~ THEN REPLY #65976 /* ~"Umysł może odejść? Co masz na myśli?"~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~"CZUŁEM, JAK TWÓJ DUCH SŁABNIE I ROZKŁADA SIĘ. A TY WCIĄŻ ŻYJESZ. TO WSZYSTKO, CO JEST POTRZEBNE."~ */
  IF ~~ THEN REPLY #65978 /* ~"'Potrzebne'? Dlaczego?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~"TO RZECZ BEZ ZNACZENIA. NIE MOŻESZ UMRZEĆ. TWÓJ UMYSŁ ODEJDZIE, ALE TWOJE CIAŁO POZOSTANIE PRZY ŻYCIU. TO WSZYSTKO, CO JEST POTRZEBNE."~ */
  IF ~~ THEN REPLY #65980 /* ~"'Potrzebne'? Dlaczego?"~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~"ŁĄCZY NAS WSPÓLNA WIĘŹ, NIKŁA, ALE JEDNAK... NIE ŻYCZĘ SOBIE, ABYŚ ZOSTAŁ UNICESTWIONY. WYSTARCZY, ŻE BĘDZIESZ DALEKO ODE MNIE."~ */
  IF ~~ THEN REPLY #65982 /* ~"Zatem, dlaczego próbowałeś mnie *unicestwić* przez ten cały czas?"~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~"Jeżeli łączy nas więź, zatem jeżeli ja cierpię, cierpieć musisz również ty."~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~"A więc nie chciałeś mnie zabić, ponieważ gdybym zginął bezpowrotnie więź ta zostałaby zerwana..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~"TO RZECZ *BEZ* ZNACZENIA."~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~"Poczekaj... Te cienie, które na mnie nasyłałeś... Tym cieniom nigdy nie udało się mnie unicestwić... Ale nie taki był *cel* ich ataków, nieprawdaż? One tylko zabijały mnie, abym ciągle zapominał."~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~"Poczekaj... Te cienie, które na mnie nasyłałeś... Tym cieniom nigdy nie udało się mnie unicestwić... Ale nie taki był *cel* ich ataków, nieprawdaż? One tylko zabijały mnie, abym ciągle zapominał."~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~"Poczekaj... Te cienie, które na mnie nasyłałeś... Tym cieniom nigdy nie udało się mnie unicestwić... Ale nie taki był *cel* ich ataków, nieprawdaż? One tylko zabijały mnie, abym ciągle zapominał."~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~"Naprawdę? A może nie chciałeś mnie zabić, ponieważ gdybym zginął więź istniejąca pomiędzy nami zostałaby bezpowrotnie zerwana... A wówczas ty byś również zginął?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~"SŁABI CIERPIĄ. JA *TRWAM*."~ */
  IF ~~ THEN REPLY #65991 /* ~"Zatem gdybym zginął bezpowrotnie, więź istniejąca pomiędzy nami zostałaby zerwana..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~"NIE MOŻESZ UMRZEĆ."~ */
  IF ~~ THEN REPLY #65993 /* ~"Zatem jeżeli ja nie mogę umrzeć, ty nie możesz istnieć. Ty jesteś moją *śmiertelnością*."~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~"MOŻE KIEDYŚ. ALE JUŻ NIE TERAZ. ZMIENIŁEM SIĘ. PRZEOBRAZIŁEM SIĘ I STAŁEM SIĘ CZYMŚ POTĘŻNIEJSZYM."~ */
  IF ~~ THEN REPLY #65995 /* ~"Być może, ale w swojej pierwotnej istocie, *wciąż* jesteś moją śmiertelnością. Jeżeli ja umrę, ty również zginiesz."~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~"A zatem potwierdzasz, że istota *może* zmienić swoją naturę?"~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~"Ale nic nie jest w stanie zmienić natury człowieka. Ty sam to powiedziałeś."~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~"NIE WIESZ NIC, O TYM, CO MÓWISZ. TWOJE SŁOWA SĄ PUSTE. TAK SAMO, JAK I TWOJA SKORUPA."~ */
  IF ~~ THEN REPLY #66000 /* ~"Wydaje mi się, że doskonale wiem, co mówię. Gdybym został zniszczony, ty byś również zginął."~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~"Przekonamy się jeszcze. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~"SŁUCHASZ, ALE NIE *SŁYSZYSZ*. WIEDZ O TYM, ŻE NIE MOŻESZ UMRZEĆ."~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~"Właściwie to mogę. Golem wykuł dla mnie broń, która zdolna jest uśmiercić nawet mnie. Trzeba tylko zanieść ją do miejsca odciętego od reszty Sfer, tak aby moja śmiertelność nie mogła sięgnąć po inne istnienia. Więc oto i jestem."~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~"Może i nie. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~"*KŁAMIESZ*."~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Wyciągnij miecz. "Czyżby? Spójrz na ten miecz, ujrzyj jego naturę. Jeżeli jesteś tak wszystkowiedzący i wszechpotężny, jak UTRZYMUJESZ, będziesz wiedział, że ten oręż zdolny jest mnie unicestwić."~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Wyciągnij miecz. "Czyżby? Spójrz na ten miecz, ujrzyj jego naturę. Jeżeli jesteś tak wszystkowiedzący i wszechpotężny, jak UTRZYMUJESZ, będziesz wiedział, że ten oręż zdolny jest mnie unicestwić. A ponieważ jesteśmy związani, może unicestwić CIEBIE."~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~Kiedy wypowiadasz te słowa, trzymając w ręku miecz, czujesz, jak oręż skręca się w twoich dłoniach i przeistacza się. Zmienia się w coś najstraszniejszego, czego jeszcze ŻADNE oczy nie widziały, na żadnej ze Sfer.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~"NIE OŚMIELISZ SIĘ NA TAKI CZYN."~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~"*Wiesz*, że mógłbym to uczynić. Po tych wszystkich nieszczęściach, które przyszło mi znieść za twoją sprawą, mógłbym z niekłamaną przyjemnością zatopić miecz w twoim widmowym ciele."~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~"jeżeli nie poddasz mi się, obrócę miecz przeciwko samemu sobie. Tym sposobem i ja, i ty zostaniemy unicestwieni."~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Obróć miecz przeciw sobie.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~"JEŻELI ZGINĘ, TY ZGINIESZ RÓWNIEŻ. NASZA WIĘŹ PĘKNIE. UMRZESZ OSTATECZNĄ ŚMIERCIĄ."~ */
  IF ~~ THEN REPLY #66015 /* ~"Zatem moim zdaniem istnieją dwa wyjścia. Albo obaj umrzemy albo też pozwolę, żebyś zabijał mnie, wciąż od nowa, aż stracę ostatnie szczątki swojego umysłu. Myślę, że wolę szybką śmierć. CHYBA, ŻE przewidujesz jeszcze TRZECIĄ możliwość."~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Obróć miecz przeciw sobie.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~"TO BYŁBY POSTĘPEK GŁUPCA. TWOJA ŚMIERĆ NIE MIAŁABY ŻADNEGO ZNACZENIA."~ */
  IF ~~ THEN REPLY #66017 /* ~"Zatem moim zdaniem istnieją dwa wyjścia. Albo sam się zgładzę za pomocą tego miecza albo pozwolę, żebyś zabijał mnie, wciąż od nowa, aż stracę ostatnie szczątki swojego umysłu. Myślę jednak, że wolałbym szybką śmierć. CHYBA, ŻE przewidujesz jeszcze TRZECIĄ możliwość."~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Obróć miecz przeciw sobie.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~"SPRAWA TA NIE PODLEGA ŻADNEMU ROZWIĄZANIU. ZŁOŻYSZ SWOJĄ BROŃ, A POTEM PODPORZĄDKUJESZ SIĘ MOJEJ WOLI. OPUŚCISZ TĘ FORTECĘ I ODEJDZIESZ LŻEJSZY O SWOJE WSPOMNIENIA. NIE MA ŻADNEGO INNEGO ROZWIĄZANIA."~ */
  IF ~~ THEN REPLY #66020 /* ~"Jest jeszcze jeden sposób. Zjednocz się ponownie ze mną. Staniemy się jedną istotą, jak to było nam przeznaczone."~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~"NIE WIESZ, CO MÓWISZ. JEŻELIBY DOSZŁO DO NASZEGO PONOWNEGO ZJEDNOCZENIA, BĘDZIE TO OZNACZAŁO KONIEC. NIE BĘDZIE DLA NAS ŻADNEJ *PRZYSZŁOŚCI*. PRZED NAMI TYLKO NASTĘPNE, KOLEJNE UDRĘKI."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~"Lepiej jeżeli tak się *stanie* niż, gdyby wieloświat miał bez końca cierpieć z naszego powodu."~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~"Chciałbym podjąć takie ryzyko. Jestem już zmęczony ciągła walką przeciw tobie pośród bezmiaru Sfer i pośród bezmiaru czasu. Chcę położyć temu kres."~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~"WIEDZ O TYM, ŻE JEŚLI DOJDZIE DO NASZEGO ZJEDNOCZENIA, OBAJ BĘDZIEMY CIERPIELI. ZBYT WIELE JEST W NAS NATURY TEGO PIERWSZEGO, ABYŚMY MOGLI W TAKIEJ POSTACI PRZETRWAĆ. BĘDZIEMY PRZEKLĘCI. NIE WIESZ, CO CZYNISZ."~ */
  IF ~~ THEN REPLY #66025 /* ~"Nie, wiem bardzo dobrze, co robię. I myślę, że to jedyna odpowiedź. Przygotuj się."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~"WIEDZ O TYM, ŻE ZAWSZE *NIENAWIDZIŁEM* CIĘ, POŁAMAŃCZE. JEŻELI DOJDZIE MIĘDZY NAMI DO ZJEDNOCZENIA, NADAL BĘDĘ CIĘ *NIENAWIDZIŁ*. A KIEDY TWOJA SKORUPA ROZPADNIE SIĘ I UMRZE NARESZCIE, WIEDZ, ŻE ZNAJDĘ *PRZYJEMNOŚĆ* W TWOJEJ ŚMIERCI."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~"Mogę z tym żyć. I tak samo mogą z tym żyć Sfery."~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~"Nie poznasz żadnej przyjemności, stworze. Będziesz moim sługą, a wszystko, co zgromadziłeś ze wszystkich moich żywotów będzie z powrotem moje."~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~"IMIĘ TO RZECZ, NA JAKĄ CZŁOWIEK ZAPRACOWUJE SOBIE WŁASNYMI CZYNAMI. Z TEGO WZGLĘDU, IMIĘ, KTÓRE KIEDYŚ POSIADALIŚMY, NIE MA TERAZ ŻADNEGO ZNACZENIA."~ */
  IF ~~ THEN REPLY #66031 /* ~"Nie *znasz* naszego wspólnego imienia, prawda?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~"IMIĘ TO RZECZ, KTÓRĄ OBDARZAJĄ CZŁOWIEKA CI, KTÓRZY DOSTRZEGAJĄ JEGO NATURĘ. Z TEGO WZGLĘDU, IMIĘ, KTÓRE KIEDYŚ POSIADALIŚMY, NIE MA TERAZ ŻADNEGO ZNACZENIA."~ */
  IF ~~ THEN REPLY #66033 /* ~"Nie *znasz* naszego wspólnego imienia, prawda?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~"IMIĘ TO TYLKO USZYTA ZE ZGŁOSEK OPOŃCZA, NARZUCONA NA GRZBIET CZŁOWIEKA. JEST BEZ ZNACZENIA."~ */
  IF ~~ THEN REPLY #66035 /* ~"Nie *znasz* naszego wspólnego imienia, prawda?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~"NIGDY NIE POZNASZ SWOJEGO IMIENIA, POŁAMAŃCZE."~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~"Znam nasze wspólne imię, stworze. A wiedza ta uczyniła mnie silnym."~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~"Nie *znasz* naszego wspólnego imienia, prawda?"~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~"NIE MA NIKOGO TAKIEGO POŚRÓD ŻYJĄCYCH, KTO ZNAŁBY NASZE IMIĘ. TO NASZA TARCZA. IMIONA NIOSĄ W SOBIE WŁADZĘ. GDY KTOŚ STAJE SIĘ *BEZIMIENNYM*, TAK JAK MY, WÓWCZAS JEGO MOC ROŚNIE. WÓWCZAS NIE SPOSÓB KOGOŚ TAKIEGO WYTROPIĆ. WÓWCZAS NIE SPOSÓB KOGOŚ TAKIEGO SCHWYTAĆ. I NIE SPOSÓB GO SKRZYWDZIĆ."~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~"Znam nasze wspólne imię, stworze. A wiedza ta uczyniła mnie silnym."~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~"A dlaczego było to zawsze tak ważne? Czy ktoś nas tropił?"~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~"KŁAMIESZ. NASZE IMIĘ POZOSTAŁO ZGUBIONE, ZAPOMNIANE I POZOSTANIE TAKIM, AŻ PO KRES WIECZNOŚCI."~ */
  IF ~~ THEN REPLY #66043 /* ~"Czy ja kłamię? Jeżeli jesteś mną, *wiesz*, kiedy próbuję cię oszukać, a kiedy nie. Ja teraz nie kłamię."~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~"NAWET WIEDZĄC TO, NIE BĘDZIESZ MÓGŁ MNIE POKONAĆ."~ */
  IF ~~ THEN REPLY #66045 /* ~"Tak. I nie pozwolę na to, abyś wciągnął mnie w bój, który tak naprawdę wcale nie jest konieczny. Znając moje imię, moje prawdziwe imię, znam również twoje. Nie jesteś w stanie uczynić mi nic więcej."~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~"Przekonamy się o tym. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~"*UNICESTWIĘ* CIĘ."~ */
  IF ~~ THEN REPLY #66048 /* ~"Nie, ja unicestwię *ciebie*. Nie życzę sobie już zamieszkiwać pośród Sfer... Żegnaj i wiedz, że wkrótce ogarnie cię ostateczne zapomnienie."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~"Nie, nie uczynisz tego - zjednoczysz się ze mną, i połączymy się znowu w jeden byt, tak jak było to nam przeznaczone."~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~"WSZYSTKO CO ŻYJE, JEST TROPIONE. A DRAPIEŻCĄ JEST ŚMIERĆ. ALE ŚMIERĆ JUŻ NAS NIE ŚCIGA."~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~"Zatem wiedz, że śmierć teraz nas ściga. Znam nasze imię, stworze. A wiedza ta uczyniła mnie silnym."~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~"Nie, śmierć teraz ściga innych, zamiast nas. Niezliczone rzesze obcych umierają, ponieważ my jesteśmy rozdzieleni. Jeżeli będziemy w ten sposób funkcjonować, będziemy wciąż zabijać innych, aby mogli zająć nasze miejsce w królestwie śmierci."~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~"WSZYSTKO, CO ŻYJE, UMIERA. CIENIE TUTAJ CIERPIĄ, ALE DLA NICH ICH CIERPIENIA MAJĄ POSMAK NIEŚMIERTELNOŚCI. JA JESTEM ŚWIATŁEM, KTÓRE ROZPRASZA MROKI TEJ FORTECY. A MROK TEN JEST PRZESYCONY NIENAWIŚCIĄ DLA CIEBIE. NIE DLA MNIE."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~"A więc pozwolisz, aby niewinni cierpieli za nas?"~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~"JEŻELI CHCESZ POŁOŻYĆ KRES ICH CIERPIENIOM, PODPORZĄDKUJ SIĘ MOJEJ WOLI. POZWÓL, ABY ZAMKNIĘTO CIĘ W TEJ FORTECY, WE WNĘTRZU KRYSZTAŁU. WÓWCZAS NIEWINNI PRZESTANĄ CIERPIEĆ. ONI CIERPIĄ Z POWODU TWOICH ŚMIERCI. CIERPIĄ PRZEZ CIEBIE. NIE PRZEZE MNIE."~ */
  IF ~~ THEN REPLY #66058 /* ~"Nie pozwolę, aby mnie tutaj uwięziono... Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~"Rozumiem. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~"TO PYTANIE JEST BEZ ZNACZENIA."~ */
  IF ~~ THEN REPLY #66061 /* ~"Mimo wszystko, zanim nasze losy zakończą się, wysłuchałbym twojej odpowiedzi."~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~"ZATEM OTO JEST MOJA ODPOWIEDŹ. A TY JESTEŚ NA TO DOWODEM. *NIC* NIE MOŻE ZMIENIĆ NATURY CZŁOWIEKA."~ */
  IF ~~ THEN REPLY #66063 /* ~"Zatem to już wszystko, co chciałem wiedzieć. Udowodnię, że byłeś w błędzie. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~"Jeżeli czegokolwiek nauczyłem się w swoich podróżach pośród Sfer, to na pewno tego, że naturę człowieka może zmienić wiele rzeczy. Może tego dokonać i żal, i miłość, i zemsta, i strach. Naturę człowieka może zmienić to, w co wierzymy, że posiada taką moc."~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~"Jesteś w błędzie. Wiara może zmienić naturę człowieka. Potrafiłem unicestwić Vhailora poprzez samą wiarę, i teraz zastanawiam się, czy byłbym w stanie unicestwić samego siebie."~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~"Jesteś w błędzie. Wiara może zmienić naturę człowieka. Kiedyś, dawno temu, byłem w stanie samą wiarą powołać do życia człowieka. A teraz zastanawiam się, czy byłbym w stanie go również unicestwić."~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~"Zatem taka jest twoja odpowiedź. To już wszystko, co chciałem wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~"A ZATEM NAUKA, JAKĄ UZYSKAŁEŚ, BYŁA FAŁSZYWA, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #66069 /* ~"Doprawdy? Widziałem, jak wiara przenosiła miasta, jak odpędzała od ludzi śmierć i odwracała najgorsze przekleństwa. Cała ta Forteca została wzniesiona na wierze. Wiara była przekleństwem dla kobiety, której serce czepiało się nadziei, że kocha ją ktoś, kto nie kochał jej wcale. I ta sama wiara sprawiła, że pewien człowiek poszukiwał nieśmiertelności i znalazł ją. I ta sama wiara, sprawiła, że silący się na wymuszone pozy upiór zaczął uważać, że jest czymś więcej, jak tylko częścią mnie."~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~"TWÓJ UPÓR ZADA CI WIĘKSZY BÓL, NIŻ WSZELKA INNA RANA. WIARA NIE POTRAFI ZMIENIĆ NATURY CZŁOWIEKA."~ */
  IF ~~ THEN REPLY #66071 /* ~"Myślę, że tak. Myślę, że wiarą jestem w stanie unicestwić nawet mnie samego, jeżeli tylko będę w to wierzył wystarczająco silnie."~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~"Może poddam to rozwadze później... Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~"NIE POSIADASZ DO TEGO DOSTATECZNEJ SIŁY WOLI."~ */
  IF ~~ THEN REPLY #66074 /* ~"A więc sam przyznajesz, że to niemożliwe."~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~"Przekonamy się... Może powinienem spróbować."~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~"Albo jeżeli istnieje pomiędzy nami więź, o której mówisz, może mógłbym cię unicestwić."~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~"Może poddam to rozwadze później... Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~"NIE WYSTAWIAJ NA PRÓBĘ MOJEJ *CIERPLIWOŚCI*, POŁAMAŃCZE."~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Skup się na swojej wewnętrznej woli, skoncentruj się na swoim wnętrzu.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Spróbuj skupić się, skoncentrować się na swoim wnętrzu.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~"Może poddam to rozwadze później... Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~"JESTEŚ *GŁUPCEM*, JEŻELI SĄDZISZ, ŻE UDA CI SIĘ COŚ TAKIEGO OSIĄGNĄĆ. LEDWIE JESTEŚ W STANIE UTRZYMAĆ W KUPIE SWÓJ ROZTRZĘSIONY UMYSŁ. TO JUŻ TWÓJ KONIEC, POŁAMAŃCZE."~ */
  IF ~~ THEN REPLY #66083 /* ~Koncentruj się dalej.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~Kiedy się koncentrujesz, sięgając ku rdzeniowi swojego istnienia, spostrzegasz, że nie ma tu zbyt wiele, na czym możesz się oprzeć, jedynie fragmenty i strzępy. I zdajesz sobie sprawę, że nie jesteś w stanie unicestwić samego siebie. Brakuje ci do tego dostatecznej siły woli.~ */
  IF ~~ THEN REPLY #66085 /* ~"Być może, lecz nie tym razem, duchu. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~"*POWSTRZYMAJ* SIĘ ALBOWIEM NIE WIESZ, CO CZYNISZ."~ */
  IF ~~ THEN REPLY #66087 /* ~"Wiem, co robię. Udręczyłeś mnie dość i oto zbliża się kres tego wszystkiego."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~"JEŻELI TO UCZYNISZ, PRZESTANIEMY ISTNIEĆ. TO BĘDZIE NASZ KRES. ZNISZCZYSZ NAS OBU."~ */
  IF ~~ THEN REPLY #66089 /* ~"Zatem moim zdaniem istnieją dwa wyjścia. Albo zabiję nas obu albo pozwolę, żebyś zabijał mnie, wciąż od nowa, aż stracę ostatnie szczątki swojego umysłu. Myślę, że wolałbym szybką śmierć. Chyba że przewidujesz jeszcze trzecią możliwość."~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~"Zatem zginiemy obaj. Unicestwię nas obu, stworze."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~"NIE MA INNEGO ROZWIĄZANIA DLA TEJ SPRAWY."~ */
  IF ~~ THEN REPLY #66092 /* ~"Myślę, że istnieje. Możemy stać się znowu jednym bytem, tak jak nam to było przeznaczone."~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~"Zatem zginiemy obaj. Unicestwię nas obu, stworze."~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~"NIE. ONI SĄ *MARTWI*. I TACY POZOSTANĄ."~ */
  IF ~~ THEN REPLY #66095 /* ~"Dlaczego? Nie możesz ich ocalić? Nie masz takiej mocy?"~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~"A więc nie masz władzy, aby ich ocalić? A więc twoja moc nie jest nieograniczona...?"~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~"A zatem sprawię, że do nich DOŁĄCZYSZ. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~"NIE PODDAWAJ W WĄTPLIWOŚĆ MOJEJ MOCY TUTAJ, W TYM MIEJSCU. NIE MA TAKIEJ RZECZY, KTÓREJ NIE POTRAFIŁBYM UCZYNIĆ, TERAZ, KIEDY JUŻ JESTEM WOLNY OD CIEBIE."~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~"Zatem co złego..."~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~"ALE NIE JEST MOJĄ WOLĄ, ABY ONI ZOSTALI OCALENI. ONI WYZWALI MNIE DO WALKI W ŚRODKU MOJEGO DOMU, A ICH ŚMIERĆ NIECHAJ BĘDZIE PRZESTROGĄ DLA WSZYSTKICH, KTÓRZY KIEDYKOLWIEK ZDECYDUJĄ SIĘ RZUCIĆ MI RĘKAWICĘ."~ */
  IF ~~ THEN REPLY #66101 /* ~"A więc nie potrafisz ich wskrzesić, czy tak?"~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~"Nie wydaje mi się, abyś miał wybór. Nie sądzę, abyś mógł ich wskrzesić."~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~"Może niebawem do nich dołączysz. Póki co, są jeszcze inne rzeczy, o których chciałbym wiedzieć."~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~"A zatem sprawię, że legniesz pośród nich, martwy jak i oni. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~"POŁAMAŃCZE, NIECHAJ CI BĘDZIE WIADOME, ŻE NA PRZESTRZENI TWOICH WSZYSTKICH ZAPOMNIANYCH ŻYWOTÓW, TRWAŁEM TU, OBSERWOWAŁEM, UCZYŁEM SIĘ I GROMADZIŁEM MOC W PRZEPASTNYM WNĘTRZU MOJEGO CIAŁA."~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~"KIEDY BRAŁEŚ UDZIAŁ W WOJNIE CZARNEJ DEKADY, CAŁA TWOJA WOJENNA WIEDZA STAŁA SIĘ MOIM UDZIAŁEM. A KIEDY ODPRAWIAŁEŚ CZARODZIEJSKIE PRAKTYKI U BOKU SZALONEGO LUMA, UCZYŁEM SIĘ MAGII RAZEM Z TOBĄ. CHŁONĄŁEM WSZYSTKO TO, CZEGO DOŚWIADCZAŁEŚ. TY TO ZAPOMINAŁEŚ, JA ZAŚ NIE. WŁADZA NA ŻYCIEM I ŚMIERCIĄ TO LEDWIE WĄTŁY ODPRYSK MOJEJ PRAWDZIWEJ MOCY."~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~"Powiedziałeś, że kiedy ja nabywałem wiedzę, ty uczyłeś się razem ze mną. Czy to oznacza, że pomiędzy mną a tobą istnieje jakaś więź...?"~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~"A więc ta więź, która pomiędzy nami istnieje... Czy to ona sprawia, że kiedy ja się uczę, ty się uczysz, kiedy ja doświadczam, ty też czerpiesz te same doświadczenia..."~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~"TO RZECZ DROBNA, *BEZ* ZNACZENIA."~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~"Nie, nie sądzę... Jeżeli uważasz, że *ty* masz taką moc, może i ja ją mam."~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~"Deionarra powiedziała mi, że mogę odwrócić śmierć jedynie wówczas, kiedy ofiara umrze blisko mnie. I twierdzisz, że to, co we mnie obudziła to jedynie nikły odprysk mojej prawdziwej władzy nad życiem i śmiercią?"~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~"TWÓJ UMYSŁ JEST PĘKNIĘTYM GŁAZEM O KRAWĘDZIACH STARTYCH PRZEZ LEKCEWAŻENIE I IGNORANCJĘ. NAWET, GDYBYŚ POSIADŁ MOC, NIE BĘDZIESZ WIEDZIAŁ, JAK SIĘ NIĄ POSŁUŻYĆ."~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~"Nie, nie sądzę. Wydaje mi się, że ta więź może działać obustronnie. Jeżeli uważasz, że *ty* masz taką moc, może i ja ją mam."~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~"Jeżeli twierdzisz, że *ty* posiadasz moc, zatem ja muszę również dysponować tą samą mocą. Nawet jeżeli nie było mnie tam, w momencie śmierci."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~"NIE BĘDZIESZ JUŻ MIAŁ CZASU, NIE BĘDZIESZ MIAŁ DOŚWIADCZENIA WSZYSTKICH TYCH LAT, POTRZEBNEGO, ABY SIĘ NAUCZYĆ SPOSOBÓW ŻYCIA I ŚMIERCI. RUNIESZ NIEBAWEM TUTAJ, U MOICH STÓP."~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~Czujesz mrowienie w zakamarkach twojego umysłu, i nagle zdajesz sobie sprawę, że wciąż masz w sobie doświadczenia tych wszystkich lat. Bo już kiedyś wiedziałeś i znałeś to wszystko, gromadząc wiedzę na przestrzeni wielu żywotów. Ale ten proces budzenia twojej wiedzy wymaga nieco czasu, a ty wiesz, że twoja śmiertelność z pewność nie zechce poczekać, aż odzyskasz dawne doświadczenia. Może zdążysz wskrzesić któregoś ze swoich towarzyszy, ale nic ponadto.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~"Wiesz, kiedy torowałem sobie tutaj drogę, otworzyłem tamtą wewnętrzną kryptę. Te większe cienie są już teraz na wolności we wnętrzu Fortecy. Nie są już dłużej zamknięte w tamtej komnacie."~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Wskrześ jednego z twoich towarzyszy...~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Wskrześ swojego towarzysza...~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~"Zatem pozostawię ich tam, gdzie leżą. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Masz wrażenie się, że kiedy ruszasz, czas nagle spowalnia się, i nagle wyczuwasz duszę swojego towarzysza. To wrażenie jest bardzo wątłe i słabe, ale wiesz, że jesteś w stanie tchnąć tę duszę z powrotem w ciało.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Wskrześ Mortego.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Wskrześ Annę.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Wskrześ Dak'kona.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Wskrześ Nie-Sławę.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Wskrześ Nordoma.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Wskrześ Ignusa.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Wskrześ Vhailora.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~"Zatem pozostawię ich tam, gdzie leżą. Są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~"*KŁAMIESZ*."~ */
  IF ~~ THEN REPLY #66128 /* ~"Zatem przekonaj się sam, jeżeli mi nie wierzysz. Ja nigdzie nie odchodzę."~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~"POWRÓCĘ I WÓWCZAS ODBIORĘ TO, CO MI SIĘ NALEŻY, POŁAMAŃCZE. JEŻELI UWOLNIŁEŚ CIENIE, JA ZADBAM O TO, ABY MOGŁY URZĄDZIĆ SOBIE Z CIEBIE *UCZTĘ*."~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~"Dobrze... Będę tutaj. Jeżeli dasz radę powrócić."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~"MOŻESZ ZADAĆ SWOJE PYTANIA, ALE WIEDZ O TYM, ŻE WKRÓTCE BEZPOWROTNIE ZAPOMNISZ WSZYSTKIE ODPOWIEDZI."~ */
  IF ~~ THEN REPLY #66132 /* ~"Za wszelką cenę chcesz uniknąć spotkania ze mną twarzą w twarz. Dlaczego?"~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~"Dlaczego nasłałeś na mnie Vhailora, jeżeli wiedziałeś, że jest on w stanie mnie zgładzić?"~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~"Dlaczego nasłałeś na mnie Ignusa, jeżeli wiedziałeś, że jest on w stanie mnie zgładzić?"~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~"Powiedziałeś, że między mną a tobą istnieją pewna więź."~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~"Mogę być nieśmiertelny, ale Ravela powiedziała mi, że jej rytuał nie był doskonały. Ilekroć umieram, tracę cząstkę swojego umysłu. Z czasem, po wielu zgonach, stracę nawet zdolność myślenia."~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~"Nie możemy pozostać rozdzieleni, duchu. Nasze rozdzielenie jest wbrew naturze. Nie mogę wciąż żyć i umierać w ten sposób."~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, to chciałbym poznać moje imię."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, to chciałbym poznać moje imię."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, to chciałbym poznać moje imię."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, to chciałbym poznać moje imię."~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, zatem wyjaw mi nasze imię."~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, zatem wyjaw mi nasze imię."~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, zatem wyjaw mi nasze imię."~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~"Jeżeli istnieje pomiędzy nami więź, o której mówisz, zatem wyjaw mi nasze imię."~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~"Moi przyjaciele... Chcę, aby wrócono im życie i chcę, aby mogli odejść wolno z tego miejsca."~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~"Moi towarzysze... To ja dysponuję ich życiem, a nie ty. Chcę, aby ich wskrzeszono. Natychmiast."~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~"Wskrześ mojego przyjaciela i pozwól mu odejść wolno z tego miejsca. *Jeżeli* tylko masz taką moc."~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~"Żądam, abyś wskrzesił mojego towarzysza i pozwolił mu odejść wolno z tego miejsca. *Jeżeli* tylko masz taką moc."~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~"A zatem oto i moje ostatnie pytanie: Cóż może zmienić naturę człowieka?"~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~"To już wszystko, co chciałem wiedzieć. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~"ZATEM PRZYGOTUJ SIĘ NA KOLEJNĄ ŚMIERĆ, POŁAMAŃCZE."~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~"TO CI *NIJAK* NIE POMOŻE. WSKRZESIŁEŚ SWOJEGO TOWARZYSZA, TYLKO PO TO, ABY ZMARŁ PO RAZ DRUGI."~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~"Nawet jeżeli umrę, powrócę po ciebie. Przysięgam. Wytropię cię znowu, nieważne, ile czasu mi to zabierze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~"NIE JEST MOJĄ *WOLĄ*, ABY TWÓJ TOWARZYSZ POZOSTAŁ PRZY ŻYCIU. TWÓJ ŚMIERTELNY... *PIES* WYZWAŁ MNIE DO WALKI W ŚRODKU MOJEGO DOMU. A JEGO ŚMIERĆ NIECHAJ BĘDZIE PRZESTROGĄ DLA WSZYSTKICH, KTÓRZY KIEDYKOLWIEK ZDECYDUJĄ SIĘ RZUCIĆ MI WYZWANIE."~ */
  IF ~~ THEN REPLY #68453 /* ~"Zatem nie jesteś w stanie wskrzesić mojego towarzysza, czy tak?"~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~"Nie wydaje mi się, abyś miał wybór. Nie sądzę, abyś mógł wskrzesić mojego towarzysza."~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~"Być może niebawem pójdziesz za nimi do krainy śmierci. Póki co zaś są jeszcze inne rzeczy, o których chciałbym wiedzieć..."~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~"Zatem również umrzesz. Przygotuj się, upiorze. Chętnie przekonam się, czy to możliwe, abym zgładził swoją własną śmiertelność."~ */ GOTO 141
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~Odgłos setki głosów w twej głowie, mówiących jakby były jednym, oszałamia cię - w tej niezwykłej mowie jest przesłanie, pełne głębi i presji. "MÓW PO CO TU JESTEŚ, DWUNOGU, A MÓW SZYBKO I PRAWDZIWIE. JESTEŚ TU W GMACHU WIELOJEDNOŚCI. JEŚLI STĄD WYJDZIESZ, TO TYLKO DZIĘKI ŁASCE NASZEJ. WIEDZ, ŻE MOŻEMY CZYTAĆ W TWYCH MYŚLACH I FAŁSZ WYCZUĆ."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"Co to za miejsce?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~Blef: "Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"Przyszedłem, by was zobaczyć, Wielojedności."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"Trafiłem tu przez przypadek."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"Skoro potraficie czytać mój umysł, to dlaczego muszę mówić po co tu jestem?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"JESTEŚMY OCZYMA MIEJSC MROCZNYCH. JESTEŚMY WIELOMA, KTÓRE MYŚLĄ JAK JEDNO. NIE ODPOWIADAMY NA TWOJE PYTANIA. TY ODPOWIESZ NA NASZE. CO ROBISZ W TYM MIEJSCU, TAK DALEKO OD ROZŚWIETLONYCH KORYTARZY LUDZKOŚCI?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"JESTEŚMY OCZYMA MIEJSC MROCZNYCH. JESTEŚMY WIELOMA, KTÓRE MYŚLĄ JAK JEDNO. NIE ODPOWIADAMY NA TWOJE PYTANIA. TY ODPOWIESZ NA NASZE. CO ROBISZ W TYM MIEJSCU, TAK DALEKO OD ROZŚWIETLONYCH KORYTARZY LUDZKOŚCI?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"JESTEŚMY OCZYMA MIEJSC MROCZNYCH. JESTEŚMY WIELOMA, KTÓRE MYŚLĄ JAK JEDNO. NIE ODPOWIADAMY NA TWOJE PYTANIA. TY ODPOWIESZ NA NASZE. CO ROBISZ W TYM MIEJSCU, TAK DALEKO OD ROZŚWIETLONYCH KORYTARZY LUDZKOŚCI?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"JESTEŚMY OCZYMA MIEJSC MROCZNYCH. JESTEŚMY WIELOMA, KTÓRE MYŚLĄ JAK JEDNO. NIE ODPOWIADAMY NA TWOJE PYTANIA. TY ODPOWIESZ NA NASZE. CO ROBISZ W TYM MIEJSCU, TAK DALEKO OD ROZŚWIETLONYCH KORYTARZY LUDZKOŚCI?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~Blef: "Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"Przyszedłem, by was zobaczyć, Wielojedności."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"Trafiłem tu przez przypadek."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"Skoro potraficie czytać mój umysł, to dlaczego muszę mówić po co tu jestem?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~Mimo, że głosy w twej głowie nie wydają dźwięku, niemal cię ogłuszają. "ROZKAZUJEMY TYM, KTÓRZY SĄ Z TOBĄ, BY ZAMILKLI. JESTEŚ W LABIRYNTACH MYŚLI. NAJWYŻSZĄ WŁADZĄ JEST WIELOJEDNOŚĆ. POWIEDZ CO MYŚLISZ I PAMIĘTAJ, ŻE POTRAFIMY USŁYSZEĆ TWE KŁAMSTWA. CZEGO SZUKASZ W TYCH ZATOPIONYCH W CIEMNOŚCIACH TUNELACH?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~Blef: "Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"Przyszedłem, by was zobaczyć, Wielojedności."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"Trafiłem tu przez przypadek."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"Skoro potraficie czytać mój umysł, to dlaczego muszę mówić po co tu jestem?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"UWAŻAJ UMARŁYCH ZA UMARŁYCH. ICH BEZSILNY KRÓL NIE MOŻE STANĄC NAM JUŻ NA DRODZE. TWA INFORMACJA PRZYDAŁA SIĘ NAM. W ZAMIAN ZA NIĄ ZNIESIEMY BARIERĘ TWEGO UMYSŁU I ODSŁONIMY CI SIEBIE. PRZYGOTUJ SIĘ NA OBJAWIENIE.~ */
  IF ~~ THEN REPLY #38686 /* ~"Zaczekajcie! Jeszcze nie!"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Poinformowałem Wielojedność, że Milczący Król to po prostu martwy szkielet bez żadnej mocy. Szczury obiecały przejąć teraz katakumby pod Sigil.~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"Jestem gotowy."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~Poinformowałem Wielojedność, że Milczący Król to po prostu martwy szkielet bez żadnej mocy. Szczury obiecały przejąć teraz katakumby pod Sigil.~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"ŚMIESZ ZNOWU SIĘ TU POKAZYWAĆ? DWUNOGU, TO NIE BYŁO ROZWAŻNE. PRZYGOTUJ SIĘ."~ */
  IF ~~ THEN REPLY #38691 /* ~Walcz.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"POWIEDZ NAM CO WIESZ, DWUNOGU."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~Blef: "Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"Na razie nic nie mam."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"Ghule oszalały i przetoczyły się przez Ziemie Umarłych."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"GHULE SĄ ZBYT POTĘŻNE, NAWET DLA MOICH SZCZUROŁACZYCH SŁUG. TWA MISJA NIE POWIODŁA SIĘ. NIE POTRZEBUJEMY JUŻ TWYCH USŁUG. TERAZ ODEJDŹ, ALBO POŻAŁUJESZ."~ */
  IF ~~ THEN REPLY #38698 /* ~"Co, zamierzacie pozbyć się mnie tak po prostu?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"Żegnajcie, więc."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~Ghule rozpanoszyły się po Ziemiach Umarłych i dlatego czaszkoszczurom trudno stworzyć tam swój przyczółek. Wygnały mnie ze swych terenów, ostrzegając, że jeśli wrócę, spotkają mnie przykre konsekwencje.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"TAK. SKORO NIE MUSIMY ZUŻYWAĆ NASZEJ MOCY NA MILCZĄCEGO KRÓLA, ZOSTAJE JEJ NAM AŻ NADTO, BY ZMIAŻDŻYĆ TWE KRUCHE EGO. NIE WRACAJ."~ */
  IF ~~ THEN REPLY #38859 /* ~"Nie."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"Żegnajcie, więc."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"OSTRZEGLIŚMY CIĘ, DWUNOGU. PRZYGOTUJ SIĘ NA POZNANIE GRANICY WIECZNOŚCI."~ */
  IF ~~ THEN REPLY #38861 /* ~"Możemy się ułożyć!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~Walcz.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"GŁOS WIELU DAŁ SŁOWA TWEMU POSŁANIU. MILCZĄCY KRÓL JEST ZBYT POTĘŻNY, POWIADASZ. WIDZIMY, ŻE NIE KŁAMIESZ. JAKO DAR OD NAS, OPUŚCISZ LABIRYNTY MYŚLI ŻYWY. TWOJE ZADANIE ZOSTAŁO WYPEŁNIONE."~ */
  IF ~~ THEN REPLY #38863 /* ~"Co, zamierzacie pozbyć się mnie tak po prostu?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Powiedziałem Wielojedności, że Milczący Król jest dla nich zbyt potężny. Zbiorowa świadomość czaszkoszczurów nie zauważyła fałszu w moich słowach, ale zabroniła mi wrócić do Labiryntów Myśli pod karą śmierci. Jeszcze zobaczymy.~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"Dobrze. Żegnajcie."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~Powiedziałem Wielojedności, że Milczący Król jest dla nich zbyt potężny. Zbiorowa świadomość czaszkoszczurów nie zauważyła fałszu w moich słowach, ale zabroniła mi wrócić do Labiryntów Myśli pod karą śmierci. Jeszcze zobaczymy.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"OSTRZEGLIŚMY CIĘ, DWUNOGU. PRZYGOTUJ SIĘ NA POZNANIE GRANICY WIECZNOŚCI."~ */
  IF ~~ THEN REPLY #38865 /* ~"Możemy się ułożyć!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~Walcz.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"UMYSŁ GŁOSU WIELOJEDNOŚCI ODKRYŁ TWE TAJEMNICE. TERAZ ZNAMY PRAWDĘ O MILCZĄCYM KRÓLU. JESTEŚMY CI WDZIĘCZNI ZA TĘ INFORMACJĘ..." Głos w twojej głowie staje się bardziej złowieszczy, i ciągnie dalej, "...I NIE POMŚCIMY TEDY TYCH Z NAS, KTÓRYCH ZABIŁEŚ. TERAZ ODEJDZIESZ I NIGDY NIE WRÓCISZ DO LABIRYNTÓW MYŚLI. ODEJDŹ, DWUNOGU. TWA UŻYTECZNOŚĆ SIĘ WYCZERPAŁA."~ */
  IF ~~ THEN REPLY #38867 /* ~"Zamierzacie pozbyć się mnie tak po prostu? Po tym wszystkim co dla was zrobiłem?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Powiedziałem Wielojedności, że Milczący Król nie stanowi zagrożenia, ale ponieważ zabiłem jednego czy dwa czaszkoszczury, w nagrodę pozwolono mi jedynie ujść z życiem. Szczury. Nie cierpię szczurów.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"Dobrze. Żegnajcie."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~Powiedziałem Wielojedności, że Milczący Król nie stanowi zagrożenia, ale ponieważ zabiłem jednego czy dwa czaszkoszczury, w nagrodę pozwolono mi jedynie ujść z życiem. Szczury. Nie cierpię szczurów.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"UMYSŁ WIELOJEDNOŚCI ODSŁANIA TWOJE TAJEMNICE. TERAZ ZNAMY PRAWDĘ O MILCZĄCYM KRÓLU. TWOJE INFORMACJE PRZYDAŁY SIĘ. USUNIEMY BARIERY Z TWOJEGO UMYSŁU I ODSŁONIMY CI SIEBIE."~ */
  IF ~~ THEN REPLY #38875 /* ~"Zaczekajcie! Jeszcze nie!"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"Jestem gotowy."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~Czujesz jak w twojej głowie rośnie napięcie, jak gdyby tysiące drobniutkich wijących się ciał parło na ścianę twojego umysłu. Odruchowo opierasz się, ale po chwili wydającej się wiecznością, napięcie staje się zbyt wielkie i fala pustki w pamięci przedziera się przez twoje mechanizmy obronne.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~Poddaj się temu.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~Poddaj się temu.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~Pędzisz przez miasto utworzone całkowicie z łańcuchów - budynki, ulice, ścieki, kanalizacja, wszystko jest sznurem metalowych ogniw. Krwistociemne niebo nad tobą migoce złośliwie, kiedy ty pobrzękując przedzierasz się przez ciasno uplecioną sieć sczerniałego srebra. Zerkasz przez ramię, w nadziei, że udało ci się zgubić pościg, nie widzisz nic. Zwracasz się naprzód...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~... a przed tobą w milczeniu staje jakieś stworzenie, okręcone łańcuchami od stóp do głów, niedorzecznie szczerząc zęby spod swojej maski. Łańcuch wypełza spod wyciągniętej ręki i owija się wokół twojej kostki. Kolejny wydzierając się ze ściany, po twojej lewej stronie, rani cię w nadgarstek. Porywasz go, gdy jest w powietrzu i po mistrzowsku zarzucasz na szyi swojego wroga. Szarpiesz zaciskając mocno i słyszysz jak kręgosłup stwora wydaje ostry trzask... chwilę później rechotająca horda podobnych stworów zalewa twe ciało pobrzękującą siecią łańcuchów. Wyrywasz się wspomnieniom.~ */
  IF ~~ THEN REPLY #38883 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"OTRZYMAŁEŚ SWOJE ODPOWIEDZI." Masywny głos zdaje się być dziwnie nadwerężonym od wysiłku. "ZAŁATWILIŚMY NASZE SPRAWY. NIE POTRZEBUJEMY SIĘ JUŻ WIĘCEJ KONTAKTOWAĆ. JEŚLI TU WRÓCISZ, ZNISZCZYMY CIĘ."~ */
  IF ~~ THEN REPLY #38884 /* ~"Żegnajcie, więc."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~... a przed tobą staje w milczeniu jakieś stworzenie, okręcone łańcuchami od stóp do głów, niedorzecznie szczerząc zęby spod swojej maski. Łańcuch wypełza spod wyciągniętej ręki i owija się wokół twojej kostki. Kolejny wydzierając się ze ściany, po twojej lewej stronie, rani cię w nadgarstek. Wykręcasz się z łańcucha owiniętego wokół twojej nogi i robisz unik przed kolejnym, twoje ruchy najwyraźniej są nie skoordynowane, ale unikasz chmary łańcuchów posłanych przez stwora w twoim kierunku. Niemal w tej samej chwili robisz zwrot w kierunku stwora zatapiasz swe kciuki w jego oczach, przebijając mu mózg. Ciało zwisa z twoich rąk... a chwilę później rechotająca horda podobnych stworów zalewa twe ciało pobrzękującą siecią łańcuchów. Wyrywasz się ze szponów wspomnień.~ */
  IF ~~ THEN REPLY #38886 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~... a przed tobą staje w milczeniu jakieś stworzenie, okręcone łańcuchami od stóp do głów, niedorzecznie szczerząc zęby spod swojej maski. Łańcuch wypuszczony spod jego wyciągniętej ręki zmierza w kierunku twojego gardła, ale ty zatrzymujesz go wpół drogi falą ognia, która obraca go w żużel i odsyła jego właściciela w mrok nocy, palącego się i krzyczącego. Patrzysz za nim przez chwilę, po czym słyszysz jak tłum jego towarzyszy chichota za tobą. Ciskają pobrzękującą sieć z łańcuchów na twoje ciało i wszystko zachodzi ciemnością. Wyrywasz się ze szponów wspomnień.~ */
  IF ~~ THEN REPLY #38887 /* ~(kontynuuj)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~Głos, który brzmi jak tysiące mówiących naraz, żłobiąc i piętrząc się rozbrzmiewa ci w głowie. Niewiarygodny gniew i poczucie czystego ograniczenia pulsuje ci pod powierzchnią, to wir wściekłości. "MORDERCO. MÓW PO CO TU JESTEŚ."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"Kim jesteś"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"Kim jesteś?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"Kim jesteś?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"Kim jesteś?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"Co to za miejsce?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"Co to za miejsce?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"Co to za miejsce?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"Co to za miejsce?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"Pomyślałem sobie, że chcielibyście to wiedzieć: Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"Po nic tu nie jestem. Właśnie wychodziłem."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~Głos, który brzmi jak ból tysięcy udręczonych, odbija się echem w twojej głowie. Głos ten brzmi dziwnie zduszenie, z ukrytą nutą niewiarygodnego gniewu. "MORDERCO... PROSIMY CIĘ, OPUŚĆ NASZE GMACHY. NIE CHCEMY WIĘCEJ Z TOBĄ WALCZYĆ. JEŚLI WYŚWIADCZYSZ NAM PRZYSŁUGĘ, MOŻEMY WYŚWIADCZYĆ JĄ TOBIE I ROZEJDZIEMY SIĘ W POKOJU."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"Kim jesteś?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"Kim jesteś?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"Kim jesteś?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"Kim jesteś?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"Co chcecie, żebym zrobił?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"W zasadzie, jestem tu po to, żeby was zgładzić."~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"Pomyślę o tym."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~"POWIEDZ NAM, CO WIESZ, MORDERCO."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~Blef: "Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"Na razie nic."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"Ghule oszalały i przetoczyły się przez Ziemie Umarłych."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"POWIEDZ NAM, CO WIESZ, LUDOBÓJCO."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~Blef: "Milczący Król jest zbyt silny, by go zaatakować. Trzymajcie się z daleka od Ziem Umarłych, w przeciwnym razie trupy was zniszczą."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"Na razie nic."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"Ghule oszalały i przetoczyły się przez Ziemie Umarłych."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"CZY MARTWY KRÓL STOI W GOTOWOŚCI, BY SIĘ NAM PRZECIWSTAWIĆ? Wewnętrzny głos szczurów przerywa na chwilę. "NIE WIDZIMY KŁAMSTWA W TWYM UMYŚLE. OTO NASZA WDZIĘCZNOŚĆ: NIE RZUCIMY CIĘ ŻYWCEM DO POZIOMÓW POD LABIRYNTAMI, NA WIECZNĄ STRAWĘ DLA NASZYCH MŁODYCH. OPUŚĆ NASZE TUNELE I NIE WRACAJ."~ */
  IF ~~ THEN REPLY #38918 /* ~"Zamierzacie pozbyć się mnie tak po prostu?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Powiedziałem Wielojedności, że Milczący Król jest dla nich zbyt potężny. Zbiorowa świadomość czaszkoszczurów nie dostrzegła fałszu w moich słowach, ale zabroniła mi wracać do Labiryntów Myśli pod karą śmierci. Jeszcze zobaczymy.~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"Dobrze. Żegnajcie."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~Powiedziałem Wielojedności, że Milczący Król jest dla nich zbyt potężny. Zbiorowa świadomość czaszkoszczurów nie dostrzegła fałszu w moich słowach, ale zabroniła mi wracać do Labiryntów Myśli pod karą śmierci. Jeszcze zobaczymy.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"KŁAMIESZ, DWUNOGU.
NIE HANDLUJEMY Z OSOBNIKAMI TWOJEGO POKROJU.
NIE MA POTRZEBY. NIE MA CHĘCI.
WIDZIANO CIĘ W WIOSCE PADLINOŻERCÓW PODCZAS ROZMOWY Z KALEKIM KRÓLEM. JESTEŚ SZPIEGIEM. JESTEŚ ZABÓJCĄ."~ */
  IF ~~ THEN REPLY #38920 /* ~"Owszem, tak. I pracuję dla tego, kto może zaproponować najwyższą stawkę."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"Nie."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"TO JEST KRÓLESTWO WIELOJEDNOŚCI.
JESTEŚ INTRUZEM.
NASZE KRÓLESTWO JEST TAJEMNICĄ.
TWÓJ GŁOS MUSI ZAMILKNĄC."~ */
  IF ~~ THEN REPLY #38922 /* ~"Zachowam to w tajemnicy."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"Chciałbym to zobaczyć."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"POTRAFIMY CZYTAC W TWOI MYŚLACH, DWUNOGU. NIE PRÓBUJ NAS."~ */
  IF ~~ THEN REPLY #38924 /* ~"Nie. Pomyślę o pewnym imieniu. Powiedzcie mi jak ono brzmi." Pomyśl: Farod.~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"Nie. Pomyślę o pewnej nazwie. Powiedzcie mi jak ona brzmi." Pomyśl: Biuro do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"Nie. Pomyślę o pewnym imieniu. Powiedzcie mi jak ono brzmi." Pomyśl: Milczący Król.~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"Nie. Pomyślę o pewnym imieniu. Powiedzcie mi jak ono brzmi." Pomyśl: Chodząca Śmierć.~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"Nie. Pomyślę o pewnym imieniu. Powiedzcie mi jak ono brzmi." Pomyśl: Barr, strażnik bramy.~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"WIĘC WYNOŚ SIĘ. NIE MAMY Z CIEBIE ŻADNEGO POŻYTKU - ŻADNYCH ODPOWIEDZI - DOPÓKI NIE DOSTARCZYSZ NAM ODPOWIEDZI, KTÓRYCH SZUKAMY."~ */
  IF ~~ THEN REPLY #38928 /* ~"Dobrze. Żegnajcie."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"TAK.
ZROBISZ TO."~ */
  IF ~~ THEN REPLY #38929 /* ~"Co przez to rozumiecie?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"Tylko jeśli sprawicie bym..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~Następuje przerwa, aż umysł przyswoi tę informację.
"WYJAŚNIJ."~ */
  IF ~~ THEN REPLY #38931 /* ~"To znaczy, że moglibyśmy sobie wzajemnie pomóc."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"Wiecie co mam na myśli. Posiadam umiejętności, które mogą wam się przydać. Wy z kolei macie moc, która może pomóc mi."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"TAKA OKAZJA MA SWOJĄ CENĘ.
TAKIE OKAZJE WYMAGAJĄ ZAUFANIA.
MY CI NIE UFAMY.
PRZEKONAJ NAS, DWUNOGU."~ */
  IF ~~ THEN REPLY #38933 /* ~"Jak mogę was przekonać?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"Przekonać was? Nie muszę was przekonywać. Albo mi wierzycie, albo nie."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"Zapomnijcie o mojej propozycji. Odchodzę."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"CZY POZWOLIMY CI ODEJŚĆ? RACZEJ NIE."~ */
  IF ~~ THEN REPLY #38938 /* ~"Mógłbym zabić was w tej chwili, a wy nie moglibyście mi w tym przeszkodzić. Ja nie mogę umrzeć."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"Spróbujcie mnie powstrzymać."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"UDOWODNIJ, ŻE MOŻNA CI ZAUFAĆ.
UDAJ SIĘ DO GMACHÓW CHODZĄCYCH TRUPÓW
ZABIJ MILCZĄCEGO KRÓLA.
ZABIJ GO."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~Blef: "Kogo?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"Kogo?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"Nie wydaje mi się. Odchodzę."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"Dlaczego tego nie zrobicie?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"Dobrze. Zrobię to."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"Już tam byłem."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"Już tam byłem."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"Już tam byłem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"CHODZĄCY UMARLI RZĄDZENI SĄ PRZEZ KRÓLA, KTÓRY MIESZKA W PAŁACU, KTÓREGO NIE WIDZIMY.
ŻEBY ZNISZCZYĆ ICH, MUSIMY ZNISZCZYĆ JEGO.
ON JEST DLA NAS TAJEMNICĄ.
NIGDY GO NIE WIDZIELIŚMY.
ON MUSI UMRZEĆ.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"Co ewentualnie moglibyście mi zaproponować?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"Nie wydaje mi się. Odchodzę."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"Dlaczego tego nie zrobicie?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"Dobrze. Zrobię to."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"Już tam byłem."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"Już tam byłem."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"Już tam byłem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"MAMY WIELE DO ZAOFEROWANIA.
BEZPIECZNE PRZEJŚCIE.
ŻYCIE TWOICH PRZYJACIÓŁ."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"To ma być motywacja? Musicie zaproponować coś więcej."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"Dobrze. Jeżeli to właśnie możecie mi dać, to właśnie wezmę. Co muszę zrobić?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"To mogłoby się udać... gdyby ci ludzie mnie coś obchodzili."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"Obawiam się, że nie mogę na to przystać. Odchodzę."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"W porządku. Co muszę zrobić?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"Znam tajemnicę Milczącego Króla."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"Znam tajemnicę Milczącego Króla."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"Znam tajemnicę Milczącego Króla."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"NIE MOŻNA CI UFAĆ.
JEŚLI TWE SŁOWA SĄ PRAWDĄ, TEDY ZDRADZASZ TYCH, DLA KTÓRYCH PRACUJESZ."~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"To może być. Jednak nadal nie powiedzieliście mi co macie do zaoferowania w zamian za moje usługi."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"To może być. Jednak nadal nie powiedzieliście mi, co macie do zaoferowania w zamian za moje usługi."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"MOŻEMY CI ZAPROPONOWAĆ BEZPIECZNE PRZEJŚCIE.
WOLNOŚC.
MOŻE COŚ WIĘCEJ."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"Tak, może więcej. Mówcie dalej."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"Obawiam się, że nie mogę na to przystać. Odchodzę."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"Dlaczego tego nie zrobicie?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"W porządku. Co muszę zrobić?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"MĄDRZE ROBISZ, ŻE STOSUJESZ SIĘ DO NASZYCH ŻĄDAŃ.
UDAJ SIĘ W PODRÓŻ DO GMACHÓW UMARŁYCH.
POWAL ICH MILCZĄCEGO WŁADCĘ.
WRÓĆ TU, A POMÓWIMY O NAGRODZIE."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"Już tam byłem."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"Już tam byłem."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"Już tam byłem."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"MAMY O WIELE WIĘCEJ DO ZAOFEROWANIA.
TAJEMNICE.
BOGACTWO.
MAGIĘ.
UMARLI W TYCH GROBOWCACH MIELI PRZY SOBIE SPORO, KIEDY UMIERALI."~ */
  IF ~~ THEN REPLY #38967 /* ~"Nie wydaje mi się. Odchodzę."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"Dlaczego tego nie zrobicie?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"Dobrze. Co muszę zrobić?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"MYLISZ SIĘ. ŻYJESZ NA NASZEJ ŁASCE.
BYĆ MOŻE NIE ZABIJEMY CIĘ OD RAZU.
MOŻEMY SPRAWIĆ, ŻE WCHODZĄC W OBJĘCIA ŚMIERCI, BĘDZIESZ SŁYSZAŁ SWÓJ KRZYK. MOŻEMY POGRZEBAĆ CIĘ W BEZKRESNEJ ZIEMI.
MOŻEMY SKAZAĆ CIE NA WIECZNY OGIEŃ.
MOŻEMY ZNISZCZYĆ WSZYSTKO NA CZYM CI ZALEŻY.
JESTEŚMY WSZĘDZIE.
NIE MOŻNA NAS WSZYSTKICH POWSTRZYMAĆ."~ */
  IF ~~ THEN REPLY #38971 /* ~"Zatem możemy dobić targu."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"Z chęcią spróbuję. Gińcie, robale!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"UDASZ SIĘ W PODRÓŻ DO GMACHÓW UMARŁYCH.
ZABIJESZ ICH MILCZĄCEGO WŁADCĘ.
POWRÓCISZ TU, GDY ZAKOŃCZYSZ SWĄ MISJĘ."~ */
  IF ~~ THEN REPLY #38973 /* ~"Zgoda."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"Dlaczego tego nie zrobicie?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"Nie."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"TEDY, DWUNOGU, UMRZESZ."~ */
  IF ~~ THEN REPLY #38978 /* ~"Spróbujcie mnie zabić."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"KŁAMIESZ!"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"Wejrzyjcie w mój umysł i powiedzcie czy kłamię. A może nie potraficie?"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"Jak mogę dowieść, że nie kłamię?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"Nie."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"KŁAMIESZ. NIE MOŻESZ SIĘ PRZEDE MNĄ UKRYĆ. WIEM PO CO TU JESTEŚ. BROŃ SIĘ, DWUNOGU, PONIEWAŻ ZA CHWILĘ UMRZESZ."~ */
  IF ~~ THEN REPLY #38982 /* ~"Zaczekajcie! Możemy się dogadać!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"Gotów jestem, o ile wy jesteście..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"Wejrzyjcie w mój umysł i powiedzcie czy kłamię. A może nie potraficie?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~Chwila ciszy, po czym: "MILCZĄCY KRÓL CIĘ TU PRZYSŁAŁ."~ */
  IF ~~ THEN REPLY #38985 /* ~"Macie rację. Widzę, że nie mogę się ukryć przed wami."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"Jesteście w błędzie."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"Nie potraficie czytać w mych myślach. Dlaczego?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"Milczący Król? Kto?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~Blef: "Milczący Król? Kto?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"TAK JAK MÓWILIŚMY, DWUNOGU. ŚCIANY TWEGO UMYSŁU MOGĄ BYĆ WYSOKIE, ALE POTRAFIMY PRZEŁAMAĆ KAŻDĄ BARIERĘ. A TERAZ: JESTEŚ NAM DO CZEGOŚ POTRZEBNY."~ */
  IF ~~ THEN REPLY #38990 /* ~"Co to jest?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"Nie zrobię tego."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"UDAJESZ, ŻE NIE WIESZ NIC O SWOIM PANU? UMRZESZ, DWUNOGU."~ */
  IF ~~ THEN REPLY #38992 /* ~"Nie potraficie czytać w moich myślach, czyż nie?"~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"Zróbcie to."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~W głosach wyczuć można strach: "TWÓJ UMYSŁ MOŻE I BYĆ PRZED NAMI ODGRODZONY, ALE UMRZEĆ MOŻESZ JAK KAŻDE INNE STWORZENIE."~ */
  IF ~~ THEN REPLY #38994 /* ~"Nie. Mógłbym zabić was wszystkich i nie moglibyście mnie powstrzymać."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"Dlaczego nie możecie czytać w mych myślach?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"NIE WIEMY.
PRZEZ TO JESTEŚ DLA NAS NIEBEZPIECZNY.
ZAGROŻENIE/NIEBEZPIECZEŃSTWO/ZABÓJCA... NIEWIEDZIALNY."~ */
  IF ~~ THEN REPLY #38996 /* ~"Zatem możemy się jakoś dogadać."~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"Pozwólcie mi odejść, a już nigdy nie będę was niepokoił."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"MARTWI... OBWAROWANI SĄ. TRUDNO ICH SKRZYWDZIĆ. ICH MILCZĄCY KRÓL: TAJEMNICĄ JEST. NIE LUBIMY TAKICH TAJEMNIC. BEZ WĄTPIENIA UDERZYMY, KIEDY BĘDZIEMY PEWNI ŻE NAM SIĘ POWIEDZIE. MILCZĄCY KRÓL NAPEŁNIA NAS WĄTPLIWOŚCIAMI."~ */
  IF ~~ THEN REPLY #38998 /* ~"Zgoda."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~Wielojedność, zbiorowa świadomość czaszkoszczurów, poprosiła mnie o zabicie Milczącego Króla w Ziemiach Umarłych. Zgodziłem się. Kiedy już tego dokonam, mam ją o tym powiadomić.~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"Nie zrobię tego."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWĄ TWARZ JAK PRZELEWAŁA NASZĄ KREW. ZDRADŹ PO CO TU JESTEŚ, MORDERCO. JEŚLI JESTEŚ TU BY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWĄ TWARZ, JAK PRZELEWAŁA NASZĄ KREW. ZDRADŹ PO CO TU JESTEŚ, MORDERCO. JEŚLI JESTEŚ TU BY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWĄ TWARZ JAK PRZELEWAŁA NASZĄ KREW. ZDRADŹ PO CO TU JESTEŚ, MORDERCO. JEŚLI JESTEŚ TU BY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWĄ TWARZ JAK PRZELEWAŁA NASZĄ KREW. ZDRADŹ PO CO TU JESTEŚ, MORDERCO. JEŚLI JESTEŚ TU BY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"Po nic tu nie przychodzę. Właśnie wychodziłem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"JESTEŚ W LABIRYNTACH MYŚLI. JESTEŚ W DOMU WIELOJEDNOŚCI. ZA CHWILĘ UMRZESZ, MORDERCO."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"Ale przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"Ale przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"Dlaczego? Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"Ale, trafiłem tu przez przypadek."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"CISZA! ROZMAWIAMY Z OBLIŹNIONYM.
*NAPRAWDĘ* ZGŁADZIMY CIE, JEŚLI POWIESZ JESZCZE CHOĆ JEDNO SŁOWO. WIEDZ, ŻE JESTEŚ W LABIRYNTACH MYŚLI... I WIEDZ, ŻE ZA TWOJĄ SPRAWĄ JESTEŚMY NIEZADOWOLENI. MÓW PO CO TU JESTEŚ, MORDERCO."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~"Po nic tu nie przychodzę. Wszedłem tu przez przypadek."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"MILCZĄCY KRÓL SPOCZYWA W POKOJU? DOBRA ROBOTA, MORDERCO." Głosy przerywają na chwilę. "NIECH NIKT NIE MÓWI, ŻE WIELOJEDNOŚĆ NIE OKAZUJE WDZIĘCZNOŚCI.~ */
  IF ~~ THEN REPLY #39022 /* ~"Co macie na myśli?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"SMRÓD KŁAMSTW GROMADZI SIĘ GĘSTO WOKÓŁ CIEBIE. WIEDZ, ŻE WIDZIELIŚMY TWĄ TWARZ PRZELEWAJĄCĄ NASZĄ KREW. WIEDZ, ŻE CZULIŚMY, JAK BÓL NASZEGO UMYSŁU UŚMIERZA SIĘ. WIEDZ, ŻE KAŻDA STRACONA ISKRA UJMUJE CHWAŁY OGNIOWI. WIELU Z NAS ZOSTAŁO PRZEZ CIEBIE ZABITYCH. ZAPRZECZYSZ?"~ */
  IF ~~ THEN REPLY #39024 /* ~"Z całą pewnością, tak."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"Wcale nie."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"Nie wiedziałem, że są częścią was."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"Pierwsi mnie zaatakowali."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"NIECH TAK SIĘ STANIE. PRZYZNAJESZ SIĘ DO ZBRODNI.
PRZED TOBĄ CIERPIENIE
PODOBNE DO TEGO, KTÓRE NAS SPOTKAŁO."~ */
  IF ~~ THEN REPLY #39028 /* ~"Dlaczego więc nie *zadacie* mi cierpienia, zapchlony kobiercu wielogłupoty."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"KŁAMSTWA! WIEDZ, ŻE PRZED TOBĄ CIERPIENIE PODOBNE DO TEGO, KTÓRE NAS SPOTKAŁO."~ */
  IF ~~ THEN REPLY #39029 /* ~"Dlaczego więc nie *zadacie* mi cierpienia, zapchlony kobiercu wielogłupoty."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"Proszę o litość."~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"Czy mogę to wam jakoś wynagrodzić?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"NIE OKAŻEMY CI LITOŚCI, MORDERCO. MUSISZ ZAPŁACIĆ ZA SWĄ ZBRODNIĘ."~ */
  IF ~~ THEN REPLY #39032 /* ~"Dlaczego więc nie *zadacie* mi cierpienia, zapchlony kobiercu wielogłupoty."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"Jak mogę wam to wynagrodzić?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"NA CO MOŻESZ SIĘ PRZYDAĆ?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"Trudno mnie zabić, a do tego znam czary."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"Trudno mnie zabić."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"Skradam się i nie łatwo mnie dostrzec."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"Trudno mnie zabić i jestem zaciekłym wojownikiem."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"NIE OBCHODZĄ NAS CZARY. W MAGI NIE MA NIC NIEZWYKŁEGO... CHOCIAŻ..."~ */
  IF ~~ THEN REPLY #39038 /* ~"Chociaż?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"TAK... TO MOŻE SIĘ PRZYDAĆ..."~ */
  IF ~~ THEN REPLY #39039 /* ~"Tak?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"TAK... TE UMIEJĘTNOŚCI MOGĄ NAM SIE PRZYDAĆ..."~ */
  IF ~~ THEN REPLY #39040 /* ~"Tak?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"TAK... TE UMIEJĘTNOŚCI MOGĄ NAM SIE PRZYDAĆ..."~ */
  IF ~~ THEN REPLY #39041 /* ~"Tak?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"MILCZĄCY KRÓL NIE STANOWI DLA NAS ZAGROŻENIA? MASZ PEWNOŚĆ? CZY KTOŚ WIDZIAŁ JEGO TRUPA?"~ */
  IF ~~ THEN REPLY #39042 /* ~"Tak."~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWOJĄ TWARZ, JAK PRZELEWAŁA NASZĄ KREW. MÓW PO CO TU JESTEŚ, MORDERCO. JEŚLI PO TO, ŻEBY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ. NIE CHCEMY WALCZYĆ, ALE JEŚLI TAKA JEST TWOJA WOLA, BĘDZIEMY WALCZYĆ."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWOJĄ TWARZ, JAK PRZELEWAŁA NASZĄ KREW. MÓW PO CO TU JESTEŚ, MORDERCO. JEŚLI PO TO, ŻEBY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ. NIE CHCEMY WALCZYĆ, ALE JEŚLI TAKA JEST TWOJA WOLA, BĘDZIEMY WALCZYĆ."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWOJĄ TWARZ, JAK PRZELEWAŁA NASZĄ KREW. MÓW PO CO TU JESTEŚ, MORDERCO. JEŚLI PO TO, ŻEBY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ. NIE CHCEMY WALCZYĆ, ALE JEŚLI TAKA JEST TWOJA WOLA, BĘDZIEMY WALCZYĆ."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"SPOTKALIŚMY SIĘ JUŻ W MROCZNYCH GMACHACH.
WIDZIELIŚMY TWOJĄ TWARZ, JAK PRZELEWAŁA NASZĄ KREW. MÓW PO CO TU JESTEŚ, MORDERCO. JEŚLI PO TO, ŻEBY NAS WSZYSTKICH ZGŁADZIĆ, TO WIEDZ, ŻE NIE UDA CI SIĘ. NIE CHCEMY WALCZYĆ, ALE JEŚLI TAKA JEST TWOJA WOLA, BĘDZIEMY WALCZYĆ."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"Przyszedłem, by powiedzieć, że Milczący Król jest tylko martwym szkieletem. Nie ma żadnej mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"Dlaczego nazywacie mnie 'mordercą'?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"W zasadzie jestem tu po to, żeby was zgładzić."~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"Po nic tu nie jestem. Właśnie wychodziłem."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"DWUNOGU, ZA TWOJĄ SPRAWĄ ZGINĘŁO WIELU Z NASZEGO GATUNKU. POCZULIŚMY JAK NASZE ŚWIATŁA GASNĄ W PRZYPŁYWIE BÓLU. PRZEZ CIEBIE CIERPIENIE ZAWITAŁO DO LABIRYNTÓW MYŚLI I TWOJĄ RZECZĄ JEST, BY TO NAPRAWIĆ. NAPRAWISZ TO, ALBO CIĘ ZLKWIDUJEMY."~ */
  IF ~~ THEN REPLY #39048 /* ~"Nie."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"Co muszę zrobić?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"Nie wiedziałem, że byli z waszego gatunku."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"CZY MAŁO PRZEZ CIEBIE WYCIERPIELIŚMY? CZY TWE ZBRODNIE JESZCZE CIĘ NIE NASYCIŁY. NIE WIDZIMY W TWYCH MYŚLACH APROBATY. ZABIJEMY CIĘ WIĘC, DWUNOGU."~ */
  IF ~~ THEN REPLY #39051 /* ~"Jestem do waszych usług..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"ZROBISZ TO DLA NAS, ALBO POŚWIĘCIMY NASZE OSTATNIE ŻYCIE, ODDAJĄC SIĘ WYMAZANIU CIĘ Z MAPY WIELOŚWIATA. TO SIĘ NAM *NALEŻY*, ZA CIERPIENIE WYRZĄDZONE PRZEZ CIEBIE."~ */
  IF ~~ THEN REPLY #39052 /* ~"Czego chcecie ode mnie?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"Chciałbym to zobaczyć."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"ZATEM NA NIC SIĘ NAM JUŻ NIE PRZYDASZ.
CZAS BYŚ DOŚWIADCZYŁ TERAZ CIERPIENIA JAKIEGO ZA TWOJĄ SPRAWĄ MY DOŚWIADCZYLIŚMY.
CZAS ZGASIĆ TWĄ MAŁĄ ISKIERKĘ.
UMRZESZ HUMANOIDZIE.
UMRZESZ *W CIERPIENIACH*."~ */
  IF ~~ THEN REPLY #39054 /* ~"To jest podziękowanie?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"Nalegam byście spróbowali."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~"PROSIMY BY TWOI TOWARZYSZE MILCZELI. PRZEZ CIEBIE CIERPIELIŚMY, WIELE CIERPIELIŚMY I ŻĄDAMY OD CIEBIE ZADOŚĆUCZYNIENIA."~ */
  IF ~~ THEN REPLY #39056 /* ~"Jestem tu, żeby was zgładzić."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"Co chcecie, bym zrobił?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"Nie dam wam tej satysfakcji."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"KRZYWDA ZOSTAŁA WYRZĄDZONA. PRZESZŁOŚCI NIE DA SIE ZMIENIĆ, MÓWIĄC PO PROSTU PRZEPRASZAM. ODDAJ NAM TĘ PRZYSŁUGĘ, ALBO ZGŁADZIMY CIĘ."~ */
  IF ~~ THEN REPLY #56040 /* ~"Co muszę zrobić?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"Nie zrobię tego."~ */ GOTO 76
END

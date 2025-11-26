// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~Istota obraca się powoli, skwiercząc w kłębach dymu nad żelaznym rusztem, ponad podłogą baru. Kiedyś mogła być człowiekiem, ale teraz jej skóra jest tak zwęglona, że nie można być tego pewnym. Strumienie ognia oplatają jej ciało niczym wieniec, płomienie z wolna muskają pozostałe jeszcze fragmenty ciała, sprawiając, że tłuszcz topi się i spływa niczym wosk.~ */
  IF ~~ THEN REPLY #16198 /* ~"Witaj...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Obejrzyj gorejące ciało.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"Hmmm. Zastanawiam się, czy Niewyczerpana Karafka coś tu pomoże...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~Stworzenie nie odpowiada. Wije się tylko w płomieniach - żyje, ale nie wydaje się *zdawać sobie sprawy* z niczego, oprócz otaczających je płomieni. Jego skóra płonie, jego serce też i w jakiś sposób wiesz, że jest *niebezpieczne*.~ */
  IF ~~ THEN REPLY #16212 /* ~Obejrzyj stworzenie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"Hmmm. Ciekawe, czy Niewyczerpana Karafka coś tu pomoże...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~Gorąco wokół tego... stworzenia... jest niesamowite. Ku twemu zaskoczeniu, żelazny ruszt zapada się i gnie pod jego wpływem. Najpierw wydawało ci się, że gorąco bije od rusztu... ale teraz zdajesz sobie sprawę, że bije właśnie od tego stworzenia. Gdy patrzysz, drobiny popiołu odrywają się od wijącego się ciała i z wolna dryfują aż pod sufit.~ */
  IF ~~ THEN REPLY #16215 /* ~"Witaj...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"Hmmm. Ciekawe, czy Niewyczerpana Karafka coś tu pomoże...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~Przechylasz karafkę nad rusztem i wylewasz jej zawartość. Mały strumień lodowatej, błękitnej wody dociera do płomieni. Gdy paruje, słychać gwałtowny syk... jak gdyby pobudzona tym dźwiękiem, karafka wydaje się *rzucać* do przodu, z trzaskiem rozbijając się o ruszt!~ */
  IF ~~ THEN REPLY #16218 /* ~"Co do diabła...?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Z rusztu, z sykiem i skwierczeniem, wydobywają się kłęby pary, podchodzą bliżej, zmuszając cię, byś zakrył uszy i odwrócił się... słychać krzyk, rechot, straszliwy dźwięk, jak gdyby płonęło setki budynków, krzyczeli ludzie, a ich krzyki były urywane rykiem płomieni i topiącego się ciała...~ */
  IF ~~ THEN REPLY #16219 /* ~Zakryj uszy by stłumić ten dźwięk.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~Chcąc stłumić ten dźwięk, przykrywasz uszy dłońmi, są klejące, niczym gorący ser, lub wosk... czujesz się, jak gdyby uszy krwawiły ci od hałasu! Cofasz ręce i widzisz, że pokryte są kawałkami stopionego ciała i krwią...~ */
  IF ~~ THEN REPLY #16220 /* ~Spróbuj wydostać się z baru.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~Już masz uciec z baru, zrobić cokolwiek, by umknąć od tego dźwięku, kiedy nagle wszystko cichnie, słychać tylko skwierczenie rusztu. Odwracasz się - na ruszcie leży Niewyczerpana Karafka - teraz jest tylko pełną pary skorupą. Ponad nią widać stworzenie, z jego ciała wciąż unoszą się płomienie, tańczą nad podłogą baru. Gapi się na ciebie, jego oczy migoczą, niczym pochodnie...~ */
  IF ~~ THEN REPLY #16221 /* ~"*Znam* cię..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~Twarz mu pęka, od szczęk odrywają się kawałki zwęglonego ciała - nareszcie może mówić. *"Tak..."* Jego głos skwierczy, huczy jak płomień, wzbiera w piersi stworzenia; z każdym słowem z jego ust wylatują płatki popiołu i unoszą się w powietrzu. Nie możesz na to patrzeć - blask bijący od tego stworzenia jest prawie nie do zniesienia.~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"Ignus..."~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"Tak..."* Stworzenie pochyla się w twoją stronę, powietrze faluje z gorąca. *"Długo ssspałem... sssny ogniem przepełnione..."* Jak gdyby w odpowiedzi na to, płomienie wzbierają mu w gardle i strzela językiem ognia spoza poczerniałych zębów. *"Będę ci posłuszny... póki śmierć nie zabierze nas obu..."*~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"Zobaczymy..."~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~Gdy podchodzisz stworzenie syczy, powietrze faluje z gorąca. *"Długo spałem... sny ogniem przepełnione..."*~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"Witaj, Ignusie... czy chcesz ze mną podróżować?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"Trzymaj swe marzenia przy sobie Ignusie... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~Jak gdyby w odpowiedzi na to, płomienie wzbierają mu w gardle i strzela językiem ognia spoza poczerniałych zębów. *"Będę ci posłuszny... póki śmierć nie zabierze nas obu..."*~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"Zobaczymy..."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Ignus wolno odwraca się, by spojrzeć ci w oczy. *"Taksss..?"*~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"Nieważne, to zły pomysł. Mam kilka pytań, Opłakujący..."~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"Widzisz te drzewa, Ignusie? Myślisz, że mógłbyś się nimi *zająć*?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"Nic. Nie wiem o czym myślałem. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Ignus odwraca się do drzew, powietrze wokół niego w kilku chwilach staje się nieznośnie gorące. *"Takssss... płońńń..."*~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Ignus śmieje się złowieszczo, płomienie wystrzeliwują mu z gardła. *"Ssstoiszsz między mną, a tym, co płonieee? Ty teżżż sspłonieszszsz..."*~ */
  IF ~~ THEN REPLY #16925 /* ~"Ignusie, poczekaj..."~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Niech robi, co chce.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~Gdy podchodzisz, Ignus syczy, powietrze faluje z bijącego od niego gorąca. *"I jak już powiedziałem... ogniem myśli przepełnione..."*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"Uch... Rozumiem. Żegnaj, więc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"Będę ci posłuszny... póki śmierć nie zabierze nas obu..."*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"Bardzo dobrze. Chodźmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~Płomienie wzbierają mu w gardle i strzela językiem ognia spoza poczerniałych zębów. *"Słucham...?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"Ignusie, jak stałeś się tym, czym jesteś?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"Ignusie... czy to prawda, że spaliłeś Aleję Niebezpiecznych Węgłów?"~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"Co robiłeś w gospodzie Pod Gorejącym Człekiem?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"Ignusie, rozmawiałem z gawędziarzem w Ulu i wspomniał, że ktoś cię tego *nauczył*... kto?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"Ignusie, jesteś pewien, że to byłem ja?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"Ignusie, twe mistrzostwo w Sztuce... czy nauczysz mnie swej mocy?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"Ignusie, chodzi mi o nauki, o męczarnie, na które cię wystawiłem... Przepraszam."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"Nic, Ignusie. Chciałem tylko sprawdzić, czy wciąż jesteś z nami... mów więc."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~*"Płońńńń..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"Jakie jeszcze widzisz udręki, Ravelo?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"Jakie jeszcze widzisz udręki, Ravelo?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"Jakie jeszcze widzisz udręki, Ravelo?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"Jakie jeszcze widzisz udręki, Ravelo?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~*"Płońńńń..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"Ravelo, dopięłaś swego. A teraz dość."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"Ravelo, dopięłaś swego. A teraz dość."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"Ravelo, dopięłaś swego. A teraz dość."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"Ravelo, dopięłaś swego. A teraz dość."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~*"Należżżę do ccciebie... póki ssśmierć nie przyjdziiie po nassss obu..."*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"Rozumiem... Nie-Sławo?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~"Rozumiem... Anno?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~"Rozumiem... Dak'konie?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~"Rozumiem... Dak'konie?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~"Rozumiem... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~"Rozumiem... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~*"HSSSSS SSSSSS!"* Serce skacze ci do gardła, gdy Ignus wzbija się kilkanaście stóp w górę, otwierając szczęki i wypuszczając strugę płomieni, wijących się niczym żmije w gnieździe. *"KONIEC ROZMÓW I PYTAŃŃSSSS! ZZZAMILCZCZCZ...!"*~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"Ale ja chcę rozmawiać o płomieniach, o ogniu..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"Ale ja chcę rozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"Ale ja chcę rozmawiać o płomieniach, o ogniu..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"Ale ja chcę rozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"ODPOWIESZ na moje pytania, Ignusie. Jesteś wolny dzięki mnie i mogę odesłać cię z powrotem do piekła."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"Nieważne więc..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~*"Myślisz, że MÓGŁBYŚ uwiązać Ignusssa...?"* Płomienie wokół niego wirują niczym peleryna, potem rozchodzą się na zewnątrz, jak gdyby chciały cię objąć. *"ZABIĆ, zamienić w *popiół* Ignus może... teraz, Ignusss iść... ale bój się... bój się GNIEWU Ignusssa..."*~ */
  IF ~~ THEN REPLY #57581 /* ~"Tak naprawdę, Ignusie, nie mógłbyś mnie powstrzymać - mógłbyś mnie spalić, ale wracałbym tak długo, jak ty byś płonął. Więc *dość* już tych gróźb..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"Jak chcesz... porozmawiamy później, Ignusie."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~Słychać trzask i Ignus podnosi głowę, jak gdyby chciał się tobie przyjrzeć, a potem syczy. *"PŁOMIENIE wypalą z ciebie nieśmiertelność... NIE możesz uciec od moich płomieni..."*~ */
  IF ~~ THEN REPLY #57584 /* ~"Może nie rozumiesz, co OZNACZA nieśmiertelność, Ignusie..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"Skąd wiesz, że jestem nieśmiertelny?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"Jak chcesz... porozmawiamy później, Ignusie."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~*"*NIE* jesteś nieśmiertelny... Ignusss może cię ZABIĆ... spopielić i rozrzucić w powietrzu..."* Patrzysz, jak rozpościera ramiona; musisz zakryć oczy, tak wielkie GORĄCO bije od niego w tej chwili - słychać RYK, gdy Ignus przyciąga strumień powietrza.~ */
  IF ~~ THEN REPLY #57588 /* ~"Ignusie! Przestań!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~Gdy próbujesz krzyknąć, by przestał, fala gorąca okręca się wokół własnej osi i przetacza przez ciebie. Czujesz, że twoje ciało zaczyna się tlić, potem palić, zaczynasz odczuwać BÓL... zaciskasz zęby, słyszysz skwierczący, palący, głośny śmiech Ignusa...~ */
  IF ~~ THEN REPLY #57590 /* ~"Ignusie!"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~W trakcie rozmowy ze mną, Ignus niemal całkowicie oszalał... Udało mi się przeżyć jego napad złości, ale jest jeszcze pewna sprawa, która wiąże się z jego umiejętnością posługiwania się ognistym żywiołem - mam mianowicie wrażenie, że Ignus jest zdolny uśmiercić mnie... I to definitywnie.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~Gdy jeszcze raz wykrzykujesz jego imię, gorąco ustaje - odciągając ramię od oczu, widzisz, że twoja skóra sczerniała tam, gdzie Ignus ją nadpalił... Ignus patrzy na ciebie wygłodniałym wzrokiem. Wiesz, że czymkolwiek *jest*, jakakolwiek tkwi w nim moc, może cię zniszczyć - gdyby jego płomienie miały cię zabić, nic nie zostałoby z twego ciała.~ */
  IF ~~ THEN REPLY #57605 /* ~"Mam ciebie DOŚĆ, Ignusie... może potrafisz mnie zabić, a może nie - chcę to sprawdzić."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"Bardzo dobrze, Ignusie. Porozmawiamy więc później, ty i ja..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Twoje słowa są niczym oliwa... patrzysz jak wypełniają oczy Ignusa, podsycają ogniki, które w nich widać. *"Płomienie?"* Ignus pochyla się, temperatura wokół niego rośnie, jak gdyby z zainteresowania. *"Mów... Ignus wysłucha..."*~ */
  IF ~~ THEN REPLY #57609 /* ~"Ignusie, jak stałeś się tym, czym jesteś?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"Ignusie... czy to prawda, że spaliłeś Aleję Niebezpiecznych Węgłów?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"Co robiłeś w gospodzie Pod Gorejącym Człekiem?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"Ignusie, rozmawiałem z gawędziarzem w Ulu i wspomniał, że ktoś cię tego *nauczył*... kto?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"Ignusie, jesteś pewien, że to byłem ja?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"Ignusie, twe mistrzostwo w Sztuce... czy nauczysz mnie swej mocy?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"Ignusie, chodzi mi o nauki, o męczarnie, na które cię wystawiłem... Przepraszam."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"Porozmawiamy o tym później Ignusie, nie teraz."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~*"Płomienie...?"* Jego głos skwierczy, jak gdyby z zainteresowania. *"Mów... Ignus wysłucha..."*~ */
  IF ~~ THEN REPLY #57637 /* ~"Ignusie, jak stałeś się tym, czym jesteś?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"Ignusie... czy to prawda, że spaliłeś Aleję Niebezpiecznych Węgłów?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"Co robiłeś w gospodzie Pod Gorejącym Człekiem?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"Ignusie, rozmawiałem z gawędziarzem w Ulu i wspomniał, że ktoś cię tego *nauczył*... kto?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"Ignusie, jesteś PEWIEN, że to byłem ja?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"Ignusie, twe mistrzostwo w Sztuce... czy nauczysz mnie swej mocy?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"Ignusie, twe mistrzostwo w Sztuce... chcę cierpieć, by nauczyć się więcej."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"Ignusie, chodzi mi o nauki, to męczarnie, na które cię wystawiłem... Przepraszam."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"Nie mam już pytań... niech twe marzenia wypełnią się płomieniami, Ignusie..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~*"NIE! MÓWSSSS!"* Zawodzi, a powietrze wokół ciebie znów *skręca się* z gorąca. *"MÓW O PŁOMIENIACH! MÓW O TYM JAK PŁONĄ!"*~ */
  IF ~~ THEN REPLY #57660 /* ~"Uch... bardzo dobrze. Mam kilka pytań... o płomieniach..."~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"Nie, Ignusie... porozmawiamy kiedy indziej! Nie teraz!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"Ignusie... czy kiedykolwiek *czułeś* wzbierające płomienie? Jak liżą krawędzie drewna, czernią je, czy widziałeś jak gorąco zdziera farbę ze ścian, jak strzechy trzaskają, czy czułeś smród palącej się słomy...?"~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"Ignusie... czy kiedykolwiek *czułeś* wzbierające płomienie? Jak liżą krawędzie drewna, czernią je, czy widziałeś jak gorąco zdziera farbę ze ścian, jak strzechy trzaskają, czy czułeś smród palącej się słomy...?~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Ignus zawodzi, potem ryczy przeraźliwie, *krzykliwie*; nagle otacza go gorąco - a oczy - jego oczy stają się niczym okna do innego ŚWIATA. Unosi dłonie, na ich krawędziach trzaskają płomienie, rosną, stają się niczym wielkie, płonące bicze. *"Będziesz PŁONĄŁŁ!"*~ */
  IF ~~ THEN REPLY #57665 /* ~"Ignusie, sam o to *prosiłeś*..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~Gdy mówisz, skwierczenie płomieni wokół Ignusa słabnie, jak gdyby one same słuchały twoich słów... gdy kończysz, Ignuss syczy miękko, a ogniki w jego oczach słabną, jak gdyby zatracał się we wspomnieniach. *"Takssss..."*~ */
  IF ~~ THEN REPLY #57667 /* ~"Porozmawiamy później, Ignusie... tymczasem, zostań w pokoju."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~*"Taki..."* Mały kawałek ciała na policzku Ignusa *wystrzeliwuje*, tłuszcz spływa parującą strużką w dół jego szczęki. *"Taki... Ignus zawsze byłssss..."*~ */
  IF ~~ THEN REPLY #57669 /* ~"Ale... wyglądasz jakbyś był człowiekiem. Albo przynajmniej, jak gdybyś nim kiedyś był."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"Rozumiem. Ty i ja możemy jeszcze porozmawiać... później."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Ignus skręca się, pochylając głowę do przodu, gdy jego ciało wiruje powoli nad ziemią... wygląda to, jak ognisty wir, promieniuje z niego ciepło, które zniekształca powietrze wokół was. *"Wciążżżż Ignusss... zawsze Ignussss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"Chcę jeszcze porozmawiać o pło..."~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"Nieważne więc. Mam jeszcze parę py..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"Rozumiem. Cóż, to wszystko. Że..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~Otwierasz usta, by przemówić, gdy nagle Ignus zaczyna kręcić się nad tobą - musisz połknąć własne słowa, gdy gorąco bijące od niego ciała rozlewa się nad tobą. "TY mógłbyś być Ignusssem... iskry w ciele, które zawsze chcą zapłonąćććć..."*~ */
  IF ~~ THEN REPLY #57678 /* ~"'Iskry w ciele?' Co masz na myśli?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"Rozumiem. Ty i ja możemy jeszcze porozmawiać... później."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~*"WSZYSTKO płonie... wewnątrz..."* Wyciąga głowę i rozpościera ramiona, wokół których przebiegają serpentyny ognia. *"Muszą tylko rozpalić się i staną się Ignusemmm... więc, TY mógłbyś być... Ignussem..."*~ */
  IF ~~ THEN REPLY #57683 /* ~"W rzeczywistości, gdy rozpalasz płomień w ludziach, zwykle kończy się to ich śmiercią."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"A więc... mówisz, że wszyscy mają zadatki, by stać się takimi jak ty. Wystarczy tylko odpowiednia... iskra?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"Rozumiem. Ty i ja możemy jeszcze porozmawiać... później."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~*"Taksss..."* Ignus 'uśmiecha się', pochylając głowę w jedną stronę, z jego czaszki spada popiół, by za chwilę zginąć w wieńcu płomieni, które otaczają jego postać.~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Twarz Ignusa pęka, ciało w kącikach ust też, topi się i znów łączy w zwęglone, szydercze, czerwono czarne kawałki. *"Takssss... Ignus podzieli się zzzz tobą marzeniem..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"Może później. Teraz chcę jeszcze porozmawiać o pło..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"Uch... nie teraz. Mam jeszcze inne py..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"Dość już słyszałem. Musimy się..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~Potok płomieni wylewa się z Ingusa, a ty cofasz się, powietrze aż *ugina się* z gorąca. *"Ulicccce w nocy... takie zimneee... Ignus SPALIĆĆĆĆ budynki, mieszszkańców... wyszscy UCIEKLI od Ignusssa, płomieni, a budynki były jak płomienie... mieszkańcy krzyczeli zamieniająć się w pochodnie..."*~ */
  IF ~~ THEN REPLY #57701 /* ~"Dość już słyszałem, Ignu..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Słuchaj spokojnie, czekaj aż skończy.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~*"Budynki jak SZKIELETY... zaułki, ciała jak szkielety... czerwień, pomarańcz i czerń, płomienie się rozchodzą, obejmują... tyle światła..."*~ */
  IF ~~ THEN REPLY #57706 /* ~"Ignusie, już DOŚĆ..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Słuchaj spokojnie, czekaj aż skończy.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~*"Sss..."* Jego furia mija, wieńce płomieni wokół niego słabną. Wydaje się pogrążony w myślach - może we wspomnieniach. *"Ssss... a Ignusss był zadowolony..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"Mam jeszcze kilka pytań, Ignusie..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"Rozumiem. Porozmawiamy później, ty i ja..."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~Przez chwilę wydaje ci się, że Ignus nie słyszał cię, kiedy nagle ogniki w jego oczach przygasają. Ignus syczy lekko, płatki popiołu tańczą na krawędzi jego ust. *"Ignusss... kiedyś... nie wiedział NICCCC o płomieniach..."*~ */
  IF ~~ THEN REPLY #57717 /* ~"Tak?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"Nieważne, Ignusie. Porozmawiamy jeszcze innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~*"Kiedyś... Ignusss nie wiedział NIC o płomieniach... palił małe ogniska, o małym płomieniu, lekko migoczące... małe płomyczki..."* Znów syczy, popiół i małe, płonące drobiny spadają ze zniszczonych ust. *"Płomienie rossssły... Ignussss podpalał ulice... i sprawiał, że ludzkie serca płonęły nienawiścią..."*~ */
  IF ~~ THEN REPLY #57726 /* ~"Tak?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"Nieważne, Ignusie. Porozmawiamy innym razem."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~Mówisz, ale Ignus wydaje się nie słyszeć... wydaje się być gdzie indziej, jak gdyby znów przeżywał swe wspomnienia... wbrew własnej woli przestajesz mówić i słuchasz.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~*"Chcieli ukarać Ignusssa, maluczcy z Ula. Chcieli ujrzeć jak PŁONIE, po tym jak Ignus podpalał ich ulice... domorośli czarodzieje, czarodzieje chroniący, druidzi... mali słudzy magii przyszli by UKARAĆ Ignussa, za to że zranił ich ukochanych... skazali go na to, by PŁONĄŁŁŁ, zrobili z Ignusa POCHODNIĘ, trzaskający PŁOMIEŃ, który płonął, płonął... To była SSSPRAWIEDLIWOŚĆ, tak mówili... "*~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~*"Ssssprawiedliwość..."* Zahipnotyzowany patrzysz, jak Ignus zaczyna znów się obracać, tak jak to robił nad rusztem w Gorejącym Człeku. *"...ale to nie wyrok... tak dużo jest płomieni i bólu, że NIE ma bólu... jest ŚWIATŁO, GORĄCO a ciało spływa mi po kościach niczym ŁÓJ... i po raz pierwszy... Ignussss jest ZADOWOLONY..."*~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Ignus przestaje wirować, skupia wzrok na tobie. Ogniki w jego oczach rozbłyskują, zwęglony uśmiech pojawia się na jego twarzy, ciało skwierczy, pokrywając się bąblami, topi się, a tłuszcz spływa mu po twarzy. Ignus wygląda jak samo piekło, jak piekielne płomienie, a jego następne słowa brzmią jak wyrok śmierci - nie tylko dla ciebie, ale dla wszystkich, wszędzie. *"Gdy zapłoną Sfery, a wszystko co żyje zmieni się w pochodnie, Ignusss nareszcie... zazna spokoju..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Zostaw Ignusa, niech myśli o płomieniach..."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~*"Nauki, które znasz..."* Płomienie wystrzeliwują mu z gardła w ohydnej parodii śmiechu. *"ZAWSZE uczyłeś Ignusssa... MISSSTRZEM Ignusssa, *byłeś* ty."*~ */
  IF ~~ THEN REPLY #57744 /* ~"Ja? Jesteś *pewien*...?"~ */ JOURNAL #57592 /* ~Ignus twierdzi, że jestem jego mistrzem. To ja miałem nauczyć go Sztuki Czarodziejskiej. Twierdzi, że to jedyna rzecz, jaka utrzymuje go w posłuszeństwie wobec mnie...~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Ignus *zniża* głos, skwierczenie ustaje. *"Taksss... to jedyna przyczyna... Ignusss... jest na twe ROZKAZY..."* Wirujące, syczące płomienie pojawiają się znowu. *"póki ŚMIERĆ nie dosięgnie nassss obu... twych słów... twój uczeń IGNUSSSS... Ignusss NIE zapomniał... Misssstrzu..."*~ */
  IF ~~ THEN REPLY #57753 /* ~"Ignusie... musiałeś nauczyć się tej Sztuki tak dawno temu... jesteś pewny, że to byłem ja?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"Ignusie, jeśli byłem twym 'Mistrzem'... czy pamiętasz coś na mój temat?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~*"Tak..."* rechocze. "Taksss... oblicze się zmieniło... ale wiele nauk dałeś Ignusssowi..."*~ */
  IF ~~ THEN REPLY #57761 /* ~"Jeśli moja twarz się zmieniła, to skąd wiesz?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"Ignusie... to ważne. Czy pamiętasz coś na mój temat?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~"Nieważne, Ignusie... porozmawiamy o tym jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~*"Wewnątrz wszystkiego... małe płomienie... iskry, płomienie, takie same... nie ważne, jakie ciało... ciało może krwawić... może płonąć... ale WEWNĘTRZNY płomień pozostaje..."*~ */
  IF ~~ THEN REPLY #57769 /* ~"Ignusie... to ważne. Czy pamiętasz coś na mój temat?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Syczy... i przez chwile, jego *rysy* migoczą - najpierw, wydaje ci się, że to płomienie, ale to nie to... to migoczą *wspomnienia*...~ */
  IF ~~ THEN REPLY #57777 /* ~Poddaj się wspomnieniu.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Wraca ci wzrok, wspomnienie rozwiewa się, niczym dym. Ignus unosi się nad tobą, przechylił głowę na bok, na twarzy pojawia się ciemny, szalony uśmiech... *"Mistrzu... Ignuss nie zapomniał twych nauk..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~Skwierczenie płomieni ustaje, ustępuje, gdy zwęglone kości Ignusa składają się, skręcają w sobie, aż wszystkie kończyny leżą nieruchomo, stają się stosem drewna w wielkim, żelaznym kominku... wpatrujesz się w ogień, który płonie jasno w sklepionym pomieszczeniu. Żar leci na kamienną podłogę, popiół unosi się z kominka. Z ciemności za sobą, słyszysz czyjś chrapliwy oddech.~ */
  IF ~~ THEN REPLY #57784 /* ~Wspomnienie: "*Słyszę* cię... podejdź do światła."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~Słychać szuranie sandałów, na krawędzi światła z kominka staje wątły młodzieniec. Jego szerokie, czarne oczy odbijają płomienie. Jest poddenerwowany - słyszysz, jak drżą mu mięśnie, głos - wystarczy, by cię zirytować. "Wybacz mi to najście, mistrzu. Ja..."~ */
  IF ~~ THEN REPLY #57787 /* ~Wspomnienie: "I tak mi *już* przeszkodziłeś. I zrobiłeś tak celowo. Wysłucham cię, a potem zostaw mnie samego."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~Chłopak bierze głęboki oddech i patrzy w ogień. "Panie, Ja... znów śniłem o ogniu, zeszłej nocy... czułem się, jakby to było naprawdę, a ty powiedziałeś, że mam do ciebie przyjść, jeśli..."~ */
  IF ~~ THEN REPLY #57790 /* ~Wspomnienie: "To był *sen*, nic więcej. A teraz odejdź."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~Chłopak nie rusza się - ściąga brwi i wolno pokazuje dłonie. Ciało wokół palców... poczerniałe, spalone.~ */
  IF ~~ THEN REPLY #57793 /* ~Wspomnienie: "Jak to się stało, że twe dłonie są spalone?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"Obudziłem się, a moje ręce były jak z popiołu." Wasze oczy spotykają się; chłopak wciąż drży - lekko, ale w jego głosie czuć podniecenie; denerwuje cię to. "Śniłem, że unoszę się nad ziemią, a ziemia i niebo były jak ogień. Świat był tak jasny, że... patrzenie na niego sprawiało ból, mistrzu. A kiedy obudziłem się, moje dłonie... były spalone, jak gdybym trzymał w nich płomienie."~ */
  IF ~~ THEN REPLY #57796 /* ~Wspomnienie: "Kłamiesz. Przyszedłeś tu by mi coś opowiedzieć, a teraz wystawiasz się na mój *gniew*."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"Nie, mistrzu..." Jego twarz lśni; chłopak poci się ze strachu. "Nie, przysięgam na życie, nie!"~ */
  IF ~~ THEN REPLY #57799 /* ~Wspomnienie: "Poparzyłeś się świecą. Albo wepchnąłeś rękę do jednego ze stosów w Krypcie Przemijania. A teraz chodź do mnie i opowiedz mi ten sen. Męczą mnie twoje kłamstwa."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~Chłopak ucisza się i, ku twemu zaskoczeniu, zaciska zęby z gniewu. "Nie. Nie kłamię. To *sen* je spalił, mistrzu. Mówiłeś, że tak może się stać, gdyby moc chciała się obudzić. To *twoje* słowa, a ja przyszedłem, żeby ci je *powtórzyć* i powiedzieć, że to *prawda*." Unosi dłonie. "Patrz, mistrzu..."~ */
  IF ~~ THEN REPLY #57802 /* ~Wspomnienie: Złap go za rękę.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Zanim chłopak może zareagować, twoja dłoń - w porównaniu z jego ogromna - wystrzeliwuje, chwytając jego spalone dłonie w miażdżącym uścisku, a chłopak krzyczy, jego głos niesie się echem w grobowcu. Warcząc, ciskasz go na ziemię przed kominkiem, słychać nagły *trzask*, gdy jego kolana uderzają w posadzkę.~ */
  IF ~~ THEN REPLY #57805 /* ~Wspomnienie: "Spójrz w płomienie! Unieś głowę i patrz!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~Chłopak dygocze z bólu... widzisz, jak łzy wzbierają mu w oczach, gdy podnosi głowę, by spojrzeć w ogień. Płomienie rzucają na jego twarz czerwony blask...~ */
  IF ~~ THEN REPLY #57808 /* ~Wspomnienie: "Czy *to* właśnie chcesz zatrzymać? Czy to formowanie płomieni tak porusza twe serce? Wiedz, że płomienie palą, a jeśli chcesz posiąść ich moc, musisz znieść ich dotyk."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~Chłopak nie odzywa się, wpatruje się w płomienie. Wydaje się być zahipnotyzowany. Łzy wyschły już z gorąca i przestał się trząść. Jego uwaga skupiona jest na płomieniach. Nie SŁUCHA cię, czujesz jak ogarnia cię furia.~ */
  IF ~~ THEN REPLY #57811 /* ~Wspomnienie: "Jeśli to właśnie cię zżera, jeśli jest to wystarczający powód by mnie *nachodzić*, to nauczę cię jak formować płomienie."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Twoja dłoń wystrzeliwuje i zaciska się na jego przegubie. Ignus zawodzi, gdy przyciągasz go do kominka, a potem wpychasz jego dłonie w węgle - słychać skwierczenie, syk płonącego ciała i jego *krzyk* - tak straszny, a jednak...~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Wspomnienie: "Musisz *cierpieć*, jeśli chcesz się tego nauczyć. Musisz pozwolić by moc, którą chcesz pozyskać, spaliła cię. Poznaj jej męczarnie, a dowiesz się, jak wykorzystać ją przeciwko swym wrogom."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~Kiedy zacząłem wypytywać Ignusa o jego 'nauczyciela', poczułem nagły, choć niezwykle silny napływ wspomnień. Widocznie, gdzieś tam w którymś ze swoich poprzednich żywotów, musiałem być nauczycielem Sztuki, mistrzem Ignusa. Nawet jeżeli to prawda, to, moim skromnym zdaniem, Ignus wiele nie skorzystał z tamtych nauk.~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Wspomnienie: "Musisz *cierpieć*, jeśli chcesz się tego nauczyć. Musisz pozwolić by moc, którą chcesz pozyskać, spaliła cię. Poznaj jej męczarnie, a dowiesz się, jak wykorzystać ją przeciwko swym wrogom."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Stłum wspomnienie.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~*"Sssss... Ignusss kiedyś wiedział *dużo*... już nie... Ignusss płonie... w cierpieniu, Ignus uczy się..."* Mały płomień, niczym uśmiech, ukazuje mu się na ustach, bije od nich żar. *"Cierp... ucz się..."*~ */
  IF ~~ THEN REPLY #57820 /* ~"Chcę cierpieć, by zdobyć tę wiedzę..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"Rozumiem. Mam jeszcze parę pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"Może innym razem, Ignusie... może porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~Gdy już masz przemówić, zaczynasz odczuwać mrowienie z tyłu głowy... i nagle uderza cię pewność, że wiedza, którą chce ci ukazać Ignus, może pozostawić blizny... nie wiesz jednak, *skąd* to wiesz.~ */
  IF ~~ THEN REPLY #57825 /* ~Powtórz: "Chcę cierpieć, by zdobyć tę wiedzę..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"Może innym razem, Ignusie... może jeszcze porozmawiamy, później."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~*"Cierpieć...?"* Płomienie migoczą wzdłuż ust Ignusa, przeskakują na zniszczoną twarz. *"Płońńń? Płoną kawałki jaźni... ssss... Ignusssa... Ignusss wciąż może *WIELE* nauczyć."*~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"Chcę się uczyć, Ignusie... czy nauczysz mnie tej Sztuki?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"Chcę się uczyć, Ignusie... czy nauczysz mnie jeszcze trochę?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"Chcę się uczyć, Ignusie... czy nauczysz mnie jeszcze trochę?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"Może innym razem, Ignusie... może jeszcze porozmawiamy, później."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~*"Gdy wypalą się płomienie, można je zesłać jeszcze raz..."* Zanim udaje ci się zareagować, szponiasta dłoń Ignusa wystrzeliwuje i chwyta twój palec; sycząc z pożądliwie, ZAPALA go; czując palący ból, zamykasz oczy i zaczynasz KRZYCZEĆ...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~Zmuszasz się do otwarcia oczu i widzisz na swej dłoni spaloną miazgę, tam, gdzie dotknął jej Ignus... On sam unosi się nad tobą niedbale, tuląc do siebie twój palec, następnie *odłamuje* jego czubek, zostawiając tylko podstawę. *Syczy*, a z jego ust wylatują płatki popiołu, gdy wystrzeliwuje zwęglone szczątki palca twoim kierunku.~ */
  IF ~~ THEN REPLY #57838 /* ~"Eeeerch... coś... ty... zrobił?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Ignus pozwolił mi zgłębić co nieco z jego Sztuki i w tym celu najpierw odciął mi palec, następnie wypalił z niego ciało i... zwrócił mi go. Zdaje się, że on sądzi, że ja teraz będę doskonale wiedział, co z tym fantem zrobić. Cała ta bolesna operacja chyba na trwale uszkodziła moje zdrowie, ale z drugiej strony mam wrażenie, że znacznie wzrosła moja odporność na działanie ognia. Poza tym w miejsce straconego palca, zaczyna odrastać nowy, tak więc, nie muszę się już martwić, że utrata palca wpłynie szczególnie niekorzystnie na moje umiejętności szermiercze czy czarodziejskie.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~*"Naukisss..."* Ignus rechocze, lecz tym razem dźwięk ten sprawia ci dziwny ból. *"Nauka wymaga cierpienia."*~ */
  IF ~~ THEN REPLY #57841 /* ~"Chcę... nauczyć... się... więcej..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"Chcę... jeszcze... porozmawiać... o płomieniach... i ogniu... Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"Rozumiem... Mam jeszcze... parę... pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"Dość... Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~*"Takssss..."* Zanim udaje ci się zareagować, szponiasta dłoń Ignusa wystrzeliwuje i chwyta twą lewą rękę; rechocząc niczym szaleniec, ZAPALA ją; czując palący ból, zamykasz oczy i zaczynasz KRZYCZEĆ...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~Zmuszasz się do otwarcia oczu i widzisz spaloną miazgę swej dłoni, tam, gdzie dotknął jej Ignus... pozostał tylko poczerniały, drgający, krwawiący *kikut*. Ignus wydaje się być nieświadomy twego bólu - całą uwagę skupia na twej zmasakrowanej ręce, którą trzyma i podziwia niczym trofeum.~ */
  IF ~~ THEN REPLY #57847 /* ~"Ig... nusie... od... daj... mi... dłóń..."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Ignus ignoruje cię; patrzysz jak płomienie z jego dłoni oplatają twą zmasakrowaną dłoń niczym wieniec, powoli wypalając ostatnie fragmenty ciała, niczym rzeźbiarz; aż zostaje tylko topiąca się kość. Wydaje z siebie przeciągły, niski *ssssyk* i odrzuca szkielet dłoni w twoją stronę... udaje ci się ją złapać wolną ręką. Zauważasz, że ciało na twoim ręku odbudowuje się, powoli, boleśnie... wygląda, jakby dłoń zaczynała odrastać.~ */
  IF ~~ THEN REPLY #57849 /* ~"Coś ty... zrobił..."~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Ignus pozwolił mi zgłębić co nieco z jego Sztuki i w tym celu najpierw wypalił mi dłoń, odarł ją z resztek ciała a następnie... zwrócił mi ją. Zdaje się, że on sądzi, że ja teraz będę doskonale wiedział, co z tym fantem zrobić. Cała ta bolesna operacja chyba na trwale uszkodziła moje zdrowie, ale z drugiej strony mam wrażenie, że znacznie wzrosła moja odporność na działanie ognia. Poza tym w miejsce straconej ręki, zaczyna odrastać nowa, tak więc, nie muszę się już martwić, że brak ręki wpłynie szczególnie niekorzystnie na moje umiejętności szermiercze czy czarodziejskie.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~*"Naukisss..."* Ignus rechocze, lecz tym razem dźwięk ten sprawia ci dziwny ból. *"Nauka wymaga cierpienia."*~ */
  IF ~~ THEN REPLY #57852 /* ~"Chcę... nauczyć... się... więcej..."~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"Chcę... jeszcze... porozmawiać... o płomieniach... i ogniu... Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"Rozumiem... Mam jeszcze... parę... pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"Dość... Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~*"Sssss..."* Ignus wzbija się w powietrze, zostawiając za sobą syczący, płomienny ślad. *"Dość już! Spłonęły kawałki jaźni... ssss... Ignusssa... ale Ignusss nie podzieli się już swą nauką..."*~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"Potrzebujesz części mnie, żeby mnie czegoś nauczyć? Co z moim okiem?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"Potrzebujesz części mnie, żeby mnie czegoś nauczyć? Co z moimi jelitami?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"Bardzo dobrze. Chcę jeszcze porozmawiać o płomieniach i ogniu, Ingnusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Ignus rzuca się ciebie znowu, jego palec nakierowany niczym włócznia... wbija ci go w oko. Przez chwilę nie czujesz bólu, tylko zaskoczenie, następnie zaczynasz *krzyczeć*, gdy Ignus wypuszcza strumień płomieni prosto do oczodołu. Wydają się wżerać ci w mózg... smród palonego ciała wypełnia twe nozdrza, a dym przesłania ci wzrok...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~Zmuszasz się do otwarcia zakrwawionych oczu - ale otwiera się tylko JEDNO oko - ledwo udaje ci się dostrzec Ignusa, unoszącego się w powietrzu, trzymającego małą, ognistą kulkę - twoje oko, najwyraźniej nietknięte przez ogień. Gdy patrzysz, zamyka je w dłoniach i czujesz następny palący ból w oczodole...~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~I nagle, pomimo piekącego bólu, znowu widzisz wyraźnie... Ignus otwiera dłoń, na której widać zmasakrowane oko, prawie nie do poznania... ale... twoje oko wciąż jest w oczodole. Ignus rechocze i z jego kolejnym, ognistym oddechem, oko unosi się i podpływa do ciebie niczym drobina popiołu.~ */
  IF ~~ THEN REPLY #57865 /* ~Weź oko... swoje oko...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Ignus pozwolił mi zgłębić co nieco z jego Sztuki i w tym celu najpierw wypalił mi oko a potem ... oddał mi je z powrotem. Zdaje się, że on sądzi, że ja teraz będę doskonale wiedział, co z tym fantem zrobić. Cała ta bolesna operacja chyba na trwale uszkodziła moje zdrowie, ale z drugiej strony mam wrażenie, że znacznie wzrosła moja odporność na działanie ognia. Co prawda dziwnym trafem moje zmaltretowane oko nadal widzi, ale byłbym bardzo wdzięczny, gdyby zamiast tych sadystycznych praktyk, Ignus chociaż raz zrobił użytek z tych CHOLERNYCH ZWOJÓW~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Małe płomyczki rosną w zniszczonych oczodołach Ignusa i unoszą się w górę zwęglonej głowy. *"Więcej nauksssss..."* Dwa płomyki wirują tuż za nim, a potem wpadają mu w dłonie, by zmienić się w pochodnie. *"Więcej cierpienia..."*~ */
  IF ~~ THEN REPLY #57868 /* ~"Chcę cierpieć, by nauczyć się więcej... czy możesz mnie jeszcze trochę nauczyć?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"Chcę jeszcze porozmawiać o płomieniach, o ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"Dziękuję, Ignusie... chyba. Porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Gdy podtrzymujesz swoje jelita, Ignus unosi głowę; następnie, nagle nurkuje i wyrywa ci je z dłoni. Rozciąga je pomiędzy dłońmi, niczym linę, i *syczy* do siebie... patrzysz jak parują, stają się czarne... i czujesz narastający ból w brzuchu...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Ignus rozciąga twoje jelita, dłoń po dłoni; z każdym wypuszczonym kawałkiem coraz bardziej wirują wokół niego, skręcają się; powoli tworzą jakiś wzór, którego każda część płonie - wydaje się, że dotykając twych jelit, płomienie odtwarzają jakiś taniec, czerniąc je powoli, aż wyglądają jak długi sznur zwęglonego mięsa...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~Uczucie palenia w brzuchu sprawia, że krzywisz się, ale jest to niczym w porównaniu do bólu, który odczuwałeś, gdy Ignus zwęglał inne partie twego ciała. Patrzysz, jak płonące wnętrzności skręcają się w płomieniach i nagle topiąc się, wpadają do jego dłoni. Ignus *syczy* i rzuca je w twoją stronę. *"WIELE mocy jesssst w organach nieśmiertelnego..."*~ */
  IF ~~ THEN REPLY #57875 /* ~Weź zwęglone jelita...~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Ignus pozwolił mi zgłębić co nieco z jego Sztuki i w tym celu najpierw wypalił mi wnętrzności a potem ... oddał mi je z powrotem. Zdaje się, że on teraz sądzi, że ja będę doskonale wiedział, co z tym fantem począć. Ale w odróżnieniu do poprzednich tego typu ognistych "operacji" Ignusa, nie odczuwałem żadnego bólu.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~*"Płomienie... nie są... torturą..."* Ignus odwraca się powoli, unosząc się nad ziemią; być może cię usłyszał, ale nie wiesz, czy twoje słowa coś dla niego *znaczą*...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"Jesteś pewien, uczniu?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"Przynajmniej próbowałem... Mam jeszcze parę pytań, Ignusie..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"Za to, za co warto, Ignusie. Przykro mi, że tak to się skończyło... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Ignus zatrzymuje się gwałtownie i zbliża się do ciebie, *nowe*, krwawe płomienie wypełzają z jego piersi i głowy, są niczym ohydna, skwiercząca bryła... wyglądają jak płonące gniazdo węży; następnie gwałtownie wydobywają się z ukrytych zakamarków jego ciała. *"Ignus NIE JEST JUŻ tym, który prosi...! Powiedz tak jeszcze raz, a Ignusss SPALI cię!"*~ */
  IF ~~ THEN REPLY #57883 /* ~"Spróbuj. Chyba będę ci musiał przypomnieć gdzie twoje miejsce..."~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"Nieważne. Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"Rozumiem... mam jeszcze parę pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~"Nieważne, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~Trzymasz w dłoni swoje zwęglone jelita; wyglądają, jak poczerniała lina. Ignus unosi się nad tobą, drobinki popiołu spadają z jego płonącego, wychudzonego ciała.~ */
  IF ~~ THEN REPLY #57888 /* ~"Chcę cierpieć, by pozyskać taką wiedzę... czy możesz nauczyć mnie więcej?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"Chcę jeszcze porozmawiać o płomieniach i ogniu, Ignusie..."~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"Rozumiem... Mam jeszcze kilka pytań..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"Dziękuję, Ignusie... porozmawiamy jeszcze, później."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Płomienie wzbierają mu w gardle i tańczą wokół głowy. Gdy mówi, zwęglone usta odpadają. *"Czekam."*~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"Uch... Rozumiem. Żegnaj, więc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Gdy podchodzisz, Ignus wydaje z siebie trzaskający syk. *"Czekam... by móc podążać płomienistym szlakiem..."*~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"Ignusie, potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"Uch... Rozumiem. Żegnaj, więc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~Słychać trzask i skwierczenie topiącego się ciała, a Ignus wydaje z siebie przeciągły, długi syk. *"Jak sssobie życzysz."*~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Kłapie zębami, z jego ust bije żar. *"Niech się ogień po ulicach przetoczy."*~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Z jego ust spadają drobinki popiołu, a on sam kiwa głową. *"Ignus będzie posłuszny..."*~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Jego głos jest niski, a gdy mówi, płomienie otaczające jego zmasakrowaną twarz bledną. *"Podążę z wami szlakiem ogniem naznaczonym."*~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~Z jego ust, niczym z węża, wydobywa się język ognia, który następnie zmienia się w syczący dym. Po chwili widać tylko drobinki pyłu. *"Taaak."*~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"Ruszajmy."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Ignus drży, powietrze wokół niego lekko migocze; wystarczy to, żeby wróciła mu świadomość.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"Powstań, Ignusie. Potrzebuję cię."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~"POWSTAŃ, IGNUSIE."~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~Płomienie i gorąco uderzają cię, a Ignus wznosi się w powietrze, które faluje z gorąca, jakie bije z jego ciała. Zwraca się do ciebie; jego oczy są niczym portale piekieł. *"Będę ci posłuszny... póki śmierć nie zabierze nas obu..."*~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"Być może ten dzień nadszedł, Ignusie..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"Być może ten dzień nadszedł, Ignusie..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"Być może ten dzień nadszedł, Ignusie..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"Być może ten dzień nadszedł, Ignusie..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"Być może ten dzień nadszedł, Ignusie..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~Płomienie i gorąco uderzają cię, a Ignus wznosi się w powietrze, które faluje z gorąca, jakie bije z jego ciała. Zwraca się do ciebie; jego oczy są niczym portale piekieł. Wydaje z siebie niski, przeciągły syk - nie ma w nim jednak groźby, tylko nieufność, ostrzeżenie, którego wcześniej nie słyszałeś.~ */
  IF ~~ THEN REPLY #68389 /* ~"NIE ZOSTANĘ TU DŁUGO, IGNUSIE. JEŚLI CHCESZ, PRZENIOSĘ CIĘ DO SIGIL."~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Obserwuje cię; jego twarz jest tak zmasakrowana, że nie można odczytać jej wyrazu - i nagle, wiesz już, czego chce.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~"WYŚLĘ CIĘ DO SFERY ŻYWIOŁU OGNIA, IGNUSIE. TAM BĘDZIESZ MÓGŁ UNOSIĆ SIĘ PONAD NIEBEM PŁOMIENI, A WSZYSTKIE STWORZENIA BĘDĄ WIEDZIAŁY, CO MASZ W SERCU. BĘDZIESZ ŻYĆ W WIECZNYCH PŁOMIENIACH TAK, JAK CI TO BYŁO PISANE."~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~"WYŚLĘ CIĘ DO SFERY ŻYWIOŁU OGNIA, IGNUSIE. TAM BĘDZIESZ MÓGŁ UNOSIĆ SIĘ PONAD NIEBEM PŁOMIENI, A WSZYSTKIE STWORZENIA BĘDĄ WIEDZIAŁY, CO MASZ W SERCU. BĘDZIESZ ŻYĆ W WIECZNYCH PŁOMIENIACH TAK, JAK CI TO BYŁO PISANE."~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Ignus unosi się nad tobą, milczy przez chwilę, a gdy mówi, jego głos zdaje się jakiś... inny, jak głos dziecka, ucznia, kogoś, znałeś dawno temu, jeszcze w innym wcieleniu. "Mistrzu... wybacz mi. Zdradziłem twe nauki."~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~"KIEDYŚ NAUCZYŁEM CIĘ CIERPIEĆ, IGNUSIE, I TO JA CIĘ ZDRADZIŁEM. TERAZ WYŚLĘ CIĘ DO MIEJSCA PEŁNEGO SPOKOJU, GDZIE WESZCIE STANIESZ SIĘ WOLNY."~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~"WIELE BYŁO ZDRADY, IGNUSIE. WYBACZAM CI."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Ignus nie odpowiada, kiwa tylko głową. Płomienie wokół niego trzaskają, a smugi pyłu wirują, niczym listki.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~"ŻEGNAJ, IGNUSIE."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~"ŻEGNAJ, IGNUSIE."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~"ŻEGNAJ, IGNUSIE."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Ignus przypomina wzburzone piekło, otaczające go strumienie płomieni są niczym fale ognistego oceanu. *"Płońńńńń..."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"Napieraj Ignusie - nie pozwól mu się skoncentrować."~ */ EXIT
END

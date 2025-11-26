// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~Twarz tego ghula przecina głęboka rana, a jedno z jego oczu jest zupełnie zmasakrowane. Mimo tego, że rana jest całkiem świeża, wydaje się nie sprawiać tej cuchnącej istocie bólu, co więcej, właściwie mu nie przeszkadza. Z jego przepaski sterczy brudny nóż... na jego rękojeści widnieje napis 'UHIR'.~ */
  IF ~~ THEN REPLY #23791 /* ~"Witaj..."~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"Uch... czy mogę dostać nóż, który jest wbity w twój brzuch?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Zostaw ghula w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~Ghul mruży oczy i zaczyna warczeć. Jego język - nie krótszy niż na dwie dłonie - wijąc się liże pokryte strupami usta.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"Uch... czy mogę dostać nóż, który jest wbity w twój brzuch?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"Jesteś... Uhir?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~Ghul wciąż ogląda cię głodnym wzrokiem. Zaciska i rozluźnia swe zakończone pazurami dłonie, jak gdyby powstrzymywał się przed chęcią skoku i pożarcia cię.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"Uch... czy mogę dostać nóż, który jest wbity w twój brzuch?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"Uspokój się i odpowiedz na parę pytań."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~Ghul syczy: "Mięso, cicho! Nie gadać! Ja nie słucham mięso-rzeczy! Słyszę tylko twoje serce, krew płynącą w żyłach, słodką, pyszną krew... smakowitą, gęstą, krew..." Z ust wypływa mu ślina i rozpryskuje się na zakurzonej posadzce. "NIE GADAĆ!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"Uch... czy mogę dostać nóż, który jest wbity w twój brzuch?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~Twarz tego ghula przecina głęboka rana, a jedno z jego oczu jest zupełnie zmasakrowane. Z jego przepaski sterczy brudny nóż. Gdy podchodzisz, syczy: "Odejdź! Odejdź! Nie *rozmawiam* z mięso-rzeczom, nie *słucham* mięsa! IDŹ!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"Uch... czy mogę dostać nóż, który jest wbity w twój brzuch?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~Ghul patrzy na nóż, drapiąc się po głowie, jak gdyby zastanawiał się skąd się tam wziął. W końcu, podnosi wzrok i obdarza cię przebiegłym, szerokim uśmiechem... "Mięso chce nóż? Mięso będzie się targować, tak..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"Co powiesz na szczurze ogony?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"Co powiesz na szczurze ogony?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"Mógłbym dać ci parę miedziaków..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"Ale ja nie mam pieniędzy."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"Daj mi go, ghulu... zanim będę zmuszony wziąć go siłą."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~Ghul potrząsa głową, a potem pokazuje swe usta. "Nie, nie... jedzenie, mięso, tak..." Śliniąc się obficie, wywala język.~ */
  IF ~~ THEN REPLY #23835 /* ~"W takim razie przyjdę, jak znajdę coś do jedzenia."~ */ JOURNAL #23836 /* ~Znalazłem ghula, który ma nóż Uhira. W zamian za niego chce dostać jedzenie... może coś znajdę, albo zabiję jakiegoś szczura, żeby miał co zjeść.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~Ghul ogląda je krytycznym wzrokiem. "Pyszne, tak, ale mało. Więcej, mięsa... więcej! Głodny!"~ */
  IF ~~ THEN REPLY #23838 /* ~"Więc przyniosę ci więcej."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"Tak, tak!" Ghul chwyta je chciwie i pożera. Następnie oblizuje zakończone pazurami paluchy i rzuca ci nóż Uhira.~ */
  IF ~~ THEN REPLY #23840 /* ~"Uch... dzięki. Żegnaj."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"Psst! Ty mięso, pyszne, czerwone, soczyste mięso - nie strasz! Mięso chce nóż? Mięso się wymieni!"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"Co powiesz na szczurze ogony?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"Co powiesz na szczurze ogony?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"Mogę dać ci miedziaki..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"Ale ja nie mam pieniędzy."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"W takim razie, nieważne. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~Twarz tego ghula przecina głęboka rana, a jedno z jego oczu jest zupełnie zmasakrowane. Mimo tego, że rana jest całkiem świeża, wydaje się nie sprawiać tej cuchnącej istocie bólu, co więcej, właściwie mu nie przeszkadza.~ */
  IF ~~ THEN REPLY #23849 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Zostaw ghula w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~Twarz tego ghula przecina głęboka rana, a jedno z jego oczu jest zupełnie zmasakrowane. Gdy podchodzisz, syczy: "Odejdź! Odejdź! Nie *rozmawiam* z mięso-rzeczą, nie *słucham* mięsa! IDŹ!"~ */
  IF ~~ THEN REPLY #23852 /* ~Odejdź.~ */ EXIT
END

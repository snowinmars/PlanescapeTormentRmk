// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~Statua wygląda tak, jakby miała za chwilę ożyć i wygłosić jakąś gromką tyradę. Rzeźbiarzowi udało się fenomenalnie oddać istotę gniewu; same tylko zmarszczki na szyi i czole posągu musiały pochłonąć długie miesiące pracy. Statuę szpecą rozległe pęknięcia. U podstawy figury znajduje się tabliczka informacyjna.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Posmaruj statuę Maścią Gorgony.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Odczytaj tabliczkę.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Sprawdź pęknięcia.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Zostaw statuę w spokoju.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~Na tabliczce jest napisane: 'Według legendy, statua ta przedstawia i dosłownie kryje w sobie eterzerjańskiego czarnoksiężnika o imieniu Gangroighydon. Gangroighydon, będąc u szczytu swej szaleńczej potęgi, padł ofiarą spisku konkurujących z nim czarnoksiężników i został uwięziony zaklęciem, które zmieniło jego ciało w kamień. Powiada się, że czarodziejski kamienny mróz skuł członki Gangroighydona, w chwili, gdy z ust jego dobywała się ostatnia, straszliwa klątwa, przekleństwo tak okropne, że nigdy nie zostało wypowiedziane przez żadnego z żyjących.'~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Posmaruj statuę Maścią Gorgony.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Sprawdź statuę.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Zostaw statuę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~Z uwagą badasz pęknięcia, które, niczym sieć szerokich, czarnych żył, przecinają powierzchnię statuy. W jednym miejscu, w pobliżu ramienia, dostrzegasz pokaźny kawał posągu, który jest bardzo bliski kompletnego odłamania się od całości.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Odłam kawałek posągu.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Odłam kawałek posągu.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Przeczytaj tabliczkę.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Zostaw statuę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~Sięgasz ku naznaczonemu pęknięciami przedramieniu figury, chwytasz je mocno i uderzasz młotem kowalskim. W odpowiedzi odzywa się głuchy dźwięk metalu walczącego z kamieniem, i kawał posągu, kształtem przypominający sztylet, odrywa się od statuy i osuwa się na ziemię.~ */
  IF ~~ THEN REPLY #31544 /* ~"No, masz..."~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~Kiedy kawałek posągu odłamuje się, wyczuwasz nagle strugę wody spadającą na wnętrze twojej dłoni... Spostrzegasz, że w momencie wyłamania kamiennej drzazgi, oczy rzeźby uroniły łzy. Szybko i bardzo cicho zabierasz odłamek i odchodzisz od płaczącej statuy.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Posmaruj statuę Maścią Gorgony.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Sprawdź statuę.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Przeczytaj tabliczkę.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Zostaw statuę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~Sięgasz ku naznaczonemu pęknięciami przedramieniu figury, chwytasz je mocno i wytężasz się... Bez rezultatu. Będziesz potrzebował młota zdolnego skruszyć kamień i to młota niezbyt wielkiego, bowiem ograniczona przestrzeń pomiędzy ramieniem statuy a jej korpusem sugeruje, że młot pokaźnych rozmiarów, szczególnie bitewny, wiele tutaj nie zdziała.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Posmaruj statuę Maścią Gorgony.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Sprawdź statuę.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Przeczytaj tabliczkę.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Zostaw statuę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~Rozsmarowujesz po całej figurze ohydnie cuchnącą maść. Dziwne dreszcze przebiegają przez rzeźbę i widzisz, jak figura nagle zaczerpuje powietrza, a oczy Gangroighydona wypełniają się ognistym, mściwym szaleństwem.~ */
  IF ~~ THEN REPLY #31559 /* ~"Witaj..."~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Zasłoń uszy.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Zmiataj stąd w podskokach.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Zanim jesteś w stanie cokolwiek powiedzieć, z ust czarnoksiężnika wydobywa się potok ognistych słów. Kiedy Gangroighydon wypowiada słowa swej klątwy, czujesz bolesne spazmy, jakby nagle wściekła fala gorąca rozlała się po tobie i osiadła na twojej skórze przemieniając ją w jedną, wielką, pokrytą pęcherzami ranę. Ślepota ogarnia w sekundzie twoje spękane oczy, wyskakujące z oczodołów jak ostrygi ze strzaskanych muszli. Słyszysz czyjś bolesny skowyt i nagle dociera do ciebie, że osobą, która tak krzyczy, jesteś ty sam...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Poczekaj, niech ta męka się skończy.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Zapadnij w ciemność, ofiaro Koszmarnej Klątwy Gangroighydona.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~Ostatnim odgłosem, który do ciebie dociera, przebijając się przez ścianę twojego krzyku, jest wrzask Mortego...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~'Statua', która, jak nietrudno się domyślić, była w rzeczywistości skamieniałym Gangroighydonem, po prostu sobie odeszła, nie trudząc się nawet najbardziej symbolicznymi przeprosinami.~ */
  IF ~~ THEN REPLY #66516 /* ~Odejdź.~ */ EXIT
END

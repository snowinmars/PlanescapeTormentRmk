// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~Socha vypadá, jako by měla představovat nějaké zuřivé prohlášení. Sochař dokonale zachytil esenci zuřivosti, jenom vytesané vrásky na krku a čele musely zabrat několik měsíců práce, než se je podařilo dokonale zachytit. Celou sochu pokrývají tenké praskliny. K jejímu podstavci je připevněna plaketa.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Použij na sochu Gorgonskou protilátku.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Přečti si plaketu.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Prozkoumej praskliny.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Nechej sochu být.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~Na plaketě stojí: 'Tato socha je údajně konečný osud Etherserianského kouzelníka Gangroighydona. Při útoku konklávy soupeřících kouzelníků během vrcholu jeho šílenství byl zasažen kouzlem, které změnilo jeho maso na kámen. Říká se, že Gangroighydon byl zmražen ve chvíli, kdy jeho rty začala opouštět hrozivá kletba, prokletí tak hrozivé, že *nikdy* nemělo být proneseno ústy žijícího člověka.'~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Použij na sochu Gorgonskou protilátku.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Prozkoumej sochu.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Nechej sochu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~Opatrně jsi prozkoumal trhliny, které se jako síť jemných černých žilek rozpínají po povrchu sochy. Na jednom místě, blízko paže, je sekce prasklá na tolik, že by se jeden kousek kamene možná dal oddělit.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Odlom kousek.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Odlom kousek.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Přečti si plaketu.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Nechej sochu být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~Pevně jsi uchopil část paže a udeřil jsi do ní svým kladívkem. Je slyšet zvuk kovu dopadajícího na kámen a ze sochy se odlamuje štěpina kamene velikosti dýky.~ */
  IF ~~ THEN REPLY #31544 /* ~"Mám to..."~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~Jak se uvolňuje, náhle cítíš, jak ti na ruku dopadají nějaké kapky... vidíš, jak se v očích sochy vytvořily slzy, když jsi od paže oddělil štěpinu. Rychle - a tiše - vracíš štěpinu zpět a odstupuješ od plačící sochy.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Použij na sochu Gorgonskou protilátku.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Prozkoumej sochu.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Přečti si plaketu.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Nechej sochu být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~Uchopil jsi část paže, kde jsou zformovány praskliny, a silně jsi škubl. Nic. Budeš potřebovat kladivo, pokud budeš chtít oddělit ten kousek kamene. Malé kladivo, protože mezi tělem a paží sochy je málo místa, takže větší kladivo... například nějaké bojové... by ti bylo k ničemu.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Použij na sochu Gorgonskou protilátku.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Prozkoumej sochu.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Přečti si plaketu.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Nechej sochu být.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~Rozetřel jsi odporně páchnoucí tekutinu po soše. Socha se podivně otřásá a lehce září. Sleduješ, jak se socha pohybuje a nadechuje. Oči Gangroighydona se naplňují žhavou, pomstychtivou zuřivostí.~ */
  IF ~~ THEN REPLY #31559 /* ~"Zdravím..."~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Zakryj si uši.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Vezmi nohy na ramena a uteč.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Než stačíš cokoli udělat, z úst kouzelníka vylétá řada podivných slov. Jak mluví, cítíš agónii, palčivou bolest, která se jako náhlá vlna zuřícího žáru rozlévá po tvém těle a zažírá se do tvé kůže. Náhle jsi slepý, tvé oči praskly, vyletěly z důlků jako roztříštěné oči. Slyšíš hrozivý řev, plný neuvěřitelné bolesti a uvědomuješ si, že ten řev pochází z tvých plic...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Počkej, dokud horor neskončí.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Upadni to temnot, oběti Gangroighydonovy Příšerné Kletby.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~Poslední věc, kterou slyšíš, dokonce i přes vlastní řev, je křik Morta...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~'Socha' - ve skutečnosti zkamenělý kouzelník Gangroighydon - je pryč. Nejspíš se beze všeho sebral a odešel pryč.~ */
  IF ~~ THEN REPLY #66516 /* ~Odejdi.~ */ EXIT
END

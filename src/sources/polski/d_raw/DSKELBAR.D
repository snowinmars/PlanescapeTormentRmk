// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSKELBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSKELBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2565 /* ~Szkielet odwraca się do ciebie grzechocząc. Jego kości są przywiązane do siebie paskami skóry, a z ramion zwiesza mu się poplamiona winem, zielona tunika.~ */
  IF ~~ THEN REPLY #2567 /* ~"Ładna tunika. Szczerze."~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2568 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  Global("Skeleton_Examine","GLOBAL",0)
~ THEN REPLY #2569 /* ~Przyjrzyj się szkieletowi dokładnie.~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2566 /* ~Przyjrzyj się szkieletowi dokładnie.~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #7072 /* ~"Co powiesz na ten szkielet, Morte? Może z niego będzie dla ciebie dobre ciało?"~ */ EXTERN ~DMORTE~ 127
  IF ~~ THEN REPLY #7073 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2570 /* ~Szkielet nie odpowiada.~ */
  IF ~~ THEN REPLY #2571 /* ~"Świetnie się z tobą gada, kościsty. Życzę zdrowia."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2572 /* ~Szkielet nic nie odpowiada. Wygląda na to, że jest już martwy zbyt długo, żeby odpowiadać na twoje pytania.~ */
  IF ~~ THEN REPLY #2573 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #7069 /* ~Ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Paski te są przymocowane do żelaznych nitów wetkniętych w stawy kościotrupa. Szkielet jest w dobrym stanie. Na jego świeżo wybielonych kościach nie widać ani kawałka ciała.~ */
  IF ~~ THEN REPLY #7074 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #7070 /* ~Tak jak w przypadku większości szkieletów w Kostnicy, ktoś związał kości tego szkieletu skórzanymi paskami tak, że teraz przypominają muskuły i ścięgna. Jednak w przeciwieństwie do kościotrupów z Kostnicy, w stawach tego nie tkwią żadne żelazne nity... niestety, nie możesz dojrzeć, w jaki sposób zostały one połączone. Szkielet wydaje się być w dobrym stanie. Na jego świeżo wybielonych kościach nie widać ani kawałka ciała.~ */
  IF ~~ THEN REPLY #7075 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

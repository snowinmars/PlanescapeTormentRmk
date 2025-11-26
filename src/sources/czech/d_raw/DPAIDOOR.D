// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~Na první pohled je jasné, že dveře do téhle pasáže jsou vlastně jen malba. Umělec obratně využil stínu vrhaného obloukem stavby a jemným střídáním barev vtiskl dveřím zdání opravdovosti.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"Jsi si jistá, že jsou to dveře, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Zavři oči a otevři dveře.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Prozkoumej dveře.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Nechej "dveře" být.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~Zavřel jsi oči, přistoupil ke dveřím a natahuješ k nim ruku... ke svému překvapení jsi nahmatal kliku. S mírným odporem se dveře otevřely. Vidíš úzkou chodbu vedoucí do středu budovy, odkud slyšíš vzdálené kvílení.~ */
  IF ~~ THEN REPLY #47823 /* ~"Čas to prozkoumat..."~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Krom obratnosti umělce není na malbě nic zajímavého. "Dveře" jsou nakresleny na stěně z hrubého kamene - pod obrazem dřeva jasně cítíš chlad kamene a hrubou omítku.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"Jsi si jistá, že jsou to dveře, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Zavři oči a otevři dveře.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Nechej "dveře" být.~ */ EXIT
END

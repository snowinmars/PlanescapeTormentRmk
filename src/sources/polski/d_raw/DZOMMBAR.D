// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~Zombie wpatruje się w ciebie nic nie widzącymi oczyma. Zaszyto mu usta, a wokół ciała, w kilku miejscach, widać owinięte bandaże. Od ciała emanuje słaba woń alkoholu.~ */
  IF ~~ THEN REPLY #2587 /* ~"Więc jak... widziałeś tu coś interesującego?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~Zombie w dalszym ciągu wpatruje się w ciebie.~ */
  IF ~~ THEN REPLY #2590 /* ~"A zatem w porządku. Miło było z tobą pogadać. Żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~Ten zombie nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #2586 /* ~"A zatem żegnaj."~ */ EXIT
END

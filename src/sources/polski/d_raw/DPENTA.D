// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~Widzisz przed sobą pusty pentagram. Powietrze w nim jest suche i zimne. Cała okolica jest przesiąknięta atmosferą wielkiego zła.~ */
  IF ~~ THEN REPLY #54185 /* ~Zostaw go w spokoju.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~Obejrzyj zwój Dony Kiszał.~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~Powietrze na chwilę ciemnieje, czujesz jak wiatr przelatuje przez twoją głowę i serce. Kiedy wszystko się przejaśnia, przed tobą stoi ogromny bies!~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END

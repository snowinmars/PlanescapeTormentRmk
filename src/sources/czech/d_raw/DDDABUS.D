// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDDABUS~

IF ~  Global("Alley_Dabus_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50355 /* ~Vidíš mrtvolu nějakého dabuse. Zápach jeho rozkladu je pronikavý a podle pohledu na jeho ztuhlou nepřirozenou pozici se už projevila silná posmrtná ztuhlost. Přesto jsi tou scénou nějak nevysvětlitelně vzrušený.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50356 /* ~Použij na tělo svou moc Kosti-vyprávějte.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #50370 /* ~Nechej ztuhlého odpočívat v pokoji.~ */ DO ~SetGlobal("Alley_Dabus_SC","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #50357 /* ~Na několik sekund se zdálo, že se nic neděje. Pak najednou z otevřených úst mrtvoly vyšlo slabé zalapání chraplavého dechu.~ */
  IF ~~ THEN REPLY #50358 /* ~"Haló? Slyšíš mě?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50359 /* ~Několik okamžiků bylo ticho a pak se bez varování začaly ústa mrtvoly hýbat. "Jasně, že tě slyším! Jsem *mrtvý* ne hluchý... ukecaná hubo."~ */
  IF ~~ THEN REPLY #50360 /* ~"Klid... Jen ti chci dát pár otázek."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #50361 /* ~"Otázek? Připadám ti jako nějaká informační budka, naivo?"~ */
  IF ~~ THEN REPLY #50362 /* ~"Co je to s tím klábosením... nemáte snad vy dabusové mluvit v rébusech?"~ */ GOTO 4
  IF ~~ THEN REPLY #50369 /* ~"Můžeš mi aspoň říct, jak jsi zemřel, abych mohl dokončit ten zatracený úkol Těhotné Uličky a dostat se tak do Dolní čtvrti?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50363 /* ~"Sakra! Ty jsi ale stupidní, zjizvenče. Každý ví, že smrt je univerzální jazyk. K čemu by mi ksakru bylo, kdybych začal vyplivovat ty přitroublé podělané symboly, když bys mi nerozuměl ani zbla? Jak bys pak vyřešil tento úkol, ha? Kromě toho je toto jenom nezávazný rozhovor, osle."~ */
  IF ~~ THEN REPLY #50364 /* ~"Můžeš mi aspoň říct, jak jsi zemřel, abych mohl dokončit ten zatracený úkol Těhotné uličky a dostat se tak do Dolní čtvrti?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #50365 /* ~"Jasan, bílá tlamo. Hele, je to asi tak. Přišel jsem sem do Uličky zjistit, co se to k sakru dělo, že se tu budovy měnily a tak. No, vešel jsem tady do té stavby a další věc, co si pamatuju, bylo, jak se dveře a okna jen tak samy od sebe zavřely. Byl jsem uvězněný bez možnosti úniku. Zkoušel sem si probourat cestu ven, ale kdykoliv jsem ze zdi kus urazil, budova jakoby se sama opravovala."~ */
  IF ~~ THEN REPLY #50366 /* ~"Díky, byl jsi mi velkým přínosem."~ */ DO ~SetGlobal("Know_Dead_Dabus","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #50367 /* ~"Není zač, troubo!"~ */
  IF ~~ THEN REPLY #50368 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #50371 /* ~Vidíš mrtvolu nějakého dabuse. Zápach jeho rozkladu je pronikavý a podle pohledu na jeho ztuhlou nepřirozenou pozici se už projevila silná posmrtná ztuhlost. Přesto jsi tou scénou nějak nevysvětlitelně vzrušený.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #50372 /* ~Použij na tělo svou moc Kosti-vyprávějte.~ */ GOTO 1
  IF ~~ THEN REPLY #50373 /* ~Nechej ztuhlého odpočívat v pokoji.~ */ EXIT
END

IF ~  GlobalGT("Alley_Dabus_SC","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #50374 /* ~Mrtvý Dabus už ti nemá co říci. Zkus to znovu, až sem Steve vloží konečný dialog (a Arccos ho přeloží).~ */
  IF ~~ THEN REPLY #50375 /* ~Odejdi.~ */ EXIT
END

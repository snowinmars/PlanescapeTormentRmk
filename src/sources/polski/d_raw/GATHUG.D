// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"Powiedziano mi, że możesz teraz spokojnie przechodzić przez terytorium Kolczastych Aniołów, trepie. Nie nadużywaj tego przywileju."~ */
  IF ~~ THEN REPLY #34577 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"Zaczekaj tutaj. Ktoś przybędzie, by z tobą pomówić."~ */
  IF ~~ THEN REPLY #34579 /* ~"Nie licz na to. Zanim on się pojawi, dawno mnie tu nie będzie."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"Dlaczego nie powitać go twoją krwią? Najpierw trochę jej utoczę."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"W porządku. Zaczekam tutaj."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"Zapłaciłeś, odejdziesz wolno. Korzystaj z tego póki możesz."~ */
  IF ~~ THEN REPLY #34583 /* ~"Dzięki, z pewnością tak zrobię. Żegnaj."~ */ EXIT
END

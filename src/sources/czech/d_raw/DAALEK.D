// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~Vidíš staršího muže s dlouhými bílými vlasy a ošlehanou žlutou pletí. Stojí rovně, bez hrbení, i když je na první pohled velmi starý. Usmívá se a lehce se ti uklonil.~ */
  IF ~~ THEN REPLY #33863 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"Já tebe taky, kamaráde. Jak ti posloužím?" Pozvedl obočí a čeká na tvou odpověď.~ */
  IF ~~ THEN REPLY #33866 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"Mám zájem o nějaká kouzla."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"Zajímalo by mně, co máš na prodej."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~Zamračil se. "Promiň, kámo, ale já prodávám předměty magické povahy, ne informace. Pokud potřebuješ informace, budeš si je muset získat někde jinde."~ */
  IF ~~ THEN REPLY #33871 /* ~"Mám zájem o nějaká kouzla."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"Ukaž mi, co máš na prodej."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Prázdný uzel~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~Vidíš Aaleka, obchodníka s magií. "Dobrej den, kámo, rád tě zase vidím. Čím ti můžu posloužit?"~ */
  IF ~~ THEN REPLY #33878 /* ~"Ukaž mi znovu své zboží."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~Objel pohledem obchod. "Promiň, kámo, já prodávám jenom magické předměty. Promluv si s Cinderem. Má stánek támhle vedle pece, u východu."~ */
  IF ~~ THEN REPLY #33881 /* ~"Ukaž mi, co máš na prodej."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"Děkuju ti, sbohem."~ */ EXIT
END

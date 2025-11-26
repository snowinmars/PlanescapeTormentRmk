// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~FINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~Voici les notes du défunt linguiste Fin Andlye. Elles ont trait aux recherches qu'il a menées sur la langue de l'Uyo… qui semble incroyablement similaire aux notes que tu as trouvées dans la boîte à énigmes à douze facettes.~ */
  IF ~~ THEN REPLY #50377 /* ~Parcours-les attentivement pour voir si ça te rappelle quelque chose.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~J'ai compulsé les notes de Fin Aldye, le linguiste, et je me suis rendu compte que je connaissais déjà le langage utilisé pour écrire le texte du dodécaèdre. Il s'agit de la langue des Uyos. Je vais enfin être capable de lire ce satané truc.~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~Range-les.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~En lisant les notes de Fin Andlye concernant le langage perdu de l'Uyo, tu as des palpitations comme si des souvenirs te revenaient… des souvenirs de ce langage.

Tu te souviens de lettres, de mots, de phrases jusqu'à ce que, comme si un vent étrange emportait la couche de fumée empoisonnée au-dessus de la Grande Fonderie - le langage se révèle une nouvelle fois à toi dans son intégralité. Tu devrais réussir à lire ce qui est écrit sur le dodécaèdre maintenant.~ */
  IF ~~ THEN REPLY #50381 /* ~Range les notes.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~Voici les notes du défunt linguiste Fin Andlye. Elles ont trait aux recherches qu'il a menées sur la langue de l'Uyo.~ */
  IF ~~ THEN REPLY #50383 /* ~Range-les.~ */ EXIT
END

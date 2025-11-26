// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~Stříbrné kladivo~ */
  IF ~~ THEN REPLY #167 /* ~Stříbrné kladivo~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~STŘÍBRNÉ KLADIVO
Poškození: 1-4 Drcením 
Rychlost: 6
Váha: 6
Zařazení: Kladiva
Použitelné pouze pro bojovníky

Toto je malé válečné kladivo. Hlava kladiva je pokryta slabou vrstvou stříbra, která je na mnoha místech poškrábaná. Možná bylo kladivo dříve používáno k nějakým obřadním účelům.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~Bojová Sekera~ */
  IF ~~ THEN REPLY #172 /* ~BALZAMOVACÍ TEKUTINA
Specialita:
   +2-8 k životům
   +1 k obranným bodům
Váha: 1
Použitelné pouze pro Bezejmenného a Morteho

Toto je uzavřená lahvička s balzamovací tekutinou. Je používána jako konzervační prostředek pro mrtvá těla. Pach tekutiny je více než přiměřený, aby zakryl pach rozkládajících se těl, na která je tekutina používaná. Účinky balzamovací tekutiny jsou dočasné.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~PAKLÍČE
+5% k Otevírání zámků
Váha: 0
Použitelné pouze pro zloděje.

Tyhle kovový věcičky jsou používány k otevírání tuhých zámků.~ */
  IF ~~ THEN REPLY #173 /* ~BOJOVÁ SEKERA
Poškození: 1-8 Sekáním
Rychlost: 7
Váha: 7
Zařazení: Sekery
Použitelné pouze pro bojovníky

Tato mohutná sekera je zbraň s ostřím na obou stranách a navrchu je zakončená ostrým hrotem. Ostří je velice ostré a dlouhá rukojeť dovoluje jejímu majiteli při rozmáchnutí použít značné síly.~ */ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"Hou, cestovateli! Teď jsi na území Ostrých andělů... jdi si promluvit s Krystall, naší šéfkou. Chce ti něco říct."~ */
  IF ~~ THEN REPLY #3365 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"Poslouchej, co ti řeknu: se mnou nemluv. Jdi za Krystall. Jdi za Krystall. Jdi za Krystall. Chápeš?"~ */
  IF ~~ THEN REPLY #3566 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"Hej, kámo... díky za toho vrahouna. Myslím, že mluvím za všechny, když řeknu, že jsme ti vděční. Krystall určitě."~ */
  IF ~~ THEN REPLY #3568 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"Oceňujem, že nám chceš pomoct s tím vrahounem. Hodně štěstí!"~ */
  IF ~~ THEN REPLY #3570 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"To zažene Shivy pryč! Ulička je naše!"~ */
  IF ~~ THEN REPLY #3572 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"Pouč ty Shivský parchanty, jak se mají slušně chovat!"~ */
  IF ~~ THEN REPLY #3574 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"Opovažuješ se ukázat tady ten svůj ksicht? Zemři!"~ */
  IF ~~ THEN REPLY #3576 /* ~Odejdi.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END

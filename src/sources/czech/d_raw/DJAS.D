// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~Mladá žena - vlasy rozcuchané, oblečení potrhané -- se na tebe pokouší usmát, ale moc jí to nejde, protože hystericky vzlyká. "Děkuju ti! Děkuju ti *moc!* Jmenuju se Jasilya. Poslouchej... Teď musím jít, cizinče, ale znovu: děkuju ti!"~ */
  IF ~~ THEN REPLY #57141 /* ~"Žádný problém."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~Žena na tebe jenom zírá. "Zachránil jsi mě... děkuju ti *mnohkrát*! Nebýt tebe, byla bych mrtvá... nebo bych dopadla ještě hůř..." Rozevřela ruce a snaží se tě obejmout.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Přitáhni ji k sobě a polib ji.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Přitáhni ji k sobě a polib ji.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Nechej ji, ať tě obejme.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Ustup.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~Silně tě stiskla, její tvář, vlhká od slz, se zaryla do tvé hrudi. Po chvíli ustoupila a podívala se na tebe z úsměvem. "Musím jít... ale musím ti říct tohle: 'děkuju ti.' Nezapomenu na tvou dobrotu. Sbohem, poutníku."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"Sbohem."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~Zrudla, sklopila pohled. "Oh... já nechtěla... no..." Vzhledla, s úsměvem na tváři. "Sbohem, cizinče, *děkuju* ti na stotisíckrát! Nezapomenu na tvou dobrotu."~ */
  IF ~~ THEN REPLY #57150 /* ~"Jasně. Sbohem."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Jasilya se na tebe usmála, přestala čistit. "Vítám tě, můj zachránče! Znovu ti děkuju. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #57152 /* ~"Hledám místo, kde bych mohl strávit noc."~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"Teď zrovna ne. Sbohem, Jasilyo."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~Usmála se na tebe. "Oh... tak to si budeš muset promluvit s mým otcem."~ */
  IF ~~ THEN REPLY #57156 /* ~"Díky. Sbohem, Jasilyo."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~Když tě objala, omotal jsi kolem ní své ruce a přitiskl rty na její.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~Cukla sebou a jemně se vymanila z tvého sevření. Nervózně se usmála. "Uh, sbohem, cizinče. Děkuju ti. Já... nezapomenu na tvou šlechetnost."~ */
  IF ~~ THEN REPLY #57159 /* ~"Jistě. Sbohem."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~Když tě objala, omotal jsi kolem ní své ruce a přitiskl rty na její. Cukla sebou a jemně se vymanila z tvého sevření. Nervózně se usmála. "Uh, sbohem, cizinče. Děkuju ti. Já... nezapomenu na tvou šlechetnost."~ */
  IF ~~ THEN REPLY #57161 /* ~"Jistě. Sbohem."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~Žena se potí a těžce oddechuje. "Prosím...  prosím... zachraň mě před nimi."~ */
  IF ~~ THEN REPLY #67819 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"Pomoz mi! Prosím, zab je, než mě zotročí!"~ */
  IF ~~ THEN REPLY #68098 /* ~"Udělám, co budu moci..."~ */ EXIT
END

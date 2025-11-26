// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"Díky všem Mocnostem. Konečně jsi tady, šéfíku. Dostaň mě odud!"~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"Co děláš tam nahoře?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"Proč?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"Pracuje se na tom, Morte, pracuje se na tom."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"Ta hnusná krysodlačí havěť si na mě počíhala a odvlekla mě do týdle chýše! No tak, šéfíku... vypadnem odsud! Vůbec se mi mezi těmahle sousedama nelíbí!"~ */
  IF ~~ THEN REPLY #28722 /* ~"Proč prostě neslítneš dolů?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"Když já nevím. Mezi těma ostatníma lebkama ti to móóóc sluší..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"Nejde to! Zkoušel jsem to! Chvátej, dostaň mě z týdle police, dřív než..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"Šéfíku, chytáš lelky, tak co takhle chytit Morteho... Musíme se vocaď dostat, dřív než..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"A do pr... ne!" Morte  začal rozhořčeně šeptat. "Nevyváděj žádný pitomosti... zapíše tě do Knížky mrtvejch dřív, než se na něj stačíš ošklivě podívat."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Morte hlasitě promluvil. Ale jeho hlas zněl zuboženě, utrápeně - nějak jinak. Je zřejmé, že 'Lothar nejni žádnej nýmand, kerýmu se můžeš plíst pod nohy', jak by řekl Morte. "On mě chce zpátky. Hele, pane, nechte nás jít a my na to zapomenem. Necháme si to pro sebe, okej?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Morte hlasitě promluvil. "On mě chce zpátky. Hele, pane, nechte nás jít a my na to zapomenem. Necháme si to pro sebe, okej?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"Todle mi vyhovuje, šéfíku, prostě mi to stačí. Nech toho, jasan? Prostě najdi nějakou lebku a vrať se zpátky pro mě."~ */
  IF ~~ THEN REPLY #28724 /* ~"Fajn. Já se pro něj vrátím, Lothare. Zatím sbohem."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"Mně to ale nevyhovuje, Morte. S tebou si to vyřídím, Lothare."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"Šéfe, ne! Proti němu nevyhraješ!" Morte zní strašně rozzuřeně. "Von je jeden z nejmocnějších mocných v celým Sigilu!"~ */
  IF ~~ THEN REPLY #28726 /* ~"To je špatný. Vrať ho zpátky, Lothare."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"Fajn. Vrátím se pro něj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"Šéfe, nevšímej si toho! Nech to plavat!"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~Je to čistá polička z volným místem - velikosti lebky - mezi dvěmi šklebícími se lebkami.~ */
  IF ~~ THEN REPLY #54292 /* ~Nechej to být.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~Je to čistá polička z volným místem - velikosti lebky - mezi dvěmi šklebícími se lebkami. Tohle bylo Morteho místo, dokud tady ještě přebýval.~ */
  IF ~~ THEN REPLY #54291 /* ~Nechej to být.~ */ EXIT
END

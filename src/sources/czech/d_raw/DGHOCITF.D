// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~Ghúlí samice zapáchá krví a mršinami. Dlouhé vlasy, ve kterých se jí hemží brouci a červi, si ze svých žlutých očí odhrnula nebezpečně vypadajícím pařátem. Její maso má nechutně zelenou barvu a je pokryto hnilobou a boláky.~ */
  IF ~~ THEN REPLY #19705 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Nechej ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~Ghúlice zamhouřila oči a zavrčela na tebe. Její jazyk - skoro půl stopy dlouhý - vyjel ven a oblízl její odporné rty.~ */
  IF ~~ THEN REPLY #19707 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~Ghúlice se na tebe dál hladově dívá. Svírá a rozevírá pěsti, jako by bojovala s pokušením vrhnout se na tebe a nakrmit se.~ */
  IF ~~ THEN REPLY #19709 /* ~"Uklidni se a odpověz mi na mé otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~Ghúlice na tebe zasyčela: "Ticho, maso! Nemluvila! Já neposloucháš maso! Slyšela jen tvoje srdce, krev jak ona v tvojich žilách, sladká, mňam mňam krev... chutné maso, srdce..." Z koutku úst jí vytéká slina, dopadá na zaprášené dlaždice na podlaze. "NEMLUVILA!"~ */
  IF ~~ THEN REPLY #19711 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~Ghúlice na tebe zasyčela. "Pryč! Jdeš pryč! Já *nemluvila* s masem, já *neposlouchala* maso! JDEŠ!"~ */
  IF ~~ THEN REPLY #19712 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~Ghúlí samice zapáchá krví a mršinami. Dlouhé vlasy, ve kterých se jí hemží brouci a červi, si z ze svých žlutých očí odhrnula nebezpečně vypadajícím pařátem. Její maso má nechutně zelenou barvu a je pokryto hnilobou a boláky.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~Tato samice ghúla páchne krví a mršinou. Po jejích dlouhých provazcovitých vlasech, které si ze žlutých očí odhrnula surovými pařáty, lezou brouci a červi. Její kůže má nezdravě zelenou barvu a je pokryta hnijícími a mokvajícími boláky.~ */
  IF ~~ THEN REPLY #50423 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Nechej ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

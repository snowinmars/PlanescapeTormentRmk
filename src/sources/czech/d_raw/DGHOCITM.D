// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITM~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19675 /* ~Slintající žlutooký ghúl páchne krví a mršinami. Vrtá se mezi svými zakroucenými tesáky dlouhými špinavými drápy, přitom neustále nasává vzduch a čenichá. Jeho maso nabralo odporně zelenou barvu a je pokryto hnilobou a vředy.~ */
  IF ~~ THEN REPLY #19683 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #19684 /* ~Nechej ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19676 /* ~Ghúl zamhouřil oči a zavrčel na tebe. Jeho jazyk - skoro půl stopy dlouhý - vyjel ven a oblízl jeho odporné rty.~ */
  IF ~~ THEN REPLY #19685 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #19686 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19677 /* ~Ghúl se na tebe dál hladově dívá. Svírá a rozevírá pěsti, jako by bojoval s pokušením vrhnout se na tebe a nakrmit se.~ */
  IF ~~ THEN REPLY #19687 /* ~"Uklidni se a odpověz mi na mé otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #19688 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19678 /* ~Ghúl na tebe zasyčel: "Ticho, maso! Nemluvila! Já neposloucháš maso! Slyšela jen tvoje srdce, krev jak ona v tvojich žilách, sladká, mňam mňam krev... chutné maso, srdce..." Z koutku úst mu vytéká slina, dopadá na zaprášené dlaždice na podlaze. "NEMLUVILA!"~ */
  IF ~~ THEN REPLY #19689 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19679 /* ~Ghúl na tebe zasyčel. "Pryč! Jdeš pryč! Já *nemluvila* s masem, já *neposlouchala* maso! JDEŠ!"~ */
  IF ~~ THEN REPLY #19690 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19680 /* ~Slintající žlutooký ghúl páchne krví a mršinami. Dlouhými špinavými drápy se vrtá mezi svými zakroucenými tesáky, přitom neustále nasává vzduch a čenichá. Jeho maso nabralo odporně zelenou barvu a je pokryto hnilobou a boláky.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 202
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50419 /* ~Tento slintající žlutooký ghúl páchne krví a mršinou. Šťourá se ve svých křivých zubech dlouhými špinavými drápy a neustále natahuje vzduch kolem sebe. Jeho kůže má nezdravě zelenou barvu a je pokryta hnijícími a mokvajícími boláky.~ */
  IF ~~ THEN REPLY #50420 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #50421 /* ~Nechej ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

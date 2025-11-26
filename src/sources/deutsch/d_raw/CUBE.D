// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~CUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~Dieses kleine Metallspielzeug ist ein Replik eines würfelähnlichen Wesens mit riesigen Augen auf einer seiner Seiten. Das Spielzeug hat zwei Beine, zwei Arme, zwei Flügel, die sich zusammenfalten lassen, und mindestens achtzehn Gelenkknoten. Vielleicht ist es ein Sammlerstück.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Hantier mit dem Spielzeug und probier aus, ob irgendwas passiert.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Beweg die Arme und mach Schwertkampfgeräusche.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~Das Spielzeug *klickt* und *surrt*, als du die Uhrwerkgelenke bewegst. Im Handumdrehen hat der kleine Würfel alle imaginären Gegner bezwungen, die du ihm entgegengestellt hast, und er nimmt danach sofort wieder seine Ausgangsposition ein.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Hantier mit dem Spielzeug und probier aus, ob irgendwas passiert.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Schwinge mit seinen Armen und mach aufmunternde Laute.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Schwinge mit seinen Armen und mach aufmunternde Laute.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Schwinge mit seinen Armen und mach aufmunternde Laute.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Schwinge mit seinen Armen und mach aufmunternde Laute.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Scharen von imaginären Wesen bejubeln den Sieg des Würfels, und es scheint dir, als ob in dem einen Auge des Würfels eine winzige ölige Träne steht... Er ist ein Held, der größte Würfel, der jemals durch die Ebenen gezogen ist, und alle lieben ihn.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Hantier mit dem Spielzeug und probier aus, ob irgendwas passiert.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Steck den Würfel für zukünftige Kämpfe gegen das Multiversum ein.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Steck den Würfel für zukünftige Kämpfe gegen das Multiversum ein.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Scharen von imaginären Wesen aus allen Ebenen bejubeln den Sieg des Würfels, und es scheint dir, als ob in dem einen Auge des Würfels eine winzige Träne steht... Er ist ein Held, der größte Held, der jemals durch die Ebenen gezogen ist, und alle lieben ihn. In deiner Vorstellung wird er von Grace, der Gefallenen und Annah umarmt und mit Küssen bedeckt.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Hantier mit dem Spielzeug und probier aus, ob irgendwas passiert.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Beuge das linke Knie, bis das Bein einen 15-Grad-Winkel beschreibt, öffne beide Flügel, so weit es geht, und drehe dann den rechten Arm um 180 Grad in seinem Gelenk.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Seufze und steck den Würfel für zukünftige Kämpfe gegen das Multiversum ein.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Seufze und steck den Würfel für zukünftige Kämpfe gegen das Multiversum ein.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~Ein *Surren* und *Klicken* ist zu hören, dann explodiert ein grelles weißes Licht in deinen Händen...~ */
  IF ~~ THEN REPLY #22847 /* ~"W...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~Ein *Surren* und ein *Klicken* sind zu hören, dann macht es *Klick-Klick-Klick* und schließlich hört man ein tiefes *Surren.* Es geschieht nichts.~ */
  IF ~~ THEN REPLY #22869 /* ~Tröste dich, indem du die Arme schwenkst und Schwertkampfgeräusche von dir gibst.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"Schön, das hat also nicht funktioniert. Ich steck dich erst mal weg und versuch es an einem anderen Ort noch einmal."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~Du biegst und verdrehst die verschiedenen Gelenke des Spielzeugs. Dabei fällt dir auf, daß die Glieder oft urplötzlich wieder in ihre Ausgangsposition zurückkehren. Als du schließlich das linke Knie beugst, *knackt* das Ding merkwürdig und zittert in deinen Händen...~ */
  IF ~~ THEN REPLY #42940 /* ~Dreh den linken Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Dreh den rechten Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Zieh den linken Flügel lang.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Zieh den rechten Flügel lang.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Beug das rechte Knie.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~Mit einem leisen *Klicken* springen die Glieder des Spielzeugs plötzlich wieder in ihre Ausgangsposition zurück.~ */
  IF ~~ THEN REPLY #42952 /* ~Dreh den linken Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Dreh den rechten Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Zieh den linken Flügel lang.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Zieh den rechten Flügel lang.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Beug das linke Knie.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Beug das rechte Knie.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~Das Spielzeug *knackt* merkwürdig und zittert in deinen Händen.~ */
  IF ~~ THEN REPLY #42964 /* ~Dreh den linken Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Dreh den rechten Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Zieh den linken Flügel lang.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Zieh den rechten Flügel lang.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Beug das rechte Knie.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~Das Spielzeug gibt ein leises *Surren* von sich.~ */
  IF ~~ THEN REPLY #42976 /* ~Dreh den linken Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Dreh den rechten Arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Zieh den rechten Flügel lang.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Beug das rechte Knie.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~Das Spielzeug *summmmt* leise und wird immer wärmer.~ */
  IF ~~ THEN REPLY #42987 /* ~Dreh den linken Arm.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Dreh den rechten Arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Dreh den rechten Arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Dreh den rechten Arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Beug das rechte Knie.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Leg den Würfel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~Ein *Surren* und *Klicken* ist zu hören, dann explodiert ein grelles weißes Licht in deinen Händen...~ */
  IF ~~ THEN REPLY #42999 /* ~"W...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~Das schwarz geschuppte Reptil ragt ganze zweieinhalb Meter in die Höhe. Seine Größe wird jedoch durch seine dünne, schlangenartige Statur ausgeglichen. Es zieht einen langen Greifschwanz hinter sich her und seine ledernen Flügel sind hinter dem Rücken verhakt. Dem Wesen entströmt ein starker Essiggeruch... und nicht wenig Hitze. Es scheint dich nicht zu bemerken.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"Sei gegrüßt."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"Sei gegrüßt."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~Das Geschöpf senkt langsam seinen Kopf, um dich anzuschauen. Es legt seine schuppenbewehrte Stirn in Falten, öffnet den Mund und läßt ein rauchiges, heiseres Fauchen ertönen. Du merkst, wie die Hitze, die das Geschöpf ausstrahlt, zunimmt.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"Ich würde gerne einen Moment mit Dir reden."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"Ich würde gerne einen Moment mit Dir reden."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"Ich würde gerne einen Moment mit Dir reden."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~Das Geschöpf öffnet seinen Mund und entblößt eine Reihe schwarzer Fangzähne. Flammen züngeln um seine Schultern und Arme, als es ein langes, röchelndes Fauchen ausstößt.~ */
  IF ~~ THEN REPLY #7725 /* ~"Beruhige dich doch! Ich will doch bloß mit dir reden."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Zisch zurück.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~Das Geschöpf brüllt und springt dann auf dich zu!~ */
  IF ~~ THEN REPLY #7730 /* ~Verteidige Dich...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~Das Geschöpf spricht mit rauher, fauchender Stimme, die einen Klang hat wie zwei sich aneinderreibende rauhe Steine. Es faucht einige Zeit, wobei seine heisere Stimme mal lauter und mal leiser wird.~ */
  IF ~~ THEN REPLY #7732 /* ~"Äh... was?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~Das Geschöpf knurrt. "Ich habe dir NICHTSSS zu sssagen." Die Augen des Scheusals verengen sich zu Schlitzen. "Wenn du bleibssst, wird dein Blut die Erde hier tränken."~ */
  IF ~~ THEN REPLY #7735 /* ~"Ich wollt' dir bloß ein paar Fragen stellen..."~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"Versuch's doch, dann werden wir ja sehen, wessen Blut hinterher die Straße tränken wird."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Zieh dich zurück, und laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~Plötzlich schnuppert das Geschöpf und wendet sich mit einem eigenartigen Fauchen von dir ab. Es scheint einen unangenehmen Geruch wahrgenommen zu haben.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"Ich sagte, ich würde gern mit dir sprechen."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"Ich sagte, ich würde gern mit dir sprechen."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~Die Augen des Geschöpfs richten sich auf Annah und verengen sich zu Schlitzen. Das Geschöpf öffnet seinen Mund und entblößt eine Reihe schwarzer Fangzähne; Flammen züngeln um seine Schultern und Arme. Die Hitze, die es ausstrahlt, nimmt zu.~ */
  IF ~~ THEN REPLY #7743 /* ~"Hey! Ich rede mit dir!"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Laß das Wesen in Ruhe, und geh mit Annah davon.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~Die Augen des Geschöpfs richten sich auf Fall-from-Grace und verengen sich zu Schlitzen. Das Geschöpf öffnet seinen Mund und entblößt eine Reihe schwarzer Fangzähne; Flammen züngeln um seine Schultern und Arme. Die Hitze, die es ausstrahlt, nimmt zu.~ */
  IF ~~ THEN REPLY #7746 /* ~"Hey! Ich rede mit dir!"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Tritt zurück, nimm Grace mit und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~Das Geschöpf brüllt und springt dann auf Annah zu!~ */
  IF ~~ THEN REPLY #7749 /* ~"Verdammt...!"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~Das Geschöpf brüllt und springt dann auf Fall-from-Grace zu!~ */
  IF ~~ THEN REPLY #7751 /* ~"Verdammt...!"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~Dieses mit schwarzen Schuppen bedeckte Scheusal ragt acht Fuß in die Höhe - allerdings wird seine Größe durch seine schlanke, schlangenhafte Gestalt ausgeglichen. Er zieht einen langen Greifenschwanz hinter sich her, und seine ledrigen Flügel sind hinter seinem Rücken verschränkt. Ein starker Essiggeruch geht von dem Scheusal aus... sowie eine beachtliche Hitze. Es scheint dich zu ignorieren.~ */
  IF ~~ THEN REPLY #7753 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Laß den Abishai in Ruhe.~ */ EXIT
END

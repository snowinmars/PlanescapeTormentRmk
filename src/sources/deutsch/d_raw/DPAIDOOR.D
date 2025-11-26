// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~Was du in dem Torbogen zunächst für eine Tür gehalten hast, entpuppt sich als Bild. Der Künstler hat den Schatten des darüber verlaufenden Bogens und einige feine Struktureffekte genutzt, um der Tür den Anschein von Stofflichkeit zu geben.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"Bist du sicher, daß dies die Tür ist, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Schließ die Augen, und öffne die Tür.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Untersuch die Tür.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Laß die "Tür" in Ruhe.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~Du schließt die Augen, faßt an die Tür und fummelst an ihr herum... Und zu deiner Überraschung findest du einen Griff. Mit einem leichten Ruck geht die Tür auf. Ein enger Gang führt in das Gebäude, und aus dem Inneren hörst du ein entferntes Geheul.~ */
  IF ~~ THEN REPLY #47823 /* ~"Zeit, reinzugeh'n..."~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Außer dem Talent des Künstlers ist nichts Besonderes an dem Bild festzustellen. Die "Tür" ist auf eine rauhe Steinwand aufgemalt worden - du kannst den Stein und den Mörtel unter der bemalten Holzstruktur fühlen.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"Bist du sicher, daß dies die Tür ist, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Schließ die Augen, und öffne die Tür.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Laß die "Tür" in Ruhe.~ */ EXIT
END

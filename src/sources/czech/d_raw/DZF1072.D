// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF1072.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF1072~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35114 /* ~Zápach formaldehydu, vycházející z této mrtvoly, je velice silný... jakoby ho někdo použil teprve nedávno, a to z docela rozumných důvodů: mrtvola je ve velmi pokročilém stádiu rozpadu. Chybí jí čelist a z lebky sklouzlo trochu masa, odhalujíc číslo "1072" vyryté do kosti.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35115 /* ~"Myslím, že tahle už na tom byla líp..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35132 /* ~"Myslím, že tahle už na tom byla líp..."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35133 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35134 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35139 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXTERN ~DMORTE~ 346
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35140 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35141 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35142 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35143 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35144 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35116 /* ~Tělo na tvůj hlas neodpovídá - možná s tím má co do činění fakt, že nemá čelist. Anebo zkrátka nemá co říct.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35117 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35130 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35131 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35135 /* ~Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35136 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35137 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35138 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35145 /* ~Mrtvola se nehýbe. Asi už ti neodpoví na žádnou otázku.~ */
END

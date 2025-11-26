// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH3~

IF ~  Global("Machine_3","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64340 /* ~Tento starověký stroj vypadá jako zapomenutá válečná relikvie. Většina stroje je zahalena v prachu, jen divný panel s pákami na přední straně ne. Zvláštní je, že místo kolem stroje se zdá narušené, jako by se kolem někdo 'nedávno' procházel -- možná v posledních málo letech.~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64341 /* ~Propátrej panel, pak zatáhni za páku označenou značkou 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64347 /* ~Propátrej panel, pak zatáhni za páku označenou značkou 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64352 /* ~Prozkoumej panel.~ */ GOTO 4
  IF ~~ THEN REPLY #64361 /* ~Nech stroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64342 /* ~Rychle najdeš páku označenou značkou 'X' a zatáhneš za ni. Pod tvým dotekem snadno povolí, pak se rozpadá do mlhy - hluboce se nadechneš, ale narozdíl od minula... se nic nestalo.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Když jsem zatáhl za páku na čvrté relikvii, vypadalo to, že se ve sklepení Pevnosti něco otevřelo... možná cesta ven? Pokusím se to vypátrat a dostat se z tohodle pekla ven... ~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64343 /* ~V dáli slyšíš burácející zvuk, jako by se právě *něco* otevřelo a sklepem se žene ječící vítr. Jak se snažíš příjít na to, odkud zvuk přichází, náhle si uvědomuješ, že se rozpadáš a stáváš součástí větru...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64344 /* ~"*A teď* se stane co...?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64345 /* ~"*A teď* se stane co...?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64346 /* ~"*A teď* se stane co...?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64348 /* ~Rychle najdeš 'X'-kem označenou páku a zatáhneš za ni. Pod tvým dotekem snadno povolí, pak se rozpadá do mlhy - hluboce se nadechneš, a jak kolem tebe mizí zdi, znovu tě pohltí závrať...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64349 /* ~"Kam to sakra *jd-*"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64350 /* ~"Kam to sakra *jd-*"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64351 /* ~"Kam to sakra *jd-*"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64353 /* ~Panel má řadu soukolí a pák - pod nimi je množství vyškrábaných značek, vypadají, že tam byli spěšně vyřezány dýkou. Na některých nějsou žádné značky, jiné pod sebou nesou jednoduchá lomítka a pod jednou jedinou je 'X.' I když nevíš proč, je ti jasné, že páka s označením 'X' ti nějak pomůže opustit toto místo.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64354 /* ~Zatáhni za páku označenou značkou 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~V Pevnosti jsem našel divný stroj - vypadal jako zvláštní druh děla, ale mám podezření, že je to nějaký druh 'brány' nebo zámkového mechanismu Pevnosti. Když jsem za to zatáhnul, transportovalo mě to do další izolované části Pevnosti - na balkon čnící nad hlavní galerii. Vím, že potřebuji najít další stroje a nějak je aktivovat. To musí být moje vracející se vzpomínka - Jestliže byla zpráva na hodinách znamením, jedna z mých inkarnací už tudy musela někdy projít.~ */ GOTO 5
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64359 /* ~Zatáhni za páku označenou značkou 'X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~V Pevnosti jsem našel divný stroj - vypadal jako zvláštní druh děla, ale mám podezření, že je to nějaký druh 'brány' nebo zámkového mechanismu Pevnosti. Když jsem za to zatáhnul, transportovalo mě to do další izolované části Pevnosti - na balkon čnící nad hlavní galerii. Vím, že potřebuji najít další stroje a nějak je aktivovat. Nevím proč, ale mám zvláštní pocit, že už jsem to někdy dřív dělal. ~ */ GOTO 5
  IF ~~ THEN REPLY #64360 /* ~Nech stroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #64355 /* ~Pod tvým dotekem snadno povolí a k tvému překvapení se rozpadá do mlhy... a ta se šíří k tvojí ruce, která taky začíná blednout, a pak dále po tvé paži, a přemáhá tě závrat a zdi kolem tebe mizí...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64356 /* ~"C-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64357 /* ~"C-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64358 /* ~"C-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_3","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #64362 /* ~Tento starověký stroj vypadá jako zapomenutá válečná relikvie. Většina stroje je zahalena v prachu, jen divný panel s pákami na přední straně ne. Není tu žádná známka toho, za kterou páku si dříve zatáhnul - je to pryč, jako by to nikdy neexistovalo.~ */
  IF ~~ THEN REPLY #64363 /* ~Nech stroj být.~ */ EXIT
END

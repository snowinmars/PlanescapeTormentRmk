// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~"Hej! Tahle oblast je nepřístupná! Nemáš povolení pro vstup!"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~"Jak dostanu povolení?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Ukaž symbol strážci: "Já mám symbol." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Lež: "Já mám oprávnění."~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~"Mužeš s námi úcivě promluvit nebo se pokusit přes nás dostat." Odpudivě se zasměje. "Poslední možnost bych ti nedoporučoval."~ */
  IF ~~ THEN REPLY #64559 /* ~"Nějak to zkusím."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~"Dobrá, dobrá. Tak já jen odejdu."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~Důkladně prozkoumá symbol. "Je to v pořádku, pane. Mohu ti pomoci s něčím jiným?"~ */
  IF ~~ THEN REPLY #64561 /* ~"Ne. Dobrý den."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~"Ne."~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~"Pak mi to musíš ukázat." Čeká na nějakou tvoji odezvu, pak pokračuje: "Jestliže chceš hrát hru, příjdeš na to, že mám hodně málo trpělivosti -- a trvá velmi krátkou dobu, než mi začne vřít krev."~ */
  IF ~~ THEN REPLY #64563 /* ~"Pak by jsi s tím měl něco udělat."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~"Dobrá. Nemusíš být agresivní. Sbohem."~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~"Mohu ti pomoci, pane?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~"Jak se dostanu přes ty dveře?"~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Ukaž kupón strážci: "Já mám kupón." ~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Lež: "Já mám oprávnění projít těmito dveřmi."~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~"Zapomeň na to."~ */ EXIT
END

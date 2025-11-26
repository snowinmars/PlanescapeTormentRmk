// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : COPEARC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~COPEARC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46723 /* ~Ten miedziany kolczyk wygląda na bardzo stary. Chyba kiedyś się go nosiło, ale nie ma on nigdzie haczyka ani żadnego innego mechanizmu pozwalającego przyczepić go do ucha. W jego środku, jednakże, znajduje się seria dziwnych nacięć.~ */
  IF ~~ THEN REPLY #46724 /* ~Przyjrzyj się nacięciom.~ */ GOTO 1
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46725 /* ~Włóż paznokieć w nacięcie, które wskazywał trójkąt na okręgu widzianym na czole zombiego #79.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46726 /* ~Odłóż kolczyk.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46727 /* ~Nacięcia są równo rozłożone wzdłuż wnętrza kolczyka - po bliższym zbadaniu, przypominają ci małe ząbki. Z pewnością zrobione są przez człowieka, ale nie jesteś w stanie się domyślić, czemu miałyby służyć.~ */
  IF ~  Global("Know_Copper_Earring_Secret","GLOBAL",1)
~ THEN REPLY #46728 /* ~Włóż paznokieć w nacięcie, które wskazywał trójkąt na okręgu widzianym na czole zombiego #79.~ */ DO ~AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #46729 /* ~Odłóż kolczyk.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #46730 /* ~Wciskasz paznokieć w trzecie nacięcie od góry i naciskasz je do wewnątrz. Rozlega się *klik* i góra kolczyka otwiera się. Nie tylko można go teraz nosić, ale wygląda na to, że w środku znajduje się skrytka.~ */
  IF ~~ THEN REPLY #46731 /* ~Potrząśnij kolczykiem, zobacz, czy coś wypadnie.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46732 /* ~Potrząsasz kolczykiem, ale nic z niego nie wypada. Cokolwiek było tam ukryte, już tego nie ma.

UWAGA: Odkrycie zapięcia w kolczyku pozwoli co go teraz nosić. Dodatkowo skrytka może uczynić go cenniejszym dla handlarza.~ */
  IF ~~ THEN REPLY #46733 /* ~Odłóż kolczyk.~ */ DO ~TransformPartyItem("CopEarC","CopEarO",1,0,0)
~ EXIT
END

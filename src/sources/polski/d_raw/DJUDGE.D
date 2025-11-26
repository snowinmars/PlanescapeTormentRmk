// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~Gdy podchodzisz mężczyzna o skwaśniałym wyrazie twarzy unosi brew. Jego głos ma barwę typową dla przekarmionego, aroganckiego szlachcica. "Pozwól, że przypomnę ci mój panie, że przeszkadzasz w procesie urzędowym, uważaj więc na to, co mówisz: jestem potężnym sędzią, i nie spodoba mi się, jeśli podzielisz los..." Pokazuje na mężczyznę, który ma być skazany "...tego raczej *pożałowania godnego* człowieka."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który przede wszystkim doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który przede wszystkim doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który przede wszystkim doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku. To przez takie czyny Klątwa trafiła do Tartaru... Musimy z tym skończyć, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku. To przez takie czyny Klątwa trafiła do Tartaru... Musimy z tym skończyć, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"'Oficjalny' proces? Wątpię. Nie wykonacie egzekucji na tym człowieku."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"Och?" Marszczy jedną krzaczastą brew, jednocześnie unosząc drugą. "A więc umieściłbyś siebie na ścieżce prawa? I *jak* zamierzasz powstrzymać egzekucję, mój panie?"~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku - to tylko kozioł ofiarny. *Niesłusznie* go skazujecie. Właśnie dlatego Klątwa stoczyła się do Tartaru... i to musimy powstrzymać, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku - to tylko kozioł ofiarny. *Niesłusznie* go skazujecie. Właśnie dlatego Klątwa stoczyła się do Tartaru... i to musimy powstrzymać, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"Zabijając kata... i ciebie, jeśli taka zajdzie potrzeba."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~Jego twarz przybiera wszystkie kolory tęczy. "M-m-może o-oceniliśmy go z-zbyt p-pochopnie, Łaskobójco. Straże! Uwolnić tego człowieka!" Potulnie uśmiecha się do Vhailora. "Dziękuję za twą bezcenną pomoc, panie."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Unosi obydwie brwi. "Cco? *Ośmielasz się*?! Straże! Pojmać go, albo zabić, jeśli zajdzie taka potrzeba!"~ */
  IF ~~ THEN REPLY #57348 /* ~Zaatakuj sędziego.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Zaatakuj straże.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Zaatakuj kata.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*Niesłusznie?* Szybko zapomniałeś, że jestem sędzią, mój panie. Ja i tylko ja decyduję co jest w tym mieście słuszne lub nie!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"Ale jeśli wykonacie egzekucję, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"Ale jeśli wykonacie egzekucję, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"Ale jeśli wykonacie egzekucję, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"Niech będzie co ma być, nie wykonacie tej egzekucji."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"Nieważne więc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~Sędzia marszczy swe grube brwi tak, że przypominają krzaczaste, białe 'V'. Patrzy na ciebie, potem na oficjela, potem znów na ciebie. "Mówisz sprytnie i mądrze zarazem... i dziękuję za twą cenną pomoc. Docenimy ją, zarówno miasto, jak i oskarżony. Nie będzie już żadnych pochopnych egzekucji. Straże! Uwolnić tego człowieka."~ */
  IF ~~ THEN REPLY #57365 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"Znowu? I czegóż to chcesz tym razem, mój panie?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"Ten mężczyzna to tylko kozioł ofiarny. Jeśli poddacie go egzekucji, zwiększy to tylko chaos, który najpierw doprowadził to miasto to Tartaru. Musimy zakończyć to szaleństwo, tak byśmy mogli przenieść Klątwę tam, gdzie jej miejsce... zanim *wszyscy* zginiemy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku - to tylko kozioł ofiarny. *Niesłusznie* go skazujecie. Właśnie dlatego Klątwa stoczyła się do Tartaru... i to musimy powstrzymać, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"Nie wolno wam wykonać egzekucji na tym człowieku - to tylko kozioł ofiarny. *Niesłusznie* go skazujecie. Właśnie dlatego Klątwa stoczyła się do Tartaru... i to musimy powstrzymać, jeśli chcemy by miasto-brama wróciło do Zewnętrza."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"Nie mogę na to pozwolić... nie wykonacie na nim egzekucji."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~Gdy podchodzisz mężczyzna o skwaśniałym wyrazie twarzy unosi brew. "Nie masz tu czego szukać, mój panie, oszczędź mi nerwów... Sugerowałbym, że powinieneś odejść."~ */
  IF ~~ THEN REPLY #57387 /* ~Odjedź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"Znowu?" Sędzia wzdycha rozpaczliwie. "Nie masz tu czego szukać, mój panie, oszczędź mi nerwów... Sugerowałbym, że powinieneś odejść."~ */
  IF ~~ THEN REPLY #57390 /* ~Odjedź.~ */ EXIT
END

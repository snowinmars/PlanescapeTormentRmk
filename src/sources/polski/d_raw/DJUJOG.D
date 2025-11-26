// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~Olbrzymi strażnik wykrzykuje rozkazy do cywili zgromadzonych wokół niego. Gdy mu przeszkadzasz, spogląda na ciebie przez otwory hełmu. "Czego chcesz, szpicu? I pośpiesz się, zanim zaczniemy robotę."~ */
  IF ~~ THEN REPLY #53213 /* ~"Co tu się dzieje?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"A na co to wygląda, skurlu?! Mamy zamiar splądrować ten skład. Chcesz się przyłączyć, czy nie? Bo to nie będzie jakiś żałodupny bajzel... robimy to *prawidłowo*, a ja wydaję rozkazy."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"To co robisz tylko pogarsza sytuację. Zamiast grabić, weź tych ludzi i pomóż w obronie murów - żeby miasto mogło wrócić na Zewnętrze."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"To co robisz tylko pogarsza sytuację. Zamiast grabić, weź tych ludzi i pomóż w obronie murów - żeby miasto mogło wrócić na Zewnętrze."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"Przestańcie: nikt nie będzie rabował, gdy jestem w pobliżu."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"Mam co innego do roboty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~Strażnik unosi przyłbicę hełmu, żeby móc splunąć ci pod nogi. "Ha! Zjazd mi z oczu, skurlu; mamy coś do 'zgrabienia'."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"Przestańcie: nikt nie będzie rabował, gdy jestem w pobliżu."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~Mimo że ma spuszczoną przyłbicę czujesz, że szydzi. "Czyżby? No cóż..." Wyciąga swą masywną broń. "Więc będziemy musieli jakoś temu zaradzić."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"Jeśli uda nam się wprowadzić trochę spokoju, pomożemy miastu wrócić do Zewnętrza. Pomyślcie tylko: gdy już potwory opanują Klątwę, jak długo będziecie żyć i cieszyć się łupami?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"To co robisz tylko pogarsza sytuację. Zamiast grabić, weź tych ludzi i pomóż w obronie murów - żeby miasto mogło wrócić na Zewnętrze."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"To co robisz tylko pogarsza sytuację. Zamiast grabić, weź tych ludzi i pomóż w obronie murów - żeby miasto mogło wrócić na Zewnętrze."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"Ale... o cholera, masz rację." Krzyczy na grabieżców, którzy zebrali się wokół niego: "Dobra! Słyszeliście go, do roboty! A jak ktoś o tym rozpowie, gdy miasto powróci na swe miejsce... nie żyje! A teraz, do roboty! Ruszać się!" Odwraca się do ciebie. "A co do *ciebie*: masz łeb, choć na to nie wyglądasz. Dobry jesteś."~ */
  IF ~~ THEN REPLY #53235 /* ~"Dzięki. Żegnaj."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~Udało mi się dotrzeć do grupy obywateli miasta, jak na ironię dowodzonej przez strażnika, i przekonać ich, aby zaniechali rabunku i pomogli bronić miasta.~ */ EXIT
END

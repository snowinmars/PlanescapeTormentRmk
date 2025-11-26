// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Na czole tego truposza ktoś atramentem napisał numer "1201". Atrament rozlał się na oczy, policzki i szczękę trupa. Kiedy tak wzrokiem śledzisz ślady atramentu na jego twarzy, zauważasz, że zatrzymał się on na szwie zamykającym wargi trupa i zahaczył o coś, co wygląda na róg listu z wiadomością.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34954 /* ~Spróbuj wyciągnąć wiadomość.~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34958 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34959 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ GOTO 2
  IF ~~ THEN REPLY #34962 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~~ THEN REPLY #34963 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34955 /* ~List zlał się z posoką w ustach zombiaka. Gdybyś spróbował go wyciągnąć poprzez ścieg krzyżykowy na ustach truposza, papier podarłby się na strzępy. Próba nacięcia trupa, w celu dostania się do wiadomości zniszczyłaby ją - musisz więc znaleźć delikatny sposób na usunięcie szwów, zanim ją wyjmiesz.~ */
  IF ~~ THEN REPLY #34956 /* ~Posłuż się skalpelem, aby przeciąć szwy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34960 /* ~Szybkim ruchem rozcinasz nić zszywającą usta trupa. Jego żuchwa zwisa bezwładnie. Ostrożnie wyciągasz z jego ust notatkę… Pomimo stanu papieru jej treść nadal jest czytelna.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Ponownie zbadaj truposza.~ */ EXIT
END

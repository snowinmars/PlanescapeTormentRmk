// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1201~

IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34953 /* ~Na czole tego truposza ktoś atramentem napisał numer "1201". Atrament rozlał się na oczy, policzki i szczękę trupa. Kiedy tak wzrokiem śledzisz ślady atramentu na jego twarzy, zauważasz, że zatrzymał się on na szwie zamykającym wargi trupa i zahaczył o coś, co wygląda na róg listu z wiadomością.~ */
  IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
~ THEN REPLY #34954 /* ~Spróbuj wyciągnąć wiadomość.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34957 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34958 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 4
  IF ~~ THEN REPLY #34959 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #34962 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34955 /* ~List zlał się z posoką w ustach zombiaka. Gdybyś spróbował go wyciągnąć poprzez ścieg krzyżykowy na ustach truposza, papier podarłby się na strzępy. Próba nacięcia trupa, w celu dostania się do wiadomości zniszczyłaby ją - musisz więc znaleźć delikatny sposób na usunięcie szwów, zanim ją wyjmiesz.~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #34956 /* ~Posłuż się skalpelem, aby przeciąć szwy.~ */ DO ~SetGlobal("1201_Note_Retrieved","GLOBAL",1)
GiveItemCreate("N1201",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 2
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #45122 /* ~"Hmmm. Być może znalazłoby się tu coś, co mogłoby przeciąć te szwy..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #34960 /* ~Szybkim ruchem rozcinasz nić zszywającą usta trupa. Jego żuchwa zwisa bezwładnie. Ostrożnie wyciągasz z jego ust notatkę… Pomimo stanu papieru jej treść nadal jest czytelna.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #34961 /* ~Ponownie zbadaj truposza.~ */ GOTO 5
  IF ~~ THEN REPLY #45123 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 5.0 5.1 5.2
  SAY #45124 /* ~Mlecznobiałe oczy truposza wpatrują się w ciebie bezmyślnie.~ */
  IF ~~ THEN REPLY #45125 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 5.3
  SAY #45126 /* ~Truposz nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #45127 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
~ THEN BEGIN 5 // from: 2.0
  SAY #45128 /* ~Na czole tego trupa ktoś atramentem napisał numer "1201". Atrament rozlał się na oczy, policzki i szczękę trupa, przez co sam trup wygląda tak, jakby płakał. Jego szczęka zwisa otwarta, a strużka posoki wolno sączy się z kącika ust.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45129 /* ~"Przepraszam za przecięcie tych szwów... ale po prostu musiałem zobaczyć, co miałeś w ustach."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45130 /* ~"Przepraszam za przecięcie tych szwów... ale po prostu musiałem zobaczyć, co miałeś w ustach."~ */ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45131 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 3
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45132 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 4
  IF ~~ THEN REPLY #45133 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #45134 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

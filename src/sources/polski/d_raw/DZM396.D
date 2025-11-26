// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM396.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM396~

IF ~  HasItem("Bandage","ZM396")
~ THEN BEGIN 0 // from:
  SAY #34931 /* ~Ten trup włóczy się od płyty do płyty, bandażując leżące tam ciała. Na lewej skroni ma wyryty numer "396", a jego usta są zaszyte. Dostrzegasz, że truposz ma w ręku zwój bandaży... a bandaże wyglądają na zdatne do użycia.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34932 /* ~"Czy mogę pożyczyć te bandaże?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34935 /* ~"Czy mogę pożyczyć te bandaże?"~ */ GOTO 1
  IF ~~ THEN REPLY #34936 /* ~Spróbuj wziąć bandaże od zombiaka.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34937 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34940 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #34941 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #45106 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.3 4.0 4.1 4.2
  SAY #34933 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~  HasItem("Bandage","ZM396")
~ THEN REPLY #34934 /* ~Spróbuj wziąć bandaże od zombiaka.~ */ DO ~GiveItem("Bandage",Protagonist)
~ GOTO 3
  IF ~~ THEN REPLY #45107 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 4.3
  SAY #34938 /* ~Trup nie rusza się. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~~ THEN REPLY #34939 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.0
  SAY #45108 /* ~Zręcznym ruchem ręki wyjmujesz zwój bandaży z dłoni truposza. Nie wydaje się, aby cokolwiek zauważył; dalej łazi i bandażuje zwłoki.~ */
  IF ~~ THEN REPLY #45109 /* ~Ponownie zbadaj truposza.~ */ GOTO 4
  IF ~~ THEN REPLY #45110 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~  !HasItem("Bandage","ZM396")
~ THEN BEGIN 4 // from: 3.0
  SAY #45111 /* ~Ten trup włóczy się od płyty do płyty, bandażując ciała tam leżące. W dalszym ciągu wykonuje swoje obowiązki, nawet bez bandaży. Na lewej skroni ma wyryty numer "396", a jego usta są zaszyte.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45112 /* ~"Przepraszam, że wziąłem od ciebie te bandaże. Po prostu mnie się bardziej przydadzą niż tym zwłokom."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45113 /* ~"Przepraszam, że wziąłem od ciebie te bandaże. Po prostu mnie się bardziej przydadzą niż tym zwłokom."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45114 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45115 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~~ THEN REPLY #45116 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #45117 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

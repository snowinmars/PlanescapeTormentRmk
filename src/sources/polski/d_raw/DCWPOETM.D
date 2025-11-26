// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~Uwaga tego mężczyzny wydaję się być całkowicie poświęcona przysłuchiwaniu się odczytowi, który wygłasza jakiś podstarzały poeta.~ */
  IF ~~ THEN REPLY #28211 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Zostaw mężczyznę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~Mężczyzna odwraca się do ciebie, jednak poeta wciąż pozostaje w centrum jego uwagi. Mówi ściszonym głosem "I ty witaj." Przerywa na chwilę, po czym szepcze: Może to nie najlepsza poezja, jaką dane mi było słyszeć, ale całkiem zła też nie jest, jak sądzisz?"~ */
  IF ~~ THEN REPLY #28214 /* ~"Tak prawdę mówiąc to nie jestem pewny."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"Tak. To kiepski poeta."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"Nie. Uważam w sumie, że jest niezłym poetą."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"Mniejsza z tym... "Mam kilka pytań..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"Hmmm." Kiwa głową i na powrót zaczyna obserwować podstarzałego poetę.~ */
  IF ~~ THEN REPLY #28219 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~Spogląda na ciebie gniewnie i mówi ściszonym głosem: "Nie, panie, nie teraz. Zajęty jestem słuchaniem poezji tego mężczyzny. Żegnaj, panie."~ */
  IF ~~ THEN REPLY #28222 /* ~"Tylko kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~Wciąż mówi ściszonym głosem, teraz jednak używa brzmiącego groźniej tonu: "Zamilknij bądź odejdź, panie, bo inaczej będę zmuszony wezwać straże."~ */
  IF ~~ THEN REPLY #28225 /* ~"Dobrze, wezwij je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~Mężczyzna odwzajemnia ukłon, zasugeruje jednak wyraźnie, byś się nie odzywał.~ */
  IF ~~ THEN REPLY #28228 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Odejdź.~ */ EXIT
END

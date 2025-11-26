// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~To dziwacznie wyglądające stworzenie wygląda, jakby było krzyżówką owada ze zwierzęciem. Nogi ma przerośnięte, ramiona z kolei małe, niemal szczątkowe, do tego jasno nakrapianą pół-skorupę na plecach. Dochodzą do tego dwie pary owadzich skrzydeł, jak również malutkie czarne oczka i pyszczek, którym śmieje się radośnie.~ */
  IF ~~ THEN REPLY #21872 /* ~Pobaw się z Lim-Limem.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Zostaw Lim-Lima w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"Pijo! Pijo!" Lim-Lim podskakuje wesoło brzęcząc skrzydłami. Wygląda na to, że sprawia mu to ogromną radość.~ */
  IF ~~ THEN REPLY #21875 /* ~Pobaw się jeszcze z Lim-Limem.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Zostaw Lim-Lima w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~Próbujesz dać mu szybkiego kopniaka, ale on robi zwinny uskok. "Pijo!" Odwraca się i ucieka, brzęcząc skrzydłami.~ */
  IF ~~ THEN REPLY #21878 /* ~Puść go.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Goń go i spróbuj jeszcze raz kopnąć.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~Lim-Lim spogląda na ciebie. "Pijo! Pijo!" Jego skrzydła brzęczą radośnie, kiedy to zdaje sobie sprawę, że mu się przyglądasz. "Pijo!"~ */
  IF ~~ THEN REPLY #21880 /* ~Pobaw się z Lim-Limem.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Kopnij Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Zostaw Lim-Lima w spokoju.~ */ EXIT
END

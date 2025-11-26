// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~To olbrzymie urządzenie rozsadza wewnętrzna moc. Wygląda jak gigantyczny kwiat, lecz nie kwiat wzrosły na glebie naturalnym sposobem, ale sztucznie skonstruowany z rozmaitych części i ozdobiony metalowymi zbiornikami i kryzami. W oczy kłuje oszałamiająca plątanina pokręteł, dźwigni i wentylatorów.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Dopuść się sabotażu na mechanizmie ogniowym, u podstawy machiny.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Spróbuj pobawić się pokrętłami i dźwigniami.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Zostaw machinę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~Mechanizm ogniowy sprawia wrażenie złowieszczo kruchego. Przy akompaniamencie donośnego szczęku wyłączasz jego bezpieczniki. Odgłos maszyny zmienia się subtelnie, ale znacząco. Wyraźniej słyszysz różnicę pomiędzy poprzednim miarowym buczeniem, a bieżącym, zwiastującym rosnącą niestabilność maszynerii grzmotem. Chyba lepiej będzie, jak zaraz stąd odejdziesz.~ */
  IF ~~ THEN REPLY #66191 /* ~Odejdź.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~Nie wydaje się, aby twoje wysiłki dawały jakiś skutek.~ */
  IF ~~ THEN REPLY #66192 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~Potężne buczenie maszynerii przechodzi raptownie w wysoki gwizd. Jeżeli nie chcesz, aby eksplozja rozszarpała cię na drobne kawałki, odejdź stąd jak najszybciej.~ */
  IF ~~ THEN REPLY #66193 /* ~Odejdź.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

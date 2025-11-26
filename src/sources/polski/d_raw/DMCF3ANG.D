// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~Widzisz atrakcyjną, młodą kobietę w eleganckim ubraniu. Wydaje się chodzić bez celu, oglądając towary na sprzedaż.~ */
  IF ~~ THEN REPLY #37171 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~Mierzy cię spojrzeniem z góry na dół, po czym marszczy brwi. "Nie zadaję się z nieprzyjemnymi osobnikami. Sądząc po twoim wyglądzie, wpasowujesz się dość dobrze w tę kategorię. Odejdź precz, trepie."~ */
  IF ~~ THEN REPLY #37173 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Jej dezaprobata pogłębia się jeszcze i kładzie dłonie ma biodrach. "Nie obchodzi mnie to, trepie. Zostaw mnie w spokoju, albo wezwę straże!"~ */
  IF ~~ THEN REPLY #67883 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~Robi nieuprzejmy gest w twoją stronę. "Niech i tak będzie... Straże! Straże!"~ */
  IF ~~ THEN REPLY #37178 /* ~Odejdź zanim przyjdą.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~Kobieta odwraca się w twoją stronę i natychmiast cię rozpoznaje. Rzuca gniewne spojrzenie. "Co mam zrobić, żebyś zostawił mnie w spokoju, trepie?"~ */
  IF ~~ THEN REPLY #37179 /* ~"Gdybyś zechciała odpowiedzieć na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"Wybacz, odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~Robi nieuprzejmy gest w twoją stronę. "Nie chcę odpowiadać na twoje świrowate pytania. Znajdź sobie mędrca." Odprawia cię ręką. "Teraz zostaw mnie, albo wezwę straże!"~ */
  IF ~~ THEN REPLY #37181 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~Kobieta odwraca się w twoją stronę i natychmiast cię rozpoznaje. Rzuca gniewne spojrzenie. "Co mam zrobić, żebyś zostawił mnie w spokoju, trepie?" Wzdycha i podnosi ręce na znak odrazy. "Wezwałam już raz straże do ciebie, zawsze mogę to zrobić jeszcze raz... to może ostudzi twoje zapały."~ */
  IF ~~ THEN REPLY #37183 /* ~"Wezwij je..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"Dobrze, żegnaj."~ */ EXIT
END

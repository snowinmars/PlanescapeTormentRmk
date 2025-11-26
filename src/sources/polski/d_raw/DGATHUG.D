// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"Hej, podróżniku! Jesteś na terytorium Kolczastych Aniołów... idź porozmawiać z naszym przywódcą, Krystal. Ma ci coś do powiedzenia."~ */
  IF ~~ THEN REPLY #3365 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"Słuchaj tego co mówię: Nie rozmawiaj ze mną. Porozmawiaj z Krystal. Porozmawiaj z Krystal. Porozmawiaj z Krystal. Kumasz?"~ */
  IF ~~ THEN REPLY #3566 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"Hej, kolego... dzięki za usunięcie tego czujnego. Mówiąc, że to doceniamy, mówię w imieniu wszystkich. A na pewno w imieniu Krystal."~ */
  IF ~~ THEN REPLY #3568 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"Jasne, że doceniamy twoją pomoc z tym czujnym. Powodzenia!"~ */
  IF ~~ THEN REPLY #3570 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"To przepędzi Kosy z Ciemnej Alei! Aleja jest teraz nasza!"~ */
  IF ~~ THEN REPLY #3572 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"Daj Kosom nauczkę!"~ */
  IF ~~ THEN REPLY #3574 /* ~Odejdź.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"Ośmielasz się tutaj pokazywać? Giń, ty diabelskie nasienie!"~ */
  IF ~~ THEN REPLY #3576 /* ~Odejdź.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END

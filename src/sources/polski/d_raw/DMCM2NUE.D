// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37249 /* ~Widzisz starszego mężczyznę w prostym ubraniu. Jego blada, żółta skóra nosi oznaki starości. Kiedy podchodzisz, patrzy na ciebie ze znudzeniem.~ */
  IF ~~ THEN REPLY #37260 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37261 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37250 /* ~"A witaj i ty, młodziku. Czego tam chcesz ode mnie?"~ */
  IF ~~ THEN REPLY #37262 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37263 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37251 /* ~Marszczy brwi, a jego twarz znika niemal pod morzem zmarszczek. "Czasu na kilka mnie starczy, ale róbta to prędko."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37264 /* ~"Szukam kogoś o imieniu Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37265 /* ~"Miałem czaszkę i mi ją skradziono. Wiesz może, kto mógłby coś takiego zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #37266 /* ~"Możesz opowiedzieć mi o tej dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #37267 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37252 /* ~"Lotar... Nie mogem se przypomnieć takiego imienia. Ni umiem ci pomóc. Pospytuj w okolicy, ktoś pewnikiem bedzie coś wiedział."~ */
  IF ~~ THEN REPLY #37268 /* ~"Rozumiem. Wiesz, kto mógłby mi pomóc?"~ */ GOTO 4
  IF ~~ THEN REPLY #37269 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37253 /* ~Potrząsa głową. "Ni. Myśmy som proste ludzie i nie wściubiamy nosa w nie swoje sprawy." Robi znudzony wyraz twarzy.~ */
  IF ~~ THEN REPLY #37270 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37271 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37254 /* ~"Czaszki szukasz..." Wybucha śmiechem. "No masz ci los, takich rzeczy tom jeszcze nie słyszał. Nie wim, co ci mam powiedzieć."~ */
  IF ~~ THEN REPLY #37273 /* ~"Rozumiem. Wiesz, kto mógłby mi pomóc?"~ */ GOTO 4
  IF ~~ THEN REPLY #37272 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37255 /* ~Wzdycha i posyła ci znużone spojrzenie. "Słuchaj no, młodziku. Jestem tu, co by porobić se zakupy, a ty kupcem ni jesteś. Kapujesz o co mnie chodzi? Jeśli nie, to odydź!"~ */
  IF ~~ THEN REPLY #37274 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #37275 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37256 /* ~"Ale, ja nic nie wim. Do widzenia tobie." Odwraca się.~ */
  IF ~~ THEN REPLY #37276 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37257 /* ~Widzisz starszego mężczyznę w prostym ubraniu. Jego blada, żółta skóra nosi oznaki starości. Kiedy podchodzisz, patrzy na ciebie ze znudzeniem. "Znowu ty? Odydź!" Odwraca się.~ */
  IF ~~ THEN REPLY #37258 /* ~Odejdź.~ */ EXIT
END

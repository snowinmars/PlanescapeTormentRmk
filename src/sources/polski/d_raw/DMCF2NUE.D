// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF2NUE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF2NUE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37137 /* ~Widzisz starszą kobietę w prostym ubraniu. Jej blada, żółta skóra nosi oznaki starości. Kiedy podchodzisz, spogląda na ciebie ze znudzeniem.~ */
  IF ~~ THEN REPLY #37146 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #37147 /* ~Zignoruj ją.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37138 /* ~"I ty witaj, młodziku. Czego tam chcesz od starej Belle?"~ */
  IF ~~ THEN REPLY #37148 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37149 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37139 /* ~Marszczy brwi, a jej twarz niemal znika pod zmarszczkami. "Czasu na kilka mnie starczy, ale róbta to prędko."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37150 /* ~"Szukam kogoś, kto nazywa się Lotar, zwanego również Panem Kości..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37151 /* ~"Miałem czaszkę i mi ją skradziono. Wiesz może, kto mógłby coś takiego zrobić?"~ */ GOTO 5
  IF ~~ THEN REPLY #37152 /* ~"Możesz opowiedzieć mi o tej dzielnicy?"~ */ GOTO 6
  IF ~~ THEN REPLY #37153 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37140 /* ~"Lotar... ni mogem se przypomnieć takiego imienia. Ni umiem ci pomóc."~ */
  IF ~~ THEN REPLY #37154 /* ~"Rozumiem. Wiesz, kto może mi pomóc?"~ */ GOTO 4
  IF ~~ THEN REPLY #37155 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37141 /* ~Potrząsa głową. "Ni." Robi znudzony wyraz twarzy.~ */
  IF ~~ THEN REPLY #37156 /* ~"Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #37157 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37142 /* ~"Czaszki szukasz..." Wybucha śmiechem. "No masz ci los, takich rzeczy tom jeszcze nie słyszała. Nie wim, co ci mam powiedzieć."~ */
  IF ~~ THEN REPLY #37158 /* ~"Rozumiem. Wiesz, kto może mi pomóc?"~ */ GOTO 4
  IF ~~ THEN REPLY #37159 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #37143 /* ~Wzdycha. "Słuchaj no, młodziku. Jestem tu co by porobić se zakupy, a ty kupcem ni jesteś. Kapujesz o co mnie chodzi?"~ */
  IF ~~ THEN REPLY #37160 /* ~"Mam kilka innych pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #37161 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37144 /* ~"Ale, ja nic nie wim. Do widzenia tobie." Odwraca się.~ */
  IF ~~ THEN REPLY #37162 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #37145 /* ~Widzisz starszą kobietę w prostym ubraniu. Jej blada, żółta skóra nosi oznaki starości. Kiedy podchodzisz, spogląda na ciebie ze znudzeniem. "Czemuś sie uparł żeby mnie zawracać głowe? Odydź!" Odwraca się.~ */
  IF ~~ THEN REPLY #37163 /* ~Odejdź.~ */ EXIT
END

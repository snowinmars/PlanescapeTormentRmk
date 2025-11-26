// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10124 /* ~Widzisz podstarzałą kobietę odzianą w liche ubranie. Zdaje się, że włożyła sporo pracy w to, by wyglądać młodziej i atrakcyjniej niż jest w rzeczywistości. Gdy podchodzisz bliżej, wyczuwasz w powietrzu odór taniego wina.~ */
  IF ~~ THEN REPLY #10125 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #10126 /* ~Zignoruj ją.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10127 /* ~Odwraca się w twoją stronę i widzisz, że jej twarz czerwona jest od nadmiaru alkoholu. "Czeeeeść, ty tam. Szukasz... towarzystwa?" Uśmiecha się, po czym orientuje się, że widzi cię po raz pierwszy. "Oooch, ale żeś poharatany. C... Cóże się ci przytrafiło?"~ */
  IF ~~ THEN REPLY #10128 /* ~"Mógłbym ci zadać parę pytań?"~ */ GOTO 2
  IF ~~ THEN REPLY #10129 /* ~"Nie twoja sprawa."~ */ GOTO 6
  IF ~~ THEN REPLY #10130 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10131 /* ~Przysuwa się bliżej i kładzie swą dłoń na twej klatce piersiowej. "Py... Pytania są zbędne. Masz ty trochę brzdęku... a ja mam talenta. Mieszkam ot tu zaraz. Pódźmy tedy."~ */
  IF ~~ THEN REPLY #10132 /* ~"Nie jest to coś, co by mnie interesowało. Potrzebuję paru informacji od ciebie."~ */ GOTO 3
  IF ~~ THEN REPLY #10133 /* ~"Ile?"~ */ GOTO 4
  IF ~~ THEN REPLY #10134 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10135 /* ~Opiera dłonie o biodra. "Z... zrozum, trepie. Muszę czymś zarabiać, nie? Możeś zdziebko rozkojarzony, ale... czy ja wyglondam niby jaka głowa mądra? Jedyne odpowiedzi, jakie moge dać, masz 'tutaj'." Rozkłada swe ramiona przed tobą.~ */
  IF ~~ THEN REPLY #10136 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #10137 /* ~"Ile?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #10138 /* ~Śmieje się i chichocze. "E no, teraz to gadasz... Daj piątaka, a pokrzyczem ciutke dla ciebie. Ale mówić nie bendem." Spogląda na ciebie wyczekująco.~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10140 /* ~"Chodźmy..."~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 5
  IF ~  PartyGoldLT(5)
~ THEN REPLY #10139 /* ~"Przykro mi, nie mam akurat pieniędzy."~ */ EXIT
  IF ~~ THEN REPLY #10141 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10142 /* ~Prowadzi cię do swej klitki. Po upływie godziny wyprowadza cię na ulicę.
"Wpadnij jeszcze... Zaspokajanie to moja specjalność." Uśmiecha się i macha ci ręką na pożegnanie.~ */
  IF ~~ THEN REPLY #10143 /* ~"Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1
  SAY #10144 /* ~Rzuca ci gniewne spojrzenie. "Hej no... po co te gburstwa. Skoro nie chcesz być przyjaciel, nie bede traciła na ciebie czasu. Zjeżdżaj." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #10145 /* ~Zostaw ją w spokoju.~ */ EXIT
END

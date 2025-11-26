// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSGR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #43384 /* ~Podchodzi do ciebie szczupły, młody mężczyzna, o raczej zaniepokojonym spojrzeniu. "Wybacz mi po tysiąckroć, panie, ale szukam pewnego człowieka i wydaje mi się, że mógłbyś mi pomóc..."~ */
  IF ~~ THEN REPLY #43385 /* ~"Och? Jak to?"~ */ GOTO 2
  IF ~~ THEN REPLY #43817 /* ~"Wątpię. Żegnaj."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #43818 /* ~"Poświęć mi tylko chwilkę, panie... nie zajmie to więcej, niż parę sekund."~ */
  IF ~~ THEN REPLY #43819 /* ~"No dobra... o co chodzi?"~ */ GOTO 2
  IF ~~ THEN REPLY #43820 /* ~"Zostaw mnie w spokoju chłopcze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #43821 /* ~"Jestem posłańcem, panie, który szuka mężczyzny, o którym mówią, że nie może umrzeć... ma okropne blizny, a śmierć to dla niego nic, tylko irytująca błahostka. Pasujesz do tego, trzeba przyznać ogólnikowego opisu, jaki mi podano i zastanawiam się, czy to nie ty."~ */
  IF ~~ THEN REPLY #43822 /* ~"Tak, to ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43823 /* ~"Nie, to nie ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #43824 /* ~"Kto chce to wiedzieć?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0 7.0
  SAY #43825 /* ~Kiwa głową, nisko się kłaniając. "Oto więc wiadomość dla ciebie, panie: przysłała mnie pani o wysokiej pozycji, Pani Jolmi z Domu Syrma. Chce się z tobą spotkać w Gmachu Rozrywki, gdzie złoży ci pewną propozycję, której szczegółów nie znam. Jeśli zechcesz ją odszukać, ubrana jest w zielone jedwabie, wykończone złotem, a jej włosy mają kolor niebieskiej stali. Oto cała wiadomość, panie... Żegnaj."~ */
  IF ~~ THEN REPLY #43826 /* ~"Zaczekaj... gdzie jest Gmach Rozrywki?"~ */ JOURNAL #39487 /* ~Otrzymałem wiadomość, że kobieta zwana Jolmi z Domu Syrma chce mi złożyć pewną propozycję. Mam ją znaleźć w Gmachu Rozrywki. Nosi zielone jedwabie przyozdobione złotem, a jej włosy mają kolor błękitu.~ */ GOTO 4
  IF ~~ THEN REPLY #43827 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ JOURNAL #39487 /* ~Otrzymałem wiadomość, że kobieta zwana Jolmi z Domu Syrma chce mi złożyć pewną propozycję. Mam ją znaleźć w Gmachu Rozrywki. Nosi zielone jedwabie przyozdobione złotem, a jej włosy mają kolor błękitu.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43828 /* ~"W północno-wschodnim rogu tej części Dzielnicy Urzędników, panie. To wielka budowla i trudno jej nie zauważyć. Żegnaj, panie."~ */
  IF ~~ THEN REPLY #43829 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 6.1
  SAY #43830 /* ~"Cóż, trudno. Żegnaj, panie i przepraszam za kłopot. Żegnaj."~ */
  IF ~~ THEN REPLY #43831 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #43832 /* ~"Wynajęła mnie bogata szlachcianka, Jolmi Syrma, panie."~ */
  IF ~~ THEN REPLY #43833 /* ~"Jestem tym, którego szukasz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Msgr_1","GLOBALLaw",1)
SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43834 /* ~"Cóż, trafiłeś nie na tego co trzeba."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Msgr_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #43835 /* ~Młody posłaniec kłania się grzecznie. "Znów się spotykamy, panie."~ */
  IF ~~ THEN REPLY #43836 /* ~"Chcę ci tylko powiedzieć, że to ja jestem tym, którego szukasz."~ */ DO ~SetGlobal("Jolmi","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43837 /* ~"Tak... tylko przechodziłem. Żegnaj."~ */ EXIT
END

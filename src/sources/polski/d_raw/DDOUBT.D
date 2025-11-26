// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~Na kościach tego pradawnego, ożywionego trupa nie ma już ani skrawka ciała... jedynie kilka kolorowych łachmanów, które zdają się bardziej służyć za ozdobę, niż za ubranie. Wpatruje się on w podłogę, potrząsa głową i kiwa podbródkiem w zamyśleniu.~ */
  IF ~~ THEN REPLY #21891 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~Nie odpowiada, najwidoczniej zagubiony w myślach.~ */
  IF ~~ THEN REPLY #21893 /* ~"Powiedziałem 'Witaj'."~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~Podnosi wzrok i, ujrzawszy cię, wzdycha wyrzucając z siebie obłok pyłu. "Wiele spraw zaprząta mój umysł. I wolałbym pozostać z nimi sam na sam."~ */
  IF ~~ THEN REPLY #21895 /* ~"Czy mógłbym ci jakoś pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"Obojętne. Mam kilka pytań, na które oczekuję odpowiedzi."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"W takim razie szczęście ci tu nie sprzyja, gdyż nie mam dla ciebie odpowiedzi. Zostaw mnie."~ */
  IF ~~ THEN REPLY #21898 /* ~"Chwila... Czy jest coś, w czym mógłbym ci pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"Nie. Muszę podjąć trudną decyzję. To wszystko."~ */
  IF ~~ THEN REPLY #21900 /* ~"Co to za decyzja?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~Rozmawiałem ze szkieletem, który rozważa porzucenie bytu nieumarłego, aby umrzeć śmiercią ostateczną. Zdaje mi się, że Soe mógłby być zainteresowany rozmową z nim.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"Rozumiem. Pozostawię cię więc z twymi przemyśleniami... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"Kontynuować moje... 'życie'... w tym miejscu czy umrzeć. Czy osiągnąć w końcu Prawdziwą Śmierć, o której mi opowiadano."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"Prawdziwą Śmierć?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"Wiesz, może byłoby to najlepsze? Wszystkie stworzenia powinny poszukiwać Prawdziwej Śmierci."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"Nie widzę powodów, dla których miałbyś porzucić swoje życie."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"Sądzę, że być może nadszedł dla ciebie czas, by wyzbyć się woli życia."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"Pozostawię cię z twymi przemyśleniami. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"Całkowity brak emocji. Prawdziwa Śmierć wyrywa cię z cienia egzystencji. Mawiają, że tylko poprzez nią można osiągnąć wolność."~ */
  IF ~~ THEN REPLY #21932 /* ~"Nie widzę powodów, dla których miałbyś porzucić swoje życie."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"Sądzę, że być może nadszedł dla ciebie czas, by wyzbyć się woli życia."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"Pozostawię cię z twymi przemyśleniami. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"Rozważę twoje słowa. Teraz proszę cię, byś zostawił mnie sam na sam z moimi przemyśleniami. Żegnaj."~ */
  IF ~~ THEN REPLY #21935 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~Szkielet wygląda na zakłopotanego. Potrząsa głową i mamrocze do siebie.~ */
  IF ~~ THEN REPLY #21936 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

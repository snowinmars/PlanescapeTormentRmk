// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~Kiedy mu przerywasz, jegomość ów marszczy wściekle brwi i odwraca się do ciebie z niewesołym uśmiechem na ustach. Ale kiedy tylko jego wzrok pada na twoją sylwetkę, twarz momentalnie mu łagodnieje, grymas gniewu ustępuje miejsca minie niewinnego zakłopotania i zdobywszy się, po niejakiej walce wewnętrznej, na oddanie ci lekkiego ukłonu, odwraca się z powrotem do swego kompana.~ */
  IF ~~ THEN REPLY #67936 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~Człowiek ten odwraca się do ciebie, i bardzo niechętnie przerywając konsumpcję napoju, odpowiada: "Nie jestem w stanie ci pomóc. Nie znam odpowiedzi na twoje pytania... Dlatego najlepiej będzie, jeżeli zostawisz mnie w spokoju. Żegnaj."~ */
  IF ~~ THEN REPLY #67938 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~Człowiek ten odwraca się do ciebie i obrzuca cię niechętnym spojrzeniem. "Co? Nie widzisz, że jestem zajęty? Gdybym chciał z tobą prowadzić dyskusję, sam bym ją zaczął." Odwraca się z powrotem, kręcąc głową nad twoją nieuprzejmością.~ */
  IF ~~ THEN REPLY #67940 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~Człowiek ten odwraca się do ciebie i obrzuca cię nerwowym spojrzeniem. "Słuchaj. Nie mam zamiaru zabraniać ci przychodzenia tutaj. Ale żadna siła nie zmusi mnie, żeby z tobą rozmawiać. Ot, co." Odwraca się z powrotem i ponownie skupia uwagę na trzymanym w dłoniach alkoholu.~ */
  IF ~~ THEN REPLY #67942 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~Nie ma ci nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #67944 /* ~Odejdź.~ */ EXIT
END

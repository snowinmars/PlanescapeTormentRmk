// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Ten niemłody już człowiek markotnie spogląda na dno kufla. Dostrzegasz, że sponiewierane cynowe naczynie, które jest głównym punktem jego kontemplacji, nie jest zwykłym przedmiotem; widać na jego powierzchni delikatnie zarysowane znaki runiczne i rysunki brodatych twarzy, a cały kufel skuwa powłoka cienkiego lodu. Kiedy się doń zbliżasz, mężczyzna podnosi wzrok: "Witaj... panie..." Jest chyba lekko wstawiony.~ */
  IF ~~ THEN REPLY #3023 /* ~Tatuaż złości~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"Czy coś się stało?"~ */ EXIT
END

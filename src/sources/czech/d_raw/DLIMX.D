// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~Tato divně vypadající bytost se zdá být svým původem stejně tak zvíře, jako hmyz. Nohy jsou přerostlé, ale ruce jsou naproti tomu malé, až zakrnělé. Přes celá záda se táhne světle skvrnitý krunýř. Příšerka se též honosí párem hmyzích křídel a má malinkatá černá očka a ústa, která se jakoby stále radostně smějí.~ */
  IF ~~ THEN REPLY #21872 /* ~Pomazli se s Lim-Limem.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Nakopni Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Nechej Lim-Lima být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"Piyo! Piyo!" Lim-Lim radostně řádí a jeho křídla bzučí. Zdá se, že má z náklonnosti obrovskou radost.~ */
  IF ~~ THEN REPLY #21875 /* ~Pomazli se s Lim-Limem ještě trochu.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Nakopni Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Nechej Lim-Lima být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~Pokusil ses nasadit Lim-Limovi rychlý kopanec, ale on hbitě uskočil z cesty. "Piyo!" Otáčí se a s bzučením křídel prchá.~ */
  IF ~~ THEN REPLY #21878 /* ~Nechej ho jít.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Běž za ním, zkus ho znova nakopnout.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~Lim-Lim k tobě vzhlíží. "Piyo! Piyo!" Jeho křídla radostně bzučí, když si uvědomuje, že mu věnuješ pozornost. "Piyo!"~ */
  IF ~~ THEN REPLY #21880 /* ~Pomazli se s Lim-Limem.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Nakopni Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Nechej Lim-Lima být.~ */ EXIT
END

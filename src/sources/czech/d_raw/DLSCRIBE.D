// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~Muž se na tebe nesměle usmál a lehce se ti uklonil. "Na chvíli jsem si myslel, že jsi jeden z mužů mého zaměstnavatele. Jak se mi ulevilo, když jsem zjistil, že nejsi!"~ */
  IF ~~ THEN REPLY #51724 /* ~"Proč? Proč jsi tady?"~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"To je dobře. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~Muž provinile přikývl." Ano, jsem stále zde." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #51727 /* ~"Proč?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"Ano, všiml jsem si. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"Už jsem nemohl ani chvilku vydržet tu práci v Záznamové sub-hale sedm, tak jsem utekl. Kdybych šel jenom domů, můj šéf by pro mě někoho poslal, ten... ten tyran! Proto se schovávám tady. Budu se tu ještě chvíli povalovat, než se vrátím k mému zatracenému pracovnímu stolu."~ */
  IF ~~ THEN REPLY #51730 /* ~"Tak sbohem."~ */ EXIT
END

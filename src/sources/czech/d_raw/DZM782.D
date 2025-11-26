// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM782.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM782~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #24708 /* ~Když ses přiblížil, mrtvola se zastavila a nepřítomně na tebe pohlédla. Na čele má vyřezáno číslo "782" a její rty jsou pevně sešity. Kolem sebe šíří slabý zápach formaldehydu.~ */
  IF ~  NearbyDialog("DMorte1")
~ THEN REPLY #24709 /* ~"Hledám klíč... nemáš ho náhodou ty?"~ */ EXTERN ~DMORTE1~ 34
  IF ~  !NearbyDialog("DMorte1")
~ THEN REPLY #24712 /* ~"Hledám klíč... nemáš ho náhodou ty?"~ */ GOTO 1
  IF ~~ THEN REPLY #24713 /* ~Prohledej mrtvolu, zda nemá klíč.~ */ GOTO 2
  IF ~~ THEN REPLY #24714 /* ~"Skvěle jsem si s tebou pohovořil. Sbohem."~ */ GOTO 2
  IF ~~ THEN REPLY #24717 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #24710 /* ~Mrtvola nereaguje.~ */
  IF ~~ THEN REPLY #24711 /* ~"V pořádku. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #42304 /* ~Nechej mrtvolu odpočívat v pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 0.3
  SAY #24715 /* ~Tahle mrtvola vypadá, že ten klíč má. Drží jej pevně v levé ruce, palcem a ukazováčkem jej svírá dokola se smrtící silou. Vypadá to, že budeš muset nebožtíkovi odříznout ruku, abys jej dostal.~ */
  IF ~~ THEN REPLY #24716 /* ~"Potřebuji tenhle klíč, mrtvolo... vypadá to, že se na tomto světě už moc neohřeješ."~ */ DO ~ForceAttack(Protagonist,"ZM782")
~ EXIT
  IF ~~ THEN REPLY #42305 /* ~Nechej mrtvolu odpočívat v pokoji.~ */ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"Lidssssský šmejde! ZHEBNIIIII!" S těmi slovy se na tebe vrhá krysodlak.~ */
  IF ~~ THEN REPLY #29304 /* ~"Zatraceně, chci si jenom popovídat!"~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~Odpudivý krysodlak na tebe syčí: "Co chceš, člověče?"~ */
  IF ~~ THEN REPLY #29305 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"Kde je Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"Co je to za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"Znáš Mantuoka?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~Krysodlak tě pohrdavě přejíždí pohledem. "To není tvoje sssstarosssst, člověče." A přitom se švitořivě směje.~ */
  IF ~~ THEN REPLY #29310 /* ~"Tak dobrá. Kde je Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"Co je to za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"Kde je Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"Pán ... někde tady musí být. Určitě... tě sleduje." Jeho vousy před tebou cukají. "Teď vypadni! Nechci už s tebou mluvit!"~ */
  IF ~~ THEN REPLY #29314 /* ~"Tak jo."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"To je naše hnízdo. Nebudeš se sem často vracet člověče, že? Takové jako ty tady nepotřebujeme."~ */
  IF ~~ THEN REPLY #29315 /* ~"Nemusíš se s tím trápit. Myslím, že ten smrad by mě odrovnal tak jako tak. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"Pravděpodobně ne. Není to zrovna nic příjemného. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"Mantuok? Co od Mantuoka chceš? Mantuok si tě najde, pokud potřebuješ Mantuoka." Švitoří a ustupuje před tebou.~ */
  IF ~~ THEN REPLY #29317 /* ~"Pak mi řekni, kde můžu najít Lothara."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"Tak mi teda řekni něco o tomto místě."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"Dobrá. Sbohem."~ */ EXIT
END

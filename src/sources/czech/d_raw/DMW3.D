// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~Vidíš staršího vlasatého muže, který zřejmě dohlíží na trhovce. Občas vyštěkne nějaký rozkaz na pracovníka, který ho okamžitě plní. Zamračil se, když ses přiblížil.~ */
  IF ~~ THEN REPLY #47966 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~Zamračil se ještě více. "Znám tě, ty seš ten vůl, co pobíhá kolem a ptá se na blbosti." Zírá na tebe a čeká, jestli se to pokusíš popřít.~ */
  IF ~~ THEN REPLY #47970 /* ~"Ano a i pro tebe mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~"A co když jsem?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"To nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~Přikývl, spokojený sám se sebou. "Jo, ale já nemám čas a ani odpovědi. Takže ti navrhuju, abys zmizel, nebo zavolám stráž... a neopovaž se obtěžovat moje chlapy, slyšíš?"~ */
  IF ~~ THEN REPLY #47974 /* ~"Tak si zavolej ty stráže. Já je zvládnu."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"Tak já tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~Přikývl. "Jak chceš, magore. Stráže! Mám tady problém!"~ */
  IF ~~ THEN REPLY #47978 /* ~Zmizni, než přijdou stráže.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~Jeho pohled se zúžil. "No, jestli jsi, tak bys měl vědět, že jsi otrava a na takové já nemám čas. A ani moji muži, takže je nechej na pokoji."~ */
  IF ~~ THEN REPLY #47980 /* ~"Jenom potřebuju odpovědi na pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"Nelíbíš se mi a ani tvoje chování. Možná bych tě měl naučit slušné způsoby?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"Odpal, vole! Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~Chystá se něco říct, ale pak se zarazil, když si uvědomil tvoji velikost a jizvy, které pokrývají tvé tělo. Otočil se k nejbližšímu strážnému a otevřel ústa...~ */
  IF ~~ THEN REPLY #47984 /* ~Pravda: "Zlomím ti ten tvůj mizerný krček, než ze sebe stačíš vydat jediné slovo."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~Bluf: "Zlomím ti ten tvůj mizerný krček, než ze sebe stačíš vydat jediné slovo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~Odejdi, než se ti situace vymkne z rukou.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~Pozorně si tě prohlíží a zjevně odhaduje své šance. "Já... mám práci a na tohle nemám čas. Přeju ti dobrý den." Otočil se a jde pryč.~ */
  IF ~~ THEN REPLY #47988 /* ~Odejdi.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~Vidíš staršího vlasatého muže, který zřejmě dohlíží na trhovce. Občas vyštěkne nějaký rozkaz na pracovníka, který ho okamžitě plní. Zamračil se, když ses přiblížil. "No, zase jde ten otrava. Nemám ti co říct, zmizni!"~ */
  IF ~~ THEN REPLY #47990 /* ~Odejdi.~ */ EXIT
END

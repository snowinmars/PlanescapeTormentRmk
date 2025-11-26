// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~Vidíš hezkou mladou ženu. Má zrudlý a oteklý obličej, rozcuchané vlasy. I když jsou její šaty hezké, na několika místech jsou roztrhané. Opatrně se pohybuje ulicí, občas se dívá přes rameno za sebe.~ */
  IF ~~ THEN REPLY #59070 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~Když jsi ji pozdravil, poskočila a trhla hlavou k tobě. Její oči přejely po tvých jizvách, po obličeji jí přejel výraz znepokojení. "Ahoj, tvrďáku. Jsem Kiri, co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #59073 /* ~"Vypadáš docela nervózně, co se děje?"~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~Zamračila se, ale pak pokrčila rameny. "Jsou tady lidi, kteří mě nemaj rádi. Snažím se jim vyhýbat, jak to jenom jde."~ */
  IF ~~ THEN REPLY #59076 /* ~"Proč tě nemají rádi?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"Jsem děvka. Jsem mladá, hezká a... moc dobrá v tom, co dělám." Usmála se. "Ostatní holky tvrdí, že jim přebírám kšefty. Tak mě zmlátily a řekly mi, ať už se tady neukazuju. Že prý už určitě nebudu hezká, jestli mě tady chytí ještě jednou."~ */
  IF ~~ THEN REPLY #59079 /* ~"Tak proč ses vrátila?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~Zasmála se. "Prachy, co jinýho? Nemůžu jenom tak odejít a usadit se někde jinde, když nebudu mít prachy a prachy si nevydělám, když nebudu tady. Jsem docela v pasti." Povzdychla si a zahleděla se do dálky. "Udělala bych *cokoli*, abych se dostala k nějakým pořádným penězům..."~ */
  IF ~~ THEN REPLY #59083 /* ~"Cokoli?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~Než odpověděla, důkladně si to promyslela. "Jistě, kámo. Zvládla bych to. Nabízíš mi kontrakt?"~ */
  IF ~~ THEN REPLY #59085 /* ~"Ne, jenom mě to tak zajímalo."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"Vím o někom, kdo chce svého manžela po smrti. Líbí se mu prostitutky a to se zase nelíbí mé známé."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~Pokrčila rameny. "No, jak jsem řekla, potřebuju prachy a jsem ochotná udělat cokoli."~ */
  IF ~~ THEN REPLY #59088 /* ~"Zapamatuju si to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~Zasmála se. "Má rád děvky, co? No, řekla bych, že bych na to byla ideální." Odmlčela se. "Kdo je cíl?"~ */
  IF ~~ THEN REPLY #59090 /* ~"Carl Parfidor."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~Zamračila se a přemýšlí, po chvíli přikývla. "Znám Carla... a jeho ženu." Chvíli zaváhala, pak pokrčila rameny. "Řekni Robertě, že jestli chce Carla mrtvýho, udělám to."~ */
  IF ~~ THEN REPLY #59092 /* ~"Nechceš vědět, kolik za to bude?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~Usmála se. "Ne, ani ne. Jestli mě podvede, přijde do knihy mrtvejch hned za manžílkem, milovaným Carlem... Klidně jí to řekni."~ */
  IF ~~ THEN REPLY #59094 /* ~"Možná jí to řeknu. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~Vidíš prostitutku Kiri. Pozorně sleduje své okolí. Když tě uviděla, usmála se. "Ahoj, kámo. Co pro tebe můžu udělat?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"Vypadáš docela nervózně, co se děje?"~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"Když jsme mluvili předtím, řeklas, že za peníze uděláš cokoli."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"Mluvil jsem s Robertou. Chce, aby Carl zemřel a chce, abys to udělala ty."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~Najal jsem prostitutku Kiri na vraždu Carla Parfidore. Řekla mi, že se do toho pustí okamžitě.~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~Usměje se na tebe. "Můžeš říct Robertě, že právě zařídila Carlovi zápis do knihy mrtvých. Teď se o to půjdu postarat."~ */
  IF ~~ THEN REPLY #59102 /* ~"Velmi dobře, sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~Než odpověděla, opatrně si tě prohlédla. "Jistě kámo, cokoli... za dobrou cenu. Máš něco na mysli?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"Chceš snad nechat někoho zabít?"~ */ JOURNAL #59002 /* ~Prostitutka Kiri je ochotná za peníze udělat cokoli, klidně i zabít. Možná by byla ochotná pro Robertu zabít Carla Parfidora.~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"Ve skutečnosti ne, jen jsem byl zvědavý. Sbohem."~ */ JOURNAL #61397 /* ~Ta šlapka, Kiri říkala, že je za peníze ochotná udělat cokoliv... To si musím zapamatovat, možná by se mi mohla někdy hodit.~ */ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~Siabha na tebe plivla. "Pse! Opovažuješ se na mě promluvit poté, co mě zde uvěznila tvá falešná slova!" Zrádče! Doufám, že tě pohltí Styx a vyplivne tvé obrané kosti na pobřeží, takže si z nich hovnožrouti budou moct udělat píšťalky!"~ */
  IF ~~ THEN REPLY #68278 /* ~"Sbohem, Siabho."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~Žena má na své orlí tváři povýšený výraz. Její pocity k tobě jsou jasné, jakmile promluvila. "Jsem zaměstnaná žena. Nezdržuj mě."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"Mám jenom pár otázek..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"Měl jsem pár otázek o Curstu."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"Mluvil jsem s An'Iziuem. Měl zajímavou nabídku."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"Nuže?" ~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"Řekl, že mi zaplatí štědrou sumu, když tě zradím."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"Mluvil jsem s kapitánem stráže a on řekl, že posílá muže, kteří doprovodí An'izia do vězení."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~Oznámil jsem své úspěšné vydání An'Izia strážím Curstu. Siabha byl potěšen a bohatě mě za tu malou zradu odměnil.~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"Pracuji na tom. Mám pár otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"Pracuji na tom. Vrátím se."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"Naše obchody skončily. Zmiz, nebo tě vyvedou stráže."~ */
  IF ~~ THEN REPLY #60224 /* ~"No dobrá."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"Tak brzo zpátky? Nemám čas na tvé otázky, zjizvený muži."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"Mám jen pár otázek..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"Měl jsem jen pár otázek o Curstu."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"Mluvil jsem s An'Iziuem. Měl zajímavou nabídku."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"Nejsem zde pro tvoje potěšení a rozmar. Odejdi."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"To by tě možná zajímalo, že jsem mluvil s An'Iziem. Pověděl opravdu hodně zajímavých věcí."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~Změřila si tě hodnotícím pohledem. "Pomyšlení, že tu budu stát a povídat si s tak úžasným exemplářem, mě naplňuje neskonalým štěstím. Ale bohužel mě volají povinnosti. Jistě chápeš, že? Samozřejmě, že chápeš."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"To by tě možná zajímalo, že jsem mluvil s An'Iziem. Pověděl opravdu hodně zajímavých věcí."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"Zase proti mně splétá další intriky, že? Jak bych jenom ten jeho úskok zvrátila? Co kdybych zdvojnásobila částku, co jsi od něj dostal?"~ */
  IF ~~ THEN REPLY #60237 /* ~"Výborně. Jsme domluveni."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"Jen posílá pozdrav. To je všechno."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"Tak udělej, o co tě požádal, abys mi udělal - ale přehoď nás, hm? Uvidíš, že se ti to bohatě vyplatí."~ */
  IF ~~ THEN REPLY #60240 /* ~"Vrátím se."~ */ JOURNAL #60241 /* ~Siabha, další úředník v Curstu, mi nabídl dvojnásob toho, co An'Izius, abych ho zradil. Popřemýšlím o tom.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"Pche! To stačí! Vyrovnám jeho nabídku, ale už nepřidám ani chlup." Vyzývavě se na tebe usmála. "Budeš se muset rozhodnout sám. Ale pamatuj... já ti mohu nabídnout něco navíc."~ */
  IF ~~ THEN REPLY #60243 /* ~"No dobře. Sbohem."~ */ JOURNAL #68274 /* ~Siabha mi dala svou konečnou nabídku v její zrádné hře s An'Iziusem.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~Hodila ti těžký měšec napěchovaný penězi. "Tak ber a zmiz. Nikdy jsme spolu o ničem nemluvili." Mrkla. "Máš mou vděčnost... ať to stoji, co chce. Sbohem, cizinče."~ */
  IF ~~ THEN REPLY #60245 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"Opravdu jsem velmi zaneprázdněná. Snad, až vyřídíš to malé poselství? Moc děkuji." Věnovala ti svůj nejkrásnější bělostný úsměv a odvrátila se od tebe.~ */
  IF ~~ THEN REPLY #60247 /* ~"Za chvíli se vrátím..."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~Usmála se. "Ano, jsem si jistá, že to je všechno. Pamatuj... ať nabídne cokoli, já cenu zdvojnásobím. Mysli na to, cizinče."~ */
  IF ~~ THEN REPLY #60249 /* ~"Budu. Sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~Muž oblečený v šatu Curstského představitele je bez sebe hrůzou. "Chtějí mě zabít! Jenom jsem dělal svou práci, když se město přesunulo a oni si myslí, že já s tím mám něco společného, jenom proto, že podepisuju příkazy k popravě! Nikomu jsem nechtěl ublížit, jenom jsem dělal svou práci! Prosím, zachraň mě!"~ */
  IF ~~ THEN REPLY #66792 /* ~"Udělám, co budu moci."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"Zasloužil sis svůj osud."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"Tak doufám, že vás gehrelethi sežerou všechny! Bastardi!"~ */
  IF ~~ THEN REPLY #66795 /* ~"Hezkou smrt."~ */ EXIT
END

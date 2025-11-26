// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIPSY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIPSY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Tenhle starší muž zírá do svého korbele piva, do jeho rysů je vepsaná beznaděj. Džbánek je podivný, popsaný zvláštními runami a je pokrytý jinovatkou. Muž se na tebe podíval. "Zdravím... pane." Vypadá trochu opile.~ */
  IF ~~ THEN REPLY #7234 /* ~"Něco špatného?"~ */ GOTO 2
  IF ~~ THEN REPLY #46154 /* ~"Co je to za džbán, co máš?"~ */ GOTO 5
  IF ~~ THEN REPLY #46155 /* ~"Mám nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #46156 /* ~"Zdravím. A sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #46157 /* ~Smutně zavrtěl hlavou, znovu se napil svého piva. "Ne, ne... tady... nenajdeš žádný odpovědi... to ne."~ */
  IF ~~ THEN REPLY #46158 /* ~"Je něco špatně?"~ */ GOTO 2
  IF ~~ THEN REPLY #46159 /* ~"Co je to za džbán, co máš?"~ */ GOTO 5
  IF ~~ THEN REPLY #46160 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #46161 /* ~Povzdychl si, říhl si do dlaně a kývl, zatímco si znovu zavdal piva. "Jó, něco je zlý. To jo. Jsem ztracenej... moje učednictví. Byl jsem ožralej... a zmrvil jsem... poslední experiment mýho učitele. To kvůli tomu zatracenýmu... chlastu." Zavrčel na džbán ve své ruce, ale o sekundu později se jeho výraz zmírnil a on se znovu napil. "Všecko to zničí, todle moje zatracený chlastání..."~ */
  IF ~~ THEN REPLY #46162 /* ~"Tak proč nepřestaneš pít?"~ */ JOURNAL #66804 /* ~V kavárně v Úřednické čtvrti jsem potkal muže, kterému kouzelnickou kariéru zničila nezkrotná touha po alkoholu. Je zřejmé, že nemá dost silnou vůli, aby překonal svou chuť na alkohol. Zajímalo by mě, jak by se mohl někdo takový jako on zbavit takové závislosti.~ */ GOTO 3
  IF ~~ THEN REPLY #46163 /* ~"Jestli jsi příliš slabý na to, abys přestal pít, je to tvoje vlastní vina. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #46164 /* ~"To je zlé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46165 /* ~Pokrčil rameny a zatvářil se uboze. "Já zkrátka... nemůžu. Chci, ale nemůžu. Já... *potřebuju* pít. Zkoušel jsem toho nechat, ale touha se nakonec... objevila a ovládla mě. Nedokážu vzdorovat. Stala se ze mě troska!" Nalil si do hrdla zbytek piva a objednal si další.~ */
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #46166 /* ~"Je tady někdo, s kým by sis měl promluvit... Nenaplněná-Touha. Najdeš ji v Hale. Promluv si s ní o tvé lásce k pití... a zjistíš, že už to nepotřebuješ."~ */ DO ~GiveItemCreate("DwfMug",Protagonist,1,0,0)
AddexperienceParty(10000)
~ JOURNAL #66805 /* ~Řekl jsem notorikovi, kterého jsem potkal v Úřednické Čtvrti o Nenaplněné Touze... jsem si jistý, že ta její podivná moc bude stačit na to, aby ho zbavila jeho touhy po alkoholu. Byl vděčný a dal mi svůj magický džbánek, jelikož on už ho potřebovat nebude.~ */ GOTO 4
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46167 /* ~"Aha. Co je to za džbán, co máš?"~ */ GOTO 5
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46168 /* ~"Jestli jsi příliš slabý na to, abys přestal pít, je to tvoje vlastní vina. Sbohem."~ */ EXIT
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46169 /* ~"To je zlé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46170 /* ~Jeho oči se rozjasnily? "Vážně? Měl bych... jít za ní. Děkuju ti... pane." Odmlčel se, podíval se na svůj prázdný džbán. "Tady... vem si to. Já už to nebudu potřebovat." Podal ti džbán pokrytý runami.~ */
  IF ~~ THEN REPLY #46171 /* ~"Díky... sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #46172 /* ~"Tohle?" Podíval se na džbán. "Vyhrál jsem to v kostkách. Je to vočarovaný... aby to v sobě drželo věci zmražený. V mým případě... levný pívo." Zamračil se, protřel si oči pěstí a znovu se napil svého nápoje.~ */
  IF ~~ THEN REPLY #46173 /* ~"Je něco špatně?"~ */ GOTO 2
  IF ~~ THEN REPLY #46174 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

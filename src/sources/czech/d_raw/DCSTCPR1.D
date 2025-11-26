// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10146 /* ~Vidíš mladou ženou oblečenou v levných šatech. Její blůza je rozhodně těsnější, než by měla být, takže její velké poprsí z oblečení přímo vyskakuje.~ */
  IF ~~ THEN REPLY #10147 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #10148 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10149 /* ~Prohlédla si tě a začala se tvářit znuděně. "Na můj vkus vypadáš trochu moc hrubě. Myslím, že bys měl jít dál."~ */
  IF ~~ THEN REPLY #10150 /* ~"O čem to mluvíš?"~ */ GOTO 2
  IF ~~ THEN REPLY #10151 /* ~"Chci se tě prostě jen zeptat na pár otázek."~ */ GOTO 6
  IF ~~ THEN REPLY #10152 /* ~"Eh... Dobrá. Sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10153 /* ~Mazaně se na tebe podívala a přiklonila se. "Zamysli se nad tím, hlupáku. Co myslíš, že tu dělám?" Zadívala se na svá ňadra a mrkla na tebe. "Líbilo by se ti něco?"~ */
  IF ~~ THEN REPLY #10154 /* ~"Jestli se ti nezdá, že bych byl tvůj typ, proč mi teda vystavuješ své 'zboží' tak..." Nejsi schopen najít to správné slovo.~ */ GOTO 3
  IF ~~ THEN REPLY #10155 /* ~"Jen bych se tě rád zeptal na pár otázek."~ */ GOTO 6
  IF ~~ THEN REPLY #10156 /* ~"Dobrá, co mě to bude stát?"~ */ GOTO 23
  IF ~~ THEN REPLY #10157 /* ~"Ani ne. Už půjdu."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10158 /* ~Hihňá se, pak se narovná. "Jen si tak užívám, to je vše. Chceš něco?"~ */
  IF ~~ THEN REPLY #10159 /* ~"Jen jsem se tě chtěl zeptat na pár otázek."~ */ GOTO 6
  IF ~~ THEN REPLY #10160 /* ~"Dobrá, co mě to bude stát?"~ */ GOTO 23
  IF ~~ THEN REPLY #10161 /* ~"Ani ne. Už půjdu."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #10162 /* ~Podívá se na tebe rozzlobeně. "Hej! Nech si to, hlupáku. Jsem ta nejlepší, na kterou můžeš v ulicích narazit."~ */
  IF ~~ THEN REPLY #10163 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #10164 /* ~Usmívá se na tebe. "Tak teda dobrý den."~ */
  IF ~~ THEN REPLY #10166 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 2.1 3.0 7.1 8.1 9.2 10.0 11.0 15.1 16.0 20.0 22.0 23.0 25.0 26.0
  SAY #10165 /* ~Povzdychla si a zatvářila se znuděně. "Co chceš vědět?"~ */
  IF ~~ THEN REPLY #10167 /* ~"Hledám dévu. Bylo mi řečeno, že je v Curstu."~ */ GOTO 7
  IF ~~ THEN REPLY #10168 /* ~"Co je nového?"~ */ GOTO 12
  IF ~~ THEN REPLY #10169 /* ~"Kdo to tu má na starosti?"~ */ GOTO 20
  IF ~~ THEN REPLY #10170 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 21
  IF ~~ THEN REPLY #10171 /* ~"Jak se jmenuješ?"~ */ GOTO 25
  IF ~~ THEN REPLY #10172 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10173 /* ~Našpulila rty a svraštila čelo přemýšlením. Po chvíli se usměje. "Ano, vzpomínám si. Je ve vězení." Opět se zamračí. "Podivné místo pro dévu, že?"~ */
  IF ~~ THEN REPLY #10174 /* ~"Vězení? Víš to určitě?"~ */ DO ~SetGlobal("Know_Deva_Prison","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #10175 /* ~"Aha. Můžu se tě ještě na něco zeptat?"~ */ GOTO 6
  IF ~~ THEN REPLY #10176 /* ~"Velmi jsi mi pomohla. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10177 /* ~Zamračí se na tebe. "Jistě, jsem si jistá. Slyšela jsem to od jednoho strážného. Déva je pevně pod zámkem. Kopáči rozšiřovali vězeňské prostory. Otevřeli skalní výduť a on tam byl. Je vskutku velmi dobře spoután."~ */
  IF ~~ THEN REPLY #10178 /* ~"Hmm. To pak bude těžké se s ním setkat."~ */ GOTO 9
  IF ~~ THEN REPLY #10179 /* ~"Jiná otázka."~ */ GOTO 6
  IF ~~ THEN REPLY #10180 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10181 /* ~Napřáhla ruku a lišácky se na tebe usmála. "Prachy? Prachy?"~ */
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10182 /* ~Dej jí pár mincí.~ */ DO ~TakePartyGold(2)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10183 /* ~Lež: "Omlouvám se, nemám žádné peníze."~ */ GOTO 11
  IF ~~ THEN REPLY #10184 /* ~"Ještě bych se na něco zeptal."~ */ GOTO 6
  IF ~~ THEN REPLY #10185 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10186 /* ~Sladce se usmála a naklonila se k tobě dovolujíc ti opět zahlédnout její bujné vnady. "Běž do baru U Zrádcovy brány a pozeptej se. Jsou tam lidi, co ti pomůžou." Vhodila si mince do korzetu.~ */
  IF ~~ THEN REPLY #10187 /* ~"Děkuji, to udělám. Ovšem ještě bych se tě rád na něco zeptal."~ */ GOTO 6
  IF ~~ THEN REPLY #67907 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #10188 /* ~Podívala se na tebe a ušklíbla se. "Jsem asi pitomá, ale stejně ti pomůžu. Běž do baru U Zrádcovy brány a pozeptej se. Jsou tam lidi, co ti pomůžou."~ */
  IF ~~ THEN REPLY #10189 /* ~"Děkuji, to udělám. Ale ještě bych se tě rád na něco zeptal."~ */ GOTO 6
  IF ~~ THEN REPLY #67908 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY #10190 /* ~"No... Mor je konečně pod kontrolou. Několik míst ve městě muselo být uzavřeno, aby se předešlo jeho šíření. Dokonce museli uzavřít bránu do Carceri na městském náměstí." Zamyslela se.~ */
  IF ~~ THEN REPLY #10191 /* ~"Pokračuj."~ */ GOTO 13
  IF ~~ THEN REPLY #10192 /* ~"Pardon. Mor?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #10193 /* ~"Jsem ti vděčný za pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 17.0 24.0
  SAY #10194 /* ~"Dcera Zkaženého Vrdele se ztratila. Je z toho nesvůj a hledá nějakého ranaře ochotného mu pomoct při jejím hledání."~ */
  IF ~~ THEN REPLY #10195 /* ~"Pokračuj."~ */ GOTO 14
  IF ~~ THEN REPLY #10196 /* ~"Kdo je Zkažený Vrdel a kde ho můžu najít?"~ */ GOTO 18
  IF ~~ THEN REPLY #10197 /* ~"Máš mé díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #10198 /* ~"Nějaký ubožák dnes bude o hlavu kratší. Je připraven pro kata na náměstí. Opravdu nechutné." Zamračila se a odvrátila zrak.~ */
  IF ~~ THEN REPLY #10199 /* ~"Pokračuj."~ */ GOTO 15
  IF ~~ THEN REPLY #10200 /* ~"Co udělal?"~ */ GOTO 19
  IF ~~ THEN REPLY #10201 /* ~"Děkuji ti, dámo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 19.0
  SAY #10202 /* ~Na chvíli se zamyslela. "Už si nic nevybavuji." Pokrčila rameny.~ */
  IF ~~ THEN REPLY #10203 /* ~"Zdá se, že jsi velice dobře informovaná. Udělalo to na mě dojem."~ */ GOTO 16
  IF ~~ THEN REPLY #10204 /* ~"Jestli můžu, ještě bych se rád na něco zeptal."~ */ GOTO 6
  IF ~~ THEN REPLY #10205 /* ~"Máš mou vděčnost. Sbohem, dámo."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10206 /* ~Usmála se, naklonila se dopředu a docela svůdně na tebe mrkla. "Lidé se mi prostě rádi svěřují. Nechápu proč." Narovnala se a uchichtla.~ */
  IF ~~ THEN REPLY #10207 /* ~"Uh... Ano, divím se proč. Každopádně, chci se tě zeptat ještě na něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #10208 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #10209 /* ~"Ano, ale ničeho se neobávej. Je pod kontrolou poté, co byly uzavřeny nakažené oblasti." ~ */
  IF ~~ THEN REPLY #10210 /* ~"Aha. Pokračuj."~ */ GOTO 13
  IF ~  Global("Know_Deva_Prison","Global",1)
~ THEN REPLY #10211 /* ~"Vypukl tento mor v době, kdy se kopáči prokopali do žaláře dévy?"~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #10212 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY #10213 /* ~"Je barmanem v Zrádcově bráně. Myslím, že je to někde támhle." Ukázala do ulice.~ */
  IF ~~ THEN REPLY #10214 /* ~"Pokračuj."~ */ GOTO 14
  IF ~~ THEN REPLY #10215 /* ~"Díky za pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #10216 /* ~Zamračila se na chvilku a odvrátila zrak. Po chvíli pokrčila rameny. "Po pravdě, to nedokážu říct. Nikdo z mých... kontaktů mi neřekl důvod."~ */
  IF ~~ THEN REPLY #10217 /* ~"Pokračuj."~ */ GOTO 15
  IF ~~ THEN REPLY #10218 /* ~"Moc jsi mi pomohla. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #10219 /* ~Uchichtla se. "To bude Tovus, Tovus Giljaf. Někdy by mohl byt více... náruživý, ale na mě je vždy milý a dobře platí." Váhá a zdá se, že si rozmýšlí, co dělá. "Asi bych neměla o Tovusovi mluvit. Můžeš ho najít v úřední budově na městském náměstí."~ */
  IF ~~ THEN REPLY #10220 /* ~"Dobrá, jiná otázka."~ */ GOTO 6
  IF ~~ THEN REPLY #10221 /* ~"Už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #10222 /* ~"Curst..." Povzdychla si a vypadá trochu nešťastně. "Toto město je pro osamělé klec. Všichni, které tu vidíš, se sem dostali kvůli jejich věrolomnosti a zradě. Teď zde žijí den za dnem neustále ve střehu aniž by věděli, komu můžou věřit a koho můžou zvát svým přítelem."~ */
  IF ~~ THEN REPLY #10223 /* ~"To platí i o tobě?"~ */ GOTO 22
  IF ~~ THEN REPLY #10224 /* ~"Zajímavé. Myslím, že bych měl jít."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #10225 /* ~Smutně se otočila. "Mám na tom svůj podíl a lituji toho. Teď..." Opět se ti podívá do očí. "Jestli ti můžu dát zdarma radu, pak poslouchej: Než cokoli ve svém životě uděláš, ujisti se, že si to pak dokážeš odpustit."~ */
  IF ~~ THEN REPLY #10226 /* ~"Budu si to pamatovat. Můžu se tě ještě na něco zeptat?"~ */ GOTO 6
  IF ~~ THEN REPLY #10227 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2 3.1
  SAY #10228 /* ~Prohlíží si tě odshora dolů. "Teda... jestli slíbíš, že se mnou budeš slušně zacházet a neublížíš mi... deset měďáků."~ */
  IF ~~ THEN REPLY #10229 /* ~"Velice mě to svádí... ale teď nemůžu. Smím se tě zeptat na něco jiného?"~ */ GOTO 6
  IF ~~ THEN REPLY #10230 /* ~"Omlouvám se, ale musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY #10231 /* ~Zamyšlením svraštila obočí, pak se na chvíli zadívala někam do dáli. Konečně opět obrátila svou pozornost na tebe. "Víš, nikdy předtím mě to nenapadlo, ale myslím, že máš pravdu. Mor udeřil nedlouho poté, co jej našli." ~ */
  IF ~~ THEN REPLY #10232 /* ~"Aha. Pokračuj."~ */ GOTO 13
  IF ~~ THEN REPLY #10233 /* ~"Velmi jsi mi pomohla. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.4
  SAY #10234 /* ~Mile se na tebe usmála. "Jsem Sharlene, ale všichni mí přátelé mi říkají Shar."~ */
  IF ~~ THEN REPLY #10235 /* ~"Shar je pěkné jméno. Ještě bych se rád na něco zeptal."~ */ GOTO 6
  IF ~~ THEN REPLY #10236 /* ~"Opravdu jsi mi moc pomohla. Sbohem, Shar."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #63238 /* ~Vidíš Sharlene, nevěstku. Sladce se na tebe usmála. "Zase ahoj, sekáči. Co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #63239 /* ~"Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #63240 /* ~Nic, sbohem.~ */ EXIT
END

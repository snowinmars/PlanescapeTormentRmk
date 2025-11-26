// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCHLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCHLP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Vidíš staršího muže stojícího na okraji davu. Jsou shromážděni kolem něčeho, co vypadá jako gilotina.~ */
  IF ~~ THEN REPLY #3167 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #13656 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13657 /* ~Letmo se na tebe podíval a obrací se zpět. Rozmyslel si to a podíval se ti do tváře. Pomalu kýve hlavou, jak po tobě šmátrají jeho oči. "Kámo, vypadáš hrozně. Nemůžu říct, že bych někdy viděl někoho tak zjizvenýho. Cos proboha dělal? Zaháněls sám Baatorské hordy?"~ */
  IF ~~ THEN REPLY #13658 /* ~"Měl bych na tebe pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #13659 /* ~"Do toho ti nic není, starče."~ */ GOTO 7
  IF ~~ THEN REPLY #13660 /* ~"Viděl jsem nějaký bitvy a mám jizvy, abych to dokázal."~ */ GOTO 8
  IF ~~ THEN REPLY #13661 /* ~"Co se to tu děje?"~ */ GOTO 4
  IF ~~ THEN REPLY #13662 /* ~"Nevadí."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 8.0
  SAY #13663 /* ~Zamračil se na tebe. "Vidíš snad někde na mně vytetovaný slovo 'mudrc'?" Dívá se na tebe, jako by opravdu čekal odpověď.~ */
  IF ~~ THEN REPLY #13664 /* ~"Já... tedy, ne. Jen jsem si myslel, že člověk vašeho věku nabyl velké moudrosti, kterou by mohl předat těm méně šťastlivým než on..."~ */ GOTO 3
  IF ~~ THEN REPLY #13665 /* ~"Podívej, jenom potřebuji pár odpovědí. Můžeš mi je poskytnout?"~ */ GOTO 7
  IF ~~ THEN REPLY #13666 /* ~"Oh, nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13667 /* ~Jeho zachmuřenost se mění v úsměv, uchichtává se. "Jsi legrační, kámo. 'Velká moudrost', to je prdel." Na chvíli se odmlčel. "Dobrá, koupil sis nějaký odpovědi. S čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #13668 /* ~"Především, co se to tu děje?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.0 8.1
  SAY #13669 /* ~Ukazuje za sebe. "Vidíš tu sekyru? Nějakej ubožák přijde o hlavu. To se nevidí každý den."~ */
  IF ~~ THEN REPLY #13670 /* ~"Jaký zločin spáchal?"~ */ GOTO 5
  IF ~~ THEN REPLY #13671 /* ~"Och. Chtěl bych se tě zeptat na něco jiného."~ */ GOTO 9
  IF ~~ THEN REPLY #13672 /* ~"Aha. No, děkuju ti za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #13673 /* ~"Nevím přesně. Možná někoho zabil, snad to na něj někdo ušil a tak ho dostal pod sekyru. V tomhle městě nikdy nevíš."~ */
  IF ~~ THEN REPLY #13674 /* ~"Ušil?"~ */ GOTO 6
  IF ~~ THEN REPLY #13675 /* ~"Ještě bych se zeptal na něco jiného."~ */ GOTO 9
  IF ~~ THEN REPLY #13676 /* ~"Och... Děkuji ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13677 /* ~Pohlédl na tebe a uchechtl se. "Jsi tu novej, co? 'Ušil.' Tak řečeno zradil, nařknul, vrazil dýku do zad. To se v Curstu stává."~ */
  IF ~~ THEN REPLY #13678 /* ~"Aha. Řekni mi ještě něco..."~ */ GOTO 9
  IF ~~ THEN REPLY #13679 /* ~"Hmm. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1
  SAY #13680 /* ~Zamračil se na tebe a udělal na tebe hrubé gesto. "Strč si ho, debile!" Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #13681 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY #13682 /* ~Souhlasně přikývl. "To bych řek... Tak, s čím ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #13683 /* ~"Měl bych na tebe pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #13684 /* ~"Mohl bys mi říct, co se děje."~ */ GOTO 4
  IF ~~ THEN REPLY #13685 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1 5.1 6.0 10.0 11.0 12.0 13.1 14.0
  SAY #13686 /* ~"Samozřejmě." Čeká na tvoje otázky.~ */
  IF ~~ THEN REPLY #13687 /* ~"Hledám devu. Slyšel jsem, že je někde v Curstu."~ */ GOTO 10
  IF ~~ THEN REPLY #13688 /* ~"Co mi můžeš říci o Curstu?"~ */ GOTO 11
  IF ~~ THEN REPLY #13689 /* ~"Kdo to tu vede?"~ */ GOTO 12
  IF ~~ THEN REPLY #13690 /* ~"Je něco nového?"~ */ GOTO 13
  IF ~~ THEN REPLY #13691 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13692 /* ~"Říká se, že ve městě je nějakej anděl... ale stejně nevím, kde by moh bejt. Deva ve městě by jistě vzbudil hodně pozornosti." Zamyslel se. "Nemám pro tebe odpověď. Poptej se kolem. Někdo ho možná viděl."~ */
  IF ~~ THEN REPLY #13693 /* ~"Jiná otázka."~ */ GOTO 9
  IF ~~ THEN REPLY #13694 /* ~"Velmi jsi mi pomohl. Už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #13695 /* ~Na chvíli se zamyslel a rozhlédl se. "Curst je, zkrátka a dobře, kupa hnoje. Člověk si tu furt musí hlídat záda... To je všecko, co jsem ochotnej říct."~ */
  IF ~~ THEN REPLY #13696 /* ~"Dobrá. Dovol mi ještě pár otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #13697 /* ~"Děkuju ti za pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #13698 /* ~"To by moh bejt Tovus Giljaf. Najít se dá v administrativní budově. A jestli můžu radit: Nestrkej nos do jeho záležitostí. To by nebylo nejchytřejší, taky bys moh přijít o hlavu." Ukazuje ne gilotinu za ním.~ */
  IF ~~ THEN REPLY #13699 /* ~"Budu si to pamatovat. Ale ještě něco..."~ */ GOTO 9
  IF ~~ THEN REPLY #13700 /* ~"Aha. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #13701 /* ~Vypadá, že se hluboce zamyslel. "Tedy... říká se, že se ztratila dcera Zkaženého Vrdele. Je z toho trochu mimo. Kromě toho už nevím o ničem důležitým."~ */
  IF ~~ THEN REPLY #13702 /* ~"Kdo je ten Zkažený Vrdel?"~ */ GOTO 14
  IF ~~ THEN REPLY #13703 /* ~"Měl bych pro tebe jinou otázku."~ */ GOTO 9
  IF ~~ THEN REPLY #13704 /* ~"Děkuju ti za pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #13705 /* ~"Je barmanem U zrádcovy brány. Místní nalejvárna pro ochlasty. Tuším, že je to tím směrem." Ukazuje neurčitým směrem.~ */
  IF ~~ THEN REPLY #13706 /* ~"Řekni mi ještě něco."~ */ GOTO 9
  IF ~~ THEN REPLY #13707 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

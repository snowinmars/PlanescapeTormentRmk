// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_10~

IF ~  !Global("S_Stone","AR0603",17)
!Global("S_Stone","AR0603",20)
~ THEN BEGIN 0 // from:
  SAY #34221 /* ~Je to nezvyklý modrofialový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47562 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",17)
~ THEN BEGIN 1 // from:
  SAY #47563 /* ~Tenhle modrorůžový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'plížící se hrůzy.'~ */
  IF ~~ THEN REPLY #47564 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47565 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47566 /* ~"Jakpak to asi chutná?" dumáš a pečlivě si prohlížíš sklenici burgundského vína. Naproti přes pult se na tebe šibalsky usmívá stářím pokroucený mužík.

"Prosím, pane, okus." šeptá a jeho tichý hlas prolétl hrubě dlážděnou ulicí jako suchý vítr. "Najdeš v něm víc, než by ses dokázal za život představit, na to dám krk." ~ */
  IF ~~ THEN REPLY #47567 /* ~Pokračuj v prožitku.~ */ GOTO 3
  IF ~~ THEN REPLY #47568 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47569 /* ~Přikyvuješ a zvedáš křišťálový pohár do vzduchu, sledujíc hru světel v karmínu vína. Kvůli tomuto nápoji jsi urazil dlouhou cestu... toho starého muže jsi hledal dlouho a obtížně... ať jsi zatracen, jestli teď něčemu dovolíš tě nyní zastavit. Tenhle okamžik si vychutnáš.~ */
  IF ~~ THEN REPLY #47570 /* ~Pokračuj v prožitku.~ */ GOTO 4
  IF ~~ THEN REPLY #47571 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47572 /* ~Neseš sklenici ke rtům a zkoušíš vůni nápoje. Voní lehce, sladce a opojně... téměř omračuje. Na svých cestách sférami jsi již zkusil nespočet nápojů... napsal jsi o nich opravdu tlustou knihu, o jejich chutích a vůních a způsobech výroby. Ale tohle... tohle pití má reálnou naději se stát legendou. Nepotkal jsi, ani neslyšel o člověku, který by ten nápoj ochutnal. Vyprávění byla k smíchu - nic nemůže mít tak dokonalou chuť, to je jasné - ale je-li na pověstech jen trocha pravdy, pak musí jít o vskutku výborné víno.~ */
  IF ~~ THEN REPLY #47573 /* ~Pokračuj v prožitku.~ */ GOTO 5
  IF ~~ THEN REPLY #47574 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47575 /* ~Konečně piješ, opatrně z poháru usrkáváš...~ */
  IF ~~ THEN REPLY #47576 /* ~Pokračuj v prožitku.~ */ GOTO 6
  IF ~~ THEN REPLY #47577 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47578 /* ~Neuvěřitelné! Nevylíčitelné! Jak se ti chuť rozlévá na patře, bojuješ, aby ses netřásl rozkoší. Nic... *nic* z toho, co jsi ochutnal za dlouhé roky předtím, se k tomuto ani nepřiblížilo. Vzhlédl jsi ke starému muži, překvapen, že máš prázdnou sklenici - vypil jsi všechno jedním douškem. Hřbetem ruky si otíráš oči a nemůžeš si vzpomenout, v které chvíli jsi začal plakat.~ */
  IF ~~ THEN REPLY #47579 /* ~Pokračuj v prožitku.~ */ GOTO 7
  IF ~~ THEN REPLY #47580 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47581 /* ~"Slzy štěstí?" Zasmál se zlehka starý muž. "Dokonalý koncert pro jazyk, že? Je snad libo ještě jednu?" Usmívá se o trošku víc.

"Ano... ano, jestli mohu..."~ */
  IF ~~ THEN REPLY #47582 /* ~Pokračuj v prožitku.~ */ GOTO 8
  IF ~~ THEN REPLY #47583 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47584 /* ~"Určitě." Odpovídá a naplňuje sklenici. Pokoušíš se ovládnout, ale nemůžeš odolat a vyprazdňuješ pohár celý najednou. Noříš prst do sklenice a pokoušíš se najít poslední skryté kapky nápoje. Ještě párkrát ti znovu nalil plnou číši a pokaždé jsi ji vyprázdnil jako vyhladovělý člověk posazený k obrovské hostině. Nedokážeš se ovládnout a odepřít si další nádherný hlt.~ */
  IF ~~ THEN REPLY #47585 /* ~Pokračuj v prožitku.~ */ GOTO 9
  IF ~~ THEN REPLY #47586 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47587 /* ~Ještě jednou se měkce usmál. "Takový nápoj... člověk by pro něj udělal cokoli, že?"

Přikyvuješ bez váhání. "Ano, to by udělal..." Díváš se na něj a jeho lstivý úsměv rázem získává nový význam. Zaplavuje tě pocit hrůzy, zároveň s narůstající bolestnou potřebou alespoň pár kapek toho krvavě rudého nápoje...~ */
  IF ~~ THEN REPLY #47588 /* ~Pokračuj v prožitku.~ */ GOTO 10
  IF ~~ THEN REPLY #47589 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47590 /* ~"Ano, ano..." Starý muž se široce usmívá a žluté oči se mu lesknou. "Člověk by *udělal* všechno, ve *službách* takového pití... dokonce i ty nejstrašlivější, nejodpornější skutky... jak sám brzy uvidíš, můj nový otroku."~ */
  IF ~  Global("Sensation17","AR0603",0)
~ THEN REPLY #47591 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation17","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation17","AR0603",1)
~ THEN REPLY #47592 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",20)
~ THEN BEGIN 11 // from:
  SAY #47593 /* ~Tenhle modrorůžový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'lykantropie.'~ */
  IF ~~ THEN REPLY #47594 /* ~Začni vjem.~ */ GOTO 12
  IF ~~ THEN REPLY #47595 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47596 /* ~Náhle sis uvědomil, že už nastal čas. Vyskočil jsi z postele a vyběhl ze své chalupy do okolního lesa. Klopýtáš tmou, dokud nedojdeš k malé, měsícem ozářené mýtině... objevil jsi ji minulý týden a rozhodl ses, že ji dnes v noci použiješ. Spěšně ses svlékl, posadil ses do vysoké trávy a čekáš. ~ */
  IF ~~ THEN REPLY #47597 /* ~Pokračuj v prožitku.~ */ GOTO 13
  IF ~~ THEN REPLY #47598 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #47599 /* ~Zavíráš oči a nasloucháš neustálému koncertu cvrčků, chraplavému kvákání ropuch v nedaleké říčce a šumění větrem hlazené trávy. Co by si asi někdo jiný pomyslel, dívaje se tvýma očima, *prožívaje* tento okamžik a to, co přijde? Brzy bys měl odjet do města, abys vyhledal kněze a zbavil se Prokletí... ale teď, můžeš udělat jen jedno. V očekávání si mneš ruce, připomínáš šklebícího se rudovousého šíleného obra. Sedíš nahý a sám uprostřed nocí zmrtvělého lesa.~ */
  IF ~~ THEN REPLY #47600 /* ~Pokračuj v prožitku.~ */ GOTO 14
  IF ~~ THEN REPLY #47601 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #47602 /* ~Po celé tvé kůži přebíhají tisíce studených jehliček a tvé smysly se výrazně zostřily. Nasáváš nosem vzduch a cítíš pach všeho okolo sebe: vlhkou zemi, pot v odložených šatech, vačici bojácně přitisknutou ke kmeni stromu za tebou...~ */
  IF ~~ THEN REPLY #47603 /* ~Pokračuj v prožitku.~ */ GOTO 15
  IF ~~ THEN REPLY #47604 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #47605 /* ~Otvíráš oči a díváš se na svoje ruce. Mdlé měsíční světlo ti odhaluje, jak se mírně, sotva znatelně, chvějí... ale v příštím momentě se maso pod kůží začíná nepřirozeně vlnit a z kůže ti vyráží hnědá srst. S ošklivým prasknutím - jak se obracejí klouby a drtí kosti - se tvá záda a bedra ohýbají a rozšiřují... nepohodlné, ale ani trochu bolestivé. Tvé svaly - a celé tvé tělo - se zdvojnásobuje, ztrojnásobuje a nepřestává růst.~ */
  IF ~~ THEN REPLY #47606 /* ~Pokračuj v prožitku.~ */ GOTO 16
  IF ~~ THEN REPLY #47607 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47608 /* ~Tiše fascinován svou proměnou, sleduješ, jak se tvé prsty ztrácejí a dlaně se rozšiřují v silné tlapy s černými širokými drápy a zarůstají hustou kožešinou. Přeměňují se ti oči a noc se ti zdá jasnější, jak si zvykáš na temnotu... do výhledu ti vyrůstá široký čenich a ty se opatrně dotýkáš mokrého čmuchajícího nosu, brumlaje si sám pro sebe. Příště, přemýšlíš, se musíš během Proměny dívat do zrcadla, nebo hladiny rybníka... sledovat, jak se tvá tvář mění, ztrácí svou obvyklou podobu a stává se medvědí.~ */
  IF ~~ THEN REPLY #47609 /* ~Pokračuj v prožitku.~ */ GOTO 17
  IF ~~ THEN REPLY #47610 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #47611 /* ~Brzy bude obtížné se soustředit na něco jiného, než na jedinou potřebu... jídlo by bodlo, hned teď. Ano, jídlo - třeba budeš mít štěstí a najdeš v řece pěkného, tlustého sumce. Se *zafuněním* ses zdvihl na svých silných tlapách a vydal ses po všech čtyřech na cestu skrz stromy k vodnímu břehu...~ */
  IF ~  Global("Sensation20","AR0603",0)
~ THEN REPLY #47612 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation20","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation20","AR0603",1)
~ THEN REPLY #47613 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 17.0
  SAY #47614 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47615 /* ~Odejdi.~ */ EXIT
END

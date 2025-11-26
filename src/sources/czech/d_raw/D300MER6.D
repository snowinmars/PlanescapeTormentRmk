// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~Tento starší obchodník má světácký výraz. Jeho hluboký hlas je mírný, ale sebejistý. "Á, zdravím tě. Jsi připraven ochutnat ty nejlahodnější slasti ze všech sfér, můj dobrý pane?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"Mebbeth, porodní bába z náměstí, potřebuje tady z toho semena nějaké byliny. Můžeš mi pomoci?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"Co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"Ne, ale mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"Znovu se setkáváme. Dnes nějaké mořské švestky? Arborejská ohnivá semínka?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"Mebbeth, porodní bába z náměstí, potřebuje tady z toho semena nějaké byliny. Můžeš mi pomoci?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"Co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"Ne, ale mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"Ne, jenom procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~Zatřásl hlavou. "Potom ti radím hledat odpovědi jinde, pane. Já pouze obchoduji s exotickými lahůdkami, kořením a bylinami a ani nemám čas starat se o nic jiného."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"Mebbeth, porodní bába z náměstí, potřebuje tady z toho semena nějaké byliny. Můžeš mi pomoci?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"V tom případě, co máš?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"Všechny druhy lahůdek pro potěchu tvého jazyka, můj pane. Arborejská ohnivá semínka, Gar-Barový kořen, Elysejské hrušky, okvětní lístky rudého lotosu, chléb bytopijských pastevců, měňavé koření z chaosu Limba a mořské švestky  - to je vše co teď mám. Pouze pět měďáků za ochutnání čehokoliv, co budeš chtít."~ */
  IF ~~ THEN REPLY #17635 /* ~Zeptej se na něco jiného.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~Kup něco.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"Hmm?"~ */
  IF ~~ THEN REPLY #17637 /* ~"Jak chutnají ta ohnivá semínka?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"Jak chutná ten Gar-Barový kořen?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"Jak chutnají ty hrušky?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"Jak chutnají ty okvětní lístky?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"Jak chutná ten chleba?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"Jak chutná ta směs koření?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"Jak chutnají ty mořské švestky?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"Já ti můžu pouze doporučit, abys to okusil, můj dobrý pane, a sám se přesvědčil."~ */
  IF ~~ THEN REPLY #17644 /* ~Kup něco.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"Ve skutečnosti mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"Tak na to tedy zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"Hmm?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"Zkusím pár ohnivých semínek."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"Zkusím Gar-Barový kořen."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"Zkusím hrušku."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"Zkusím pár okvětních lístků."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"Zkusím trochu chleba."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"Zkusím měňavé koření."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"Zkusím měňavé koření."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"Zkusím mořskou švestku."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"Nic pro mne, skutečně. Mám pár otázek..."~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"Když nad tím uvažuji... nic pro mne. Sbohem."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"Nemám na nic peníze. Přesto mám pár otázek."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"Nemám na nic peníze. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"Nepolykej je; jednoduše je vyplivni až tě přestanou brnět na jazyku." Usmívá se a nabízí ti hrst malých, červených semínek.~ */
  IF ~~ THEN REPLY #17661 /* ~Dej je do úst.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~Nabízí ti malou hnědou kostku něčeho, co vypadá jako kaučukovitá zeleninová hmota. "Je to docela tuhé... nepolykej to, ale vyplivni, až to nebude mít chuť."~ */
  IF ~~ THEN REPLY #17668 /* ~Dej to do úst.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~Nabízí ti největší a nejšťavnatěji vypadající hrušku, kterou jsi kdy viděl. "Ty jsou moje oblíbené," pochechtává se starý obchodník. "Tak sladké! Připomínají mi mé mládí."~ */
  IF ~~ THEN REPLY #17675 /* ~Sněz hrušku.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~Starý muž nabízí něco, co vypadá jako malé, hnědočervené plátky. Po bližším prozkoumání zjišťuješ, že to jsou usušené okvětní lístky. "Po těch se ti trochu zatočí hlava, můj dobrý pane, tak si dávej pozor, až je sníš."~ */
  IF ~~ THEN REPLY #17684 /* ~Dej je do úst.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~Nabízí ti dva silné krajíce kořeněného ořechového chleba. Jsou velmi aromatické, voní mrkví a mandlemi.~ */
  IF ~~ THEN REPLY #17689 /* ~Sněz chleba.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~Zamával před tebou malým papírovým balíčkem. "Navlhči si špičku prstu a dej ho do koření, potom ho jednoduše lízej ze svého prstu. Po každém ponoření by mělo mít trochu jinou chuť."~ */
  IF ~~ THEN REPLY #17694 /* ~Pár jich vyzkoušej.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~Podává ti malou švestku zvláštní modrozelené barvy. "Neměj strach, je bez pecky. Sněz ji celou."~ */
  IF ~~ THEN REPLY #17699 /* ~Sněz mořskou švestku.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~Zamával před tebou malým papírovým balíčkem. "Navlhči si špičku prstu a dej ho do koření, potom ho jednoduše lízej ze svého prstu. Po každém ponoření by mělo mít trochu jinou chuť."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~Semínka, sladká a chutnající trochu po skořici, se zahřála a tebe začala brnět ústa... chvíli trvalo, než sis uvědomil, že ve skutečnosti začala hořet. Brzy však pocit ustal a ty jsi je vyplivl do bahna.~ */
  IF ~~ THEN REPLY #17457 /* ~"Nech mě zkusit něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~Kořen, zpočátku docela tvrdý a těžko žvýkatelný, má sladkou, sirupovou chuť. Brzy změkl a zgumovatěl a ty jsi zjistil, že si vesele pomlaskáváš. Nakonec chuť opadla a ty jsi vyplivl řídký hnědý chomáč do bláta.~ */
  IF ~~ THEN REPLY #17707 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~Na chuti téhle hrušky není nic zvláštního, ale pravděpodobně to bude nejchutnější hruška, jakou jsi kdy jedl.~ */
  IF ~~ THEN REPLY #17710 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~Okvětní lístky rychle roztávají na tvém jazyku, nechávajíc za sebou zvláštní ale nikoliv nepříjemnou chuť, kterou nedokážeš popsat. Přes varování starého obchodníka se necítíš ani trochu dezorientován. Vypadá trochu zklamán, když vidí, že to na tebe nepůsobí.~ */
  IF ~~ THEN REPLY #17713 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~Chléb chutná podle očekávání, mrkví a mandlemi. Je trochu nasládlý a lehký. Dostal jsi chuť ještě na jeden krajíc.~ */
  IF ~~ THEN REPLY #17716 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~Vyprázdnil jsi celý balíček na devět nebo deset líznutí. Jak bylo slíbeno, každé ochutnání poskytlo jinou chuť.~ */
  IF ~~ THEN REPLY #17719 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~Kůra švestky je trochu nahořklá a extrémně kyselá - dost na to, aby ses zašklebil a otřásl se - ale dužina je nevšedně sladká. Obě chutě se navzájem výborně doplňují.~ */
  IF ~~ THEN REPLY #17722 /* ~"Zkusím něco jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"Prozatím je to vše. Mám několik otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"Nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~Muž vezme semeno, kriticky se na něj podívá... tiskne ho mezi palcem a ukazováčkem, ucukne a na jeho palci se objeví malá krůpěj krve. "Ah! To semeno štípe..."~ */
  IF ~~ THEN REPLY #22199 /* ~"Všiml jsem si toho. Máš tu bylinu, o které mluvila?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~Nemůže odtrhnout oči od semene. "Hochu, nevím, jestli je *někdo*, kdo má, co tvoje přítelkyně shání .. tady na náměstí, nikdy před tím jsem podobné semeno neviděl. Měl bys najít někoho, kdo pěstuje semena jako je toto, koho nepoštípe."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"Výborně, takže... kde bych našel právě takovou osobu?"~ */ JOURNAL #21906 /* ~Prodavač na tržišti říkal že bych měl najít zahradníka, aby my pomohl s pěstováním semen -- tady v Úlu musí *někde* být alespoň jeden. V některých ulicích jsem viděl stromy, takže se o ně musí někdo starat.~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"Výborně, takže... kde bych našel právě takovou osobu?"~ */ JOURNAL #21907 /* ~Prodavač na tržišti říkal že bych měl najít zahradníka, aby my pomohl s pěstováním semen -- možná bych se měl zeptat Truchlícího za stromy, jestli mi může pomoci.~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"Výborně, takže... kde bych našel právě takovou osobu?"~ */ JOURNAL #21908 /* ~Prodavač na tržišti říkal že bych měl najít zahradníka, aby my pomohl s pěstováním semen. Mám smůlu, protože jsem zabil Truchlícího za Stromy a vsadím se, že byl jediný, kdo mi mohl pomoci. Bude lepší se prostě vrátit k Mebbeth a vysvětlit jí situaci.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"Nevidíš jeho temnotu příteli." Vrací ti semeno zpět. "Budeš muset být hodně vytrvalý, abys našel v Úlu zahradníka..." ~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"Vidím. Můžu se podívat, co dalšího máš?"~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"Vypadá to, že to mám. Díky za tvou pomoc. Sbohem."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"Hmmm. Možná Truchlící-za-Stromy by mohl pomoci... sbohem."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"Jenom jeden, kterého jsem viděl... zemřel. Nevadí, tedy. Sbohem."~ */ EXIT
END

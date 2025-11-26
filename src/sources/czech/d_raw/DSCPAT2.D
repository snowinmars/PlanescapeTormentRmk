// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Ignus","GLOBAL",1)
NearbyDialog("DIgnus")
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Když ses k ženě přiblížil, Ignusovy oči zahořely a než jsi ho stačil zastavit, objal ji. Vrátila mu objetí a ztratila se v plamenech. Nevykřikla. Tvůj poslední pohled na ni se ti vpálil hluboko do paměti: Její oči plné ohnivé vášně a nekonečné lásky. Nic z ní nezbylo - dokonce ani popel.~ */
  IF ~~ THEN REPLY #10815 /* ~"To bylo úžasné, Ignusi, ale ukvapené. Chtěl jsem s ní mluvit."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
SetAnimState(Myself,ANIM_MIMEDIE)
SetGlobal("Drusilla","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10816 /* ~Je to žena s blednoucími podlitinami na tvářích a na rukou a s pohledem plným zoufalství v jejích hlubokých očích. Kdysi mohla být pěkná, ale ty dny již dávno minuly.  Pomalu se k tobě otočí. Najednou se jí život vlije do tváře a jiskra jízlivého světla, která jí nyní tančí v očích tě nutí se zamyslet, zda tě tvé oči neklamaly. "Vítej u Doutnajícího nebožtíka, zjizvený muži."~ */
  IF ~~ THEN REPLY #10817 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10818 /* ~"Hledám deník. Nevidělas ho náhodou?"~ */ GOTO 4
  IF ~~ THEN REPLY #10819 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10820 /* ~"Kdo je ten hořící u vchodu?"~ */ JOURNAL #68053 /* ~Drusilla, která stojí u dveří v baru u Doutnajícího nebožtíka, mi řekla o muži, hořícím nad mříží. Jmenuje se Ignus a zřejmě to byl nejlepší mág, jaký kdy vzešel z Úlu, alespoň v poslední době. Jeho rivalové otevřeli průtok do Elementární Sféry Ohně skrze jeho tělo a teď už se udržuje naživu pouze silou vůle. Rozhodně mocný muž...~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10821 /* ~"Hledám Sběrače jménem Pharod. Viděla nebo slyšela jsi o něm?"~ */ GOTO 19
  IF ~~ THEN REPLY #10822 /* ~"Nic. Nashle."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10823 /* ~Tentokrát vypadá Drusilla poněkud živěji -- no alespoň není poznat ten náznak zoufalství, který's u ní cítil, když jsi s ní mluvil poprvé. " 'hoj, poutníku."~ */
  IF ~~ THEN REPLY #10824 /* ~"Ahoj, Drusillo. Rád bych, abys mi odpověděla na nějaké otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10825 /* ~"Ahoj, Drusillo a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 7.0
  SAY #10826 /* ~"Já? Jsem Drusilla. A ty musíš být bezradný. Neptej se mě jak to vím. Prostě to z tebe vyzařuje."~ */
  IF ~~ THEN REPLY #10827 /* ~"Bezradný? To bych neřekl."~ */ GOTO 8
  IF ~~ THEN REPLY #10828 /* ~"Vyzařuje. Správně. Odpověz mi na nějaké otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10829 /* ~"Nechci o tom slyšet. Zvlášť ne od tebe. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 7.1
  SAY #10830 /* ~"Deník? Ach, jistě. Dávám si dobrý pozor na všechny ztracené deníky. Prostě pro případ, že by nějaký zjizvený muž vešel do mého oblíbeného baru a začal se na ně vyptávat. Ptáš se na to každého koho potkáš? Och, jak vzrušující život."~ */
  IF ~~ THEN REPLY #10831 /* ~"Máš chytrou pusu, co?"~ */ GOTO 9
  IF ~~ THEN REPLY #10832 /* ~"Prostě mi odpověz na mé otázky a nechme to plavat."~ */ GOTO 7
  IF ~~ THEN REPLY #10833 /* ~"Rozhodně víc vzrušující než ten tvůj, to se vsadím."~ */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2 7.2
  SAY #10834 /* ~"Místě? Tohle je Doutnající nebožtík, ačkoliv ona doutnající osoba není ještě mrtvá. Drží se prostě naživu, dokud někdo nepůjde kolem a nepomůže mu. Úchyláci co rádi vidí člověka trpět chodí sem. Fiendům se to líbí. Lidi co jim moc nevadí, že sou vyrušováni sem chodí taky... a jméno samotné drží v odstupu většinu tupanů."~ */
  IF ~~ THEN REPLY #10835 /* ~"A kdo vůbec je?"~ */ JOURNAL #68053 /* ~Drusilla, která stojí u dveří v baru u Doutnajícího nebožtíka, mi řekla o muži, hořícím nad mříží. Jmenuje se Ignus a zřejmě to byl nejlepší mág, jaký kdy vzešel z Úlu, alespoň v poslední době. Jeho rivalové otevřeli průtok do Elementární Sféry Ohně skrze jeho tělo a teď už se udržuje naživu pouze silou vůle. Rozhodně mocný muž...~ */ GOTO 6
  IF ~~ THEN REPLY #10836 /* ~"Rozumím. Odpověz mi na další otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10837 /* ~"Jo, je to dobrý jméno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 5.0 7.4
  SAY #10838 /* ~Zoufalství, které jsi předtím viděl na její tváři, přes ni přelétlo znovu jako černokřídlý stín, než se stačila ovládnout. "To je Ignus, jeden z největších čarodějů jaký kdy vzešel z téhle špinavé náhražky žumpy. Chytili ho a otevřeli kanál do sféry Ohně skrze něj a nyní je jen branou, držící se při životě silou své vůle. Kdyby ho někdo mohl na chvíli uhasit, dalo by mu to jeho život zase zpátky  -- ale nikdy na to nebudou mít dost vody."~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10839 /* ~"A co tahle karafa? Říká se, že je bezedná."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10840 /* ~"Někdo bude určitě schopen něco najít. Ehm, takže. Můžeš mi odpovědět ještě na další otázky?"~ */ GOTO 7
  IF ~~ THEN REPLY #10841 /* ~"Jaký je tvůj vztah k němu?"~ */ GOTO 18
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20699 /* ~"Co ta láhev vody? Prej je nekonečná."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10842 /* ~"To je škoda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.1 4.1 5.1 6.1 8.0 9.0 18.0 19.0
  SAY #10843 /* ~"Ano, poutníku? Co je to, co hledáš?"~ */
  IF ~~ THEN REPLY #10844 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10845 /* ~"Hledám deník. Nevidělas ho náhodou?"~ */ GOTO 4
  IF ~~ THEN REPLY #10846 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10847 /* ~"Hledám Sběrače jménem Pharod. Viděla nebo slyšela jsi o něm?"~ */ GOTO 19
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10848 /* ~"Kdo je ten hořící u vchodu?"~ */ JOURNAL #68053 /* ~Drusilla, která stojí u dveří v baru u Doutnajícího nebožtíka, mi řekla o muži, hořícím nad mříží. Jmenuje se Ignus a zřejmě to byl nejlepší mág, jaký kdy vzešel z Úlu, alespoň v poslední době. Jeho rivalové otevřeli průtok do Elementární Sféry Ohně skrze jeho tělo a teď už se udržuje naživu pouze silou vůle. Rozhodně mocný muž...~ */ GOTO 6
  IF ~~ THEN REPLY #10849 /* ~"Nic. Nashle."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #10850 /* ~Zaculí se na tebe a její podlitiny jako by zmizely. "Cokoliv řekneš, drahoušku."~ */
  IF ~~ THEN REPLY #10851 /* ~"Cokoliv. Odpověz mi na nějaké otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10852 /* ~"Cokoliv. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY #10853 /* ~"Jo, chytrá pusa k chytré hlavě. Nejsem popletená, jak by sis mohl myslet, blbečku. Mám taky v hlavě mozek."~ */
  IF ~~ THEN REPLY #10854 /* ~"No, když jsi tak chytrá, tak bys měla být schopná odpovědět mi na nějaké otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10855 /* ~"Škoda že ho nemáš v hlavě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY #10856 /* ~"Och, opravdu? A ty jsi byl někdy zamilovaný do živého plamene? Chtěl ses někdy naprosto rozplynout v objetí někoho jiného, ztratit sám sebe v horku chtíče? Tvé oči mi říkají, že si přeješ aby tomu tak bylo, ale neměl's to štěstí. Nemluv mi o vzrušení. Jizvy nejsou vzrušující. Boje nejsou vzrušující. Zločin není vzrušující. TY nejsi vzrušující."~ */
  IF ~~ THEN REPLY #10857 /* ~"Opravdu si nemyslím, že bych se ti měl ospravedlňovat."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #10858 /* ~"Kde bych měl začít? Jsem nesmrtelný, ztratím svou paměť pokaždé když zemřu, mám za parťáka lítající lebku, prožívám zážitky, které by přiměly většinu smrtelníků, aby vykřičeli svou duši skrze své oči a ty mi tady tvrdíš, že být zamilovaný do ohně je vzrušující? To není vzrušující -- to je jenom šílený."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #10859 /* ~"Kde bych měl začít? Jsem nesmrtelný, ztratím svou paměť pokaždé když zemřu, prožívám zážitky, které by přiměly většinu smrtelníků, aby vykřičeli svou duši skrze své oči a ty mi tady tvrdíš, že být zamilovaný do ohně je vzrušující? To není vzrušující -- to je jenom šílený."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #10860 /* ~"Náš rozhovor je u konce."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #10861 /* ~"Ne, to by bylo příliš těžké, že? Nepotřebuji s tebou mluvit." Otáčí se k tobě zády a odmítá se s tebou dále zabývat.~ */
  IF ~~ THEN REPLY #10862 /* ~"Nevidíme se naposled."~ */ EXIT
  IF ~~ THEN REPLY #10863 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.2
  SAY #10864 /* ~Náhle sebou trhne a podívá se na tebe zblízka. Do jejího hlasu se vkrade vzrušení. "To jsi ty, že? To jsi ty!"~ */
  IF ~~ THEN REPLY #10865 /* ~"Co tím myslíš?"~ */ GOTO 13
  IF ~~ THEN REPLY #10866 /* ~"Ne, to nejsem. Odpověz mi na další otázky."~ */ GOTO 13
  IF ~~ THEN REPLY #10867 /* ~"Ne, to nejsem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #10868 /* ~"Řekl, že přijdeš! Řekl, že jsi ten kdo ho osvobodí! Mluvil ke mně ve snu a řekl mi, že přijdeš s oceánem vody, která ho znovu přivede k rovnováze, aby mohl hořet skrze sféry! Osvoboď ho! Prosím, zachraň ho!"~ */
  IF ~~ THEN REPLY #10869 /* ~"Jaký je tvůj vztah k němu?"~ */ GOTO 14
  IF ~~ THEN REPLY #10870 /* ~"Budu o tom přemýšlet. Ale nejdřív mi odpověz na nějaké otázky."~ */ GOTO 15
  IF ~~ THEN REPLY #10871 /* ~"Budu o tom přemýšlet. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.1
  SAY #10872 /* ~"Byla jsem Ignusova milenka. Oba jsme milovali oheň, i když on ho miloval více než já. Ale nyní vidím jeho krásu jak trpí uprostřed plamenů a já, Drusilla, je miluji oba stejně."~ */
  IF ~~ THEN REPLY #10873 /* ~"Jsi trochu bláznivá, že? No dobře, odpověz mi na nějaké otázky."~ */ GOTO 15
  IF ~~ THEN REPLY #10874 /* ~"Seš totálně mimo mísu. Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drusilla","GLOBAL",1)
~ THEN BEGIN 15 // from: 13.1 14.0 17.0 20.0 21.0 22.0 23.0
  SAY #10875 /* ~"Kdy osvobodíš Ignuse?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10876 /* ~"Hned jakmile mu budu moci dát tohle. Říkají, že tato karafa obsahuje nekonečnou zásobu vody."~ */ GOTO 16
  IF ~~ THEN REPLY #10877 /* ~"Kdo přesně jsi?"~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10878 /* ~"Hledám deník. Nevidělas ho náhodou?"~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10879 /* ~"Hledám Sběrače jménem Pharod. Viděla nebo slyšela jsi o něm?"~ */ GOTO 20
  IF ~~ THEN REPLY #10880 /* ~"Co mi můžeš říct o téhle hospodě?"~ */ GOTO 17
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20700 /* ~"Jakmile to půjde. Slyšel jsem, že ta láhev je nekonečný zdroj vody."~ */ GOTO 16
  IF ~~ THEN REPLY #20710 /* ~"Ještě se uvidíme. Zatím."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.3 15.0 15.5
  SAY #10882 /* ~"Ano! Použij to na něj a on se jistě osvobodí! Ó, můj Ignusi, čekám na tebe!" Najednou zmlkne s hrůzou v očích. "Znáš přece zaklínadlo?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10883 /* ~"Ještě ne."~ */ GOTO 23
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #10884 /* ~"Ano, znám."~ */ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY #10885 /* ~"Je to vězení mé lásky, místo kde ho už staletí drží surově spoutaného, místo kam chodím mnoho desítek let, abych s ním rozmlouvala v jeho ohnivých mukách. Je to místo jež mne uvrhlo do existence delší než mé normální roky, delší než můj normální život. Nenávidím tohle místo."~ */
  IF ~~ THEN REPLY #10886 /* ~"Dobře. Odpověz mi na jiné otázky."~ */ GOTO 15
  IF ~~ THEN REPLY #10887 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY #10888 /* ~Její hlas se zachvěl hlubokou bolestí: "Byla jsem Ignusova milenka a on, můj milenec. Miloval plamen více nežli já a nyní se sám stal plamenem -- a protože ho miluji, miluji i plamen...  ale to je teď vše u konce. Nyní čekám až se uhasí. Prodávám to málo co mám, jen abych mohla být u něj."~ */
  IF ~~ THEN REPLY #10889 /* ~"Dobře. Odpověz mi na jiné otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10890 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.4 7.3
  SAY #10891 /* ~"Pharod?" zařehtá se. "Král Sběračů? Jeho a tu jeho smrdutou bandu najdeš pravděpodobně na smetišti na vzdálenější straně Úlu. Mnoho štěstí ve snaze získat od něj nějakou odpověď -- je to mazanej ďábel, to teda je."~ */
  IF ~~ THEN REPLY #10892 /* ~"Dobře. Odpověz mi na jiné otázky."~ */ GOTO 7
  IF ~~ THEN REPLY #10893 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY #10894 /* ~"Pharod?" zařehtá se. "Král Sběračů? Jeho a tu jeho smrdutou bandu najdeš pravděpodobně na smetišti na vzdálenější straně Úlu. Je to prohnanej ďábel, to teda je. Ačkoliv ne tak prohnanej jako můj Ignus,"~ */
  IF ~~ THEN REPLY #10895 /* ~"Dobře. Odpověz mi na jiné otázky."~ */ GOTO 15
  IF ~~ THEN REPLY #10896 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY #10897 /* ~"Neviděla jsem žádnej deník, co si vzpomínám. Já nevím. Možná se zkus zeptat některého ze Sběračů. Nevím!"~ */
  IF ~~ THEN REPLY #10898 /* ~"Tos mi moc nepomohla. Odpověz mi ještě na něco, Drusillo."~ */ GOTO 15
  IF ~~ THEN REPLY #10899 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY #20711 /* ~Její oči se ještě více rozjasnily, pokud je to vůbec možné. "Pak to použij. Použij to na něj!"~ */
  IF ~~ THEN REPLY #20712 /* ~"Za minutku. Potřebuji se ještě na něco zeptat."~ */ GOTO 15
  IF ~~ THEN REPLY #20713 /* ~"To se právě chystám udělat."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #20714 /* ~"Pak jdi a najdi to, moc tě prosím!" S pološíleným výrazem v očích tě úpěnlivě prosí, trhajíce tvůj rukáv.~ */
  IF ~~ THEN REPLY #20715 /* ~"Ano, ano. Ale ještě se musím na něco zeptat."~ */ GOTO 15
  IF ~~ THEN REPLY #20716 /* ~"Jistěže. Zatím."~ */ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~Tvář tohoto ghoula je pokryta velkou jizvou, a jedno z jeho očí bylo naprosto zničeno. Přestože zranění vypadá čerstvě, zdá se, že smrduté bytosti nepůsobí žádnou bolest, ani jí nijak nevadí. Všiml sis, že má za pasem zastrčen špinavý nůž... na rukojeti má vyřezána písmena 'UHIR'.~ */
  IF ~~ THEN REPLY #23791 /* ~"Zdravíčko..."~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"Uh... mohl bych dostat ten nůž, co máš zastrčený za opaskem?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Nech ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~Ghúl přimhouřil oči a zavrčel na tebe. Jazyk - nejméně dvě dlaně dlouhý - si zkroutil tak, aby jím olízl své strupovité rty.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"Uh... mohl bych dostat ten nůž, co máš zastrčený za opaskem?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"Jsi... Uhir?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"Chci se na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"Musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~Ghúl tě dál hladově pozoruje. Zatnul a opět uvolnil poškrábané pěsti, jako kdyby potlačoval touhu vyskočit a sežrat tě.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"Uh... mohl bych dostat ten nůž, co máš zastrčený za opaskem?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"Uklidni se a odpověz mi na mé otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~Ghúl na tebe zasyčel: "Ticho, maso! Ticho! Nebudu naslouchat věci z masa! Slyším jen tvé srdce, krev v žilách, sladkou, lahodnou krev... chutné, vydatné srdeční maso..." Slintá blahem a slinami skrápí zaprášené dlaždice. "TICHO!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"Uh... mohl bych dostat ten nůž, co máš zastrčený za opaskem?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"Tak sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~Tvář tohoto ghúla pokrývá velká jizva a jedno z jeho očí bylo naprosto zničeno. Všiml sis, že má za pasem zastrčen špinavý nůž. Jak ses přiblížil, začalo to na tebe syčet: "Pryč! Jdi pryč! *Nemluvím* s věcmi z masa, *neposlouchám,* maso! JDI!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"Uh... mohl bych dostat ten nůž, co máš zastrčený za opaskem?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~Ghúl se podíval na nůž, začal se drbat na hlavě a přemýšlet, jak se tam asi dostal. Nakonec vzhlédl a prohnaně se na tebe zazubil... "Maso chce nůž? Udělám s masem obchod , ano..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"A co tyto krysí ocasy?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"A co tyto krysí ocasy?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"Mohl bych ti dát měďák..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"Ale já nemám měďák, abych ti ho dal."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"Předej mi to, ghúle... dříve, než si to vezmu sám."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~Ghúl potřásl hlavou, pak si ukázal na ústa. "Žádné, žádné... jídlo, maso, jo..." Jeho dlouhý šedý jazyk se topí ve špinavých slinách.~ */
  IF ~~ THEN REPLY #23835 /* ~"Když ti najdu, něco k jídlu, tak se vrátím."~ */ JOURNAL #23836 /* ~Našel jsem ghúla, který má Uhirův nůž. Chce za něj nějaké jídlo... snad pro něj něco najdu nebo zabiju, třeba nějaké krysy.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~Ghúl si je kriticky prohlíží. "Vydatné ano, ale malé. Víc masa... víc! Jsem hladovější!"~ */
  IF ~~ THEN REPLY #23838 /* ~"Vrátím se, až budu mít víc."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"Ano, ano!" Ghoul je nenasytně popadl a zhltnul. Když si olízal poškrábané prsty, hodil ti Uhirův nůž.~ */
  IF ~~ THEN REPLY #23840 /* ~"Uh... díky. Sbohem."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"Hssst! Hej maso, lahodné, krvavé, šťavnaté maso - nic ve zlym! Maso chce nůž? Uděláme s masem obchod!"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"A co tyto krysí ocasy?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"A co tyto krysí ocasy?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"Mohl bych ti dát měďák..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"Ale já nemám měďák, abych ti ho dal."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"Tak nevadí. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~Tvář tohoto ghúla pokrývá velká jizva, a jedno z jeho očí bylo naprosto zničeno. Přestože zranění vypadá čerstvě, zdá se, že smrduté bytosti nepůsobí žádnou bolest, ani jí nijak nevadí.~ */
  IF ~~ THEN REPLY #23849 /* ~"Zdravíčko..."~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Nech ghúla být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~Tvář tohoto ghúla je pokryta velkou jizvou, a jedno z jeho očí bylo naprosto zničeno. Jak ses přiblížil, začalo to na tebe syčet: "Pryč! Jdi pryč! *Nemluvím* s věcmi z masa, *neposlouchám,* maso! JDI!"~ */
  IF ~~ THEN REPLY #23852 /* ~Odejdi.~ */ EXIT
END

// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS42.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DS42~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6595 /* ~Kostlivec se otočil tváří k tobě. Na čele má vyryto číslo "42" a řada jeho kostí, hlavně na čelistech a spojích, byla svázána koženými pásky. Kostru halí černé pracovní šaty.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6612 /* ~"*Myslím*, že tohle je tělo, na které si vzpomínám..."~ */ GOTO 1
  IF ~~ THEN REPLY #6613 /* ~"Promiňte prosím, neviděli jste tady někde kolem chodit kostlivce?"~ */ DO ~IncrementGlobalOnceEx("GLOBALSkeleton_Chaotic","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",0)
~ THEN REPLY #6614 /* ~"Ptám se: Proč šaty? Chci říct, že nevypadáš na to, jako bys měl něco, co bys musel zakrývat."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Skeleton_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Skeleton_Chaotic","GLOBAL",1)
~ THEN REPLY #6615 /* ~"Ptám se: Proč šaty? Chci říct, že nevypadáš na to, jako bys měl něco, co bys musel zakrývat."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6616 /* ~Použij svou schopnost Kosti-vyprávějte na tělo.~ */ GOTO 2
  IF ~~ THEN REPLY #6617 /* ~Pečlivě prozkoumej kostlivce.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6618 /* ~Zkus vypáčit šrouby z kostlivcových kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  Global("Skeleton_Examine","GLOBAL",1)
NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6619 /* ~Zkus vypáčit šrouby z kostlivcových kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
Global("Skeleton_Examine","GLOBAL",1)
~ THEN REPLY #6620 /* ~Zkus vypáčit šrouby z kostlivcových kloubů.~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6621 /* ~"Co s tímhle kostlivcem, Morte? Bude ti stačit jako tělo?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6622 /* ~Nechej kostlivce na pokoji.~ */ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6623 /* ~Nechej kostlivce na pokoji.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6624 /* ~Nechej kostlivce na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.9 3.0 3.3
  SAY #6596 /* ~Při zvuku tvého hlasu se kostlivec náhle napřímil. Zkřížil si paže na hrudníku a prsty zahákl za žebra.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6625 /* ~Překřiž si ruce na hrudníku.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6626 /* ~Napodob gesto... sleduj co se stane.~ */ GOTO 9
  IF ~~ THEN REPLY #6627 /* ~"Uh..."~ */ GOTO 10
  IF ~~ THEN REPLY #6628 /* ~Nechej kostlivce samotného.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4
  SAY #6597 /* ~Mrtvola neodpovídá. Vypadá to, že je mrtvá příliš dlouho na to, aby byla schopna odpovědět na nějakou tvou otázku.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6629 /* ~Nechej kostlivce na pokoji.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6630 /* ~Nechej kostlivce na pokoji.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6631 /* ~Nechej kostlivce na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 10.2
  SAY #6598 /* ~Udivuje tě, že tahle hromada kostí pořád ještě drží pohromadě. Kostlivcovy zažloutlé kosti jsou zamazány sádrou a několika vrstvami odporně páchnoucího lepidla... vidíš, že kosti pokrývají stovky vlasových fraktur. Ačkoliv si někdo dal práci s tím, aby ovázal tohoto kostlivce koženými řemínky a sešrouboval jeho klouby dohromady, řemínky jsou otřepané a šrouby vypadají, že co chvíli upadnou. ~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63495 /* ~"Myslím, že tohle je ta mrtvola, na kterou jsem si vzpomněl..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",0)
~ THEN REPLY #6632 /* ~Zkus vypáčit šrouby z kostlivcových kloubů.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ EXTERN ~DMORTE~ 110
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip2","GLOBAL",1)
~ THEN REPLY #6633 /* ~Zkus vypáčit šrouby z kostlivcových kloubů.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6634 /* ~"Nevadí, když si vypůjčím některé z těchto řemínku a šroubů?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6635 /* ~Nechej kostlivce na pokoji.~ */ DO ~SetGlobal("Morte_Skel_Mort_Quip","GLOBAL",1)
~ EXTERN ~DMORTE~ 111
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",0)
~ THEN REPLY #6636 /* ~Nechej kostlivce na pokoji.~ */ EXIT
  IF ~  Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #6637 /* ~Nechej kostlivce na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 12.0
  SAY #6599 /* ~Jako odpověď nechal kostlivec spadnout paže podél těla. Kožený provaz udržující kostlivcovo torzo v pevném stavu praskl a žebra se vyhnula ven jako dvojité dveře. ~ */
  IF ~~ THEN REPLY #6638 /* ~Sáhni do hrudníku a prohledej ho.~ */ GOTO 5
  IF ~~ THEN REPLY #6639 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0
  SAY #6600 /* ~K tvému překvapení tvoje ruka zmizela hned, jak jsi ji vložil mezi žebra... máš silný pocit, že je někde úplně *jinde.* Jak saháš do hrudníku, tvá ruka znovu narazila na neviditelný objekt. Má velikost pěsti a zdá se, že je připojen k páteři kostlivce. ~ */
  IF ~~ THEN REPLY #6640 /* ~Vyjmi předmět.~ */ DO ~Kill(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6641 /* ~Nechej kostlivce samotného.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.7 0.8 3.2
  SAY #6601 /* ~Šrouby lehce vyklouzly z kostlivcových kloubů. Kostlivec se rozpadl, některé jeho kosti sebou dosud škubou.~ */
  IF ~~ THEN REPLY #6642 /* ~"Omlouvám se za to, Kosti..."~ */ DO ~Kill(Myself)
GiveItemCreate("Spike",Protagonist,1,0,0)
GiveItemCreate("Strap",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #6602 /* ~Jakmile jsi ten předmět vyňal, kostlivec se náhle rozpadl a kovové šrouby udržující jeho klouby zazvonily o podlahu. Ať už byl ten předmět cokoliv, zdá se, že to on držel kostlivce pohromadě.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6643 /* ~Prozkoumej předmět.~ */ GOTO 8
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6644 /* ~Prozkoumej předmět.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #6603 /* ~Vypadá to jako nenápadná hromádka železa. Nedokážeš si představit, proč by to někdo schovával mezi kostlivcova žebra.~ */
  IF ~~ THEN REPLY #6645 /* ~Prozkoumej kousek kovu.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 1.1 12.1
  SAY #6604 /* ~Jako odpověď nechal kostlivec spadnout paže podél těla. Kožený provaz udržující kostlivcovo torzo v pevném stavu praskl a žebra se vyhnula ven jako dvojité dveře. Nedokážeš si vysvětlit proč, ale máš neodolatelné nutkání sáhnout do jeho hrudníku. ~ */
  IF ~~ THEN REPLY #6646 /* ~Sáhni do hrudníku a prohledej ho.~ */ GOTO 5
  IF ~~ THEN REPLY #6647 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 12.2
  SAY #6605 /* ~Kostlivcovy paže spadly podél těla.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #6648 /* ~"Uh... ahoj?"~ */ GOTO 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #6649 /* ~"Uh... ahoj?"~ */ GOTO 13
  IF ~~ THEN REPLY #6650 /* ~Pečlivě prozkoumej kostlivce.~ */ DO ~SetGlobal("Skeleton_Examine","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #6651 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #6606 /* ~Vypadá to jako nenápadná hromádka železa. Tvé předchozí vtělení muselo mít důvod schovat to sem.~ */
  IF ~~ THEN REPLY #6652 /* ~Pečlivě prozkoumej kousek kovu.~ */ DO ~AddexperienceParty(250)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #6607 /* ~Kostlivec znovu zkřížil ruce na hrudi.~ */
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #6653 /* ~Překřiž si ruce na hrudníku.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("42_Secret","GLOBAL",0)
~ THEN REPLY #6654 /* ~Napodob gesto... sleduj co se stane.~ */ GOTO 9
  IF ~~ THEN REPLY #6655 /* ~"Uh..."~ */ GOTO 10
  IF ~~ THEN REPLY #6656 /* ~Nechej kostlivce být.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #6608 /* ~Kostlivec znovu zkřížil ruce na hrudi.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 112
END

IF ~~ THEN BEGIN 14 // from: 8.0 11.0
  SAY #58983 /* ~Když jsi položil obě ruce na kus železa, abys jej prozkoumal, ozvalo se *hssssss,* a kov se vypařil, zanechávaje za sebou podivnou dýku, hrstku mincí zabalených v hadříku a dvě krvavé kapky - vypadá to, že byly *uvnitř* kusu železa.~ */
  IF ~~ THEN REPLY #58984 /* ~Vezmi si věci a jdi pryč.~ */ DO ~GiveItemCreate("GSKnife",Protagonist,1,0,0)
GiveItemCreate("Rags",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveItemCreate("Clotchrm",Protagonist,1,0,0)
GiveGoldForce(99)
~ EXIT
END

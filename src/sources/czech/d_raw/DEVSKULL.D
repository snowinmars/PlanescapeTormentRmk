// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEVSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEVSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31692 /* ~"Zlý? Pche! Jsem jenom pragmatik."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 5
END

IF ~~ THEN BEGIN 1 // from:
  SAY #31693 /* ~"A není to fajn řešení? Pro mě vždycky fungovalo. Jedy a magie fungují stejně dobře, jak sem brzo zjistil."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 6
END

IF ~  Global("EvSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31694 /* ~Lebka promlouvá hlubokým hlasem, ale žertovným tónem. "Přišel jsi sem zjistit pravdu? Pravdy mám spoustu."~ */
  IF ~~ THEN REPLY #31695 /* ~"Řekni mi o sobě."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31696 /* ~"Jak ses sem dostal?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31697 /* ~"Co mi můžeš říct o Lotharovi?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 6
  IF ~~ THEN REPLY #31698 /* ~"Co mi můžeš říct o těch ostatních lebkách?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 7
  IF ~~ THEN REPLY #31699 /* ~"Zapomeň na to. Promiň, že jsem tě zdržoval. Sbohem."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("EvSkull_Talk","AR0508",1)
~ THEN BEGIN 3 // from:
  SAY #31700 /* ~"Přišel ses poučit kapku víc o pravých způsobech světa, eh? Jsem tvůj člověk!"~ */
  IF ~~ THEN REPLY #31701 /* ~"Řekni mi o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31702 /* ~"Jak ses sem dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31703 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 6
  IF ~~ THEN REPLY #31704 /* ~"Co mi můžeš říct o těch ostatních lebkách?"~ */ GOTO 7
  IF ~~ THEN REPLY #31705 /* ~"Zapomeň na to. Promiň, že jsem tě zdržoval. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.0 6.1 7.0
  SAY #31706 /* ~"Já? Já sem Stern, jeden z velkejch praktikovatelů osobního míru prostřednictvím intenzivního přesměrovávání nepřátelskejch akcí.."~ */
  IF ~~ THEN EXTERN ~DANSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 6.2 7.1 8.0 8.1
  SAY #31707 /* ~"Sranda, že o tom mluvíš. Měl sem černou knihu, kerou sem dostal, páč bych moh rozlousknout její tajemství. Navalila svý síly za děsivou cenu - kerou bych ale stejně znova zalepil - a já se řácky vylepšil. Ale trocha pozdě mi docvaklo, že ta kniha taky mě zradí jinýmu - bručící krysí věci, co mě zasypala hromadou hlodavců a servala moje maso z mejch ubohejch kostí. Kniha vesele zrazovala dálejc a putovala vod krysy ke kryse, až uvízla v tlapách krysodlaka Mantuoka. Esli tu knihu ňákou náhodou najdeš, vem si její síly a pak se jí rychle zbav, ináč skončíš stejně blbě jako já."~ */
  IF ~~ THEN REPLY #31708 /* ~"Dám si pozor. Řekni mi o sobě."~ */ JOURNAL #31712 /* ~Stern, lebka vraha z Lotharovy sbírky lebek, mi řekla o knize, kterou má Mantuok Krysodlak. Varoval mě před mocí, kterou by mi kniha mohla nabídnout.~ */ GOTO 4
  IF ~~ THEN REPLY #31709 /* ~"Díky. Co mi můžeš říct o Lotharovi?"~ */ JOURNAL #31712 /* ~Stern, lebka vraha z Lotharovy sbírky lebek, mi řekla o knize, kterou má Mantuok Krysodlak. Varoval mě před mocí, kterou by mi kniha mohla nabídnout.~ */ GOTO 6
  IF ~~ THEN REPLY #31710 /* ~"Dobrá tedy... Co mi můžeš říct o těch ostatních lebkách?"~ */ JOURNAL #31712 /* ~Stern, lebka vraha z Lotharovy sbírky lebek, mi řekla o knize, kterou má Mantuok Krysodlak. Varoval mě před mocí, kterou by mi kniha mohla nabídnout.~ */ GOTO 7
  IF ~~ THEN REPLY #31711 /* ~"Tragický příběh. Sbohem."~ */ JOURNAL #31712 /* ~Stern, lebka vraha z Lotharovy sbírky lebek, mi řekla o knize, kterou má Mantuok Krysodlak. Varoval mě před mocí, kterou by mi kniha mohla nabídnout.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 5.1 7.2
  SAY #31713 /* ~"Co ti povím o Lotharovi? Nepovím ti nic. I tato mizerná existence je lepší než zapomnění, který mi slibuje, jestli ho prásknu."~ */
  IF ~~ THEN REPLY #31714 /* ~"Řekni mi to..."~ */ GOTO 9
  IF ~~ THEN REPLY #31715 /* ~"Tak tedy dobře. Řekni mi o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31716 /* ~"Dobře. Tak jak ses sem dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31717 /* ~" Co mi můžeš říct o těch ostatních lebkách?"~ */ GOTO 7
  IF ~~ THEN REPLY #31718 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 5.2 6.3
  SAY #31719 /* ~"Vo vostatních lebkách ti nic hezkýho povědít nemůžu. Neměl sem tu čest, aby se podělily se mnou vo svý zkušenosti. Nojo, než si přišel, tak sme spolu nijak moc nekecali. Možná," řekla s úsměvem, "že je něco fakt zvláštního už jenom v tvý přítomnosti."~ */
  IF ~~ THEN REPLY #31720 /* ~"Možná. Řekni mi o sobě."~ */ GOTO 4
  IF ~~ THEN REPLY #31721 /* ~"Bez pochyby. Jak ses sem dostal?"~ */ GOTO 5
  IF ~~ THEN REPLY #31722 /* ~"Správně. Tak to bys mi teď mohl říct něco o Lotharovi."~ */ GOTO 6
  IF ~~ THEN REPLY #31723 /* ~"Docela pravda a právě o to něco zvláštního přijdeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31724 /* ~"Definuj to jak chceš, Pochmurnej Skalpe." Stern se obrátil zpět k tobě. "Byl sem nejlepčí, aspoň se to řikalo."~ */
  IF ~~ THEN REPLY #31725 /* ~"Tak jak jsi nakonec skončil tady?"~ */ GOTO 5
  IF ~~ THEN REPLY #31726 /* ~"Co se ti stalo?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #31727 /* ~Máš pocit, jako by na tebe Stern vrčel. "A ziskám tím akorát tvý nehynoucí přátelství, co? Pffff. Není nic, co bys mi moh nabídnout, žádná služba ani věc, kerejma bys mě donutil zradit Lothara. Zmizni!"~ */
  IF ~~ THEN REPLY #31728 /* ~"Tak mi aspoň odpověz ještě na pár otázek..."~ */ GOTO 10
  IF ~~ THEN REPLY #31729 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31730 /* ~"Ne." Lebka se ti přestala věnovat, cítíš, jak síla její osobnosti mizí.~ */
  IF ~~ THEN REPLY #31731 /* ~"Tak fajn."~ */ EXIT
END

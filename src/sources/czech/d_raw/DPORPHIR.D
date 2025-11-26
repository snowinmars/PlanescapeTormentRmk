// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~Každý kousek kůže tohoto muže je pokrytý sítí černých linek, jako by se nějaký umělec rozhodl inkoustem zvýraznit každý záhyb jeho kůže. Celkový efekt je takový, že i když nemá na tváři žádný výraz, vypadá, jako by se mračil. ~ */
  IF ~~ THEN REPLY #25993 /* ~"Zdravím.."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~Nechej pomalovaného muže být.~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~Vidíš Porphirona, stále stojí na ulici s ponurým výrazem na tváři a nevšímá si kolemjdoucích. Síť linek na jeho tváři je uspořádaná do série pravých úhlů.~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"Zdravím, Porphirone. Můžu se tě na něco zeptat?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"Zdravím, Porphirone."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"Zdravím, Porphirone. Můžu se tě na něco zeptat?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"Tento tě oslovuje, Porphirone: Můžu se tě na něco zeptat?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"Tento tě oslovuje, Porphirone."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"Tento tě oslovuje, Porphirone: Můžu se tě na něco zeptat?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~Nechej Porphirona být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~Když promlouváš, vidíš, že Pophironova tvář se změnila do série podivných křivek. "Tento se ptá: Máš provázek na krk plný korálku, jež ukraden byl?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"Myslím si to. Je to tak?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~Po získání náhrdelníku od banditů před Doutnajícím nebožtíkem jsem Pophironovi jeho náhrdelník vrátil.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"Ještě ne.. kdeže ti to ukradli?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"Ještě ne. Budu hledat dál a pak se vrátit."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"Tento očekává: Jakou otázku ty na jazyku máš?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"Můžeš mě učit, jak následovat cestu bojovníka?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"Rád bych opustil svou profesi a stal se zase bojovníkem."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"Můžeš mi říct, jestli už jsem připravený pro další učení."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"Můžeš mi říct, jestli jsem připravený na další trénink?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"Dosáhl jsem úrovně schopného se všemi zbraněmi, Porphirone. Můžeš mě naučit ještě něco?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"Naučím se více o zbraních." ~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"Teď už nemám žádné otázky. Možná se vrátím později."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"Tento má jméno: Tento se nazývá Porphiron." Mužův hlas je jako gong, když mluví, linky na jeho tváři se kroutí a vytváří sérii sférických vzorů. "Tento chce vědět: proč ty oslovuješ tohoto?"~ */
  IF ~~ THEN REPLY #26706 /* ~"Chtěl jsem se tě zeptat na pár věcí ohledně města."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"Zapomeň na to. Promiň, že jsem tě zdržoval."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"Tento dává ti na vědomí: Tento nemůže na tvou otázku odpovědět." Linky na jeho tváři se zavířily a nakonec se rozpadly na sérii klikyháků. "Tento před dobou nepříliš vzdálenou vstoupil do tohoto místa zdí plného."~ */
  IF ~~ THEN REPLY #26708 /* ~"Dobrá tedy. Uh, ale musím se tě na něco zeptat: Proč se ty linky na tvé tváři... hýbají?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"Dobrá tedy. Promiň, že jsem tě zdržoval."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"Linie ukazují zlost. Ty jsi uražen?" Linky se pomalu narovnaly a formují se do jemných oblouků. "Urážka nebyla míněna: Tento ptá se, zda ty přijmeš mnoho mnoho omluv tohoto?"~ */
  IF ~~ THEN REPLY #26710 /* ~"Neurazil jsi mě... proč se zlobíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"Velmi dobře. Děkuji ti za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"Tento ti říká o události nedávné: Víš ty, že tento byl třemi obklíčen? Tři žádali předmět ve vlastnictví tohoto. Tento obával útoku se: Co měl tento dělat. Tento odevzdal předmět sporu třem."~ */
  IF ~~ THEN REPLY #26713 /* ~"No, dobře že jsi měl strach. Jestli byli tři, mohli tě zabít, kdybys jim tu věc nedal."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"Aha. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"Tento byl nepochopen." Linky na jeho tváři se zkroutily, potom se znovu vyhladily. "Tento se nebál, že býti zabit. Tento se bál, že on by zabíti tři."~ */
  IF ~~ THEN REPLY #26715 /* ~"No, když jsi je mohl všechny zabít, proč si je nechal, aby tě okradli?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"Uh, to od tebe bylo velmi odvážné a ohleduplné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"Tento následuje cestu bojovníka. Mnoho zbraní kráčelo s tímto. Pěst, ostří, hůl, sekerka, kladivo: Nástroje tyto všechny známy tomuto."~ */
  IF ~~ THEN REPLY #26718 /* ~"To není zrovna vysvětlení... tak znovu: jestli jsi válečník s takovým tréninkem, proč si je nechal, aby tě okradli?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"Aha. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"Tento má zakázáno útočit." Během jeho řeči se linky vlní jako vodní hladina. "Kdyby tento udeřil na tři ve zlosti: Přísaha nenásilnosti by zmařena."~ */
  IF ~~ THEN REPLY #26720 /* ~"Přísaha nenásilí? Ty jsi bojovník a *pacifista*?"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"Aha. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"Tento je neseznámen s tvou řečí: Co je pas-ifista?"~ */
  IF ~~ THEN REPLY #26722 /* ~"Na tom nezáleží. Proč jsi tak tvrdě trénoval, když ti není dovoleno na někoho zaútočit?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"Na tom nezáleží. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"Tento je jeden z *Řádu Erit Agge:* Tito očekávají Konečné dny, kdy budou tito vyzváni do bitvy. Trénink a dovednosti tohoto: Ony musí býti zticha, dokud čas nepřijde."~ */
  IF ~~ THEN REPLY #26724 /* ~"Mezitím se necháš na ulici okrást, bez toho, že by ses bránil?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"Jestli je to tvá víra, tak bys ji měl dodržovat. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"Tento objasní: Předmět cenný. Discpilína *Erit Agge* ta větší ceny."~ */
  IF ~~ THEN REPLY #26727 /* ~"Jestliže nemůžeš bojovat, nebyla tedy šance přesvědčit zloděje, aby ti ten předmět vrátili?"~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"Aha. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"Tento oslovil tři zloděje: A co se stalo? Žádost tohoto setkala s pohrdáním se: Tři nenavrátili předmět."~ */
  IF ~~ THEN REPLY #26729 /* ~"Mohl bych se po nich podívat a získat tu věc zpátky."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"Mohl bych je zmlátit jako vzteklé psy a vzít jim to, co ti ukradli."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"Mohl bych od nich ten předmět získat zpátky, tedy jestli jsi ochotný mi za mé služby zaplatit."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"Aha. Je mi líto tvé ztráty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"Tento omlouvá se: Nic víc tento nemá, vše už bylo odebráno."~ */
  IF ~~ THEN REPLY #26733 /* ~"Dobrá tedy. Prostě je pudu zabít.~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"Ty nemáš vůbec *nic*?"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"Tak to ti nemůžu pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"Tento znovu omlouvá se: Budeš souhlasit, že tě tento vycvičiti?"~ */
  IF ~~ THEN REPLY #26736 /* ~"Trénovat? V čem?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"Nezájem.  Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"Mnoho zbraní kráčelo s tímto: Pěst, ostří, hůl, sekerka, kladivo. Tyto nástroje dobře známy tomuto: Přeješ si ty, aby nástroje tyto i tobě známy byly?"~ */
  IF ~~ THEN REPLY #26739 /* ~"Hmmmm. Trénink se zbraněmi... Jestli je to zadarmo..."~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"Nezájem.  Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"Tento cenu vyslovuje: Pouze když předmět bude navrácen, nic víc, nic míň."~ */
  IF ~~ THEN REPLY #26741 /* ~"Dobrá, udělám to. Jaký předmět ti to ukradli?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"Nezájem.  Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"Tento se zeptat musí: Přivedeš násilí na tři, jež okradli tohoto?"~ */
  IF ~~ THEN REPLY #26743 /* ~"No, jestli nemají dost rozumu, aby mi ten předmět dali, když je hezky požádám, mohlo by se to vyvinout... nezdravě."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"Ne pokud tomu budu moci zabránit."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"Víš, nemyslím si, že bych ti mohl pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~Linky na mužově tváři se přetvořily na sérii překrývajících se elips. "Jestli toto zpráva, které oni rozumějí: tedy takto ta zpráva může doručena býti."~ */
  IF ~~ THEN REPLY #26747 /* ~"Dobrá tedy. O jaký předmět jsi to přišel?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"Víš, mám pocit, že ti nedokážu pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"Tento obává se: Zpráva násilí neobsahující porozuměna nebude." Linky na mužově tváři vytvořily sérii elips. "Tento ale námitky nemá, abys nezkusil takto."~ */
  IF ~~ THEN REPLY #26749 /* ~"Dobrá tedy. O jaký předmět jsi to přišel?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"Víš, nemyslím si, že bych ti mohl pomoc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"Předmět tento: Provázek černých a rudých modlitebnách korálku, on nošen na krku. Cena korálů těchto ne v mědi. Cena korálů těchto hodnocena vírou."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"Počkej chvíli. Už takový náhrdelník mám. Není to tenhle?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~Když jsem procházel Úlem, potkal jsem muže, kterému pokrývala kůži série pohyblivých čar. Prohlásil, že mu ukradli náhrdelník jeho řádu... Erit-Agge, nebo tak nějak... tři zloději oblečení v černé a červené, kteří byli, jak říkal, 'blízko baru který hoří vevnitř.' Náhrdelník od těch banditů už jsem měl, takže jsem mu ho hned vrátil.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"Tak dobře. Zkusím se po tom náhrdelníku podívat. Nevíš náhodou, kde by ti banditi mohli být?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"Tento ví, kde slova zlostná promluvena a kde předmět ztratil se: Tam u baru, ten hoří vevnitř? Tři byli před místem: V černé a červené oni oblečeni."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"Tři zloději, oblečení v červené a černé, blízko baru, který zevnitř hoří? To nebude těžké najít. Za chvíli jsem tady."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~Když jsem procházel Úlem, potkal jsem muže, kterému pokrývala kůži série pohyblivých čar. Prohlásil, že mu ukradli náhrdelník jeho řádu... Erit-Agge, nebo tak nějak... tři zloději oblečení v černé a červené, kteří byli, jak říkal, blízko baru který hoří vevnitř. Půjdu se tam podívat a zjistím, jestli bych pro něj ten náhrdelník nezískal.~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"Tři zloději, oblečení v červené a černé, blízko baru U Doutnajícího nebožtíka? To nebude těžké najít. Za chvíli jsem tady."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~Když jsem procházel Úlem, potkal jsem muže, kterému pokrývala kůži série pohyblivých čar. Prohlásil, že mu ukradli náhrdelník jeho řádu... Erit-Agge, nebo tak nějak... tři zloději oblečení v černé a červené, kteří byli blízko baru U Doutnajícího nebožtíka. Půjdu se tam podívat a zjistím, jestli bych pro něj ten náhrdelník nezískal.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"Tento vidí, co držíš ty: toto korále, jež ztraceny." Bere si je od tebe... všiml sis, že jeho ruce jsou pokryté stejnými linkami jako jeho tvář. "Tento má otázku: Jak jsi získal korále od tří?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"Zabil jsem je a vzal jsem jim korálky."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"Ukradl jsem to."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"Koupil jsem to."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"Řekl jsem jim pár nevinných lží a oni mi ho dali sami."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"Přesvědčil jsem je, že je v jejich zájmu, aby mi ten náhrdelník dali."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~Lhát: "Uh... Ukecal jsem je. Nakonec mi ty korálky dali sami."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~Lhát: "Uh... Já to od nich koupil. Ochotně vyjednávali."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"Tento je spokojen: Zpráva násilí byla porozuměna. Tento věnuje: Několik poděkovaní, ano?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"Rád jsem to udělal. Ale mám na tebe otázku: Jestli nesmíš bojovat, jak jsi získal svůj bojovnický výcvik?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"Co bude s tím tréninkem, který jsi mi slíbil?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"Tento ví: Ten kdo klamáním bojuje jméno má v Řádu *Erit Agge.*" Porphironova tvář se zlomila do ostrých úhlů. "Tito nazýváni podvodníky jsou: To cesta bez kázně a cti."~ */
  IF ~~ THEN REPLY #26770 /* ~"Kdybys byl pravý bojovník, naučil by ses používat KAŽDOU zbraň, ke které máš přístup."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~Pravda: "Oh, stejně jsem ty zloděje zabil."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~Lhát: "Oh, stejně jsem ty zloděje zabil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"Tento ví: Ten kdo slovy bojuje jméno má v Řádu *Erit Agge.*" Porphironova tvář se zlomila do ostrých úhlů. "Tito nazýváni diplomaty jsou: To cesta bez kázně a cti."~ */
  IF ~~ THEN REPLY #26773 /* ~"Kdybys byl pravý bojovník, naučil by ses používat KAŽDOU zbraň, ke které máš přístup."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~Pravda: "Oh, stejně jsem ty zloděje zabil."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~Lhát: "Oh, stejně jsem ty zloděje zabil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"Tento ví: Ten kdo mincemi bojuje jméno má v Řádu *Erit Agge.*" Porphironova tvář se zlomila do ostrých úhlů. "Tito nazýváni obchodníky jsou: To cesta bez kázně a cti."~ */
  IF ~~ THEN REPLY #26776 /* ~"Kdybys byl pravý bojovník, naučil by ses používat KAŽDOU zbraň, ke které máš přístup."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~Pravda: "Oh, stejně jsem ty zloděje zabil."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~Lhát: "Oh, stejně jsem ty zloděje zabil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"Tento věnuje omluvy: To nemyšleno jako urážka."  Úhly na Pophironově tváři se zaostřily a pomalu se vyrovnaly do vlnek. Tento věnuje: Několik poděkovaní, ano?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"Rád jsem to udělal. Ale mám na tebe otázku: Jestli nesmíš bojovat, jak jsi získal svůj bojovnický výcvik?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"Co bude s tím tréninkem, který jsi mi slíbil?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"Tento vyjasňuje: *Erit Agge* může trénovati s jedním, když žádná zlost mezi nimi."~ */
  IF ~~ THEN REPLY #26781 /* ~"Aha. Můžeš mě naučit, jak ovládat ty zbraně?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"Jsem jenom zvědavý. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"Tento tě může cvičit, ano. Ale tento tě varuje: Se znalostí násilí pokušení používat ho přichází."~ */
  IF ~~ THEN REPLY #26783 /* ~"To doufám."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"Tento promlouvá: Je to tvé přání, zanechat za sebou předchozí profesi tvou? Cesta válečníka nemůže býti kráčena s myslí nesoustředěnou."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"Nemám teď žádnou jinou profesi. Budu následovat cestu bojovníka."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"Ano. Přeju si opustit magická umění a věnovat se zbraním."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"Už nechci být zlodějem... Rád bych se stal bojovníkem."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"Tento tě slyšel: Ty připraven jsi ke kráčení po cestě. Tento tě žádá abys poslouchal..."~ */
  IF ~~ THEN REPLY #26790 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"Ty teď cestu bojovníka následuješ. Ty přeješ si více z cesty této naučiti se?"~ */
  IF ~~ THEN REPLY #26791 /* ~"Ano."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"To už znám. Co mě můžeš naučit o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"Teď ne... jenom jsem si přál přeorientovat se. Díky, Porphirone."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"Tento tě bude učit." Linky na jeho tváři se zkroutily do trojúhelníků. "Věci tyto zahrnují úhly tréninku tvého: Soustředění, zkušenost, dovednost."~ */
  IF ~~ THEN REPLY #26795 /* ~"Tomu nerozumím. Můžeš mi to vysvětlit?"~ */ JOURNAL #26798 /* ~Porphiron mi řekl o cvičení v umění bojovníka. Řekl, že abych se o boji naučil více, musím se odevzdat profesi válečníka a žádné jiné. Kdybych byl mág, zloděj nebo jiná profese, musel bych ji opustit, abych se mohl dozvědět více o boji a zbraních.~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"S tímhle už jsem seznámený. Co mi můžeš říct o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"No, možná se vrátím později, až budu připravený na další lekci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"Tento bude o soustředění mluvit nejprve: Aby učení v tobě zakořenilo, ty soustředění musíš vlastnit. Ty odevzdán cestě bojovníka musíš býti. Bojovník je tvá profese a jiná žádná."~ */
  IF ~~ THEN REPLY #26799 /* ~"Rozumím: Můžu být pouze bojovník, jestli se chci učit o zbraních. Jaký je další úhel tréninku?"~ */ JOURNAL #26803 /* ~Porphiron řekl, že existuje hranice, do které se může bojovník učit, která je založená na jeho úrovni. Pobídl mě, ať se vrátím pro další lekci, až získám další zkušenosti."~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"Tohle už znám. Co mi můžeš říct o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"No, možná se vrátím později, až budu připravený na další lekci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"Tento bude podruhé mluvit o zkušenosti: Pravá boje znalost přichází se zkušeností pouze. Existuje limit jak mnoho poučení se zbraní jeden můžu obsáhnouti. Když ty dosáhneš novou úroveň ve válečníka povolání: Možné ono, ty připraven pro novou instrukci?"~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"Rozumím: Existuje mez, po kterou se můžu učit, ale ta mez se zvýší, když dosáhnu další úroveň. Jaký je další úhel mého tréninku?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"Rozumím: Existuje mez, po kterou se můžu učit, ale ta mez se zvýší, když dosáhnu další úroveň. Jaký je další úhel mého tréninku?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"Tohle už znám. Co mi můžeš říct o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"No, možná se vrátím později, až budu připravený na další lekci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"Tento bude potřetí mluvit o dovednosti: Existuje pouze určitá množství, jež jeden může naučit o zbrani. Tento dodává: Existuje pouze něco, co tento může naučit. Zbraně znalost ve třech úrovních přichází: Ignorant, dovedný a specialista. Mezi těmito další úrovně jsou, ve kterých student překonal učení předchozí, ale ještě nedorazil na další úroveň zbraně zvládání."~ */
  IF ~~ THEN REPLY #26808 /* ~"Jaké jsou ty úrovně?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"Základy jsem pochopil. Co mě můžeš naučit o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"Prozatím mi to stačí... Vrátím se později, jestli budu potřebovat další lekci."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"Úroveň ignoranta tato: Když jeden nezná zbraň, on používá. Útok je neohrabaná. Poškození menší mnohem než potenciál zbraně."~ */
  IF ~~ THEN REPLY #26811 /* ~"To mi zní, jako když jsem se probral v Márnici...pokračuj. Jaká je úroveň dovedného?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"Základy jsem pochopil. Co mě můžeš naučit o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"Prozatím mi to stačí... Vrátím se později, jestli budu potřebovat další lekci."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"Úroveň dovedného tato: Když jeden zná zbraň, říká se on *dovedný* v použití jejím. Jeho útoky už ne neohrabané. Ony přicházejí rychle a jistě."~ */
  IF ~~ THEN REPLY #26814 /* ~"A úroveň specialisty?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~Porphiron řekl, že existují tři úrovně dovednosti s každou zbraní.

Nejprve je úroveň ignoranta, kde útočník používá zbraň s nevýhodou. Jeho útoky jsou neohrabané, nesoustředěné a způsobují menší poškození, než způsobí v rukou zkušeného bojovníka. Tohle je úroveň, se kterou jsem se probral v Márnici. Budu potřebovat trénovat, abych se stal schopnějším se zbraněmi tohoto světa.

Za úrovní ignoranta je úroveň dovedného, kterou bojovník dosáhne poté, co zbraň studuje. Útoky už nejsou pokažené jeho ignorancí a neznalostí zbraně a jsou proto rychlejší a účinnější.

Za úrovní dovedného je úroveň specialisty. Na této úrovni už není útočník a zbraň. Jeho zbraň je pro něj prodloužením jeho vůle. Jeho útoky se zbraní jsou rychlejší a způsobuje větší zranění.~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"Základy jsem pochopil. Co mě můžeš naučit o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"Prozatím mi to stačí... Vrátím se později, jestli budu potřebovat další lekci."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"Úroveň specialisty tato: Když jeden přerostl přes dovednost, on stává se *specializovaným* v použití zbraně této. Zbraň už není nástroj jednoho, ale prodloužením jeho vůle."~ */
  IF ~~ THEN REPLY #26818 /* ~"Rozumím. Co mě můžeš naučit o zbraních?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"Prozatím mi to stačí... Vrátím se později, jestli budu potřebovat další lekci."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"Tento byl trénován v rukou, ostří, hůlce, sekerkou a kladivem: Se kterou zbraní z těchto ty seznámen chceš býti?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"Chci se naučit něco o  pěstech."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"Chci se naučit něco o pěstech."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"Chci se naučit něco o dýkách."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"Chci se naučit něco o dýkách."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"Chci se naučit něco o palicích."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"Chci se naučit něco o palicích."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"Chci se naučit něco o sekerách."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"Chci se naučit něco o sekerách."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"Chci se naučit něco o kladivech."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"Chci se naučit něco o kladivech."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"Můžeš mi znovu vyprávět o cestě bojovníka?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"No, možná se vrátím později, až budu připravený na další lekci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"Jeden bude používati pěst: Ona útočí rychle, zranění způsobující jí kosti protivníka láme. Zbraně existují, jeden může najít: Těžké rukavice, boxery s špičkami nebo boxery s ostřími. Ony dělají tupé, bodací nebo sekací zranění. Tvá znalost je omezená: Přeješ si část talentu svého použít k získání dovedné úrovni s zbraní touto?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~S Pophironovou pomocí... a po několika monoklech... jsem získal úroveň dovednosti v pěstním souboji.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~Porphiron řekl, že mě nemůže o pěstním boji naučit víc. Řekl, že budu muset najít zbrojního mistra, abych získal specializaci v pěstním boji.~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"Ne... o jakých jiných zbraních mě můžeš poučit?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"Ne, nemyslím, že se chci dnes něco naučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"Jeden bude používati dýku: Ta útočí rychle. Poškození způsobené tímto ono sek drápu nebo bodnutí jehlou. Poškození závisí na zbrani typu. Přeješ si část talentu svého použít k získání dovedné úrovni s zbraní touto?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~S Pophironovou pomocí... a o mnoho jizev později... jsem dosáhl úrovně dovednosti s dýkou. Jakmile Porphiron zjistil, jak rychle se mi zajizvují rány, neztrácel čas a začal mě krájet jako máslo.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~Porphiron řekl, že už mě o dýkách nemůže nic víc naučit. Řekl mi, že budu muset najít mistra, abych se mohl stát specialistou na dýky.~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"Ne... o jakých jiných zbraních mě můžeš poučit?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"Ne, nemyslím, že se chci dnes něco naučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"Jeden bude užívati palici: Rychlost její není jako ta pěsti či dýky, ale její zranění větší. Drtí tělo protivníka jako skála padající. Přeješ si část talentu svého použít k získání dovedné úrovni s zbraní touto?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~S Porphironovou pomocí... a o mnoho modřin později... jsem získal úroveň dovednosti s palicemi.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~Porphiron řekl, že už mě o palicích nemůže nic víc naučit. Řekl mi, že budu muset najít mistra, abych se mohl stát specialistou na palice.~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"Ne... o jakých jiných zbraních mě můžeš poučit?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"Ne, nemyslím, že se chci dnes něco naučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"Jeden bude sekery užívati: rychlost její té palici se nevyrovná, však působené rány o to větší budou. Co pařát gigantický tělo nepřítele rozsekává. Přeješ si část talentu svého k získání dovedné úrovně se zbraní touto použíti?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~S Pophironovou pomocí... a o mnoho jizev později... jsem dosáhl úrovně dovednosti s dýkou. Jakmile Porphiron zjistil, že se vzpamatuju i z nejdivočejších seků, neztrácel čas a začal mě osekávat jako dříví na podpal.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~Porphiron řekl, že už mě o sekerách nemůže nic víc naučit. Řekl mi, že budu muset najít mistra, abych se mohl stát specialistou na sekery.~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"Ne... o jakých jiných zbraních mě můžeš poučit?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"Ne, nemyslím, že se chci dnes něco naučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"Budeť jeden kladiva užívati: rychlost jeho té palici se nevyrovná, však působené rány o to větší budou.  Zranění jako pád velké skály drtící tělo soka tvého. Přeješ si část talentu svého k získání dovedné úrovně se zbraní touto použíti?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~S Porphironovou pomocí... a o mnoho modřin později... jsem získal úroveň dovednosti s palicemi. Myslím, že bude ještě nějakou dobu trvat, než mi přestane v hlavě zvonit dvacet sedm zvonků po té poslední ráně.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"Ano, přeju si naučit se něco o této zbrani."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~Porphiron řekl, že už mě o kladivech nemůže nic víc naučit. Řekl mi, že budu muset najít mistra, abych se mohl stát specialistou na kladiva..~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"Ne... o jakých jiných zbraních mě můžeš poučit?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"Ne, nemyslím, že se chci dnes něco naučit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"Tento tě bude učit: Pěst, ty postav se takto -"~ */
  IF ~~ THEN REPLY #26864 /* ~"Ano..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"Tento čest vzdává ti: Znalost k tobě rychle přichází. Ty rychle učíš se."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"Děkuji ti. Rád bych se naučil něco i o jiných zbraních, jestli mě budeš učit."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"Děkuji ti. Rád bych se naučil něco i o jiných zbraních, jestli mě budeš učit."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"Děkuji ti. To je všechno, co jsem se chtěl dneska naučit."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"Tento už nemůže více tě naučiti: Ty víš, že ty už na úrovni dovedného se zbraní touto? Tento tě může jenom naučit poslední lekci: Najdi mistra, aby on tě naučil lépe, jestli možné pro tebe naučiti se více. Zůstaň věrný k bojovníka cestě a bude dlouho předlouho trvati než ty dosáhneš hranici znalosti."~ */
  IF ~~ THEN REPLY #26868 /* ~"Dobře. Jaké další zbraně ovládáš a naučíš ovládat mně?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"Půjdu se podívat, jestli nějaké nenajdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"Tento vidí tvá mysl už zaplněna znalostí zbraně této do úrovně maximální: Přijdeš až ty zase získáš novou úroveň v řemesle bojovníka? Potom tento tě moci poučiti o dalším zbraně používání."~ */
  IF ~~ THEN REPLY #26870 /* ~"Jestli mě už nemůžeš o zbraních nic víc naučit, můžeš mi povědět o cestě bojovníka?"~ */ JOURNAL #26872 /* ~Porphiron řekl, že už mě nic víc o zbraních nemůže naučit, že už jsem se dostal na úroveň znalosti zbraní pro mou zkušenost. Řekl mi, že bych se měl vrátit, až získám novou úroveň, a že pak mě naučí víc.~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"Dobře. Vrátím se, až získám novou úroveň."~ */ JOURNAL #26872 /* ~Porphiron řekl, že už mě nic víc o zbraních nemůže naučit, že už jsem se dostal na úroveň znalosti zbraní pro mou zkušenost. Řekl mi, že bych se měl vrátit, až získám novou úroveň, a že pak mě naučí víc.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"Tento tě může naučiti jenom poslední lekci: Najdi mistra, aby on naučil tě."~ */
  IF ~~ THEN REPLY #26873 /* ~"Zkusím nějaké najít. Sbohem."~ */ JOURNAL #26875 /* ~Porphiron řekl, že už mě nic víc o zbraních nemůže naučit. Řekl mi, že musím najít mistra dané zbraně, abych se mohl stát specialistou.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"Tento vidí že mysl tvá připravená pro další trénink: S jakou zbraní ty přeješ si býti dovedný?"~ */
  IF ~~ THEN REPLY #26876 /* ~"Se kterými zbraněmi mě můžeš naučit zacházet?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"Dnes nic, díky. Možná později."~ */ EXIT
END

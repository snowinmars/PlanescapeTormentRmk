// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~Vidíš mladou ženu s bledě žlutou kůží. Když si se k ní přiblížil, všiml sis, že má drobné puchýře na odhalených místech její kůže. ~ */
  IF ~~ THEN REPLY #65088 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~Nevšímej si jí.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~Letmo na tebe pohlédla a zamračila se. "Buď pozdraven kámo. Co chceš?"~ */
  IF ~~ THEN REPLY #65091 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"Nic, zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~Více se zamračila. "Promiň, ale jsem strašně zaneprázdněna. Nemám čas s tebou mluvit..." a pobrala se k odchodu. ~ */
  IF ~~ THEN REPLY #65094 /* ~"Jenom chviličku..."~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"Nemám ani chviličku. Zeptej se někoho jiného prosím..." a pobrala se pryč.~ */
  IF ~~ THEN REPLY #65097 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~Vidíš mladou ženu s bledě žlutou pokožkou a tuberáckým kašlem. Když si se přiblížil, pohlédla na tebe.~ */
  IF ~~ THEN REPLY #65099 /* ~"Zdravím."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~Nevšímej si jí.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~Usmála se na tebe a pokoušela se odpovědět, ale její kašel jí to překazil.  "Ano..." nezdravě zakašlala. "Ahoj kámo. Chceš něco?"~ */
  IF ~~ THEN REPLY #65102 /* ~"Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"Ne, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"Ráda ti pomohu, ale prosím rychle."~ */
  IF ~~ THEN REPLY #65105 /* ~"Jsi v pořádku?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"Proč máš žlutou kůži?"~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"Mohla by jsi mi něco říct o téhle čtvrti?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"Ztratil jsem lebku. A hledám toho, kdo mi ji vzal."~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~Zasmála se. "Jo. Děkuji za optání. Bude to dobré."~ */
  IF ~~ THEN REPLY #65111 /* ~"To je dobře. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"Jo..." vypadá rozpačitě. "Je to vzduchem v téhle čtvrti. Není nejlepší kvality a mnohým lidem způsobuje problémy. Je to vším tím dýmem a co já vím čím ještě ze slévárny ..." začala zase kašlat a tím tě nabádala k rychlejším otázkám.~ */
  IF ~~ THEN REPLY #65114 /* ~"Dobře. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"Oh, ano..." Zakašlala. "Je tu množství obchodů, trhů, podomních prodejců a..." A je tu další záchvat kašle. "...podobných věcí..." Snažila se zůstat pokojná, ale její hrudník byl opět svírán kašlem.~ */
  IF ~~ THEN REPLY #65117 /* ~"Jsi si jistá, že jsi v pořádku?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"Okej. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~Usmála se. "Naprosto..." Začala se bouchat do hrudi.~ */
  IF ~~ THEN REPLY #65121 /* ~"Okej. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~Při myšlení se zamračila. "Ne... nevím si představit, kdo by mohl chtít takovou věc..." Vypadala jako by ji měl znova přepadnout další záchvat kašle, ale přešlo to. "Vážně nevím koho by ses na to mohl zeptat."~ */
  IF ~~ THEN REPLY #65124 /* ~"Okej. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"Díky, sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~Vidíš ženu středního věku se žlutou kůží. Pohlédla na tebe, když jsi se přiblížil a zamávala ti na pozdrav.~ */
  IF ~~ THEN REPLY #65127 /* ~"Zdravím."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~Nevšímej si ji.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~S obavami na tebe pohlédla. "Uh... nazdar... kámo." Začala se rozhlížet okolo, dívajíc se do stínů, hledajíc někoho, kdo by tam mohl být skryt. "Chceš něco?"~ */
  IF ~~ THEN REPLY #65130 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"Díky, sbohem.."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"Jako na co?"~ */
  IF ~~ THEN REPLY #65133 /* ~"Můžeš mi něco říct o téhle čtvrti?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"Někdo mi ukradl lebku. Pokouším se ji najít."~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"Tato tu je Dolní čtvrť, domov běžných lidí jako jsem i já.  Není tu nic víc zajímavého, ale prohlédni si to tu sám, když chceš."~ */
  IF ~~ THEN REPLY #65137 /* ~"Chtěl bych se tě na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~Zamračila se na tebe a spravila zvláštní pohyb nad svou hrudí . "Slyšela jsem příběhy..." Odmlčela se. "Někteří lidé říkají, že v téhle čtvrti je nekromancer anebo kněz smrti či něco podobného. Z nějakého důvodu sbírá lebky..."~ */
  IF ~~ THEN REPLY #65140 /* ~"Neví kde ho můžu nalézt?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~Naklonila se k tobě. "Příběhy, kámo. Nic víc to není... Žádná  taková věc v téhle čtvrti neexistuje. Jsou to jen příběhy..."~ */
  IF ~~ THEN REPLY #65142 /* ~"Díky, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~Když jsi se k téhle ženě přiblížil, uvědomil sis, že si ji už předtím viděl. "Znovu tě zdravím, kámo. Chceš něco?"~ */
  IF ~~ THEN REPLY #65144 /* ~"Ne, sbohem."~ */ EXIT
END

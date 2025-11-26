// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~Vidíš hezkou mladou ženu. Vlasy má rozcuchané a šaty potrhané. Zoufale se rozhlíží a najednou si všimla tebe.~ */
  IF ~~ THEN REPLY #2208 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~Ignoruj ji.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~Utíká k tobě a popadla tě za ruku. Všiml sis, že přední část jejích šatů je potřísněná krví "Pomoz mi! Prosím" Zabíjejí moji sestru!" Začíná tě tahat za ruku.~ */
  IF ~~ THEN REPLY #51525 /* ~"Kdo?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"Pomůžu ti, zaveď mě k ní."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~Divoce se rozhlédla. "Ten opilec, který nás sledoval z hospody... nenapadlo nás, že nám chce ublížit. Prosím, není čas! Pomoz nám!"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"Počkej, prve jsi mluvila o *těch*, kteří zabíjejí tvoji sestru. A teď je to *on*. Tak jak to je?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"Proč na ni zaútočil?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"Pomůžu ti, zaveď mě za ní..~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~Zírá na tebe, nejistá, co má říct. "Já... popletla jsem to.. přeřekla jsem se." Zajela pohledem ke krvi na šatech. "Prosím, pomoz mi!"~ */
  IF ~~ THEN REPLY #51534 /* ~Prozkoumej krev na šatech.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~Podíval ses na šaty a prozkoumal krev. I když vypadá opravdově, už úplně zaschla. Musí být stará minimálně několik hodin.~ */
  IF ~~ THEN REPLY #51537 /* ~"Ta krev už je tam několik hodin. O co ti jde?"~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"Ne, už půjdu pryč. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~Vidíš, jak její oči mrkly směrem ke krvi, pak se vrátily k tobě. Máš pocit, že jsi v jejím hlase postřehl nervozitu. "Pleteš se, kámo. Prosím, pomoz mi! Moje sestra umírá, zatímco ty se tady se mnou hádáš!"~ */
  IF ~~ THEN REPLY #51540 /* ~Pravdivě: "Něco na mně chystáš. Řekni mi, co se děje, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~Bluff: "Něco na mně chystáš. Řekni mi, co se děje, nebo tě zabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~Podívala se do tvých očí a pak přejela pohledem jizvy lemující tvé tělo. Nervózně polknula a pak zbledla. "Já... já mám zavést lidi do nedaleké uličky. Čekají tam... vezmou ti peníze..." Dívá se na tebe s obavou v očích.~ */
  IF ~~ THEN REPLY #51544 /* ~"Dám ti jednu radu..."~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"Vypadni odtud. A neopovažuj se sem vrátit..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~Tiše se na tebe podívala, pak kývla hlavou.~ */
  IF ~~ THEN REPLY #51547 /* ~"Nevybírej si někoho jako jsem já. Vyber si nějakého ožralu, který nikdy nezažil víc než hospodskou rvačku..."~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"To nic, sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~Přikývla.~ */
  IF ~~ THEN REPLY #51550 /* ~"A doufej, že má u sebe alespoň nějaké peníze... A teď vypadni."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"To nic, sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~Přikývla a otočila se od tebe. Na chvíli zaváhala a pak se dala na odchod. "Děkuju ti." Utekla.~ */
  IF ~~ THEN REPLY #51553 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"Když zjistila, že nemá peníze, řekla, že se s ním nevyspí. A on vytáhl nůž..." Podívala se na předek svých šatů, pak tě znovu zatahala za ruku.~ */
  IF ~~ THEN REPLY #51555 /* ~Prozkoumej krev na šatech.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"Na tohle nemám čas. Sbohem."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"Prosím, tvrďáku, nedělej, že mě nevidíš! Potřebuju pomoc!"~ */
  IF ~~ THEN REPLY #51558 /* ~"Co ode mě chceš?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~Dál ji ignoruj.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~Po tváři jí přejela vlna ulehčení. Zatáhla tě za ruku. "Tudy."~ */
  IF ~~ THEN REPLY #51561 /* ~Následuj ji.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~Jak jdeš pryč, žena dál vzlyká a křičí.~ */
  IF ~~ THEN REPLY #51563 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

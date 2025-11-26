// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~Vidíš mladou ženu v levných šatech, levně vonící a s namalovaným úsměvem. Všimla si tvé pozornosti a usmála se na tebe.~ */
  IF ~~ THEN REPLY #10090 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~Přistoupila k tobě blíž, dala ti ruku na rameno a druhou tě objala kolem krku. Usmála se a přejela ti rukou po rameni, dolů po paži. "Uau, ty jsi ale silák, chlape. Mám ráda silné muže, kteří si dokáží vzít to, co chtějí." Náhle se k tobě silně přitiskla. "Takže řekni mi... copak chceš?"~ */
  IF ~~ THEN REPLY #10093 /* ~"Uh... Jenom odpověď na pár otázek.."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"To nic. Budu muset jít."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~Dívá se ti do očí a její úsměv se prohloubil. "Nejsem tady kvůli mluvení. Jsi si jistý, že je to to, co chceš?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~Tahle žena je trochu moc agresivní. Něco není v pořádku.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"Nóó... možná bych dokázal využít trochu... zábavy."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"Nóó... možná bych dokázal využít trochu... zábavy."~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"To nic. Musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~Myslíš si, že s touhle ženou není něco v pořádku, takže jsi ji od sebe odstrčil. Když jsi to udělal, všiml sis pohybu po tvém pboku. Stočil jsi pohled a viděl jsi, jak z tvého měšce vychází prázdná ruka. Žena od tebe odstoupila a zjevně se chystá rychle odejít.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~Popadni ji.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~Popadni ji.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~Nechej ji jít.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~Popadl jsi ji za zápěstí. Začíná se s tebou přetahovat, snaží se zoufale uvolnit. "Nech mě být, vole, nebo začnu volat stráž!"~ */
  IF ~~ THEN REPLY #10105 /* ~"No jen volej. Budeš mrtvá dřív, než kdokoli dorazí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"No jen si volej. Řekl bych, že na to v tomhle městě všichni kašlou."~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~Prosebně se na tebe dívá, přestala zápasit. "Prosím, nech mě jít. Chytil jsi mě dřív, než jsem tě stačila obrat."~ */
  IF ~~ THEN REPLY #10109 /* ~"Dej mi všechny své peníze a můžeš jít."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"Dobře, ale jestli tě chytím ještě jednou, uvidíš. Je ti to jasné?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~Přikývla a sáhla do měšce. Vytáhla hrstku mincí a nabídla ti je. "Prosím. Nebudu mít co jíst, když ti dám své peníze. Prosím, nech mě být."~ */
  IF ~~ THEN REPLY #10112 /* ~Vezmi si peníze a nechej ji jít.~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Vezmi si peníze a pak ji zabij.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~Vzal sis mince a schoval je. Chvíli na tebe zírá, pak se otočila a pomalu, smutným krokem, odešla pryč.~ */
  IF ~~ THEN REPLY #10116 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~Pustils ji a mávl, ať jde pryč. Chvíli se na tebe dívá, pak se slabě usmála. "Díky, kámo." Otočila se a pomalu odkráčela pryč.~ */
  IF ~~ THEN REPLY #10118 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~Zkusils ji chytit za zápěstí, ale šikovně se ti vyvlékla. Odskočila od tebe a dala se na útěk.~ */
  IF ~~ THEN REPLY #10120 /* ~Zaútoč na ni.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~Nechej ji jít.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~Pustila tě ze svého objetí, ustoupila o krok a usmála se na tebe. "Promň, kámo. Rozmyslela jsem si to. Měj se." Otočila se a jde pryč.~ */
  IF ~~ THEN REPLY #10123 /* ~Nechej ji jít.~ */ EXIT
END

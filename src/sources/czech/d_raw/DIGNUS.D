// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~Nad železným grilem v podlaze baru se vznáší ohnivá postava, slyšíš praskání, které vydávají jiskry, vylétající z těla. Kdysi to možná byl člověk, ale teď je jeho kůže spálená k nepoznání. Tělo stvoření lemují plameny, které olizují několik zbývajících kousků masa, které bublají a stékají po kostře ohnivého muže jako roztavený vosk.~ */
  IF ~~ THEN REPLY #16198 /* ~"Zdravím...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Prozkoumat doutnající mrtvolu.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"Hmmm. Schválně jestli tato Karafa nekonečné vody něco udělá... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Nechej netvora být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~Věc neodpovídá. Pomalu se kroutí uprostřed plamenů - žije, ale nevypadá to, že by si uvědomoval cokoli jiného kromě ohně kolem něj. Jeho kůži tvoří plamen, jeho srdce je oheň. Z nějakého zastíněného koutku paměti, který ti dosud unikal, se vynořila jistota, že tahle věc je velice *nebezpečná.*~ */
  IF ~~ THEN REPLY #16212 /* ~Prozkoumej netvora.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"Hmmm. Schválně jestli tento Bezedný džbán vody něco udělá... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Nechej to být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~Horko kolem této... bytosti... je neuvěřitelné. K tvému překvapení, ocelová mříž nad níž se bytost vznáší je od horka prohnutá a prověšená. Nejprve sis myslel, že horko pochází z ohniště,... ale teď si uvědomuješ, že vychází přímo z netvora. Jak se díváš, kousky popela odpadávají z těla a pomalu stoupají ke stropu.~ */
  IF ~~ THEN REPLY #16215 /* ~"Zdravím ... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"Hmmm. Schválně jestli tento Bezedný džbán vody něco udělá... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Nechej to být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~Nakloníš karafu nad gril a začneš lít vodu. Malý proud ledově modré vody začne vytékat z karafy, dotkne se plamenů s ohlušujícím syčením a vyvalí se oblaka páry... Jakoby v odpověď džbán poskočí dopředu, spadne do grilu a rozpadne se!~ */
  IF ~~ THEN REPLY #16218 /* ~"Co to sakra... ?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Syčící proudy páry a pekelné praskání se vyhrnou od grilu, převalí se přes tebe a donutí tě zakrýt si uši a otočit se... Najednou se ozve řev, chichotavý děsivý zvuk, jakoby hořely stovky domů, lidé křičeli a jejich výkřiky byly umlčeny řevem plamenů a tavícího se masa. ~ */
  IF ~~ THEN REPLY #16219 /* ~Zakryj si uši, neposlouchej.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~Jak si zakryješ rukama uši, abys zastavil zvuk, cítíš na dlaních lepkavou hmotu, jakoby horký sýr nebo vosk... Krvácíš z uší! Dáš ruce zpět a vidíš, že jsou pokryty kousky spáleného masa a krví...~ */
  IF ~~ THEN REPLY #16220 /* ~Zkus se dostat z baru.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~Chceš utéct z baru, cokoliv jen aby ses dostal co nejdál od hrozného zvuku, když najednou ztichne vše, krom děsivého smíchu pocházejícího od grilu. Otočíš se a na grilu leží Bezedný džbán vody, nyní nic víc než střepy a pára. Nad ním se vznáší netvor, z jehož těla stále tryskají plameny. Dívá se na tebe očima jako dvě pochodně...~ */
  IF ~~ THEN REPLY #16221 /* ~"Já tě "znám"..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~Obličej netvora se otevře, popálené maso se odloupne od čelistí tak, aby mohl mluvit.  *"Ssssskvělé..."* Jeho hlas praská, hoří a řve skrz hruď netvora a při každém slovu se z jeho úst řine popel a uhlíky, které stoupají do vzduchu. Nemůžeš vydržet hrozivý žár, který sálá z jeho těla. ~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"Ignus..."~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"Ssssskvělé..."* Netvor pluje směrem k tobě, vzduch kolem něj se tetelí horkem vyzařujícím z jeho těla. *"Ssssspal jssssem dlouho... ssssny o sssspálení... "* Jako v odpověď se z Ignusova hrdla vyvalí oheň a plamenný jazyk vystřelí zpoza zčernalých zubů. *"Jssssem tvůj sssslužebník...  než ssssi pro nássss přijde ssssmrt... "*  ~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"Ještě uvidíme..."~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~Jak se blížíš, netvor zasyčí, vzduch kolem něj se zatetelí horkem vyzařujícím z jeho těla. *"Ssssspal jssssem dlouho... ssssny o sssspálení... "*~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"Zdravím tě, Ignusi... budeš cestovat se mnou?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"Drž se svých snů, Ignusi... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~Jako v odpověď se z Ignusova hrdla vyvalí oheň a plamenný jazyk vystřelí zpoza zčernalých zubů. *"Jssssem tvůj sssslužebník...  než ssssi pro nássss přijde ssssmrt... "* ~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"Uvidíme..."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Ignus se k tobě pozvolna otočí, aby se vaše pohledy mohly střetnout. *"Ano?"*~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"Nevadí, stejně to nebyl moc dobrý nápad. Ještě mám něco na srdci, Truchlící..."~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"Ignusi, vidíš tyto stromy? Našlo by se pro ně místo ve tvém srdci? Myslíš, že by ses o ně dokázal *postarat* ?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"Ale nic; ani nevím, co mi to blesklo hlavou. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Ignus se obrátil čelem ke stromům a vzduch kolem něj během několika málo vteřin dramaticky zvýšil teplotu. *"Ano... ssssspálit..."*~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Ignus se hrozivě zasmál; plameny mu tancují v hrdle. *"Ty ssse ssstavíššš mezzzi mě a oheň? Ty také... ssshoříššš..."*~ */
  IF ~~ THEN REPLY #16925 /* ~"Ignusi, počkej..."~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Nechej ho to učinit, ať už chce udělat cokoliv.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~Když ses k němu přiblížil, Ignus zasyčel, vzduch se kolem něj mihotá horkem. "Když jssssem zůssstal tady... měl jssssem myšššlneky plné plamenů..."*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"Uh... Aha. Tak teda sbohem."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"Jssssem tvůj... dokud pro násss oba nedorazzzzí sssssmrt..."*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"Dobrá tedy. Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~Kolem Ignusova hrdla se zatočily plamínky, zpoza jeho zčernalých zubů vyšlehl oheň. *"Ano...?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"Ignusi, co se ti stalo, že vypadáš takhle?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"Ignusi... je to pravda, že jsi vypálil Uličku Nebezpečných Zákoutí?"~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"Co jsi dělal U Doutnajícího nebožtíka?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"Ignusi, mluvil jsem s vypravěčem, a ten se zmínil, že tě tohle někdo *naučil*... kdo?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"Ignusi, jsi si JIST, že jsem byl tvým učitelem já?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"Ignusi, tvé mistrovství v Umění... můžeš mě něco z toho naučit?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochotný trpět, abych se naučil více."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochotný trpět, abych se naučil více."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"Ignusi... co se týče učení a muk, kterým jsem tě vystavil... je mi to líto."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"Nic, Ignusi. Jenom jsem se ujišťoval, že jsi tady se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~*"Hořřřřřřř..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"A jaká další muka tvé oči vidí, Ravel?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"A jaká další muka tvé oči vidí, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"A jaká další muka tvé oči vidí, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"A jaká další muka tvé oči vidí, Ravel?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~*"Hořřřřřř..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"Ravel, už jsi dosáhla svého. A teď už dost těch-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"Ravel, už jsi dosáhla svého. A teď už dost těch-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"Ravel, už jsi dosáhla svého. A teď už dost těch-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"Ravel, už jsi dosáhla svého. A teď už dost těch-"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~*"Jsem tvůůůůj... dokud násssss OBA nepohltíííí sssssmrt..."*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"Ach... tak. Fall-From-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~"Ach... tak. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~"Ach... tak. Dak'kone?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~"Ach... tak. Dak'kone?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~"Ach... tak. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~"Ach... tak. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~*"HSSSS'SSSSS!"* Srdce ti spadlo do kalhot,když Ignus vyletěl do vzduchu, s tváří zkroucenou zuřivostí. *"UŽ ŽÁDNÉ MLUVENÍ A OTÁZZZKY!!! Tícho...!"* ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"Ale já si chci promluvit o ohni, Ignusi, a o pálení..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"Ale já si chci promluvit o ohni, Ignusi, a o pálení..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"Ale já si chci promluvit o ohni, Ignusi, a o pálení..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"Ale já si chci promluvit o ohni, Ignusi, a o pálení..."~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"ODPOVÍŠ na mé otázky, Ignusi. Já tě uvolnil a já tě můžu zase poslat do pekla."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"No tak to nic..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~*"Myssslíšššš ssssi, že ssssspoutášššš Ignusssse...?"* Plameny zahalily Ignuse jako rudý plášť, pak se natáhly k tobě, jakoby tě chtěly pohladit. *"ZABÍT tě, zpopelnit tě Ignussss může... prozatím Ignussss posssslouchá... ale nevyhrožuj... výhružky Ignussse ROZZZUŘÍ..."* ~ */
  IF ~~ THEN REPLY #57581 /* ~"Hele, Ignusi, mě bys nedokázal zastavit - můžeš mě spálit, ale já se budu vracet tak dlouho, dokud z tebe nebude palivový dříví. To by bylo k výhrůžkám..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"To říkáš *ty*... promluvíme si později, Ignusi."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~Je slyšet zapráskání plamenů, Ignus sklonil hlavu na stranu, chvíli si tě prohlíží, pak zasyčel. *"PLAMENY sssspálí i tvou nessssmrtelnossssst... NEJSSSSSI v bezpečí před mým ohněm..."*~ */
  IF ~~ THEN REPLY #57584 /* ~"Možná jsi nepochopil, co ZNAMENÁ slovo nesmrtelný, Ignusi..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"Jak jsi věděl, že jsem nesmrtelný?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"To říkáš *ty*... promluvíme si později, Ignusi."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~*"*NEJSSSSI* nessssmrtelný... Ignusssss tě může ZABÍT... rozprášššší tvůj popel do větru..."* Díváš se, jak rozpřáhl ruce. Vychází z něj ŽÁR, tak silný, že sis musel zastínit oči - slyšíš ŘEV proudícího žhavého vzduchu.~ */
  IF ~~ THEN REPLY #57588 /* ~"Ignus! Zastav t-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~Pokoušíš se na zařvat na Ignuse, ale přejela tě vlna *horka*. Cítíš, jak se tvé maso začíná smažit, cítíš BOLEST... Zaťal jsi zuby, skrze mysl zahlušenou bolestí slyšíš podivný zvuk - praskavý smích. Ignus se ti směje...~ */
  IF ~~ THEN REPLY #57590 /* ~"Ignus!"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~Ignus se skoro úplně zbláznil, když jsem s ním mluvil... Přežil jsem jeho výbuch, ale na té jeho elementální moci něco je. Mám pocit, že on by mě dokázal zabít... nadobro.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~Když jsi znovu vykřikl jeho jméno, žár odumřel - a jak dáváš pryč ruce, kterými sis kryl obličej, všiml sis, že kůže tam, kde Ignus pálil, zčernala... a Ignus tě hladově sleduje. Víš, že ať už je Ignus čímkoli, ať ho pohání jakákoli síla, má sílu zničit tě - pokud tě zabijí jeho plameny, z tvého těla nic nezůstane.~ */
  IF ~~ THEN REPLY #57605 /* ~"Už tě mám DOST, Ignusi... možná mě zabiješ, možná ne - jsem ochotný to vyzkoušet."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"Dobrá, Ignusi. Později si ale promluvíme, ty a já..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Tvá slova jsou jako olej... a ty vidíš, jak zaplňují Ignusovy oči, rozdmýchávají plameny. *"Plameny?"* Ignus slétl trochu níže, žár kolem něj stoupá, stejně jako jeho zájem. *"Mluvvv... Ignusssss posssslouchá..."*~ */
  IF ~~ THEN REPLY #57609 /* ~"Ignusi, co se ti stalo, že vypadáš takhle?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"Ignusi... je to pravda, žes vypálil Uličku Nebezpečných Zákoutí?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"Co jsi dělal U Doutnajícího nebožtíka?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"Ignusi, mluvil jsem s vypravěčem a ten se zmínil, že tě tohle někdo *naučil*... kdo?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"Ignusi, víš to JISTĚ, že jsem byl tvým učitelem já?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"Ignusi, tvé mistrovství v Umění... můžeš mě něco z toho naučit?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochoten trpět, abych se naučil více."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochoten trpět, abych se naučil více."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"Ignusi... co se týče učení a muk, kterým jsem tě vystavil... je mi to líto."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"Později si o ohni promluvíme, Ignusi, ne teď."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~*"Plameny?"* Ignusův hlas zapraskal, asi ho to zajímá. *"Mluvvv... Ignusssss posssslouchá..."*~ */
  IF ~~ THEN REPLY #57637 /* ~"Ignusi, co se ti stalo, že vypadáš takhle?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"Ignusi... je to pravda, žes vypálil Uličku Nebezpečných Zákoutí?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"Cos dělal U Doutnajícího nebožtíka?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"Ignusi, mluvil jsem s vypravěčem a ten se zmínil, že tě tohle někdo *naučil*... kdo?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"Ignusi, víš to JISTĚ, že jsem byl tvým učitelem já?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"Ignusi, tvé mistrovství v Umění... můžeš mě něco z toho naučit?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochoten trpět, abych se naučil více."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"Ignusi, tvé mistrovství v Umění... Jsem ochoten trpět, abych se naučil více."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"Ignusi... co se týče učení a muk, kterým jsem tě vystavil... je mi to líto."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"Už nemám další otázky... ať jsou tvé sny plné plamenů, Ignusi..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~*"NE! MLUVVVV!"* Ignus zavyl, vzduch kolem tebe se *zkroutil* horkem. *"MLUV O PLAMENECH! MLUV O PÁLENÍ!"*~ */
  IF ~~ THEN REPLY #57660 /* ~"Uh... dobrá. Mám tyto otázky... o plamenech.,,~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"Ne, Ignusi... promluvíme si jindy! Teď ne!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"Ignusi... *cítil* jsi někdy, jak se oheň rozhořívá? Plameny olizují okraje dřeva a to pomalu černá, horko sloupává barvu ze zdí, uhlíky praskají, vůně hořící slámy..."~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"Ignusi... *cítil* jsi někdy, jak se oheň rozhořívá? Plameny olizují okraje dřeva a to pomalu černá, horko sloupává barvu ze zdí, uhlíky praskají, vůně hořící slámy..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Ignus vydal příšerný *skřek* a náhle ho obklopila zuřivá zář - a jeho oči - jeho oči jsou jako okna do jiného MÍSTA. Zvedl ruce, obalené plameny, které narůstají do velkých, ohnivých bičů. *"Budešššš HOŘŘŘET!!!!!"~ */
  IF ~~ THEN REPLY #57665 /* ~"Ignusi, sám sis o to *řekl*..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~Jak mluvíš, plápolání ohně kolem Ignuse se zklidňuje, jako by samotný oheň naslouchal tvým slovům... když jsi skončil, Ignus tiše zasyčel a plameny v jeho očích zmatněly, jakoby se ponořil do vzpomínek. *"Annnoooo..."*~ */
  IF ~~ THEN REPLY #57667 /* ~"Promluvíme si později, Ignusi... zatím zůstaň v pohodě."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~*"Tahkhleeee..."* Malý kousek masa na Ignusově tváři praskl a stekl dolů po jeho čelisti. "Takhhleee... Ignussss vžžždyccky bylllll..."*~ */
  IF ~~ THEN REPLY #57669 /* ~"Ale... vypadáš jako člověk. Nebo alespoň, jako bývalý člověk."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"Mám pro tebe ještě další otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"Aha. My dva si možná ještě promluvíme... později."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Ignus se zkroutil, naklonil hlavu kupředu, jeho tělo se nad zemí pomalu otáčí... výsledek připomíná ohnivé tornádo, žár z jeho těla rozechvívá vzduch kolem. *"Pořřřáddd Ignussss... Vždycccky Ignussss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"Chci mluvit víc o pál-"~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"No tak to nic. Mám ještě otázk-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"Aha. No, tak to už je d-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~Když jsi otevřel ústa, abys promluvil, Ignus se náhle zatočil kolem - musel jsi svá slova spolknout, jak tě zavalila vlna žáru vycházející z jeho těla. *"Ignussss mohl by být TY... JISSSSSKRY v těleccch, vždyccccky chtějííí pozvednouttt..."*~ */
  IF ~~ THEN REPLY #57678 /* ~"'Jiskry v tělech?' Co tím myslíš?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"Mám pro tebe ještě další otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"Aha. My dva si možná ještě promluvíme... později."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~*"VŠŠŠECHNY VĚCCI hořří... Uvnitřřřř..."* Ignusova hlava se kývá sem a tam, ruce má široce rozpažené, poletují kolem nich žhavé plameny a opisují spirály. "*Stačí být zažehnutý plammenem a ssstaneššš ssse Ignusssem... takže TY jssssi mohl být... Ignussss*." ~ */
  IF ~~ THEN REPLY #57683 /* ~"No, co já vím, pokud se pokusíš uvnitř lidí roznítit plameny, tak ty lidi většinou zabiješ."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"Takže... říkáš, že každý má v sobě potenciál stát se tím, čím jsi ty, za pomocí té správné... jiskry?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"Mám pro tebe ještě další otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"Aha. My dva si možná ještě promluvíme... později."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~*"Annnoooo..."* Ignus se 'zašklebil', naklonil hlavu na jednu stranu. Z lebky se mu sesypalo trochu popela, který smetl do nicoty žhavý plamen kolem něj.~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"Mám pro tebe ještě další otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"Aha. My dva si možná ještě promluvíme... později."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Ignusův obličej se rozevřel, koutek úst mu praskl, pak se novu spekl dohromady. *"Annooo... o ssssen ssse Ignussss podělíííí..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"Možná později. Teď si chci ještě promluvit o ohni-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"Uh... teď zrovna ne. Mám ještě otáz-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"Už jsem slyšel dost. Promluvíme si-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~Z Ignuse se vyvalil příval plamenů, ustoupil jsi o krok zpátky. Vzduch se žárem *kroutí*. *"Uliccce v nocccii... tak sssstudené... Ignussss SSSSSPÁLILL budovy, obyvatellle... vššššichni UTÍKALI od Ignusssse, plamennny a budovy v plamennnech... ssssskřeky, jak sssse obyvatellllé sssstavali POCHODNĚMIII..."*~ */
  IF ~~ THEN REPLY #57701 /* ~"Už jsem slyšel dost, Ign-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Tiše poslouchej, počkej, až přestane povídat.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~*"Budovy jako KOSSSTLIVCCCCI... Uličččky, těla jako kosssstlivccci... červené a oranžové a černé... plamennny sssse šššířííí, mazlí sssse... tolik SSSSVĚTLA..."*~ */
  IF ~~ THEN REPLY #57706 /* ~"Ignusi, slyšel jsem DOST -"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Tiše poslouchej, počkej, až přestane povídat.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~*"Sss..."* Ignusova zuřivost vychladla, plameny kolem něj se poněkud uklidnily. Je zamyšlený - asi ztracený ve vzpomínkách. *"Ssss... a Ignussss byl potěšššen..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"Mám pro tebe další otázky, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"Aha. Promluvíme si později, ty a já..."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~Na chvíli si myslíš, že tě Ignus neslyšel, ale náhle oheň v jeho očích poněkud pohasnul a on tiše zasyčel, z okraje jeho čelisti se sesypalo trochu popele. *"Ignusss... dříve... neznal NICCCC o plamennnech..."*~ */
  IF ~~ THEN REPLY #57717 /* ~"Ano?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"To nic. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"To nic, Ignusi. Ještě si někdy promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~*"Kdysssi... Ignussss neveděl NICCC o plamenech... zapaloval malé ohníčččky, malinké jissskřičččky... malé kousssky ohně..."* Ignus znovu zasyčel, od úst mu odletěla sprška popele. *"Ohně rosssstly... Ignussss zapaloval ohně na ulicccích... a zapálil ohně zlossssti v jejích srdcccích..."* ~ */
  IF ~~ THEN REPLY #57726 /* ~"Ano?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"Chci si ještě promluvit o pálení a plamenech..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"To nic. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"To nic, Ignusi. Ještě si někdy promluvíme."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~Promluvil jsi, ale Ignus tě neslyší... jakoby byl někde jinde, znovu si prožívá vzpomínky... navzdory svému odhodlání ses zarazil a posloucháš dál.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~*"Chtěli potressstat Ignussse, malé mušššky z Úlu. Přáli ssssi vidět Ignusssse HOŘŘŘET, kdyžžž Ignusss zapálil jejich ulicccce... malincí kouzelníčččci, čarodějové, mágussssáci... malé jisssskřičky magie přišly POTRESSSSTAT Ignussse za to, že ublížil jejich milllovaným... odsssoudili Ignusssse ke SSSSPÁLENÍ, udělali z Ignussse POCHODEŇ, plivajícccí PLAMENY, pálící, hoříccccí... Byla to SSSSPRAVEDLNOST, říkali..."*~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~*"Ssspravedlnost..."* Díváš se, jak se Ignus začal pomalu otáčet, stejně jako nad grilem u  Doutnajícího nebožtíka. *"...ale to nebyl rozsssudek... je tooolik ohně a plamenů a bolessssti, že už není ŽÁDNÁ bolesssst... je SSSSVĚTLO, ŽÁR a maso obtéká mé kosssti jako roztavený tukkk... a poppprvé v žžživotě... Ignussss byl potěššššen..."*~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Ignus se přestal točit, jeho pohled na tebe těžce dopadl. Oheň v očích se mu rozhořel ještě víc a tvář zkřivil spálený škleb. Jeho maso praská a bublá, jak se taví a stéká mu po obličeji. Ignus má ve tváři peklo, ohnivé peklo a jím vyřčená slova jsou jako rozsudek smrti - nejenom pro tebe, ale pro všechny a všude. "*Až budou SSSféry hořřřet a všechen žživot bude jako pochodeň, Ignussss bude mít konečččně... klid... *"~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Zanechej Ignuse a jeho ohnivé myšlenky o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~*"O učččení a cccvičení víššššš."* Z Ignusových úst vyletěl plamen, připomíná ti to hrozivý smích. *"Ty jssssi VŽŽDY uččil Ignussse... Ignussse MISSSSTR, ty jssssi *byl*."*~ */
  IF ~~ THEN REPLY #57744 /* ~"Já? Víš to *jistě*...?"~ */ JOURNAL #57592 /* ~Ignus tvrdí, že jsem jeho Mistr, ten, kdo ho naučil Umění. Tvrdí, že je to jediný důvod, proč mě poslouchá...~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"To nic, Ignusi... promluvíme si později."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Ignusuv hlas se ztišil, praskání plamenů odumřelo. *"Annno... je to jediný důvoddd, proččč... Ignussss... POSSSSLOUCHÁ tebe..."* Plameny zavířily v ohnivé spirále. *"'dokud NEPŘIJDE SSSMRT pro násss oba'... tvá ssssslova ke mně... k tvému ssstudentovi IGNUSSSSOVI... Ignusss NEZAPOMNĚL... Misssstře..."*~ */
  IF ~~ THEN REPLY #57753 /* ~"Ignusi... muselo to být před dávnými časy, kdy ses učil Umění... víš absolutně jistě, že jsem tě to učil já?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"Ignusi, jestli jsem byl tvůj 'Mistr'... pamatuješ si něco o mně?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~"To nic, Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~*"Annno..."* Ignus se zasmál. *"Annno... tvářřř sssse změnila... ale mnoho lekcccí jsi naučččil Ignusssse..."*~ */
  IF ~~ THEN REPLY #57761 /* ~"Pokud se můj obličej změnil, jak to víš?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"Ignusi... tohle je důležité. Pamatuješ si něco o mně?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~"To nic, Ignusi... promluvíme si o tom později."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~*"Uvnitřřř všech věcccí... malé plaménky... jisssskřičky, plameny, to SSSAMÉ... nezáleží na kůži... kůže může krváccccet... kůže sssse může ssspalit... ale VNITŘŘŘNÍ oheň zůssstává..."*~ */
  IF ~~ THEN REPLY #57769 /* ~"Ignusi... tohle je důležité. Pamatuješ si něco o mně?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~"To nic, Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Ignus zasyčel... a na chvíli jeho *tvář* zablikala - nejdřív si myslíš, že to je plamen, ale ne... je to mihotání *vzpomínek*...~ */
  IF ~~ THEN REPLY #57777 /* ~Podej se vzpomínce.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Tvůj pohled se vyjasnil, paměť je odváta jako kouř. Ignus se vznáší nad tebou, hlavu má nakloněnou na stranu a na tváři šílený, zčernalý škleb... *"Missstře... Ignusss NEZAPOMNĚL tvé lekccce..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~"To nic, Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~Praskání Ignusových plamenů se uklidňuje, zčernalé kosti Ignusova těla se kroutí, rovnají, dokud nejsou jeho končetiny úplně bez pohybu, stává se hromadou dřeva uvnitř velkého krbu... zíráš do ohně, který osvětluje podzemní místnost. Oheň praská a plive na kamennou podlahu jiskry. Z temnoty za sebou slyšíš slabý zvuk - někdo tam dýchá...~ */
  IF ~~ THEN REPLY #57784 /* ~Vzpomínka: "*Slyším* tě... vyjdi na světlo."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~Je slyšet šoupání sandálů, do světla ohně vstoupil vyzáblý mladík. Jeho široké černé oči v sobě odrážejí plameny. Je nervózní - slyšíš, jak se jeho svaly třesou, hlas se mu chvěje - dost na to, aby zvýšil tvé podráždění. "Odpusť mi, že tě vyrušuji, Mistře. Já-"~ */
  IF ~~ THEN REPLY #57787 /* ~Vzpomínka: "Už *jsi* vyrušil, prosebníku. Udělal jsi to schválně. Vyslyším tě a pak mě necháš o samotě s mými myšlenkami."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~Chlapec se zhluboka nadechl a pohlédl na oheň. "Mistře, já... zase se mi zdálo o ohni, minulou noc... byl jako opravdový a ty jsi říkal, že mám přijít, kdyby --"~ */
  IF ~~ THEN REPLY #57790 /* ~Vzpomínka: "To byl *sen*, nic víc. A teď jdi."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Přeruš vzpomínku.
~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~Chlapec se nepohnul - zamračil se a pomalu ti ukázal ruce. Maso kolem prstů je... zčernalé, spálené.~ */
  IF ~~ THEN REPLY #57793 /* ~Vzpomínka: "Jak sis popálil ruce, prosebníku?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"Probudil jsem se a mé ruce byly popel." Chlapec se ti zadíval do očí. Stále se trochu třese, ale v jeho hlase je dychtivost, která tě rozzuřila. "Zdálo se mi, že jsem létal nad zemí a země i nebe vyly v plamenech. Svět samotný byl tak jasný... že jenom pohled na něj bolel, Mistře. Když jsem se pobudil, mé ruce... byly spálené, jako bych v dlaních držel oheň."~ */
  IF ~~ THEN REPLY #57796 /* ~Vzpomínka: "Lžeš, prosebníku. Přišel jsi ke mně s vymyšlenou povídačkou. *Rozzlobil* jsi mně."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"Ne, Mistře..." Chlapcova tvář se zkroutila v hrůze. "Ne, přísahám na svůj život, že si nevymýšlím."~ */
  IF ~~ THEN REPLY #57799 /* ~Vzpomínka: "Spálil ses svíčkou, prosebníku. Nebo jsi vrazil ruce do jedné z hranic ve Sklepení Proudu. A teď jsi přišel za mnou a povídáš mi o tom, že tě popálil sen. Nudí mě tvé lži."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~Chlapec ztichl, ale ke tvému překvapení se mu tvář roztřásla zlostí. "Ne. Nelžu. Byl to *sen*, co mě spálilo, Mistře, a ty jsi řekl, že se to může stát, když v sobě ucítíme pohyby síly. To jsou *tvá* slova, Mistře, a já ti je přišel *zopakovat* a říct ti, že jsou *pravdivá*." Zvedl ruce. "Podívej se, Mistře..."~ */
  IF ~~ THEN REPLY #57802 /* ~Vzpomínka: Popadni ho za ruce.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Než stačí chlapec zareagovat, tvá ruka - v porovnání k jeho obrovská - sebou škubla a popadla jeho spálené ruce do bolestivého drtivého sevření. Chlapec vykřikl, výkřik se rozléhá kolem. Se zavrčením jsi ho přitáhnul před krb, když jeho kolena narazila na podlahu, ozvalo se ostré prasknutí.~ */
  IF ~~ THEN REPLY #57805 /* ~Vzpomínka: "Podívej se do těch plamenu, prosebníku! Zvedni hlavu a dívej se!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~Chlapec se otřásá bolestí z naražených kolen... vidíš, jak se mu oči rozmazávají slzami, když konečně zvedl hlavu a podíval se do krbu. Plameny zahalily jeho obličej strašidelnou rudou září...~ */
  IF ~~ THEN REPLY #57808 /* ~Vzpomínka: "*Tohle* si přeješ držet, prosebníku? Pohyb plamenů je to, co rozdmychává tvé srdce? Věz, že plameny mohou pálit a jestli se chceš naučit ovládat jejich moc, musíš utrpět jejích dotekem."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~Chlapec je zticha, zírá do plamenů. Je jako zhypnotizovaný. Slzy žárem uschly, třes je pryč. Plně se soustřeďuje na plameny. NEPOSLOUCHÁ  tě a to tě rozzuřilo.~ */
  IF ~~ THEN REPLY #57811 /* ~Vzpomínka: "Pokud tě tohle žere, dost na to, abys *narušil* mé meditace, tak tě naučím něco o ohni, prosebníku."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Tvá ruka sebou škubla a zkroutila chlapcovo zápěstí. Zavyl, jak jsi ho přitáhnul blíže k ohništi, pak jsi vrazil jeho ruce do žhavých uhlíků. Je slyšet praskání, syčení pálícího se masa a jeho *výkřiky*, tak hrozivé, ale -~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Vzpomínka: "Aby ses naučil, musíš *trpět*, prosebníku. Musíš se nechat spálit mocí, kterou chceš vlastnit. Poznej její muka a budeš vědět, jak je využít proti svým nepřátelům."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~Měl jsem silnou vzpomínku, když jsem mluvil s Ignusem o jeho 'učiteli.' Je jasné, že jsem to byl já, kdo někdy v minulosti naučil Ignuse cesty Umění, i když si myslím, že Ignus se ode mně naučil jenom špatné lekce.~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Vzpomínka: "Aby ses naučil, musíš *trpět*, prosebníku. Musíš se nechat spálit mocí, kterou chceš vlastnit. Poznej její muka a budeš vědět, jak je využít proti svým nepřátelům."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Přeruš vzpomínku.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~*"Ssss... Ignussss jjjednou poznal *mnoho*...užžž nnnikdy... Ignussss hořííí... v utrpenííí, Ignusssss pppoznal..."* Z úst mu v prudkém závanu vylétl malý plamen, jak se zasmál, a dál plival proud žhavéhé popela. *"Trpělll... poznalll..."*~ */
  IF ~~ THEN REPLY #57820 /* ~"Pro takovou znalost chci trpět ..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"Možná někdy jindy, Ignusi... možná si ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~Než jsi řekl ta slova, v hlavě se ti usadil nepříjemný pocit, přesvědčení, že znalost, kterou ti Ignus předá, tě může trvale poškodit... ale nevíš, *jak* tohle víš.~ */
  IF ~~ THEN REPLY #57825 /* ~Opakuj: "Pro takovou znalost jsem ochotný trpět..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"Možná někdy jindy, Ignusi... možná si ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~*"Trpěttt...?"* Plameny sebou zapraskaly v nadšení, obalily Ignusovu rozpuštěnou tvář. *"SSSSSpálit? Koussssek tebe bude upálený... sssss... Ignusss... Ignusss tě může naučit *MNOHO*"*~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"Chci se učit, Ignusi... můžeš mě naučit něco z Umění?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"Chci se učit, Ignusi... můžeš mě naučit ještě něco z Umění?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"Chci se učit, Ignusi... můžeš mě naučit ještě něco z Umění?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"Možná někdy jindy, Ignusi... možná si ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~*"Kde dříve plameny pálily, tam mohou být zassse... "* Než jsi stačil zareagovat, Ignusova ruka vyletěla a popadla tvůj prst a s hlasitým *hssssss,* ti ho UPÁLIL, děsivá bolest tě donutila zavřít oči a ŘVÁT...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~Donutil ses otevřít oči a podívat se na spálenou hmotu své ruky, kde se jí Ignus dotkl... vznáší se před tebou, hraje si s tvým prstem, pak *ulomil* špičku, nechal jenom základ. *Zasyčel*, od úst mu odletuje popel. Hodil ti zpátky zbytky tvého spáleného prstu.~ */
  IF ~~ THEN REPLY #57838 /* ~"Erhkk... co... jsi... to... udělal...?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Ignus mě 'naučil' něco ze svých znalostí Umění tak, že mi utrhnul prst, opálil z něj maso a vrátil mi ho zpátky. Zřejmě si myslí, že vím, co s tím. Utrpení během zkoušky na mém zdraví zanechalo permanentní škody, ale má odolnost vůči ohni se zvýšila. Navzdory děsivé zkoušce můj prst dorostl zpátky, takže by to nemělo narušit mé bojové nebo kouzelnické schopnosti.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~*"Učččení..."* Ignus se zasmál, zvuk tvým uším zní podivně bolestivě. *"Aby ssse jeden učččil, mussssí trpět..."*~ */
  IF ~~ THEN REPLY #57841 /* ~"Chci... se... naučit... víc..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"Chci... si... ještě... promluvit... o ohni... a pálení..."~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"Ach... tak. Mám... ještě... nějaké... otázku..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"Dost... Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~*"Annno..."* Než jsi stačil zareagovat, Ignusova ruka vyletěla a popadla tvou levou ruku a s hlasitým šíleným smíchem, ti ji UPÁLIL, děsivá bolest tě donutila zavřít oči a ŘVÁT...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~Donutil ses otevřít oči a podívat se na spálenou hmotu své ruky, kde se jí Ignus dotkl...  zůstal tam jenom zčernalý spálený *pahýl*, kroutí se, kouří se z něj. Ignus si tvé bolesti nevšímá. Jeho pozornost je zaměřená na tvou spálenou ruku, kterou drží a obdivuje jako nějakou trofej.~ */
  IF ~~ THEN REPLY #57847 /* ~"Ig... nusi... dej... mi... ZPÁTKY... mou ruku..."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Ignus tě ignoruje; díváš se, jak plameny z jeho rukou obklopují tvou oddělenou ruku jako věnec, pozvolna opalují maso, až zůstává pouze holá kost. Vydal ze sebe dlouhý, nízký zvuk *hssssss* a pak mrštil svůj 'výtvor' zpátky k tobě; podařilo se ti chytit, co zůstalo z tvé ruky. ~ */
  IF ~~ THEN REPLY #57849 /* ~"Co jsi... to udělal..."~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Ignus mě 'naučil' něco ze svých znalostí Umění tak, že mi utrhnul RUKU, opálil z ní maso a vrátil mi ji zpátky. Zřejmě si myslí, že vím, co s tím. Utrpení během zkoušky na mém zdraví zanechalo permanentní škody, ale má odolnost vůči ohni se zvýšila. Navzdory děsivé zkoušce má ruka dorostla zpátky, takže by to nemělo narušit mé bojové nebo kouzelnické schopnosti.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~*"Učččení..."* Ignus se zasmál, zvuk tvým uším zní podivně bolestivě. *"Aby ssse jeden učččil, mussssí trpět..."*~ */
  IF ~~ THEN REPLY #57852 /* ~"Chci... se... naučit... víc..."~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"Chci... si... ještě... promluvit... o ohni... a pálení..."~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"Ach... tak. Mám... další... otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"Dost... Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~*"Ssssss...* Ignus se vznesl do vzduchu, zanechal za sebou ohnivou stopu. *"Už né víccce! Kousssky uhořřřely... ssss... Ignusss... už ne více bude Ignussss učččit..."*~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"Potřebuješ kousek mně, abys mě mohl učit? Co takhle oko?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"Potřebuješ kousek mně, abys mě mohl učit? Co takhle kus vnitřností?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"Velmi dobře. Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"Tak tedy nic, Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Ignus sebou škubnul, jeho prst jako kopí... ale nezamířil na oko, které můžeš vyndat, ne, vrazil ti prst do DRUHÉHO oka. Nejdříve necítíš žádnou bolest, což tě překvapilo, pak jsi *zařval*, jak Ignus do tvého očního důlku vydechnul plamenný proud, který se prodírá až do tvé lebky... syčení pálícího masa ohlušilo tvé uši, kouř zakryl tvůj pohled...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~Donutil ses otevřít oči - ale jenom JEDNO oko se otevřelo - krví podlitým pohledem ztěžka rozeznáváš Ignuse, vznášejícího se před tebou. V rukou má malou ohnivou kouli - tvé oko, které na pohled není ohněm dotčeno. Jeho ruka oko zakryla a ty cítíš, znovu cítíš tu odpornou spalující bolest v očním důlku...~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~A náhle, i přes spalující bolest, znovu jasně vidíš... Ignus otevřel ruku a v ní vidíš zbytky svého oka, spáleného k nerozeznání... ale... tvé oko je stále v důlku. Zasmál se a oko se vzneslo do vzduchu, letí k tobě, zanechávajíc za sebou ohnivou stopu.~ */
  IF ~~ THEN REPLY #57865 /* ~Vezmi si oko... své oko...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Ignus mě 'naučil' něco ze svých znalostí Umění tak, že mi spálil oko a vrátil mi ho zpátky. Zřejmě si myslí, že vím, co s tím. Utrpení během zkoušky na mém zdraví zanechalo permanentní škody, ale má odolnost vůči ohni se zvýšila. Jen si přeju, aby Ignus použil ZATRACENÉ SVITKY, místo těchhle zkoušek... alespoň že pořád vidím.~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Malí ohniví hádci vyletěli z Ignusových spálených očí, obletěli jeho zuhelnatělou lebku.  *"Dalššší učččení..."* Hádci obletěli jeho lebku a  vletěli mu do rukou, kde se rozhořeli ještě více. *"Dalššší utrpení..."*~ */
  IF ~~ THEN REPLY #57868 /* ~"Jsem ochoten trpět... můžeš mě toho naučit víc?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"Díky, Ignusi... Myslím. Promluvíme si později."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Ignus naklonil hlavu a náhle sebou švihnul a vytrhnul z tebe hrst vnitřnosti, zatočil je mezi rukama jako provaz a tiše si pro sebe zasyčel... sleduješ, jak se z vnitřností kouří... a v břiše cítíš pomalou, hnusnou, pálící bolest...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Ignus natáhl vnitřnosti a pomalu je pouští ze sevření, kousek po kousku. Střeva se kolem něj začala otáčet jako spirála, hadovitě se pohybují, každý kousek je důkladně propékán Ignusovým ohněm - v tanečním pohybu plamenů, které se dotýkají střev, se dá vysledovat určitý vzorec. Střeva pomalu tmavnou, dokud nevypadají jako dlouhý spálený provaz...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~Pálení v břiše tě nutí kroutit se bolestí, ale v porovnáním s bolestí, kterou jsi cítil, když Ignus spaloval jiné části tvého těla, je ničím. Hořící střeva se přestala nakrucovat kolem Ignuse a spadla mu do rukou. Zasyčel a hodil ti je zpět. *"MNOHO mocccci v orgánech nesssmrtelného..."*~ */
  IF ~~ THEN REPLY #57875 /* ~Vezmi si zuhelnatělé vnitřnosti.~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Ignus mě 'naučil' něco málo ze své znalosti Umění tak, že mi spálil vnitřnosti a pak mi je dal zpátky... Myslí si, že vím, co s nimi. Narozdíl od ostatních zkoušek, jsem tentokrát tolik netrpěl, když Ignus 'ošetřil' mé vnitřnosti svým ohněm.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~*"Plameny... žádná... muka..."* Ignus se pomalu otáčí nad zemí, možná tě slyšel, ale nevíš jistě, jestli pro něj ta slova něco *znamenala*...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"Víš to jistě, prosebníku?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"Aspoň jsem to zkusil... Mám nějaké jiné otázky, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"No, pokud to pro tebe má nějakou cenu, Ignusi, je mi líto, že jsi skončil takhle... promluvíme si později."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Ignus se okamžitě zastavil. Z jeho hrudi a lebky vytryskly *nové* plameny... jakoby z hnízda ukrytého v Ignusově těle vyskočilo klubko ohnivých hadů. *"Prosssebník UŽ NENÍ Ignussssss! Vyssslov to znovu a Ignussss tě SSSSSPÁLÍ!"*~ */
  IF ~~ THEN REPLY #57883 /* ~"Zkus to, *prosebníku.* Vypadá to, že ti budu muset připomenout tvé postavení..."~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"No tak to nic. Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"Rozumím ... Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~
~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~Držíš své zuhelnatělé vnitřnosti v ruce. Vypadají jako zčernalý provaz. Ignus se vznáší nad tebou, z jeho spálené postavy se sype popel.~ */
  IF ~~ THEN REPLY #57888 /* ~"Jsem ochoten trpět... můžeš mě toho naučit víc?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"Chtěl jsem si ještě promluvit o plamenech a pálení, Ignusi..."~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"Ach... tak. Mám nějaké jiné otázky..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"Děkuju ti, Ignusi... později si spolu ještě promluvíme."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Kolem Ignusova hrdla se točí plameny a tančí po jeho lebce. Jeho zuhelnatělé rty se pohnuly a Ignus ze sebe vydal praskavý zvuk. "Já... čekám."~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"Uh... Aha. Tak teda sbohem."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Ignus ze sebe vydal přerušované praskavé zasyčení. "Čekám, až budu moct kráčet cesssstou plamenů."~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"Ignusi, potřebuju tvou pomoc."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"Uh... Aha. Tak teda sbohem."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~Je slyšet praskání a pukání taveného masa, pak ze sebe Ignus vydal dlouhé zasyčení. "Jak ssssi přeješššš."~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Ignus zacvakal zuby, z úst mu vytrysklo několik žhavých uhlíků. "Ohně ssspálíí uliccce..."~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Ignus přikývl, z jeho hlavy spadlo trochu popela. Ignussss posssslouchá..."~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Ignusův hlas je hluboký a když mluví, plameny kolem jeho hlavy víří rychleji. "Znovu ssss tebou budu kráčet cessstou ohně..."~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~Z Ignusových úst vyšlehnul ohnivý jazyk. Zůstala po něm kouřová stopa. "Annno..."~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"Pojďme."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Ignus se pohnul, vzduch kolem něj víří.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"Povstaň, Ignusi. Potřebuji tě."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~POVSTAŇ, IGNUSI.~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~Vytryskly plameny a žár, Ignus se vznesl do vzduchu, který se *kroutí* horkem, zářícím z jeho těla. Otočil se k tobě, jeho oči jsou jako dvě brány do pekla. *"Jsem tvůj... dokud pro nás oba nepřijde smrt."*~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"Může to být tenhle den, Ignusi..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"Může to být tenhle den, Ignusi..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"Může to být tenhle den, Ignusi..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"Může to být tenhle den, Ignusi..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"Může to být tenhle den, Ignusi..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~Objevil se výbuch plamene, zavalil tě žár. Ignus se vznesl, vzduch se kroutí horkem, vyvěrajícím z jeho těla. Otočil se k tobě. Jeho oči jsou jako brány do pekel. Vydal ze sebe dlouhé zasyčení - ale není v tom žádná výhružka. Jenom opatrnost, kterou jsi tam nikdy dříve neslyšel.~ */
  IF ~~ THEN REPLY #68389 /* ~UŽ TADY MOC DLOUHO NEZŮSTANU, IGNUSI. VRÁTÍM TĚ DO SIGILU, JESTLI CHCEŠ.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Ignus na tebe zírá, jeho výraz je z ruiny jeho tváře nečitelný - a náhle víš, po čem Ignus touží.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~POŠLU TĚ DO ELEMENTÁLNÍ SFÉRY OHNĚ, IGNUSI. TAM SE MŮŽEŠ VZNÁŠET NA PLAMENNÉM NEBI A VŠECHNA STVOŘENÍ BUDOU ZNÁT TVÉ SRDCE. V NEKONEČNÉM OHNI BUDEŠ SÍDLIT, TAK JAK JE TI SOUZENO.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~POŠLU TĚ DO ELEMENTÁLNÍ SFÉRY OHNĚ, IGNUSI. TAM SE MŮŽEŠ VZNÁŠET NA PLAMENNÉM NEBI A VŠECHNA STVOŘENÍ BUDOU ZNÁT TVÉ SRDCE. V NEKONEČNÉM OHNI BUDEŠ SÍDLIT, TAK JAK JE TI SOUZENO.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Ignus se tiše vznáší, když znovu promluvil, jeho hlas zní jinak... jakoby dětsky, jako student, kterého si pamatuješ z dob dávno minulých, z jiné inkarnace. "Mistře, odpusť mi... zradil jsem tvé učení."~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~JEDNOU JSEM TĚ NAUČIL UTRPENÍ, IGNUSI, A ZRADA BYLA MOU. TEĎ TĚ POŠLU DO MÍSTA MÍRU, KDE BUDE TVÉ SRDCE VOLNÉ.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~BYLO MNOHO ZRAD, IGNUSI. ODPOUŠTÍM TI.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Ignus na to nic neřekl, jenom se uklonil. Plameny tančí kolem jeho postavy, odpadávají z něj kousky popela, jako listí padající na podzim ze stromu.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~SBOHEM, IGNUSI.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~SBOHEM, IGNUSI.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~SBOHEM, IGNUSI.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Ignus je jako zuřící peklo, z jeho těla vyšlehávají plameny, jako vlny rozbouřeného oceánu. *"Ssssspááálit."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"Jen tak dál, Ignusi. Nedej mu šanci soustředit se."~ */ EXIT
END

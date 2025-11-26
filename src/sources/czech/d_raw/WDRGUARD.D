// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WDRGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~WDRGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",0)
!NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #48221 /* ~Znuděný krysodlak je rád, že ho někdo vytrhnul z nudy. "Co chceš, maso?"~ */
  IF ~~ THEN REPLY #48222 /* ~"Rád bych vypadnul."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #48223 /* ~"Chci si s tebou promluvit."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48224 /* ~"Nic. Zapomeň na to."~ */ DO ~SetGlobal("Rat_Guard","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0 12.1
  SAY #48225 /* ~"Jo tak? A co by mělo takovou cenu, že by nám to dovolilo neposlechnout Mantuoka a riskovat hněv krys, hm?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48226 /* ~"Vaše životy. Jestli mě pustíte, nechám vás žít."~ */ DO ~SetGlobal("Zap","GlOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("a1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48227 /* ~"Vaše životy. Jestli mě pustíte, nechám vás žít."~ */ GOTO 4
  IF ~~ THEN REPLY #48228 /* ~"Slib, že se nikdo nedozví, co jsem udělal... a možná později nějaké peníze."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48229 /* ~"Jak by se to dozvěděli?"~ */ GOTO 11
  IF ~~ THEN REPLY #48230 /* ~"Co takhle nějaké prachy?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48231 /* ~"Přemýšlej o tom: jsem pro vás nebezpečí, ale mluvím s vámi jako se sebou rovnými. Opravdu si myslíte, že mě tyhle stěny dokážou zadržet, pokud se naštvu? Navrhuju, bez toho, že bych nějak vyhrožoval, abyste si to promysleli, protože je ve vašem zájmu, abych se dostal ven v klidu."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48232 /* ~"Protože jednou se odtud dostanu a pak to tady bude pěkně drsný a zůstane tady pořádný bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #48233 /* ~"Když nad tím tak přemýšlím, tak mě vlastně nic nenapadá."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 11.0
  SAY #48234 /* ~Raimon si tě prohlíží. Všiml si násilí v tvých očích a velikosti tvých svalů. Opatrně odemkl dveře a otevřel ti. Ustoupil a vyhýbá se tvému pohledu.~ */
  IF ~~ THEN REPLY #48235 /* ~"Díky, kámo."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
  IF ~~ THEN REPLY #48236 /* ~"Sbohem."~ */ DO ~AddexperienceParty(3750)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48237 /* ~Stále se vyhýbá tvému pohledu. "Prosím, neubližuj mi, kámo... jenom jsem dělal svou práci."~ */
  IF ~~ THEN REPLY #48238 /* ~"Budu na to pamatovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.6 4.4 11.1 11.4
  SAY #48239 /* ~Podíval se na tebe a odfrkl si. "Chceš mi ublížit, jo? Nejdřív budeš muset vymyslet, jak to uděláš!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #48240 /* ~"Co když ti slíbím, že se to nikdy nikdo nedozví... a že možná později dostaneš nějaké peníze."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #48241 /* ~"Proč mě zkrátka nepustíš?"~ */ GOTO 11
  IF ~~ THEN REPLY #48242 /* ~"Co kdybych ti dal nějaké peníze?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48243 /* ~"Přemýšlej o tom: jsem pro vás nebezpečí, ale mluvím s vámi jako se sebou rovnými. Opravdu si myslíte, že mě tyhle stěny dokážou zadržet, pokud se naštvu? Navrhuju, bez toho, že bych nějak vyhrožoval, abyste si to promysleli, protože je ve vašem zájmu, abych se dostal ven v klidu."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48244 /* ~"Protože jednou se odtud dostanu a pak to tady bude pěkně drsný a zůstane tady pořádný bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #48245 /* ~"Tak já si něco vymyslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 1.5 4.0 4.3 11.3
  SAY #48246 /* ~"To zní jako docela dobrý způsob. Mantuok mě stejně vždycky štval." Odemkl dveře, otevřel a ustoupil. "A teď vypadni, nemůžu moc dlouho čekat, než ztropím poplach."~ */
  IF ~~ THEN REPLY #48247 /* ~"Provedu. Sbohem."~ */ DO ~AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 4.2 11.2
  SAY #48248 /* ~"Něco ti povím... tvůj měšec cinkal hezky, když jsme tě sem táhli. Dej mi z něj stovku měďáků - to je pro tebe určitě maličkost - a já tě pustím."~ */
  IF ~~ THEN REPLY #48249 /* ~"Dohodnuto."~ */ GOTO 7
  IF ~~ THEN REPLY #48250 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #48251 /* ~"Prostrč je teda mřížema a my tě pustíme. A než se zeptáš, tak ti odpovím, že nám zkrátka budeš muset věřit, že jo, Shaddee?" Mrkl na svého společníka.~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #48252 /* ~"Dobře. Tady máš..."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
TakePartyGold(100)
AddexperienceParty(3750)
~ GOTO 8
  IF ~  PartyGoldLT(100)
~ THEN REPLY #48253 /* ~"Tolik u sebe nemám..."~ */ GOTO 9
  IF ~~ THEN REPLY #48254 /* ~"Zapomeň na to."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48255 /* ~Opatrně spočítal mince. Když se přesvědčil, že jsou v pořádku, otevřel ti.  "A teď vypadni!"~ */
  IF ~~ THEN REPLY #48256 /* ~"Dobrá, dobrá."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #48257 /* ~"Tak se prostě nedostaneš ven, hehe!" Směje se ti do obličeje. Po chvíli ho to přestalo bavit a otočil se.~ */
  IF ~~ THEN REPLY #48258 /* ~"Ksakru..."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1 12.0
  SAY #48259 /* ~"Chceš si jen pokecat, jo? No, s Raimonem si jen tak nepokecáš, to je jistý!" Otočil se k tobě zády.~ */
  IF ~~ THEN REPLY #48264 /* ~"Jestli mě pustíš, nechám tě žít."~ */ GOTO 1
  IF ~~ THEN REPLY #48261 /* ~"Tak fajn."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 4.1
  SAY #48262 /* ~Prskl na tebe. "To ti mám věřit?" Jeho vousky se zachvěly. Zkus to znovu."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #48263 /* ~Prskl na tebe. "To ti mám věřit?" Jeho vousky se zachvěly. Zkus to znovu."~ */ DO ~SetGlobal("Zap","GLOBAL",3)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #48264 /* ~"Jestli mě pustíš, nechám tě žít."~ */ GOTO 4
  IF ~~ THEN REPLY #48265 /* ~"Co takhle nějaké peníze?"~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #48266 /* ~"Přemýšlej o tom: jsem pro vás nebezpečí, ale mluvím s vámi jako se sebou rovnými. Opravdu si myslíte, že mě tyhle stěny dokážou zadržet, pokud se naštvu? Navrhuju, bez toho, že bych nějak vyhrožoval, abyste si to promysleli, protože je ve vašem zájmu, abych se dostal ven v klidu."~ */ DO ~SetGlobal("Zap","GLOBAL",2)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #48267 /* ~"Protože jednou se odtud dostanu a pak tady to bude pěkně drsný a zůstane tady pořádný bordel."~ */ GOTO 4
  IF ~~ THEN REPLY #48268 /* ~"Zapomeň na to."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 12 // from:
  SAY #48269 /* ~"Co chceš, vylízanče?"~ */
  IF ~~ THEN REPLY #48270 /* ~"Chci si promluvit."~ */ GOTO 10
  IF ~~ THEN REPLY #48271 /* ~"Chci si promluvit o svých možnostech."~ */ GOTO 1
  IF ~~ THEN REPLY #48272 /* ~"Nic. Zapomeň na to."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  Global("Zap","GLOBAL",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 13 // from:
  SAY #48273 /* ~Když ses přiblížil k mřížím, zablesklo se stříbro a jeden z krysodlaků se na druhého vrhl s neuvěřitelnou zuřivostí!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from:
  SAY #48275 /* ~"Tak jo." Vzal Raimonově mrtvole klíče, odemknul a otevřel ti. "Padejte, rychle." Uklonil se a pádí pryč.~ */
  IF ~~ THEN REPLY #48276 /* ~"Už jdeme. Díky."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #48277 /* ~"Chceš vědět, proč jsem to udělal, že? Bydlel jsem v Pohřbené Vesnici. Jmenoval jsem  se Shaddeus. Nechtěl jsem být krysodlak. Nemyslím si, že bych měl být teď k lidem neloajální. Zmizni odtud. Teď." Odemkl ti dveře a utekl pryč.~ */
  IF ~~ THEN REPLY #48278 /* ~"Díky, Shaddee. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #48279 /* ~Poté, co zabil svého společníka krysodlaka, se podíval na Annah. "Annah, to jsem já, Shaddeus. Pustím vás ven. Nemůžu tě nechat zavřenou. Řekni o mně ve Vesnici pár hezkých slov a vyřiď jim, že se chystá něco zlého. Nemůžu říct co, ale... abyste věděli."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF WEIGHT #1 ~  Global("Zap","GLOBAL",1)
Global("Rat_Guard","GLOBAL",1)
!NearbyDialog("DAnnah")
PartyGoldLT(100)
CheckStatLT(Protagonist,13,STR)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,INT)
~ THEN BEGIN 17 // from:
  SAY #48280 /* ~Když ses přiblížil k mřížím, zablesklo se stříbro a jeden z krysodlaků se na druhého vrhl s neuvěřitelnou zuřivostí!~ */
  IF ~~ THEN DO ~SetAnimState("Shad",ANIM_MIMEATTACK1)
SetAnimState("Raimon",ANIM_MIMEDIE)
Kill("Raimon")
~ EXTERN ~DSHAD~ 8
END

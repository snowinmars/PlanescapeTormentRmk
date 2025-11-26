// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Vhailor stojí tiše a bez pohybu, nebýt rudých světélek v jeho očích, mohl by být klidně sochou.~ */
  IF ~~ THEN REPLY #2849 /* ~"Tak se vrátím později, až tahle hromada brnění bude schopná promluvit alespoň pár slov."~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"Vhailore... no tak. Pojď, pohneme se. Musíme napravit pár nespravedlností."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Vhailor stojí bez jediného náznaku pohybu; nebýt mihotajících červených světélek v jeho očích, byl by k nerozeznání od sochy.~ */
  IF ~~ THEN REPLY #17003 /* ~"...Vhailore? Slyšel jsi mě?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~Vhailorův hlas konečně rozezvučel ozvěnu jeho prázdné přilbice: *Stav těchto stromů je pro mě bezvýznamný. Jejich smrt není spravedlivá či nespravedlivá -- jednoduše je.*~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"Fajn. Morte, co si o tom myslíš?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"V pořádku. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"V klidu. Díky. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"V naprostém pořádku. Grace, mohla bys to zvážit?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"Prima. Dak'kone, mohl bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"Dobrá. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"Budiž. Nordome, myslíš, že bys mohl pomoci?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"Správně. No, Truchlící, mohl bys mi ještě na něco odpovědět..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"Vynikající, Vhailore. Sbohem, Truchlící za Stromy."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~Jak se natahuješ po Iannisově hrdle, slyšíš zachřestění plátové zbroje a Vhailor vystoupil se zdviženou sekerou. *NESPRAVEDLNOST*~ */
  IF ~~ THEN REPLY #30530 /* ~"Zatraceně!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Vhailor se během tvého přiznání vrtí a zvedá sekeru. Neútočí. Jenom *čeká.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Vhailor se probral, jakmile Iannis začal volat stráže. Jde po tobě se zdviženou sekerou. *NESPRAVEDLNOST*~ */
  IF ~~ THEN REPLY #30533 /* ~"Zatraceně!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Vhailor se během tvého přiznání vrtí a zvedá sekeru. Neútočí. Jenom *čeká.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Vhailor se během tvého přiznání vrtí a zvedá sekeru. Neútočí. Jenom *čeká.*~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Vhailor stojí tiše a bez pohybu. Nebýt blikajících rudých světélek v jeho očích, vypadal by jako socha.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"Vhailore, potřebuji tvou pomoc. Budeš se mnou cestovat?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"Vhailore, potřebuji tvou pomoc. Budeš se mnou cestovat?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Nechej Vhailora na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*BUDU.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"Tak tedy pojďme."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Vhailor stojí tiše a bez pohybu. Nebýt blikajících rudých světélek v jeho očích, vypadal by jako socha.~ */
  IF ~~ THEN REPLY #34005 /* ~"Chtěl jsem se tě na pár věci zeptat, Vhailore..."~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Nechej Vhailora na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*TY. Jsi to TY. Jak DLOUHO tě už honím, Bezejmenný? A jak dlouho budu stát VEDLE tebe, dokud nebude tvůj KLAM odhalen?* Jak pozvedl sekeru do vzduchu, začíná jím protékat čirá *moc*... jeho zasvěcení, jeho neuvěřitelná víra, proměnila Vhailora doslova ve fyzické zosobnění spravedlnosti. *Je mým OSUDEM, že jsi mě umístil tak blízko sebe, ZLOČINČE. SPRAVEDLNOSTI bude učiněno zadost. PADNEŠ mou zbraní, nesmrtelný, i kdybych měl stát nad tvými vzpírajícími se pozůstatky celou VĚČNOST.*~ */
  IF ~~ THEN REPLY #54089 /* ~Braň se.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Zkus utéct.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*V tvých činech není SPRAVEDLNOST, devo. Tentokrát mě NEUVĚZNÍŠ	svými FALEŠNÝMI slovy. Tentokrát budeš ODSOUZEN.* Vhailor pokročil k Triasovi, se vztyčenou sekerou.~ */
  IF ~~ THEN REPLY #54776 /* ~"Vhailore, stůj!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Zaútoč na Triase.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Spravedlnost po tobě už DLOUHO touží, devo. Tímto ZLOČINEM ses ODSOUDIL.* Vhailor pokročil k Triasovi, se vztyčenou sekerou.~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailore, stůj!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Zaútoč na Triase.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*Deva NEODEJDE volný. Ať už jsi přísahal cokoli, SPRAVEDLNOSTI MUSÍ BÝT UČINĚNO ZA DOST!*~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailore, stůj!"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Dívej se.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Zaútoč na devu, navzdory své přísaze.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Zaútoč na devu.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~Vhailor odpověděl pouze tichem, když ses k němu otočil, vidíš, že se jeho oči vpalují do tvých. Zablikaly, jakoby ho něco napadlo... A ty sis náhle uvědomil, že tě zkoumá... jakoby něco hledal... nějakou slabinu.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"Uh... Ignusi?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"Uh... Fall-From-Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"Uh... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"Uh... Dak'kone?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"Uh... Dak'kone?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"Uh... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"Uh... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Před tebou stojí ohromné prázdné brnění - ale pláty stojí v prostoru, jako by byly navlečené na neviditelnou postavu. Kovové pláty lemují rudé žilky. Brnění třímá v rukavicích ohromnou dvoubřitou popravčí sekeru. Povrch zbroje je ozdoben rytinami, z nichž nejvíce vyniká rudý mořský had s roztaženými křídly.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"Vhailore...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Prozkoumej zbroj.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Prozkoumej sekeru.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Prozkoumej helmu.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~Zbroj je archaická, nárameníky jsou pokryté malými čepelkami, které by se daly zdálky považovat za dekorace. Ale zblízka je vidět, že jsou příliš velké a nebezpečné, aby byly něco méně než další zbraň na už tak vražedném brnění. Zbroj je pokrytá rýhami a dalšími znaky, které na ní zanechaly boje, povrch je zjizvený věkem a rzí.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"Vhailore...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Prozkoumej sekeru.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Prozkoumej helmu.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Vezmi zbroj.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~Dvoubřitá bitevní sekera ti připomíná popravčí sekery. Hlavice sekery je vykována tak, že připomíná krvavě rudého hada s roztaženými křídly, které tvoří ostří sekery. Sekera samotná je *ohromná*, i když je držená obouruč, vyžaduje od majitele neuvěřitelnou sílu, aby jí mohl používat s nějakým účinkem. Ale i přes svou ohromnost klidně leží v rukavicích zbroje, jakoby byla z dřeva a ne přetěžkého kovu.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"Vhailore...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Prozkoumej zbroj.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Prozkoumej helmu.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Vezmi sekeru.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~Helma napodobuje lebku nějakého stvoření, z dolního okraje obličejového krytu vyčnívají dlouhé kovové zuby. Helma se vznáší ve vzduchu, vnitřek je skryt ve stínu.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"Vhailore...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Prozkoumej zbroj.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Prozkoumej sekeru.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Vezmi helmu.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~Nevíš, odkud to jméno přišlo, ale víš, že *patří* ke zbroji. Jenom jsi ho zašeptal, ale to jediné slovo se v komnatě podivně rozlehlo. Vzduch se zachvěl, dost na to, aby ti po zádech přejel mráz a srdce se ti úzkostlivě rozbušilo.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Zkus přivolat vzpomínku, dovol jí uvolnit se.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Nechej vzpomínku proběhnout.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Prozkoumej zbroj.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Prozkoumej sekeru.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Prozkoumej helmu.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~Zatímco zíráš na prázdnou zbroj, stíny za průzorem helmy se začínají tvarovat... vytvořily rysy mocného muže s ebenovou kůží. Jeho oči září jako oheň, má na sobě mnoho jizev... byl to ten 'Vhailor', dokud na sobě ještě měl maso? Připadá ti nepříjemně známý... jak jako zbroj, tak jako člověk z masa a krve.~ */
  IF ~~ THEN REPLY #56087 /* ~"Vhailore... vzbuď se."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Prozkoumej zbroj.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Prozkoumej sekeru.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Prozkoumej helmu.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Nechej zbroj být.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~Z helmy vyšlehl záblesk zářivě červeného světla, který tě téměř oslepil - zakryl sis oči před září - když ses opět podíval, vidíš, jak ve stínu helmy hoří dva žhavé uhlíky.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~Když ses natáhl, z helmy náhle vyšlehl záblesk zářivě červeného světla, který tě téměř oslepil - zakryl sis oči před září - když ses opět podíval, vidíš, jak ve stínu helmy hoří dva žhavé uhlíky.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*PROBUDIL JSEM SE.*~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~Hlas je dutý, nezemský, rozléhá se v prázdném brnění. Není to lidský hlas... je to spíš jako zosobněná *moc*. Nezní to jako nic *živého* ... nebo jako cokoli, co kdy žilo.~ */
  IF ~~ THEN REPLY #56096 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~V Curstském vězení jsem potkal opuštěnou zbroj - ducha... vypadá to, že už tam je nějaký čas. Jmenuje se "Vhailor" a tvrdí o sobě, že je Nemilosrdný, služebník spravedlnosti.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*Jsem VHAILOR.* ~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~"*CO* jsi?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~"*CO* jsi?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~"*CO* jsi?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~"*CO* jsi?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*Jsem NEMILOSRDNÝ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*Jsem NEMILOSRDNÝ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*Jsem NEMILOSRDNÝ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*Jsem NEMILOSRDNÝ.*~ */
  IF ~~ THEN REPLY #56107 /* ~"Nemilosrdný?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~Jak Vhailor vyslovil slovo 'Nemilosrdný,' Annah a Morte ztuhli.~ */
  IF ~~ THEN REPLY #56109 /* ~"Nemilosrdný?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~Jak Vhailor vyslovil slovo 'Nemilosrdný,' Annah ztuhla a vydala ze sebe tiché zasyčení.~ */
  IF ~~ THEN REPLY #56111 /* ~"Nemilosrdný?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~Jak Vhailor vyslovil slovo 'Nemilosrdný,' Morte ztuhl.~ */
  IF ~~ THEN REPLY #56113 /* ~"Nemilosrdný?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Nemilosrdní slouží SPRAVEDLNOSTI. Spravedlnost NIČÍ zlo. Až bude VŠE vyčištěno, mnohovesmír dosáhne DOKONALOSTI.*~ */
  IF ~~ THEN REPLY #56115 /* ~"Proč vám říkají 'Nemilosrdní?'"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"Jak sloužíš spravedlnosti?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"Mám pro tebe nějaké otázky, Vhailore..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"Ach... tak, Vhailore. No, musíme se rozejít."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*PTEJ se. Já ODPOVÍM.*~ */
  IF ~~ THEN REPLY #56121 /* ~"Co jsou Nemilosrdní?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"Říkal jsi, že sloužíš, spravedlnosti, Vhailore. Jak?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"Jak dlouho jsi byl uvězněn?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"Jak dlouho jsi byl uvězněn pod Curstem?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"Jak jsi zemřel?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"Říkal jsi, že vidíš do srdcí ostatních, Vhailore. Jak?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"Můžeš mě naučit, jak používat sekeru, Vhailore?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Lži: "Já také hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Lži: "Já také hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Pravdivě: "Já také hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Pravdivě: "Já také hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"Budeš se mnou cestovat, Vhailore? Hodila by se mi tvá pomoc."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"To nic, Vhailore. Tady se musí naše cesty rozdělit."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*Slitování je štít používaný SLABÝMI. Slitování je SLABOST. Slitování je SMRT. NIKDO není nevinný. Nemilosrdní zabíjejí slitování a její DĚVKY ať už je jejich nákaza zanesla kamkoli.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Pravdivě: "Vidím, že jsem našel někoho, kdo věří ve stejné věci jako *já*. Slitování podrývá spravedlnost. Slitování *je* slabost."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Lži: "Vidím, že jsem našel někoho, kdo věří ve stejné věci jako *já*. Slitování podrývá spravedlnost. Slitování *je* slabost."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Pravdivě: "Nesouhlasím. Slitování je síla - a jsou časy, kdy je dokonce i spravedlnost nespravedlivá, zvláště když je dotažena do extrémů."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"Aha. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Trest ZLOMÍ duši. Tím jsou cenní pro SPRAVEDLNOST.*~ */
  IF ~~ THEN REPLY #56143 /* ~"Aha. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*SLITOVÁNÍ hryže v srdci SPRAVEDLNOSTI. NIKDO, kdo žije, není NEVINNÝ.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"Co *definuje* spravedlnost,  Vhailore? Co to JE?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"Tvá vlastní slova znamenají, že ani ty nejsi nevinný. Neměl bys být potrestán i *ty*?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*SPRAVEDLNOST je definována ZÁKONEM.*~ */
  IF ~~ THEN REPLY #56153 /* ~"A co je zákon, Vhailore?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*ZÁKON je nástroj, kterým je poslouženo SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #56158 /* ~"A co dělá zákony, Vhailore?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*ZÁKON je definován SPRAVEDLNOSTÍ.*~ */
  IF ~~ THEN REPLY #56163 /* ~"Tohle jde pořád do kola, Vhailore - nemá to smysl. Říkáš, že spravedlnost je definována zákonem, který je definován spravedlností."~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*ZÁKON -JE- definován SPRAVEDLNOSTÍ.*~ */
  IF ~~ THEN REPLY #56168 /* ~"Zákony tvoří živí lidé, Vhailore - jsou zákony, které stvoří 'spravedlivé'?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*ZÁKONY jsou SPRAVEDLIVÉ.*~ */
  IF ~~ THEN REPLY #56173 /* ~"Ale pokud jsou ty zákony tvořený živými lidmi - kteří, jak *jsi ty* řekl, NEJSOU nevinní, neposkvrnili zákon svýma rukama?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*NIC co žije, není NEVINNÉ. Ale ZÁKONY se povznášejí NAD maso a krev. Z NEDOKONOLOSTI MŮŽE BÝT DOKONALOST. NESPRAVEDLIVÉ ZÁKONY mohou být ZMĚNĚY. ZBAVENY ZLA.*~ */
  IF ~~ THEN REPLY #56178 /* ~"Takže přiznáváš, že zákony nejsou vždy dokonalé - ale jestli tyto zákony definují spravedlnost, není potom nedokonalá i *spravedlnost*?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Vhailor je zticha.~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"Vhailore - není ŽÁDNÁ spravedlnost. Vše co děláš ve jménu spravedlnosti nemá smysl - tvůj ŽIVOT nemá smysl."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~Přesvědčil jsem Vhailora, že jeho služba spravedlnosti nemá smysl, protože věřil, že spravedlnost a zákony jsou tak propojené, že pokud je jedno nedokonalé, je i druhé. Kdyby byl chytřejší, možná by argumentoval lépe, ale ať už ho na ducha změnila jakákoli vášeň nebo přesvědčení, zároveň narušila jeho schopnosti prohlédnout za jeho vlastní přímé argumenty. Když si má slova konečně uvědomil, jeho pochybnost a zaváhání ho zabily, protože 'se vzdal svého ducha.'~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"Vhailore - není ŽÁDNÁ spravedlnost. Vše co děláš ve jménu spravedlnosti nemá smysl - tvůj ŽIVOT nemá smysl."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"To nic, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"Už se s tebou nebudu dál hádat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Tvá slova se rozléhají, nabírají další moc... Uhlíky ve Vhailorových očích zablikaly - a vyhasly. Jeho zbroj spadla, sekera a kovové pláty zařinčely na zemi. Dopad zdvihnul oblaka prachu - popel a částečky rzi odpadávají z kovu plátů a sekery, které se před tvýma očima rozpadají a mění na prach. Na konec zůstalo jenom několik zrezavělých kovových plechů, jako důkaz, že Vhailor vůbec existoval.~ */
  IF ~~ THEN REPLY #56190 /* ~"Sbohem, Vhailore."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~Vhailorovy žhavé oči zablikaly a pak ZAPLÁLY. *Tvá SLOVA jsou pro mě NIČÍM. Chceš mě SVÉST z CESTY SPRAVEDLNOSTI.* Výhružně pozdvihl sekeru. "Budeš POTRESTÁN."~ */
  IF ~~ THEN REPLY #56192 /* ~"Vhailore, počkej! Nedělej to!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"Dobrá, Vhailore. Když se chceš rvát..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*SLOUŽÍM SPRAVEDLNOSTI. POKUD V JEJÍCH SLUŽBÁCH SELŽU, BUDU POTRESTÁN.*~ */
  IF ~~ THEN REPLY #56195 /* ~"Takže kdybys někdy nechal zločince uniknout tretu, tak budeš ty sám potrestán?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*ANO.*~ */
  IF ~~ THEN REPLY #56200 /* ~"No, zatímco jsi byl uvězněný pod Curstem, se ve sférách narodily tisíce... sta tisíce... možná milióny zločinců, prožily své životy a zemřeli. *Nikdy* jsi neměl šanci potrestat je. Opravdu můžeš přivést spravedlnost každému stvoření v mnohovesmíru?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Tak to je vyhledám ZA smrtí a potrestám je.*~ */
  IF ~~ THEN REPLY #56205 /* ~"Pokud to uděláš, už nebudeš dál schopný trestat živé. Takže co, Vhailore?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*Tak budu pokračovat ve svém poslání pro SPRAVEDLNOSTI ve sférách ŽIVÝCH.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"Ale je mnohem více zločinců, kteří jsou mrtví, než živí... a vše, co žije, zemře, ne? Pokud zemřeš, tak budeš mít přístup ke všem zločincům."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"Ale je mnohem více zločinců, kteří jsou mrtví, než živí... a vše, co žije, zemře, ne? Pokud zemřeš, tak budeš mít přístup ke všem zločincům."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Tvá slova jsou PRÁZDNÁ. Chybí v nich PŘESVĚDČENÍ. Páchnou LŽÍ a KLAMEM. Už ti nebudu dál naslouchat.*~ */
  IF ~~ THEN REPLY #56218 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"Tak v tom případě se tady musíme rozejít, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Vhailor stojí tiše, jeho žhavé oči září skrze průzor helmy.~ */
  IF ~~ THEN REPLY #56222 /* ~"Hledej je za smrtí, Vhailore - možná se tam jednoho dne potkáme."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"Zapomeň na má slova, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Tvá slova se rozléhají, nabírají další moc... Uhlíky ve Vhailorových očích zablikaly - a vyhasly. Jeho zbroj spadla, sekera a kovové pláty zařinčely na zemi. Dopad zdvihnul oblaka prachu - popel a částečky rzi odpadávají z kovu plátů a sekery, které se před tvýma očima rozpadají a mění na prach. Na konec zůstalo jenom několik zrezavělých kovových plechů, jako důkaz, že Vhailor vůbec existoval.~ */
  IF ~~ THEN REPLY #56227 /* ~"Teď odpočívej, Vhailore."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~Přesvědčil jsem Vhailora, že jestli chce potrestat všechny, kdo spáchali zločin, musí zemřít, aby je mohl potrestat všechny, tedy i mrtvé - - má slova měla silný dopad - tak silný, že mi doslova zemřel druhou smrtí před očima, jeho zboj a sekera se rozpadly, když 'se vzdal ducha.'~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Čas PLYNUL, zatímco já byl uvězněný. Čas není DŮLEŽITÝ. Pouze SPRAVEDLNOST.*~ */
  IF ~~ THEN REPLY #56230 /* ~"Víš, *proč* jsi přišel do Curstu?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Mnoho je ztraceno z mé cesty. Cestoval jsem a hledal ZRÁDCE. Našli mě a uvěznili. Činem ZRADY.*~ */
  IF ~~ THEN REPLY #56235 /* ~"Jací zrádci?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Curst je MĚSTO ZRÁDCŮ. Je to město, které popírá SPRAVEDLNOST. Přišel jsem sem ČISTIT.*~ */
  IF ~~ THEN REPLY #56240 /* ~"Jak tě uvěznili?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Vhailor je chvíli zticha. Jeho žhavé oči zablikaly.~ */
  IF ~~ THEN REPLY #56245 /* ~"Vhailore? Pamatuješ si, jak tě uvěznili?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"Zapomeň na má slova, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*NEVÍM.*~ */
  IF ~~ THEN REPLY #56250 /* ~"Velmi dobře. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"Tak to se tady musíme rozejít, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"Tak tedy nic, Vhailor. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*Není nic, co bych tě mohl naučit. A není to RUKA, co vede zbraň. Je to VŮLE.*~ */
  IF ~~ THEN REPLY #56254 /* ~"Co tím myslíš?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*Když ke VŮLE silná, ZBRAŇ je silná. Když je případ SPRAVEDLIVÝ, zbraň udeří DOOPRAVDY. Pokud srdce požírá SLOTOVÁNÍ, následují POCHYBY, VÁHÁNÍ A SOUCIT. A zbraň je jako PRACH.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"Má vůle je silná, Vhailore. Mé přesvědčení dává mé zbrani sílu."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"Má vůle je silná, Vhailore. Mé přesvědčení dává mé zbrani sílu."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~Padl na tebe Vhailorův žhavý pohled. Chvíli panuje ticho.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Tvá VŮLE je silná. Tvá DISCIPLÍNA je silná. Tvá VŮLE je vůlí PRÁVA.*~ */
  IF ~~ THEN REPLY #56264 /* ~"Tak jak  -?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*VĚZ TOTO: Není nic na VŠECH SFÉRÁCH, co VYDRŽÍ ruku SPRAVEDLNOSTI, pokud je proti nim udeřeno. SPRAVEDLNOPST dokáže zrušit ARMÁDY. Dokáže otřást trůny BOHŮ. Pokud je tvá věc SPRAVEDLIVÁ, SPRAVEDLNOST ti půjčí svou SÍLU.*~ */
  IF ~~ THEN REPLY #56266 /* ~"Aha."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*Ještě NEVIDÍŠ. JEŠTĚ ne. Otevři mi své oči a UVIDÍŠ SFÉRY očima SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #56268 /* ~"Velmi dobře... ukaž mi, co vidíš."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"Ne, Vhailore... Nechci to vidět. Místo toho mám pro tebe další otázku..."~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"Nemyslím si, že bych už byl připravený na to, co mi chceš ukázat, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~Zadíval ses do Vhailorových očí, dvojíce ohníčků, které náhle ZAPLÁLY...~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"Cco..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"Cco..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"Cco..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~Záblesk tě na chvíli oslepil. Když jsi znovu otevřel oči, všechno kolem má jakoby nějakou HRANU, jakoby získalo vše další aspekt. Cítíš se nějak... ostřejší, jako bys dokázal nějak ROZSEKNOUT každý předmět pouhým pohledem.~ */
  IF ~~ THEN REPLY #56276 /* ~"Vhailore... je to...?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*VIZ všechny věci. VIZ jejich sílu. VIZ jejich SLABOST. SUĎ všechny věci. Pokud se do jejich srdce zakouslo SLITOVÁNÍ, PADNOU před SPRAVEDLNOSTÍ. Tvá VŮLE ti dává PRÁVO. Tvá DISCIPLÍNA ti dává PRÁVO.*~ */
  IF ~~ THEN REPLY #56278 /* ~"Dobrá... Já... chtěl jsem se tě ještě na něco zeptat."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"Už... rozumím. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Tvá VŮLE je silná. Ale chybí ti DISCIPLÍNA. Tvá VŮLE je TVOU vůli, ne vůlí ZÁKONA. Není nic, co bych ti mohl ukázat, co bys VIDĚL, nebo čemu bys ROZUMĚL.*~ */
  IF ~~ THEN REPLY #56281 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"No tak to nic. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~Vhailorovy žhavé oči se na tebe upřely. Kolem zapanovalo ticho.~ */
  IF ~~ THEN REPLY #56284 /* ~"Vhailore? Jak jsi zemřel?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"Zapomeň na to, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*JÁ ŽIJI.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"No, dá se to tak říct - ale co se stalo tvému fyzickému tělu?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"No, dá se to tak říct - ale co se stalo tvému fyzickému tělu?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~Ještě než jsi promluvil, hlavou ti bleskla myšlenka - a náhle *víš*, že si Vhailor svou smrt neuvědomuje. Z nějakého důvodu máš pocit, že odhalení tohoto faktu by mohlo být extrémně nebezpečné.~ */
  IF ~~ THEN REPLY #56295 /* ~"Vhailore? Co se stalo tvému fyzickému tělu?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"Zapomeň na to, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*JÁ ŽIJI. Dokud budou ODSOUZENÍ, potřebující TREST, BUDU ŽÍT.*~ */
  IF ~~ THEN REPLY #56300 /* ~"Vhailore, ty nejsi *doopravdy* naživu... stal se z tebe přelud, zjevení - duch."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"CÍTÍŠ se naživu, Vhailore? Sundej si rukavici, jestli tvé oči uvidí kůži. Dotkni se svou sekerou své ruky, jestli poteče krev. A co tvé oči - hoří jako oheň, ale dokáží uronit slzu? Tvůj duch zůstal, Vhailore, ale ty už dál *nežiješ.*"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~Nastalo těžké, nebezpečné ticho. Vhailor neodpovídá.~ */
  IF ~~ THEN REPLY #56306 /* ~"Zapomeň na to, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~Na chvíli... jenom na chviličku, se Vhailorovy oči zajiskřily.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"PAMATUJEŠ si alespoň, jak jsi kdysi pod tím brněním vypadal, Vhailore? Kdysi jsi byl mužem z masa a krve, kdysi naživu, kdysi hledač spravedlnosti. Ale teď je ten muž mrtev. A zůstala jenom zmučená schránka."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"PAMATUJEŠ si alespoň, jak jsi kdysi pod tím brněním vypadal, Vhailore? Já ano. Kdysi jsi býval mužem z masa a krve, s temnou kůží a očima, které zářily jako oheň. Na svém těle jsi měl nespočetné jizvy, a mnoho bylo spravedlnosti vykonané tvým jménem. Ale teď je ten muž mrtev. A zůstala jenom zmučená schránka."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"Zapomeň na má slova, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*Já... pamatuji si..* Vhailorovy oči se znovu zajiskřily. Sekera mu poklesla. *Vzpomíky... je OBTÍŽNÉ vyvolat je. Byla SMRT... a já se ZMĚNIL. Už nejsem více TEN. Co JSEM?*~ */
  IF ~~ THEN REPLY #56316 /* ~"Nevím, Vhailore. Muž, který byl Vhailorem, zemřel... ty jsi teď něčím jiným."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"Zapomeň na má slova, Vhailore... Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*SPRAVEDLNOST byla mou věcí. MASO... MASO nemohlo zůstat. Ale SPRAVEDLNOSTI muselo být SLOUŽENO. Nastala SMRT masa, ale VŮLE se nevzdala... je jich TOLIK, kteří musí být potrestáni. STÁLE více. SPRAVEDLNOST... SPRAVEDLNOSTI by nebylo poslouženo mou SMRTÍ.*~ */
  IF ~~ THEN REPLY #56321 /* ~"Ale ty jsi ZEMŘEL, Vhailore, už dávno. A teď je čas odejít."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~Přesvědčil jsem Vhailora, že už nežije. Má slova na něj měla obrovský účinek - tak silný, že doslova zemřel druhou smrtí přímo přede mnou, zbroj a sekera se rozpadly, když 'ho opustil duch.' ~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"Tak to si pouze LŽEŠ, když si myslíš, že žiješ. Jsi MRTVÝ, Vhailore. Jaké SPRAVEDLNOSTI je poslouženo, když její služebník lže sám sobě?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~Přesvědčil jsem Vhailora, že už není naživu, že musí vzdát svou výpravu za spravedlností. Má slova měla silný dopad - tak silný, že mi doslova zemřel druhou smrtí před očima, jeho zboj a sekera se rozpadly, když 'se vzdal ducha.'~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~Utkvěl na tobě Vhailorův žhavý pohled. Na chvíli nastalo ticho.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*PŘIDÁM se k tobě. Společně budeme hledat SPRAVEDLNOST. A kde se bude skrývat SLITOVÁNÍ, tam ho ZABIJEME.*~ */
  IF ~~ THEN REPLY #56329 /* ~"Velmi dobře."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~Utkvěl na tobě Vhailorův žhavý pohled. Na chvíli nastalo ticho.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*PŘIDÁM se k tobě. Tvá VŮLE je PŘELÉTAVÁ, ale já tě NAUČÍM SPRAVEDLNOSTI. NAUČÍM TĚ ZAÍJET SLITOVÁNÍ.*~ */
  IF ~~ THEN REPLY #56332 /* ~"Velmi dobře."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Hledá tvé srdce SPRAVEDLNOST? Nebo je tvá VÝPRAVA beze SMYSLU?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Pravdivě: "Hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Pravdivě: "Hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Lži: "Hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Lži: "Hledám spravedlnost, Vhailore. Přidáš se ke mně?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"Hledám znalosti o sobě, Vhailore a pokud je v těchto znalostech spravedlnost, budu hledat i ji."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"Hledám znalosti o sobě, Vhailore a pokud je v těchto znalostech spravedlnost, budu hledat i ji."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*SPRAVEDLNOST používá Nemilosrdné jako své OČI. SPRAVEDLNOST používá Nemilosrdné k prosazování své VŮLE. Pokud je ROZSUDEK vydán, PŮJČÍ nám svou SÍLU.*~ */
  IF ~~ THEN REPLY #56347 /* ~"A jak víš, *kdy* máš udílet spravedlnost?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"Síla? Jak?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*SÍLA SPRAVEDLNOSTI záleží na škodě spáchané NESPRAVEDLNOSTÍ.*~ */
  IF ~~ THEN REPLY #56342 /* ~"Takže... čím větší nespravedlnost - větší zločin - tím více síly ti 'spravedlnost' půjčí?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"A jak víš, *kdy* máš udílet spravedlnost?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*Pokud je NESPRAVEDLNOST dostatečně velká, SPRAVEDLNOST mi zapůjčí SÍLU nutnou k NÁPRAVĚ. NIKDO vůči ní neobstojí. ROZTŘÍŠTÍ každou zábranu, PROLOMÍ každý štít, PROTRHNE každé kouzlo a zapůjčí svému služebníku MOC nutnou k PROVEDENÍ ROZSUDKU.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Vhailor je více než jenom duch - je to zosobnění spravedlnosti. Řekl mi, že mu spravedlnost dává moc nutnou k napravení nespravedlnosti - čím větší nespravedlnost, tím více síly získá, aby ji mohl napravit. Vhailor tvrdí, že mu spravedlnost může dát sílu na zrušení armád... dokonce porazit samotné Bohy. Z nějakého důvodu ve mně ta slova vyvolala nezřetelnou vzpomínku - vím, že už jsem je slyšel dříve a i když zní nemožně, vím, že jsou pravdivá.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~Jak Vhailor vyslovuje svou řeč, celým tělem ti proběhl záchvěv. Už jsi ta slova *slyšel* předtím a víš, že jsou *pravdivá*.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*VĚZ TOTO: Není nic na VŠECH SFÉRÁCH, co VYDRŽÍ ruku SPRAVEDLNOSTI, pokud je proti nim udeřeno. SPRAVEDLNOPST dokáže zrušit ARMÁDY. Dokáže otřást trůny BOHŮ. Věz, že pro všechny, kdož ZRADÍ spravedlnost, jsem jejich OSUD. A osud si sebou nese POPRAVČÍ SEKERU.*~ */
  IF ~~ THEN REPLY #56356 /* ~"Aha."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*NE, ty NEVIDÍŠ.* Vhailorovy oči hoří jako dvě pochodně. *MODLI se, abys nikdy NEVIDĚL.*~ */
  IF ~~ THEN REPLY #56358 /* ~"A jak víš, *kdy* máš udílet spravedlnost?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*SPRAVEDLNOST vidí skrze mé oči. OČI NEMILOSRDNÉHO mohou vidět PRASKLINY SLABOSTI, KŘEHKOST, zranění SLITOVÁNÍM v jejich SRDCÍCH. VIDĚNÍM JÁ POZNÁM provinění. POZNÁM jejich STRACH.*~ */
  IF ~~ THEN REPLY #56363 /* ~"Co vidíš, když se podíváš na jiné?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"Když jsi řekl, že ti spravedlnost půjčí svou 'sílu', co jsi tím myslel?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*Vše, co vidím, je SOUZENO. Mohu se podívat do srdce a mysli jiného a POZNAT JE. Oči SPRAVEDLNOSTI se dívají skrze MNĚ.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"Co vidíš, když se podíváš na Morteho?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"Co vidíš, když se podíváš na Annah?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"Co vidíš, když se podíváš na Dak'kona?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"Co vidíš, když se podíváš na Fall-From-Grace?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"Co vidíš, když se podíváš na Fall-From-Grace?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"Co vidíš, když se podíváš na Nordoma?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"Co vidíš, když se podíváš na Ignuse?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"Co vidíš, když se podíváš na sebe?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"Co vidíš, když se podíváš na sebe?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"Co vidíš, když se podíváš na mne?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*PTEJ SE.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"Co vidíš, když se podíváš na Morteho?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"Co vidíš, když se podíváš na Annah?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"Co vidíš, když se podíváš na Dak'kona?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"Co vidíš, když se podíváš na Fall-From-Grace?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"Co vidíš, když se podíváš na Fall-From-Grace?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"Co vidíš, když se podíváš na Nordoma?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"Co vidíš, když se podíváš na Ignuse?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"Co vidíš, když se podíváš na sebe?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"Co vidíš, když se podíváš na sebe?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"Co vidíš, když se podíváš na mne?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*Lebka ví MNOHO. Ale neví NIC o spravedlnosti. Mnoho těch, kdo mají srdce jako tato lebka, teď leží ve VĚZENÍCH a HROBECH.*~ */
  IF ~~ THEN REPLY #56397 /* ~"Zeptám se tě na něco jiného..."~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*Tiefling je POSKVRNĚNÁ Nižšími Sférami. Její krev nezanechává žádné MÍSTO pro loajalitu k SPRAVEDLNOSTI. Rozumí SPRAVEDLNOSTI, ale IGNORUJE ji.* Vhailorovy oči zahořely. *MNĚ IGNOROVAT nebude.*~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"Zeptám se tě na něco jiného..."~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Vhailorovy oči zahořely. *Tieflingu, ODPOVĚZ MI: Spáchala jsi někdy NESPRAVEDLNOST?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*SPRAVEDLNOST mi dává PRÁVO.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Nemilosrdní JSOU spravedlnost. Naše činy jsou NAD otázkou, TIEFLINGU.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*NAPOSLEDY, tieflingu. Spáchala jsi nespravedlnost? ODMÍTNUTÍ odpovědi je přiznáním VINY.*~ */
  IF ~~ THEN REPLY #56411 /* ~"Vhailore, nech toho. Teď hned. Nenechám tě, abys ji vyslýchal."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Počkej, co Annah řekne.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Počkej, co Annah řekne.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*ODMÍTLA jsi odpovědět SPRAVEDLNOSTI. POTRESTÁM tě.*~ */
  IF ~~ THEN REPLY #56415 /* ~"Ne, Vhailore, to neuděláš. Nemáš na to právo."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Počkej, co se bude dít.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*SPRAVEDLNOST mi dává PRÁVO. Vina ji ZAHALUJE, jako druhá kůže.*~ */
  IF ~~ THEN REPLY #56419 /* ~"Řekl jsem ti, ať toho necháš, Vhailore, a myslím to vážně."~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~
~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*Spáchala NESPRAVEDLNOST. POTRESTÁM ji.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*Vše, co stojí v CESTĚ SPRAVEDLNOSTI bude ODSOUZENO. ZASLOUŽILA sis svůj osud, SUKUBO.* ~ */
  IF ~~ THEN REPLY #56424 /* ~"Ne, Vhailore, to neuděláš. Nemáš na to právo.~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Počkej, co se bude dít.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*Tak se děvka, která je SLITOVÁNÍM, ukázala. SLABOST otrávila její srdce.*~ */
  IF ~~ THEN REPLY #56427 /* ~"To není slitování. To je *rozkaz.* Chceš snad otestovat mé slabiny, Vhailore?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"Slitování není slabost, Vhailore. Necháš ji být, nebo se zodpovíš mně."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"Tak? Tak suď mě, Vhailore - zkus odsoudit *mně*."~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*Vše, co stojí v CESTĚ SPRAVEDLNOSTI, bude ODSOUZENO.* Vhailorovy oči zahořely a on pozvedl svou sekeru. *ZASLOUŽIL sis svůj osud.*~ */
  IF ~~ THEN REPLY #56431 /* ~"Připrav se zemřít druhou smrtí, Vhailore..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*V srdci tohoto githzerai chybí PŘEDSUDKY, které otravují jeho DRUH. Ale žije v KONFLIKTU se sebou samým, protože jeho SLOVO je jeho VŮLÍ a jeho ZÁKONEM. Kde githzerai v chaosu prospívají, tento trpí.*~ */
  IF ~~ THEN REPLY #56433 /* ~"Předsudky? Co tím myslíš?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*Rasa githzerai hoří PŘEDSUDKY. V očích SPRAVEDLNOSTI není místo pro PŘEDSUDKY.*~ */
  IF ~~ THEN REPLY #56439 /* ~"Jaké předsudky?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*Svou povahou předsudky POSKVRŇUJÍ spravedlnost. Githzerai mají předsudky vůči githyanki, svým rasovým bratrancům, a vůči illithidum, kteří bývali VLASTNÍCI lidu gith. Nenávist k githyanki a illithidům hoří hluboko v srdcích githzerai.*~ */
  IF ~~ THEN REPLY #56445 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"Předsudky poskvrňují spravedlnost, eh? A co to, co jsi řekl o Annah?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"Předsudky poskvrňují spravedlnost, eh? A co to, co jsi řekl o Fall-from-Grace?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"Předsudky poskvrňují spravedlnost, eh? A co to, co jsi řekl o Annah a Fall-from-Grace?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*Má slova NEPRAMENILA z předsudků. Pramenila z POZOROVÁNÍ a VZPOMÍNEK.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by  sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"No, já si myslím, že tvá 'pozorování' mluví o předsudcích, Vhailore - moc rychle strkáš fiendy do jednoho pytle. Možná by sis měl promyslet ta svá pozorování."~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*Má POZOROVÁNÍ jsou činěna skrze OČI SPRAVEDLNOSTI. Já POZORUJI, potom JEDNÁM. Uděláš dobře, když si tohle ZAPAMATUJEŠ, i když zapomeneš vše ostatní.*~ */
  IF ~~ THEN REPLY #56473 /* ~"Zeptám se tě na něco jiného..."~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*TANAR'RI jsou ZROZENI z chaosu. Nestarají se o SPRAVEDLNOST. SUKUBA zná SPRAVEDLNOST, ale ODVRÁTILA se od ní. SLITOVÁNÍ OTRÁVILO její srdce.*~ */
  IF ~~ THEN REPLY #56505 /* ~"Zeptám se tě ještě na někoho -"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"Dobrá tedy, Vhailore. Mám ještě další ot-"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"To nic, Vhailore. Teď -"~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Vhailorovy oči zahořely. *SLITOVÁNÍ hryže v SRDCI SPRAVEDLNOSTI. SLITOVÁNÍ požírá vše, co je DOKONALÉ. SOUCIT A ODPUŠTĚNÍ, to jsou JEDY SLITOVÁNÍ.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*Jsi SLABÁ, SUKUBO. Jsi SLABÁ stejně jako celý tvůj DRUH. Kde tvůj DRUH svádí MASEM, tam SLITOVÁNÍ SVEDLO tebe. Jsi DĚVKOU SLITOVÁNÍ. Nejsi NIČÍM.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Vhailorovy oči zahořely, jak se zadíval na Fall-From-Grace, jako dvě plápolající pochodně. Fall-From-Grace jeho pohled klidně oplácí.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*Jsou tam KOŘENY SLABOSTI. VĚŘÍŠ, že jsi SILNÁ, ale SLITOVÁNÍ z těch kořenů poroste. POHLTÍ tvou VŮLI." Vhailor se na chvíli odmlčel. Jeho další slova dopadají jako kladivo. *Ale... DALŠÍ slabosti DRŽÍŠ ve svém SRDCI, SUKUBO. To MÉ oči vidí. Máš STAROST. STARÁNÍM se o druhé, stala ses SLABOU.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*TANAR'RI jsou ZROZENI z chaosu. Nestarají se o SPRAVEDLNOST. SUKUBA zná SPRAVEDLNOST, ale ODVRÁTILA se od ní. SLITOVÁNÍ ZAKOŘENILO v jejím srdci. Má STAROST o ostatní. STARÁNÍM se o ně, stala se SLABOU.*~ */
  IF ~~ THEN REPLY #56513 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*Vidím na kouzelníkovi znak SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #56518 /* ~"Říkáš, že Ignus byl souzen?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*Plameny, které HOŘÍ kolem něj mluví o SPRAVEDLNOSTI. Kouzelník je POTRESTÁN. Už NEŽIJE, ale stal se SOUČÁSTÍ SFÉR. Jeho tělo je VODIČ. Nemá SRDCE. Byl ODSOUZEN.*~ */
  IF ~~ THEN REPLY #56524 /* ~"Víš, proč Ignus nezemřel? Neměly by ho ty plameny zabít?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*Už NEŽIJE. Pouze EXISTUJE. To není to SAMÉ.*~ */
  IF ~~ THEN REPLY #56530 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*MODRON je nedůležitý. Dokáže DEFINOVAT spravedlnost, ale nedokáže jí POCHOPIT. Není to uspokojující. Ale je to DOSTAČUJÍCÍ.*~ */
  IF ~~ THEN REPLY #56535 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*Jsem VHAILOR. Jsem NEMILOSRDNÝ. Mé ČINY promlouvají z mého srdce.*~ */
  IF ~~ THEN REPLY #56540 /* ~"To není to, co jsem se ptal."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~Nastalo ticho... ale Vhailor dál mlčí. Jeho žhavé oči tě sledují bez jediného zachvění.~ */
  IF ~~ THEN REPLY #56546 /* ~"Ptal jsem se tě, co vidíš, když se podíváš na sebe. Co vidíš, když soudíš sám sebe, Vhailore?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"Zapomeň na to, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*Já se NESOUDÍM. Jsem NEMILOSRDNÝ. Mé ČINY promlouvají z mého SRDCE. Má VŮLE je VŮLÍ SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #56552 /* ~"Takže ty jsi nad spravedlností?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*SLOUŽÍM spravedlnosti. Nikdy nejsem NAD spravedlností. NIC není nad SPRAVEDLNOSTÍ.*~ */
  IF ~~ THEN REPLY #56558 /* ~"Tak se podívej na sebe, Vhailore. Co vidí oči spravedlnosti, když se podívají na svého služebníka?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"Zeptám se tě na něco jiného."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~Vhailorův pohled náhle vyhasnul. Všude kolem nastalo hrozivé TICHO.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Když už začínáš přemýšlet, jestli se Vhailorovy oči vůbec ještě rozsvítí, nastal ZÁBLESK a ty si musíš zakrýt oči...~ */
  IF ~~ THEN REPLY #56565 /* ~"Vhailore..."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*Jsem VHAILOR. Jsem NEMILOSRDNÝ. Mé ČINY promlouvají z mého SRDCE. Jsem SLUŽEBNÍKEM SPRAVEDLNOSTI.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"Ale... Vhailore, co jsi VIDĚL, když..."~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"Ale... Vhailore, co jsi VIDĚL, když..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"Velmi dobře. Chtěl jsem se tě zeptat na někoho jiného..."~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Než jsi promluvil, ucítil jsi podivnou myšlenku, která se ti prohrabává myslí... a slova na cestě k jazyku se zastavila. Víš, že jestli budeš dál naléhat, něco ve Vhailorovi probudíš. Něco nebezpečného.~ */
  IF ~~ THEN REPLY #56574 /* ~"Ale... Vhailore, co jsi VIDĚL, když ses podíval dovnitř?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"To nic, Vhailore. Chtěl jsem se tě zeptat na někoho jiného..."~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"Dobrá tedy, Vhailore. Mám pro tebe další otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*NEBYL JSEM NALEZEN NEVYHOVUJÍCÍM. KDE ŽIJE SLITOVÁNÍ, JÁ HO ZABIJU. KDE SOUCIT OTRAVUJE SRDCE, VYTRHNU HO Z OBĚTI. KDE LHÁŘI A ZRÁDCI PRAVDY CHOVAJÍ LŽI, TAM ODPOVÍM NA JEJICH LŽI ZBRANÍ SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #56580 /* ~"Ale já se *ptal* na..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*KDO JSI, ŽE SE OPOVAŽUJEŠ VYPTÁVAT SE SLUŽEBNÍKA SPRAEVDLNOSTI? NEJSI NIC. JSI JENOM SKOŘÁPKA. TEĎ PROHLEDÁM TVÉ SRDCE. UVIDÍME, JESTLI BUDEŠ SHLEDÁN VYHOVUJÍCÍM.*~ */
  IF ~~ THEN REPLY #56582 /* ~"Ale..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~Když se na tebe upřel žhavý pohled Vhailorových rudých očí, ucítil jsi, jak se protrhávají tvou kůží, rozřezávají ji a odlupují - ale necítíš bolest, jenom zával nevolnosti a pocit *topení se*. Jak se do tebe jeho oči zabořují, cítíš ozvěnu vzpomínky...~ */
  IF ~~ THEN REPLY #56584 /* ~Odevzdej se vzpomínce.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~Hořící rudé oči zazářily jasněji, téměř oslepujícím žárem. STOJÍŠ tváří v tvář Vhailorovi, ale tam, kde byl prázdný prostor je *maso* - zjizvený muž ebenové pleti, který na tebe zlobně zírá přes průzor helmy, jeho oči jsou jako malé ohně. Zbroj září a na jeho tváři je výraz zuřivosti. *Přišel* si pro tebe.~ */
  IF ~~ THEN REPLY #56587 /* ~Ozvěna: "Našel jsi mě, Vhailore. Cestoval jsi daleko... chápu, že asi nebylo lehké najít mně."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"Spravedlnost mě k tobě vedla. Kudy chodíš, tam necháváš stopu UTRPENÍ." Mužův hlas rachotí, ale není slyšet ozvěna, nic z Vhailorova přízračného hlasu, jenom zuřivost, vztek, maso a krev... je nebezpečný, ale není to přelud, jenom muž a ty jsi porazil mnoho takových. "Budeš předveden před Sigilské soudy a potrestán. Pokud to odmítáš, VYSLOV to a já tě budu soudit."~ */
  IF ~~ THEN REPLY #56590 /* ~Ozvěna: "Odmítám. Suď mě... a pak budu soudit já tebe."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"Soudit MĚ?" Vhailorovy oči *zahořely*, jeho sevření na toporu sekery zesílilo, šlachy v jeho krku a paži ztuhly, jak se začíná sekerou pomalu, výhružně, rozmachovat. "Nemáš žádné PRÁVO soudit mě."~ */
  IF ~~ THEN REPLY #56593 /* ~Ozvěna: "Ano, mám, Vhailore, protože znám tvé srdce - a moc mi dává právo soudit tě. Ale nebudu tě soudit teď: musíš počkat v této kleci do dne, kdy tě budu moci uvolnit a nechat tě znovu kráčet sférami."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~Jak tvá inkarnace vyslovila slovo 'klec,' Vhailorův pohled se od tebe odvrátil a přejel po okolních stěnách - jsou to stěny cely v Curstském vězení, kde jsi ho našel o mnoho let později. *Mnoho* let, dost na to, aby člověk zemřel mnohokrát. Nebo možná jenom jednou.~ */
  IF ~~ THEN REPLY #56596 /* ~Ozvěna: "Vlákal jsem tě sem, Vhailore... proč si myslíš, že jsem souhlasil, že se s tebou *tady* setkám? Myslel sis, že se vzdávám? Nebo si přeju bojovat s tebou? Ne... tohle je město dveří Curst, Vhailore. Sousedí s *vězeňskou* sférou Carceri, kde jsou uvězněni dokonce samotní *Bohové*. Jsi mocný, Vhailore, ale energie tohoto místa umožňuje, aby tady byli uvězněni i ti nejmocnější."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Vhailor se otočil, ale oheň v jeho očích pohasnul. "To je *zrada.*"~ */
  IF ~~ THEN REPLY #56599 /* ~Ozvěna: "Zrada protkává toto místo jako žíly a je to zrada, která mi dává sílu na toto kouzlo - proto jsem se s tebou musel setkat tady v Curstu. Já tuto celu můžu opustit, Vhailore, ale dokud se pro tebe nevrátím, ty tady zůstaneš. Tvá křížová výprava za spravedlností je výjimečná, ale bude zapomenuta. A možná za čas na tebe zapomene dokonce i spravedlnost."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"Nejenom že si odpíráš spravedlnost, ale odpíráš mi mou *křížovou výpravu*..."~ */
  IF ~~ THEN REPLY #56602 /* ~Ozvěna: "Vím o tvé misi. Ale ta bude muset počkat, dokud nedokončím já *svou* misi. A tohle už je podruhé, kdy jsi mě našel a pokoušíš se mě soudit. Nedovolím, abys dostal třetí pokus."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Potlač vzpomínku, pokus se zůstat v současnosti.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Vhailor neříká nic - nikdy jsi nezněl tak NEZVRATNĚ. Vyhlašuješ nad ním hrozivý rozsudek, rozsudek, který v sobě nemá vůbec žádnou spravedlnost.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Ozvěna: "Jsem nesmrtelný, Vhailore - ale ty jsi... podivný. Spravedlnost se tě *dotkla* a spravedlnost může být mocnější než cokoli, co živí mně. Ale neztrácej odvahu: Nechci, abys zemřel... možná budu jednoho dne potřebovat někoho, kdo má moc mě zabít. Takže tady zůstaneš, dokud si pro tebe jednoho dne nepřijdu."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~Měl jsem vzpomínku... vzpomínku na to, jak jsem uvěznil Vhailora pod Curstem. Přišel tam za mnou a já měl pro něj speciálně připravenou celu, aby mi už nemohl nikdy více zkřížit cestu. Slova mé inkarnace byla podivná - řekl, že věří, že Vhailor může mít moc *zabít* mě, dokud bude spravedlnost vést jeho sekeru. Z nějakého důvodu mám pocit, že je to pravda. Ale proč ho inkarnace zkrátka nezabila? Měla nějaký důvod udržet ho naživu?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Ozvěna: "Jsem nesmrtelný, Vhailore - ale ty jsi... podivný. Spravedlnost se tě *dotkla* a spravedlnost může být mocnější než cokoli, co živí mně. Ale neztrácej odvahu: Nechci, abys zemřel... možná budu jednoho dne potřebovat někoho, kdo má moc mě zabít. Takže tady zůstaneš, dokud si pro tebe jednoho dne nepřijdu."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~Vzpomínka ztmavla, upadla do temnoty... A náhle opět stojíš před přízračným Vhailorem, v jeho helmě jsou jenom ty dva žhavé uhlíky...~ */
  IF ~~ THEN REPLY #56609 /* ~"Vhailore...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*Budeš SOUZEN.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"Velmi dobře..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"Velmi dobře..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~Jak na tebe padl Vhailorův pohled, náhle se cítíš podivně oddělen, jako bys vystoupil ze svého těla. Slyšíš slabé šeptání, uvnitř své lebky a náhle víš, že ať už Vhailor tvrdí, co chce, uvidí jenom to, co budeš ty CHTÍT. Víš, že musí přijmout i nejjednodušší klam - jsi pro něj zavřená kniha.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*ZAVRAŽDIL jsi někdy někoho?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Lži: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Pravdivě: "Ne."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Pravdivě: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Pravdivě: "Ano... byla to má ruka, ale ne má mysl, Vhailore. Jedna z mých předchozích inkarnací zavraždila muže jménem Fin Andly kvůli znalostem, které měl."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Pravdivě: "Vhailore, myslím, že jsem zodpovědný za smrti tisíců po celých Sférách. Pilíř Lebek řekl, že kdykoli zemřu, zemře za mě někdo jiný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"Neodpovím na tvou otázku, Vhailore, stejně jako se tebou nenechám soudit."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*Ten kdo NEODPOVÍ SPRAVDLNOSTI bude POTRESTÁN.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"Tak pojď, Vhailore - ale připrav se na druhou smrt..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"Tak pojď, Vhailore - ale připrav se na druhou smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"Ale já už jsem *byl* potrestán, Vhailore."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"Ale já už jsem *byl* potrestán, Vhailore."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Vhailor ztichl. *VYSLECHNU si slova o tvém potrestání.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"To nic, Vhailore. Už mě unavuje hádat se s tebou. Raději to vyřešíme násilím."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"To nic, Vhailore. Už mě unavuje hádat se s tebou. Raději to vyřešíme násilím."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"Pokaždé když zemřu, ztratím paměť. Nevím, kdo jsem, nebo BYL. Mám tisíce jizev na těle i na duši od zranění, která si nepamatuju. Smrt mě odmítá a já mám strach, že nikdy nenajdu klid."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Vhailor na tebe zírá, jeho oči jasně září. Cítíš stejný *pohled* jako dříve, který se ti prodírá kůží, jako by tě Vhailor zaživa pitval. Projela tebou vlna nevolnosti, pocit *topení se*, tentokrát silnější... dokud tvůj pohled nezčernal...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*Byl jsi POTRESTÁN. Je na tobě znak SPRAVEDLNOSTI. VIDÍM to na tvém MASE.*~ */
  IF ~~ THEN REPLY #56636 /* ~"Tak..."~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*VĚZ TOTO: Je MNOHO, co v tobě NEMOHU vidět. Budu tě SLEDOVAT. NEUKRYJEŠ se před trestem za ZLOČINY budoucí.*~ */
  IF ~~ THEN REPLY #56638 /* ~"Dobrá, Vhailore, řekněme, že jsme si to vyřešili... pro zatím. Mám pro tebe nějaké otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"Tak to se tady musíme rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"Rozumím, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*Spáchal jsi někdy na někom NESPRAVEDLNOST?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Lži: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Pravdivě: "Ne."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Pravdivě: "Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Pravdivě: "Ano... byla to má ruka, ale ne má mysl, Vhailore. Byla to jiná osoba obývající toto tělo."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Pravdivě: "Vhailore, myslím, že jsem zodpovědný za smrti tisíců po celých Sférách. Pilíř Lebek řekl, že kdykoli zemřu, zemře za mě někdo jiný. Nevím o žádné větší nespravedlnosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"Neodpovím na tvou otázku, Vhailore, stejně jako se tebou nenechám soudit."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*UBLÍŽIL jsi někdy někomu?*~ */
  IF ~~ THEN REPLY #56649 /* ~Lži: "Ne. Celý život jsem nikdy nikomu neublížil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Pravdivě: "Ano... mnoho trpělo mou rukou, Vhailore. Ale byla to jiný osoba, která obývala toto tělo."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Pravdivě: "Postavil jsem se Paní Bolesti a ona mě uvěznila."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Pravdivě: "Jedna z mých předchozích inkarnací lhala ženě jménem Deionarra. Řekl jí, že ji miluje, i když to nebyla pravda. A ona ho po tom sledovala na smrt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Pravdivě: "Věřím, že jsem zodpovědný za smrt Deionarry, jediné dcery Advokáta Iannise."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Pravdivě: "Jsem zodpovědný za smrt Deionarry, jediné dcery Advokáta Iannise."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Pravdivě: "Má předchozí inkarnace si vynutila přísahu od muže, že mi bude sloužit, dokud nezemřu a přitom věděla, že jsem nesmrtelný. Ukradnul jsem mu život, aby mi mohl sloužit. Jmenuje se Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Pravdivě: "Prodal jsem mladou ženu Annah, do otroctví."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Pravdivě: "Prodal jsem svého společníka Dak'kona do otroctví."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Pravdivě: "Prodal jsem svého společníka Nordoma do otroctví."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Pravdivě: "Jedna z mých předchozích inkarnací naučila Ignuse moc ubližovat druhým. Tak začalo mnohé utrpení, jak jeho, tak ostatních."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Pravdivě: "Zradil jsem Morteho nechal ho v Pilíři Lebek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Pravdivě: "Uškodil jsem samotnému mnohovesmíru... uvolnil jsem nebezpečné stvoření, golema Coaxmetala, z dobývací věže."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Pravdivě: "Zradil jsem Fhjulla Pilíři Lebek pro svůj vlastní zisk."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Pravdivě: "Uškodil jsem tobě, Vhailore - to já tě uvěznil pod Curstem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"Neodpovím na tvou otázku, Vhailore, stejně jako se tebou nenechám soudit."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*PŘIZNAL jsi zločin.* Vhailorovy oči září, máš pocit, že z duchovitého brnění vyzařuje děsivá *moc*. *VINA bude POTRESTÁNA.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"Tak pojď, Vhailore - ale připrav se na druhou smrt..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"Tak pojď, Vhailore - ale připrav se na druhou smrt..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"Ale já už jsem *byl* potrestán, Vhailore."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"Ale já už jsem *byl* potrestán, Vhailore."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Vhailor na tebe zírá, jeho oči jasně září. Cítíš stejný *pohled* jako dříve, prodírá se ti kůží, jako by tě Vhailor zaživa pitval. Projela tebou vlna nevolnosti, pocit *topení se*, tentokrát silnější... dokud tvůj pohled nezčernal...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*VĚZ TOTO: Je MNOHO, co v tobě NEMOHU vidět. Budu tě SLEDOVAT. NEUKRYJEŠ se před trestem za ZLOČINY budoucí.*~ */
  IF ~~ THEN REPLY #56672 /* ~"Dobrá, Vhailore, řekněme, že jsme si to vyřešili... pro zatím. Mám pro tebe nějaké otázky..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"Tak to se tady musíme rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"Rozumím, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Tvá slova se rozléhají, nabírají další moc... Uhlíky ve Vhailorových očích zablikaly - a vyhasly. Jeho zbroj spadla, sekera a kovové pláty zařinčely na zemi. Dopad zdvihnul oblaka prachu - popel a částečky rzi odpadávají z kovu plátů a sekery, které se před tvýma očima rozpadají a mění se v prach. Na konec zůstalo jenom několik zrezavělých kovových plechů, jako důkaz, že Vhailor vůbec existoval.~ */
  IF ~~ THEN REPLY #56676 /* ~"Teď odpočívej, Vhailore."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*Stupidita je znakem SLABOSTI. Není NESPRAVEDLIVÉ, pokud je ZNEUŽIT ten, kdo sám zneužívá.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*SPRAVEDLNOST dopadne i na FIENDY.*~ */
  IF ~~ THEN REPLY #56894 /* ~"Ano. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Vhailor náhle vstoupil dopředu, oči mu hoří. "Tohle *není* spravedlnost, ale dětský výsměch spravedlnosti. Nebude *žádná* poprava, 'magistráte'... pokud mě tvé činy nedonutí, abych Jí posloužil sám."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"Příště se budeš lépe chovat, magistráte. Doufám, že se k mým uším nedostanou opačné zvěsti... jinak se pro tebe *vrátím*, i kdyby ta cesta měla měřit tisíce mil. Drž ve svém srdci Spravedlnost a budeš v bezpečí. Sbohem."~ */
  IF ~~ THEN REPLY #57393 /* ~"Díky, Vhailore. Sbohem, úředníku."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~"Spravedlnost není slepá. *Já* jsem její oči."~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~Stačí jenom dotek tvé síly, aby ve Vhailorově obrněné skořápce rozdmýchal jiskru života - brnění se vzneslo a poskládalo se do tvaru muže. Když se jednotlivé části brnění spojí, z helmy vyšlehly dva plameny.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"Vhailore?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~POVSTAŇ, VHAILORE.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*PROCITNUL JSEM.*~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"Vhailore, poslouchej mě: byla spáchána velká nespravedlnost. Když zemřu, někdo ve Sférách zemře místo mně. Stalo se to tisíckrát, možná stotisíckrát. Mnohovesmír umírá, abych já mohl žít."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"Vhailore, potřebuju tvou pomoc - má smrtelnost touží po naší smrti."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~Když jsi vyslovil ta slova, Vhailor jakoby *zesílil*, stává se mocnějším, je spíše samotnou silou, než jenom pouhou prázdnou zbrojí.~ */
  IF ~~ THEN REPLY #68228 /* ~"Znám svůj zločin a pokouším se zabránit, aby se tak nestalo znovu, ale toto stvoření, které by tu nespravedlnost mohlo napravit *odmítá* z vlastních sobeckých důvodů."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*JSI TEĎ MEZI ODSOUZENÝMI. STEJNĚ JAKO TENTO. DOHLÉDNU, ABY DUŠE VÁS OBOU ROZŤALA ČEPEL SPRAVEDLNOSTI.*~ */
  IF ~~ THEN REPLY #68230 /* ~"Dobrá tedy, Vhailore - ale potřebuju, aby ses nejdřív postaral o támhle toho."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*UČINÍM TAK. A PAK SE VRÁTÍM PRO TEBE.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"Dobrá tedy, Vhailore."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"Dobrá tedy, Vhailore."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"Dobrá tedy, Vhailore."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*PAK TVÁ SMRTELNOST ZEMŘE.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"Dobrá tedy, Vhailore..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~

"Dobrá tedy, Vhailore..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"Dobrá tedy, Vhailore..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Vhailorova helma se k tobě otočila. Jeho oči pulzují v rytmu srdečního tepu.~ */
  IF ~~ THEN REPLY #68400 /* ~VHAILORE, RUKA SPRAVEDLNOSTI JE POHOTOVÁ A TEĎ SI PŘICHÁZÍ PRO MĚ. UŽ MOC DLOUHO TADY NEZŮSTANU. VRÁTÍM TĚ DO SIGILU, JESTLI SI TO PŘEJEŠ.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*Za jaký ZLOČIN tě SPRAVEDLNOST stíhá?*~ */
  IF ~~ THEN REPLY #68402 /* ~MNOHO NEVINNÝCH ZEMŘELO, ABY JÁ MOHL ŽÍT, VHAILORE. ZLOČIN JE OBROVSKÝ - A JÁ SE TEĎ SETKÁM SE SVÝM OSUDEM.~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*Ať jsou má SLOVA s tebou. SPRAVEDLNOST je učitel. SKRZE svůj TREST nalezni SÍLU. Skrze trest dosáhneš DOKONALOSTI.*~ */
  IF ~~ THEN REPLY #68404 /* ~MOŽNÁ, VHAILORE. BUDU NAD TVÝMI SLOVY PŘEMÝŠLET.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*VĚZ že utečeš-li svému trestu, najdu tě, BEZEJMENNÝ.*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*Ruka spravedlnosti nebude zadržena.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~MYSLÍM, ŽE UŽ SE NESETKÁME, VHAILORE. NĚJAKOU DOBU STRÁVÍM V HALÁCH SPRAVEDLNOSTI A TEN ČAS NEBUDE MĚŘEN NA ROKY. SBOHEM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*Ruka spravedlnosti nebude zadržena.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"Jen tak dál, Vhailore. Nedej mu šanci soustředit se."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Vhailorius se odvrátí od Triasova těla a pohlédne ti do očí. *Jsi MILOSRDNÝ a SLABÝ. OBRNI své SRDCE dřív než se nákaza ROZŠÍŘÍ.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

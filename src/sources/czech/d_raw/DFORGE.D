// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFORGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFORGE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #5086 /* ~Připravuješ se zvednout kladivo k další ráně...~ */
  IF ~~ THEN REPLY #5087 /* ~"... co teď?"~ */ EXTERN ~FSMITH~ 17
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY #5088 /* ~Přistoupil jsi k výhni. Horko je neuvěřitelné. Co uděláš?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5089 /* ~Použij výheň.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5090 /* ~Použij výheň.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5091 /* ~Použij výheň.~ */ GOTO 3
  IF ~~ THEN REPLY #5092 /* ~Ustup.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 46.0
  SAY #5093 /* ~Horko je příliš, dokonce i pro tvoji zocelenou kůži. Plamen tě zraňuje.~ */
  IF ~~ THEN REPLY #5094 /* ~Použij výheň.~ */ GOTO 4
  IF ~~ THEN REPLY #5095 /* ~Ustup.~ */ DO ~Damage(Protagonist,LOWER,5)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2 46.1 46.2
  SAY #5096 /* ~Oheň vydává neuvěřitelný žár, ale díky své ochraně jsi schopný žár vydržet. Chceš pracovat u výhně?~ */
  IF ~~ THEN REPLY #5097 /* ~Ano.~ */ GOTO 25
  IF ~~ THEN REPLY #5098 /* ~Ne.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5099 /* ~Plameny ti znovu spalují kůži. Co chceš udělat jako první?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5100 /* ~Připrav kleště.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5101 /* ~Začni bušit do kovadliny.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5102 /* ~Vezmi rudu.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5103 /* ~Zvedni kleštěmi rudu a vlož ji do ohně.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 8
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5104 /* ~Dej rudu na kovadlinu a začni do ní bušit.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5105 /* ~Odstup od výhně.~ */ DO ~Damage(Protagonist,LOWER,10)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5106 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #5107 /* ~Pevně jsi sevřel kleště, žár výhně ti spaluje kůži. Co chceš dělat teď?"~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5108 /* ~Začni bušit do kovadliny.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5109 /* ~Zvedni kleštěmi rudu a vlož ji do ohně.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5110 /* ~Polož rudu na kovadlinu a začni ji zpracovávat kladivem.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5111 /* ~Odstup od výhně.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5112 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 6.1 7.0
  SAY #5113 /* ~Chvíli bušíš do kovadliny kladivem a posloucháš řinčivé zvuky. Žár výhně tě dál spaluje. Co dál?~ */
  IF ~  PartyHasItem("Tongs")
!HPLT(Protagonist,1)
~ THEN REPLY #5114 /* ~Připrav si kleště.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5115 /* ~Buš do kovadliny.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5116 /* ~Vezmi rudu.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5117 /* ~Zvedni kleštěmi rudu a vlož ji do ohně.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5118 /* ~Dej rudu na kovadlinu a začni do ní bušit.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5119 /* ~Odstup od výhně.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5120 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2
  SAY #5121 /* ~Držíš kus železa v ruce. Z místa, kde stojíš, je žár skoro tak silný, že se ti železo málem rozpouští. A rozhodně dělá spoustu bolestivých nepříjemností tvé kůži. A co teď?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5122 /* ~Buš do kovadliny.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5123 /* ~Zvedni kleštěmi rudu a vlož ji do ohně.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5124 /* ~Dej rudu na kovadlinu a začni do ní bušit.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5125 /* ~Strč železo do ohně holýma rukama.~ */ GOTO 10
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5126 /* ~Začni bušit do kovadliny.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5146 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.1 6.3 7.1
  SAY #5147 /* ~Kov v žáru rychle měkne a brzy je dost měkký, aby se s ním dalo pracovat. Kůži máš pokrytou puchýři.~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5148 /* ~Vlož změklou rudu na kovadlinu a zpracuj jí do tvaru.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ GOTO 11
  IF ~  !PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5149 /* ~Mé kladivo! Zapomněl jsem kladivo! Já se vrátím.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5150 /* ~Odstup od výhně.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5151 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 5.2 6.4 7.2
  SAY #5152 /* ~Strčil jsi studenou rudu na kovadlinu a začal do ní bušit kladivem. Roztříštil jsi ji na malé nepoužitelné kousky. Plamen z výhně ti způsobuje bolestivé popáleniny.~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5153 /* ~Odstup od výhně.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5154 /* ~Zemři. Žár je na tebe příliš silný.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY #5155 /* ~Bolest způsobená plameny je neuvěřitelná. Ruda ti v rukou měkne jako vosk, vzduch se zaplňuje zápachem spáleného masa. Železo se ti připeklo k rukám. Bolest se nedá vydržet, odpadáš.~ */
  IF ~~ THEN REPLY #5156 /* ~Hotovo.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.3 13.3 14.3
  SAY #5157 /* ~Co bys chtěl vykovat?~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5158 /* ~Něco malého a nebezpečného: Stiletto!~ */ GOTO 12
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5159 /* ~Dvouruční kladivo.~ */ GOTO 13
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5160 /* ~Bitevní sekeru.~ */ GOTO 14
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5162 /* ~Nic. Žár je příliš velký.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5163 /* ~Stiletto... rychlá a snadno ovladatelná zbraň - a taková, která tě od výhně dostane rychle. Chceš stilleto?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5164 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5165 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5166 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 18
  IF ~~ THEN REPLY #5167 /* ~Ne. Raději udělám něco jiného.~ */ GOTO 11
  IF ~~ THEN REPLY #5168 /* ~Ne. Prozatím jsem s výhní skončil.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #5169 /* ~Kladivo - rychlá práce, takže se od výhně dostaneš dost brzo. Opravdu chceš udělat kladivo?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5170 /* ~Ano~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5171 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5172 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 21
  IF ~~ THEN REPLY #5173 /* ~Ne. Raději udělám něco jiného.~ */ GOTO 11
  IF ~~ THEN REPLY #5174 /* ~Ne. Prozatím jsem s výhní skončil.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #5175 /* ~Než uděláš sekeru, bude to chvíli trvat a plameny tě ještě více popálí. Víš to jistě?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5176 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5177 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 23
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5178 /* ~Ano.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 24
  IF ~~ THEN REPLY #5179 /* ~Ne. Raději udělám něco jiného.~ */ GOTO 11
  IF ~~ THEN REPLY #5180 /* ~Ne. Prozatím jsem s výhní skončil~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #5188 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY #5189 /* ~Kriticky si prohlížíš svou práci - není to moc dobrá zbraň, ale udělal jsi alespoň něco.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5194 /* ~Tohle bude na mou zkoušku stačit.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5195 /* ~Řekl bych, že tohle bude stačit...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5196 /* ~Malá útěcha. Žár je neuvěřitelný. Alespoň že ten test Božích lidí bude splněný.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5197 /* ~Malá útěcha. Žár je neuvěřitelný.~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
Kill(Protagonist)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #5198 /* ~Vytvořil jsi stiletto. Odstoupil jsi od žáru a obdivuješ svou práci.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5199 /* ~Je to stiletto. Na test to bohatě stačí.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5200 /* ~Je to stiletto. Hezké... a taky to vypadá docela funkčně.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5201 /* ~Žár je neuvěřitelný. Zkouška je splněná, ale za tohle vyhřívání zaplatíš vlastním zdravím.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5202 /* ~Žár je neuvěřitelný. Za tohle vyhřívání zaplatíš vlastním zdravím.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #5203 /* ~To je ale hezký kousek! Tvé stilleto je funkční, ale je i perfektně vyvážené a má smrtící vzhled. Hezká práce.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5204 /* ~Tahle věc mi dobře poslouží. Na Keldora to určitě udělá dojem. Je čas z toho žáru vypadnout.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5205 /* ~Tohle mi ve zkoušce dobře poslouží. A teď musím vypadnout z toho žáru.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5206 /* ~Žár je neuvěřitelný.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5207 /* ~Žár je neuvěřitelný. Nemůžeš se pohnout... nemůžeš dýchat...~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0
  SAY #5208 /* ~Kladivo moc jako kladivo nevypadá, spíš jako kus černého železa. Ale snad by to mohlo stačit.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5209 /* ~Pro mě to stačí. Půjdu to ukázat Keldorovi.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PSledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5210 /* ~Tolik problémů kvůli kusu železa? Mocnosti nade mnou! No, tak je čas vypadnout.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5211 /* ~Žár je k nevydržení. Alespoň že je ten test splněný.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5212 /* ~Žár je k nevydržení.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #5213 /* ~Hele! Je to kladivo... a vypadá to skoro stejně jako všechny ostatní kladiva, které jsi kdy viděl.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5214 /* ~Skvělé. Pro Keldora to bude stačit. Prozatím jsem s výhní skončil.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5215 /* ~Pro mě to stačí. Nastal čas roztlouct pár kebulí na masokostní moučku! Prozatím jsem s výhní skončil.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5216 /* ~Žár výhně není k vydržení. Ale když už jsem konečně udělal tohle kladivo, tak jsem alespoň splnil tu zkoušku.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5217 /* ~Žár výhně není k vydržení.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #5218 /* ~To je ale hezké kladivo... dobře vytvarované, dobře vyvážené a akorát ti sedne do ruky.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5219 /* ~Dobře. Teď to půjdu ukázat Keldorovi... a možná, že si jen tak pro zábavu tímhle kladívkem roztluču pár hlav. Musím přece otestovat kvalitu své práce.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5220 /* ~Dobře. Tohle se může hodit.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5221 /* ~Žár vycházející z výhně není k vydržení. Alespoň, že už jsem skončil tenhle test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5222 /* ~Žár vycházející z výhně není k vydržení.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0
  SAY #5223 /* ~Tohle že je sekera? Spíš to vypadá jako kladivo, jenže, faktem je, že to má ostří, bude tedy lépe nazývat to sekerou.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5224 /* ~Hm. Dobře, vyhovuje požadavkům Keldora.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5225 /* ~Hm. Možná, že to "za babku" prodám.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5226 /* ~Vnitřní síla a žár pekla slévárny se zdají být nekontrolovatelnými. Nu což, test je kompletní.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5227 /* ~Vnitřní síla a žár pekla slévárny se zdají být nekontrolovatelnými.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #5228 /* ~Je to poctivý kus práce. Nevyhraješ s ním žádnou cenu, ale je skutečně smrtící.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5229 /* ~Je dost dobrá. Jsem si jistý, že Keldorovi se bude líbit.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5230 /* ~Funkčně vypadá dost dobře - tiše proleze kůží a pak rozdrtí kosti.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5231 /* ~Ve slévárně je příliš mnoho dusivého černého kouře a zničujícího tepla. Nu což, test je kompletní.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5232 /* ~Ve slévárně je příliš mnoho dusivého černého kouře a zničujícího tepla.~ */ DO ~IncrementGlobal("Forge","GLOBAL",1)
GiveItemCreate("Ax",Protagonist,1,0,0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY #5233 /* ~Po menším vyzdobení může být tato sekera bez ostychu používána i tím nejlepším bojovníkem. Skutečně je tak dobrá.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5234 /* ~Vždycky jsem věděl, že je to ve mně. Teď to ještě ukázat Keldorovi... a možná vyzkouším tu zbraň i venku.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5235 /* ~Tahle sekera a já se vydáme na dlouhou pouť. Cítím to tak.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5236 /* ~Je to poctivý kus práce. Bohužel, žár ve slévárně tak narostl, že se to již nedá déle vydržet.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5237 /* ~Bohužel, žár ve slévárně tak narostl, že se to již nedá déle vydržet.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 3.0
  SAY #5238 /* ~Co chceš udělat jako první?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5239 /* ~Připrav si kleště.~ */ GOTO 26
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5240 /* ~Použij kladivo, které je na kovadlině.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5241 /* ~Zdvihni kus železa.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5242 /* ~Zdvihni kus železa kleštěmi a drž jej v plameni tavící pece.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5243 /* ~Kladivo odlož a železo dej na kovadlinu.~ */ GOTO 30
  IF ~~ THEN REPLY #5244 /* ~Odstup od tavící pece. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #5249 /* ~Držíš kleště pevně sevřené a teče z tebe pot. Co chceš teď dělat?~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5250 /* ~Použij kladivo, které je na kovadlině.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5251 /* ~Zdvihni kus železa kleštěmi a drž jej v plamenech.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5252 /* ~Kladivo odlož a železo dej na kovadlinu.~ */ GOTO 30
  IF ~~ THEN REPLY #5253 /* ~Odstup od tavící pece.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 27.1 28.0
  SAY #5254 /* ~Po nějaké chvíli bušíš do prázdné kovadliny, vyžívaje se zvukem úderů kovu o kov. Horká a tvrdá práce - jsi propocený. Co teď?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5255 /* ~Připrav si kleště.~ */ GOTO 26
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5256 /* ~Použij kladivo, které je na kovadlině.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5257 /* ~Zdvihni rudu.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5258 /* ~Zdvihni kus železa kleštěmi a drž jej v plameni tavící pece.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5259 /* ~Kladivo odlož a železo dej na kovadlinu.~ */ GOTO 30
  IF ~~ THEN REPLY #5260 /* ~Odstup od tavící pece.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 27.2
  SAY #5261 /* ~Držíš kousek železa ve své ruce. Tam, kde stojíš, je žár pece tak silný, že může tavit železo - spaluje ti kůži. Dobře, že jsi chráněn proti ohni. Co teď? ~ */
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5262 /* ~Použij kladivo, které je na kovadlině.~ */ GOTO 27
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5263 /* ~Zdvihni kus železa kleštěmi a drž jej v plameni tavící pece.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5264 /* ~Kladivo odlož a železo dej na kovadlinu.~ */ GOTO 30
  IF ~~ THEN REPLY #5265 /* ~Drž železo v ohni svou holou rukou.~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,64,RESISTFIRE)
~ THEN REPLY #5266 /* ~Drž železo v ohni svou holou rukou.~ */ GOTO 45
  IF ~~ THEN REPLY #5267 /* ~Odstup od tavící pece.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.1 27.3 28.1
  SAY #5268 /* ~Železo rychle změkne, brzo se stane tvarovatelným a vhodným k práci. Tvoje ruce se lesknou potem.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5269 /* ~Polož změklé železo na kovadlinu a vytvaruj ho.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ GOTO 32
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #5270 /* ~Moje kladivo! Zapomněl jsem kladivo na opracování! Hned jsem zpátky!~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~~ THEN REPLY #5271 /* ~Odstup od tavící pece.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4 26.2 27.4 28.2
  SAY #5272 /* ~Položil jsi chladné železo na kovadlinu a praštil jsi do něj kladivem. Nepřineslo to žádný velký efekt. Plameny z vedlejšího pekla tavící pece vysílají pozdrav k nebesům v podobě vůně hořícího železa.~ */
  IF ~~ THEN REPLY #5273 /* ~Odstup od tavící pece.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY #5274 /* ~Bolest, kterou ti způsobuje plamen, je neskutečná. Železo v tvých rukou měkne jako jíl, pach hořícího masa plní prostor. Železo se přitavilo ke tvé ruce a ty jsi úspěšně vydržel bolest.~ */
  IF ~~ THEN REPLY #5276 /* ~Uspěl jsi.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 33.3 34.3 35.3
  SAY #5275 /* ~Co chceš vytvořit?~ */
  IF ~~ THEN REPLY #5277 /* ~Něco malého a nebezpečného: Stiletto!~ */ GOTO 33
  IF ~~ THEN REPLY #5278 /* ~Obouruční kladivo.~ */ GOTO 34
  IF ~~ THEN REPLY #5279 /* ~Bojovou sekeru.~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #5281 /* ~Stilleto... rychlá, lehká zbraň - a malá věc, která tě dostane z tohoto pekla o něco dříve. Víš jistě, že chceš stilleto?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5282 /* ~Ano.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5283 /* ~Ano.~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5284 /* ~Ano.~ */ GOTO 38
  IF ~~ THEN REPLY #5285 /* ~Ne. Chci raději něco jiného.~ */ GOTO 32
  IF ~~ THEN REPLY #5286 /* ~Ne. Já jsem již ve slévárně skončil.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #5287 /* ~Kladivo - rychlá práce, která tě dostane z tohohle hrozného místa. Víš jistě, že chceš kladivo?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5288 /* ~Ano.~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5289 /* ~Ano.~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5290 /* ~Ano.~ */ GOTO 41
  IF ~~ THEN REPLY #5291 /* ~Ne. Chci raději něco jiného.~ */ GOTO 32
  IF ~~ THEN REPLY #5292 /* ~Ne. Já jsem již ve slévárně skončil.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #5293 /* ~Sekera ti zabere chvíli - bude to zatraceně nepříjemné, ale neupálí tě to. Víš jistě, že chceš sekeru?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5294 /* ~Ano.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5295 /* ~Ano.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5296 /* ~Ano.~ */ GOTO 44
  IF ~~ THEN REPLY #5297 /* ~Ne. Chci raději něco jiného.~ */ GOTO 32
  IF ~~ THEN REPLY #5298 /* ~Ne. Já jsem již ve slévárně skončil.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #5302 /* ~Na svou práci se díváš kriticky - není to nijak skvěle vytvořená zbraň, ale aspoň jsi něco udělal. ~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5303 /* ~Bude to muset stačit pro ten test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5304 /* ~Doufám, že je funkční...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY #5305 /* ~Vytvořil jsi stilleto. Ustoupil jsi od plamenů, abys mohl obdivovat svůj výtvor.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5306 /* ~Je to stilleto. Pro splnění testu je dost dobré.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5307 /* ~Je to stilleto. A jaké hezké... a vypadá vskutku funkčně.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2
  SAY #5308 /* ~Teď je to krásný kus práce! Tvoje stilleto je nejen funkční, ale vypadá vyváženě a skutečně smrtonosně. Dobrá práce.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5309 /* ~Tahle věc mi velmi dobře poslouží. Keldor bude určitě ohromen! Teď je čas jít pryč od plamenů.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5310 /* ~Tohle mi dobře poslouží při plnění testu. Teď je čas jít pryč od plamenů.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.0
  SAY #5311 /* ~Kladivo, které jsi vytvořil, připomínalo kus železa, který jsi předtím nalezl. Může být funkční... možná.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5313 /* ~Dost dobré. Jdu to ukázat Keldorovi.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5312 /* ~Všechny tyhle problémy pro kus železa? Sakra! Jdu odtud pryč.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #5314 /* ~Podívej! Je to perlík... a vypadá jako každý jiný perlík, co jsi viděl.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5315 /* ~


Výborně. Pro Keldora je to víc než dost. Prozatím jsem s prací skončil.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5316 /* ~Pro mě je to dost dobré. Myslím, že je načase otevřít pár hlav. Prozatím jsem s prací skončil.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #5317 /* ~Teď je z toho krásný perlík... skvěle ostrý, skvěle vyvážený a perfektně sedí v rukou.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5318 /* ~Skvělé. Jdu to ukázat Keldorovi... a možná si nechám to kladivo na rozbití pár hlav.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5319 /* ~Výborně. Dobře sedne do ruky.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0
  SAY #5320 /* ~Tohle, že je sekera? Víc to vypadá jako kladivo, ale faktem je, že to má ostří, bude tedy lépe nazývat to sekerou.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5321 /* ~Hm. Dobře, doufám, že je podle představ Keldora.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5322 /* ~Hm. Možná, že to "za babku" prodám.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #5323 /* ~Je to poctivý kus práce. Nevyhraješ s ním žádnou cenu, ale je skutečně smrtící.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5324 /* ~Dost dobrá práce. Jsem si jist, že to Keldor ocení.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5325 /* ~Funkčně vypadá dost dobře - tiše proleze kůží a pak rozdrtí kosti.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.2
  SAY #5326 /* ~Po menším vyzdobení, může být tato sekera bez ostychu používána i tím nejlepším bojovníkem. Skutečně je tak dobrá.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5327 /* ~Vždycky jsem věděl, že je to ve mě. Teď to ukázat Keldorovi... a možná vyzkouším tu zbraň i venku.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5328 /* ~Tahle sekera a já se vydáme na dlouhou pouť. Cítím to tak.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.4
  SAY #5329 /* ~Tvoje odolnost proti ohni ti dovoluje držet železo dokud nezměkne a neroztaví se ti mezi prsty. Ostatní kováři na tebe koukají s bázní a úctou, když ti roztavené železo kape z dlaně. Bohužel, všechno železo ti vyteklo pryč.~ */
  IF ~~ THEN REPLY #5330 /* ~Odejdi.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("G_Test1","GLOBAL",0)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 46 // from:
  SAY #5331 /* ~Odstup od pece. Žár je nesnesitelný. Co teď?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5332 /* ~Použij pec.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5333 /* ~Použij pec.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5334 /* ~Použij pec.~ */ GOTO 3
  IF ~~ THEN REPLY #5335 /* ~Odstup.~ */ EXIT
END

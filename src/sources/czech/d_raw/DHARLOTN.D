// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~Vidíš unaveně vypadající ženu oblečenou v těsné kožené vestě a kamaších. Obklopuje ji oblak levného parfému a na obličej má nanesenu silnou vrstvu líčidel. Usmívá se, když tě uvidí. "Proč chvíli nepostojíš a neprohodíš se mnou pár slov, zlato?"~ */
  IF ~~ THEN REPLY #7190 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~Žena se na tebe nesměle dívá. "Teď vypadáš jako člověk, kerej něco *ztratil*. Možná bych ti mohla pomoci najít ti to, zlato?" Lehce se usmívá.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"Oh?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"Ztratil jsem deník."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~"Možná mi můžeš pomoct najít, co jsem ztratil."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"Vlastně se chci na něco zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"Dnes ne, díky."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"Eh?" Vypadá zmateně. "Co jsi zač?"~ */
  IF ~~ THEN REPLY #7197 /* ~"Zapomeň na deník. Možná mi můžeš pomoct najít, co jsem *skutečně* ztratil."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"Nic jsem neztratil, jen bych měl pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"Nech to plavat. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~Její tón hlasu zní obchodně. "Jo, lásko, tak teď je čas odměnit se mi."~ */
  IF ~~ THEN REPLY #7200 /* ~"Chápu. Kolik?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"Tak na to zapomeň. Ale ještě bych se zeptal na..."~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"Nevadí. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"Několik měďáků za *nakouknutí na to*, co ti chybí a deset měďáků za skutečné nalezení toho, co ti skutečně chybí."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"Hotovo."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"Nech to být. Namísto toho mi radši odpověz na..."~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"Nevadí. To, co hledám, dokážu najít sám, díky."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"Nevadí. To, co hledám, zvládnu najít sám, díky."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"Nevadí. To, co hledám, dokážu najít sám, díky."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"Myslím, žes našel přesně to, co hledáš, pusinko. Pojď se mnou, drahouši."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Následuj ji...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Následuj ji...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Následuj ji...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Následuj ji...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Následuj ji...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~Žena se usmívá. "Nemáš dost prachů? To nevadí, lásko... vrátíš se, až budeš mít těžší kapsy."~ */
  IF ~~ THEN REPLY #7213 /* ~"Uhm... tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~Žena tě přeruší. "Za mimira se platí jednou tolik... nebo jinýho mrzáka."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"Uhm... 'mimir?'"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"Nepodělej to, Morte. Jak tak na ni koukám, nejspíš tě zachraňuju před druhým úmrtím."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"Kašli na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"Ať ti vyhnijou střeva a prasknou játra! Smrdíš jako zdechlina starýho kozla a seš dvakrát tak hnusnej! Poblilo by se z tebe i prase!"~ */
  IF ~~ THEN REPLY #7218 /* ~"Uhm..."~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~Žena se zamračila. "Nejsem průvodce..." Zvedla si ruku před obličej a začala o sebe třít palec a ukazováček. "*Jedině* že bys měl ňáký prašule, aby se mi to vyplatilo, vykecávat se s tebou."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"Zaplatím ti. Kolik?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"Zaplatím ti. Kolik?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"Zaplatím ti. Kolik?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"Tak to nech plavat. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"Deset měděnejch. Za další votázky a nebo nějaký delší kecy si budeš muset eště přisolit."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"To zní dobře. Tu máš deset peněz."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"Nevadí."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"Tvoje chyba. Jen tak mimochodem - dyž nebudeš nasávat jak čerpadlo, nebudeš mít druhej den vokno jako prase a nebudeš ztrácet věci. No, až tě to přestane bavit, to tvý zapomínání a pak hledání, lásko, stav se za mnou."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"To si budu pamatovat. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"To si budu pamatovat. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"Na to se budu snažit nezapomenout. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"Tak jo." Jakmile se peníze dotkly její dlaně, někde zmizely. "A teď..."~ */
  IF ~~ THEN REPLY #7231 /* ~"Rád bych se dozvěděl ještě nějaké informace..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"Ptej se, lásko."~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"Můžeš mi říct něco o tomto městě?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"Můžeš mi říct něco o Sigilu?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"Můžeš mi říct, co je tady v okolí zajímavého?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"Co mi tak můžeš prozradit o místních společenstvech?"~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"Co mi můžeš říct o Paní Bolesti?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"Hledám někoho jménem Pharod."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"Hledám deník."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"Vlastně to nech být. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Podezřívavě nakrčila obočí. "Město? A co jako s ním?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"Co je to?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"Co je to?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"Vlastně bych se radši na něco zeptal..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"Nech to plavat. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"Myslíš jako co je to Sigil, jo?" Pokrčila rameny a pak se teatrálně rozhlédla. "Tak to je to město, co máš přímo pod haksnama a co je všude tady vokolo." Usmála se. "Návštěvníci z něho bejvaj kapku mimo, to teda jó."~ */
  IF ~~ THEN REPLY #7248 /* ~"Co to je vlastně Sigil?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"Vlastně jsem se chtěl přeptat na..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"Pupek Sfér, přesnej střed, alespoň to povídaj." Odfrkla si. "Si věř čemu, chceš."~ */
  IF ~~ THEN REPLY #7253 /* ~"Přesný 'střed?'"~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"Když o tom tak mluvíme, ještě bych se pozeptal na..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"Nech to být. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"Nech to plavat. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~Ušklíbla se. "No víš, lásko, podle fousatejch íkváčů, študentů a papalášů a všech těch dalších přechytřelejch vykecávačů prej pokračujou Sféry furt dál a dál." Zaťukala si na čelo. "A jak pak můžou mít potom nějakej střed, he? No řekni, né?"~ */
  IF ~~ THEN REPLY #7258 /* ~"Hmmmm. Rád bych položil ještě další otázky..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"Díky za informaci. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"Díky za informaci. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~Založila si ruce v bok a zavrkala: "To záleží na tom, co tě zajímá, cukrouši."~ */
  IF ~~ THEN REPLY #7379 /* ~"Hledám místo, kde bych se mohl trošku odreagovat."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"Hledám práci."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"Nech to plavat. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"Už sem ti jednu nabídku dala, lásko. A cena je rozhodně fér, to mi můžeš věřit. Fakt teda jako nevím, kde by ses moh bavit víc a užívat si zázračnější zábavu než se mnou, fakt nekecám."~ */
  IF ~~ THEN REPLY #7263 /* ~"A co dalšího by v místním okolí stálo za zmínku?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"Fajn... Tak to bys mi mohl zodpovědět ještě dalších pár dotazů..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"Nech to plavat. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"Nech to být. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~Zasmála se. "Ty se ptáš *mě*? Copak, se snad chceš přidat k Sesterstvu, nebo jako co?" Směje se, až se málem dusí, rukama se drží za břicho. Zní to jako skřek opilé harpyje. "Seš... seš fakt dobrej. Jo, to seš."~ */
  IF ~~ THEN REPLY #7269 /* ~"A co kromě toho bych si neměl nechat ujít?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"Fajn... Měl bych ještě jiné otázky..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~Vědoucně se usmála. "Já zkrátka... 'sloužím' společenstvům, lásko. Já s nima nejednám. Prostě... sloužím."~ */
  IF ~~ THEN REPLY #7275 /* ~"Dokonce ani Spalovači ne?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"Fajn...  ještě mám v zásobě pár otázek..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"Kašli na to. S Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"V mých pacinkách se Spalováci vůbec nechovají jako Spalováci, lásko." Usmála se. "Ti pakoši nakecaj spousty vo smrti a chcípání, ale když jsou se mnou, tak toho moc nenakecají, víš? Ráda ti to vysvětlím víc do toho, detailu, esli tě to zajímá.""~ */
  IF ~~ THEN REPLY #7280 /* ~"Rozumím... Každopádně ještě bych rád vyzvěděl..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"Poučné... sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"Poučné... sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"Poučné... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"Nemám tušáka, kde bys takovej nesmysl moh najít, lásko. By ses měl kouknout... asi někam jinam." Vybízivě se usmála. "Znám ňáký místa, kde bys možná moh začít, to teda jo."~ */
  IF ~~ THEN REPLY #7284 /* ~"Zeptal bych se ještě na..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"Nech to plavat. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"Pharod? No tak to je jedna z *větších* tajností, lásko. Esli chceš vo tomhle tvrďákovi něco vědět, tak tě to bude stát víc. Třikrát tolik, lásko."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"To beru. Tady máš třicet peněz."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"To beru. Tady máš jedenadvacet peněz."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"To beru. Tu máš devět peněz."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"Hrome. Tolik nemám. Mohl bych se alespoň na něco pozeptat..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"Safra. Na to nemám. Alespoň se na něco zeptám, když už jsem tady..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"Zatraceně. Tolik peněz nemám právě u sebe. Nu což a mohl bys mi místo toho odpovědět na..."~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"Kašli na to... Ještě bych se na něco přeptal..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~Prohlédla si tvoje mince a pak pokrčila rameny. Strčila si je do kapsy a zeptala se tě: "Tak co teda chceš vo Pharodovi vědět?"~ */
  IF ~~ THEN REPLY #7328 /* ~"Tak za *takovou* sumu mi o něm řekni vše, na co si jen vzpomeneš."~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"Zapomeň na to... Radši se ještě na něco zeptám..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"Nech to plavat. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~Pokrčila rameny. "Se povídá, že je to Sběračskej boss. Má někde ve svý díře celou svou bandu."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"Kde bych ho mohl najít?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"Kdepak bych ho asi tak mohl najít?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"Dost už bylo Pharoda... Taky bych se rád informoval ohledně jiných záležitostí..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"Nevadí. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"Nech to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"No, von to nikdo neví jistě, ale *já* bysem zkusila Hadrníkovo náměstí, lásko."~ */
  IF ~~ THEN REPLY #7340 /* ~"Hadrníkovo náměstí?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"Chápu... Měl bych na srdci ještě pár otázek..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"Díky za informaci. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"Díky za informaci. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"Jó, taková velká kupa hadrů a bordelu tři bloky vod Márnice... všichni Sběrači tam maj svůj flek. A já bysem si tipla, že ten Pharod tam taky bude bejvákovat."~ */
  IF ~~ THEN REPLY #7345 /* ~"Co je to Sběrač?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"Rozumím... A ještě bych se zeptal na..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"Díky za informaci. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"Díky za informaci. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"Víš, ti sráči, co sbíraj za prachy zdechliny. Ubohá banda, to jo."~ */
  IF ~~ THEN REPLY #7262 /* ~"Oni hromadí těla? Proč?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"Chápu... Ještě bych se na něco pozeptal..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"Díky za informaci. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"Díky za informaci. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"Páč nemaj imáge, to jako ksicht, aby mohli dělat to, co já."~ */
  IF ~~ THEN REPLY #7399 /* ~"Chápu... Rád bych položil ještě pár otázek..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"Díky za informaci. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"Díky za informaci. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"Díky za informaci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~Odplivla si a prstem si před srdcem opsala polokruh. "Ta štětka s kudlama! Vznešená a mocná, šéfka tohodle města, lítající a tichá a zabije každýho, koho se jen dotkne její stín. Stará se vo město, to jo..." Zasyčela. "A nechává živý bytosti ve městě *hnít*."~ */
  IF ~~ THEN REPLY #7457 /* ~"Fajn... Můžeš mi ještě odpovědět na..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"Nevadí. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"Nechej to plavat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"Tak to by bylo, drsňáku."~ */
  IF ~~ THEN REPLY #7461 /* ~"Chci se tě ještě na něco zeptat. Tedy... teď když už se mohu soustředit."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"Díky. Sbohem."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"Díky. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"Pro tebe..." Kriticky si tě prohlíží. "Sedm měděnejch, ani víc, ani míň. Další votázky a nějaký další kecy tě budou stát víc, si budeš muset ještě přisolit."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"To zní fér. Tady je sedm peněz."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"Zapomeň na to."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"Pro takovýho hezkýho bouchače..." Ze široka se usmála a odhalila dvě řady špinavých zubů. "Tři měďáky mi rozvážou jazyk." Olízla si rty a pak se zamračila. "Ale na další votázky a někerý tajnosti si budeš muset přicálovat víc."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"Obchod je obchod. Tady máš tři mince."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"Zapomeň na to."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~Běhna využila příležitosti a prchá.~ */
  IF ~~ THEN REPLY #30537 /* ~"Zatraceně, Annah..."~ */ DO ~EscapeArea()
~ EXIT
END

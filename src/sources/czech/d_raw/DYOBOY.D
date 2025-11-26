// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~Mladý, ale svalnatý 'grázl' - i když je dobře ozbrojený a dost velký na to, aby byl nebezpečný - vypadá příliš čistě na pouličního lupiče. V jedné ruce má velkou sekeru, v druhé ocelovou krabici. Když ses k němu přiblížil, zavrčel na tebe. "Na co čumíš, blbče? Odpal, nebo tě spláchnu!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"Na grázla jsi trochu moc upravený."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"Uklidni se... Mám jenom nějaké otázky..."~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~Vrhá na Annah smrtelný pohled o sedmi megatunách, ale nic neříká.~ */
  IF ~~ THEN REPLY #46043 /* ~"Víš, na grázla jsi docela dost *upravený*."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"Uklidni se... Mám jenom nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"Přestaň klepat hubou, kreténe! Tohle je *moje* území a ty odtud hodně rychle vypadneš, nebo tě mí kámové roztrhají na kousky!"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"Jenom by mně zajímalo, co je to za krabici, co máš."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"Ne, myslím, že se tady ještě zdržím."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"Fajn, půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~Jeho tvář zlostně zrudla, naštvaně skřípe zuby. "Tak a už toho mám dost. Sám sis vo to sakra řek! Berte ho, chlapci!" Zvedl sekeru a vrhl se do útoku!~ */
  IF ~~ THEN REPLY #46052 /* ~Bojuj.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Uteč.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~Pozdvihl obočí a podíval se na bednu, krčíc rameny. "Nevím, a nemůžu tu zapráskanou věc otevřít... Myslím, že je to zatracená kecací hlava, ale spadla mi a drží od té doby hubu. Chtěl jsem ji prodat v kuriozitách, ale Vriz ji ksakru nechce. Nemáš zájem? Sto měděnejch a je tvoje."~ */
  IF ~~ THEN REPLY #46055 /* ~"Počkej - odkud máš tu věc?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"To je ta hlava od těla v Hale, ne?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"Jistě, vezmu si to."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"Ne, děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~Mladý grázl vypadá chvíli zaraženě - na tváři má směšný výraz, když vezmeš v potaz jeho velkou postavu. "Já... našel jsem ji. Ne že by to byla tvoje zatracená věc, blbče! Chceš ji nebo ne? Sto měděnejch, nebo si tu sakra blbost nechám!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"To je ta hlava od těla v Hale, ne?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"Jistě, vezmu si to."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"Ne, děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~Prskl na tebe, na rtech mu při křiku ulpěly kapičky slin. "Já sakra nevím! Koho to zajímá! Našel jsem tu zasranou věc... a co sem našel, to je moje. Je to moje právem! Chceš to? Tak si to kup! Sto měděnejch, vole."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"Jistě, vezmu si to."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"Co kdybychom si o to zasoutěžili?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"Co kdybych tě zkopal do bezvědomé sténající krvavé krychličky a vzal ti to?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"Ne, děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"Eh?"~ */
  IF ~~ THEN REPLY #46069 /* ~"Soutěž. Co takhle tohle: Vezmi sekeru a pořádně do mě flákni, jedno kam. Jestli budu schopný vstát a vzít si tu krabici, je moje... jinak jsi novým majitelem všeho, co mám u sebe."~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"To nic. Zkrátka to koupím."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"Zapomeň na to. Zmlátím tě do bezvědomí, až budeš ležet na zemi jako rozbitý fackovací panák a pak si to vezmu sám."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~Podíval se na svou sekeru, pak na tebe. Velice skepticky.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"Copak, máš strach, že jsem nějaká 'nesmrtelná bytost', které tvá sekera nemůže ublížit?! Jen se na mně *podívej*!"~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"Copak, máš strach, že jsem nějaká 'nesmrtelná bytost', které tvá sekera nemůže ublížit?! Jen se na mně *podívej*!"~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"To nic. Zkrátka to koupím."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"Zapomeň na to. Zkrátka tě zmlátím do bezvědomí, do malé krvavé krychličky a vezmu si to."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~Grázl do tebe zabořil svou velkou sekeru - ostří proniklo tkání i kostmi jediným mocným úderem a co je překvapující - zabilo tě.~ */
  IF ~~ THEN REPLY #46080 /* ~Upadni do temnot...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~Grázl do tebe zabořil svou velkou sekeru - ostří proniklo tkání i kostmi jediným mocným úderem. Zapotácel ses a vyplivl trochu krve - a pak ses na chlápka vesele zašklebil. Šokovaně na tebe zírá. Natáhl jsi ruku po ocelové skřínce.~ */
  IF ~~ THEN REPLY #46082 /* ~"Vezmu si tu krabici. Škoda, že sis neuvědomil, že jsem nesmrtelná bytost, které tvá sekera nemůže ublížit, co? Sbohem."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Vezmi si to a nechej ho tam stát s přiblblým výrazem na ksichtu.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~Grázl popadl tvé mince a hodil ti krabici. "A teď odtud vypadni. Už s tebou nechci ksakru mluvit, vole."~ */
  IF ~~ THEN REPLY #46085 /* ~"Jó, jó, cokoli řekneš. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~Grázl si odfrkl, když jsi k němu zamířil. "Zas ty?! Odpal, vole!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"Víš, na grázla jsi docela dost *upravený*."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"Uklidni se... Mám jenom nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~Grázl si odfrkl, když jsi k němu zamířil. "Mel si držkou, jak chceš, vole. Já s tebou kecat nebudu."~ */
  IF ~~ THEN REPLY #46092 /* ~"No jó. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~Statný mladý hrdlořez se ušklíbl, když jsi před něj předstoupil. "Zas ty?! Ty hňu-" Náhle se zastavil, pohlédl na tebe a pškrábal se na hlavě. "Hele... já tě přece... ale..."~ */
  IF ~~ THEN REPLY #61593 /* ~"Jo jo, já vím. Mám nějaký otázky..."~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"Jo, přesně tak - a teď za to draze zaplatíš."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Odejdi.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END

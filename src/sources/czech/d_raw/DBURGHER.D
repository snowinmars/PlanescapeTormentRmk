// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~Vidíš stárnoucího githzerai, uvězněného pod koly vozu, který spadl během vlny chaosu. Vyplivl krvavou slinu a zašklebil se. "Nepomůžeš mi, co? Přesně to nás tady dostalo tam, kde teď jsme..." Slabě se zasmál.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"Kdo jsi?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"Uklidni se. Vytáhnu tě."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"Uklidni se. Vytáhnu tě."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~Githzerai vykašlal trochu krve. "Zase jsi mě přišel trápit? Nedopřeju ti to potěšení."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"Kdo jsi?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"Uklidni se. Vytáhnu tě."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"Uklidni se. Vytáhnu tě."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"Ano, odlož meč, zerthský pse. Plivu na tvé učení. Nos dál své řetězy." Githzerai otočil hlavu k tobě."Jsem Tovus Giljaf. Býval jsem starostou tohohle města... dokud se ten prokletý deva neuvolnil."~ */
  IF ~~ THEN REPLY #57032 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"Ty jsi byl starostou?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"Nemůžu říct, že bych si o tvém městě myslel něco dobrého."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"Dostanu tě odtamtud."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"V tom případě tě tady nechám zemřít. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"Ano, zabij mě, zerthský pse. Poslechni rozkazy svého pána." Starý githzerai vykašlal trochu krve, pak mu Dak'konova čepel prosekla hrdlo.~ */
  IF ~~ THEN REPLY #57039 /* ~"Dobrá rána, Dak'kone."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"Jsem Tovus Giljaf. Býval jsem starostou tohohle města... dokud se ten prokletý deva neuvolnil."~ */
  IF ~~ THEN REPLY #57041 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"Ty jsi byl starostou?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"Nemůžu říct, že bych si o tvém městě myslel něco dobrého."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"Dostanu tě odtamtud."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"V tom případě tě tady nechám zemřít. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~Stiskl ještě více své tenké rty. "Tak zvedej, proklatče. Dělej."~ */
  IF ~~ THEN REPLY #57047 /* ~"Udělejme to."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"Zapomeň na to. Možná přijdu později."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"Tak to tě proklínám, zjizvený muži, přeju ti všechen zmar mnohovesmíru." Plivl na tebe krvavou slinu, ale netrefil se.~ */
  IF ~~ THEN REPLY #57050 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~Opřel ses do vozu a podařilo se ti ho nazvednout dost, aby mohl vyklouznout ven. "Děkuji ti... člověče. Půjdu teď pomoci svým strážím. Mé město nezahyne." Pokrouceně se usmál. "Nezávidím ti utkání s devou. Je to hrozný protivník. Tady. Vezmi si to. Může ti to pomoct.""~ */
  IF ~~ THEN REPLY #57052 /* ~"Sbohem."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"Uvěznili jsme ho před mnoha lety. Myslel jsem si, že je dobře ukrytý před všemi čenichajícími psy a zrádci. Náhle vyletěl ze země a můj překrásný, nádherný domov... sklouznul." Upřeně se na tebe zadíval. "Budu mít svou pomstu. Uvolni mě, dobře?"~ */
  IF ~~ THEN REPLY #57054 /* ~"Dobrá. Připrav se."~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"Ty jsi byl starostou tohohle města?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"Mí společníci... a já... jsme používali tohle město jako základnu, odkud bychom se znovu dostali k moci. Ale to je další příběh na další den! Uvolni mě!"~ */
  IF ~~ THEN REPLY #57058 /* ~"Dobrá. Připrav se."~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"Já taky ne... ale je moje, a když vidím, jak jsem ho ztratil kvůli tomu devovi... je to víc, než dokážu snést." Zakašlal. "Uvolni mě a já ti pomohu v pomstě proti devovi. Mé stráže ti pomohou s monstry."~ */
  IF ~~ THEN REPLY #57062 /* ~"Dobrá. Připrav se."~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~Vidíš stárnoucího githzerai, uvězněného pod koly vozu, který spadl během vlny chaosu. Vyplivl krvavou slinu a zašklebil se. "Nepomůžeš mi, co? Přesně to nás tady dostalo tam, kde teď jsme..." Slabě se zasmál.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"Kdo jsi?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"Kdo jsi?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"Uklidni se. Vytáhnu tě."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"Uklidni se. Vytáhnu tě."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~Githzerai vykašlal trochu krve. "Zase jsi mě přišel trápit? Nedopřeju ti to potěšení."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"Kdo jsi?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"Kdo jsi?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"Uklidni se. Vytáhnu tě."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"Uklidni se. Vytáhnu tě."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"Ano, odlož meč, zerthský pse. Plivu na tvé učení. Nos dál své řetězy." Githzerai otočil hlavu k tobě."Jsem Tovus Giljaf. Býval jsem starostou tohohle města... dokud se ten prokletý deva neuvolnil."~ */
  IF ~~ THEN REPLY #57080 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"Ty jsi byl starostou?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"Nemůžu říct, že bych si o tvém městě myslel něco dobrého."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"Dostanu tě odtamtud."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"V tom případě tě tady nechám zemřít. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"Ano, zabij mě, zerthský pse. Poslechni rozkazy svého pána." Starý githzerai vykašlal trochu krve, pak mu Dak'konova čepel prosekla hrdlo.~ */
  IF ~~ THEN REPLY #57086 /* ~"Dobrá rána, Dak'kone."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"Jsem Tovus Giljaf. Býval jsem starostou tohohle města... dokud se ten prokletý deva neuvolnil."~ */
  IF ~~ THEN REPLY #57088 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"Ty jsi byl starostou?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"Nemůžu říct, že bych si o tvém městě myslel něco dobrého."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"Dostanu tě odtamtud."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"V tom případě tě tady nechám zemřít. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~Stiskl ještě více své tenké rty. "Tak zvedej, proklatče. Dělej."~ */
  IF ~~ THEN REPLY #57094 /* ~"Udělejme to."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"Zapomeň na to. Možná přijdu později."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"Tak to tě proklínám, zjizvený muži, přeju ti všechen zmar mnohovesmíru." Plivl na tebe krvavou slinu, ale netrefil se.~ */
  IF ~~ THEN REPLY #57097 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~Opřel ses do vozu a podařilo se ti ho nadzvednout dost, aby mohl vyklouznout ven. Z druhé strany vozu slyšíš agonický skřek, následovaný vlhkým rozplizlým zvukem. "Děkuji ti... člověče. Půjdu teď pomoci svým strážím. Mé město nezahyne." Pokrouceně se usmál. "Nezávidím ti konflikt s devou. Je to hrozný protivník. Tady. Vezmi si to. Může ti to pomoct.""~ */
  IF ~~ THEN REPLY #57099 /* ~"Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"Uvěznili jsme ho před mnoha lety. Myslel jsem si, že je dobře ukrytý před všemi čenichajícími psy a zrádci. Náhle vyletěl ze země a můj překrásný, nádherný domov... sklouznul." Upřeně se na tebe zadíval. "Budu mít svou pomstu. Uvolni mě, dobře?"~ */
  IF ~~ THEN REPLY #57101 /* ~"Dobrá. Připrav se."~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"Ty jsi byl starostou tohohle města?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"Mí společníci... a já... jsme používali tohle město jako základnu, odkud bychom se znovu dostali k moci. Ale to je další příběh na další den! Uvolni mě!"~ */
  IF ~~ THEN REPLY #57105 /* ~"Dobrá. Připrav se."~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"Já taky ne... ale je moje, a když vidím, jak jsem ho ztratil kvůli tomu devovi... je to víc, než dokážu snést." Zakašlal. "Uvolni mě a já ti pomohu v pomstě proti devovi. Mé stráže ti pomohou s monstry."~ */
  IF ~~ THEN REPLY #57109 /* ~"Dobrá. Připrav se."~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"Co mi můžeš říct o devovi?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"Ne, to si nemyslím."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~Když začínáš zvedat, z druhé strany vozu slyšíš agonický výkřik...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"Rozmačkáš mě, hlupáku! Nemůžeš ten vůz zvednout bez toho, že bys rozmačkal jednoho z nás. A když rozmačkáš místo mně jeho, vyplatí se ti to!"~ */
  IF ~~ THEN REPLY #57114 /* ~"Jak to?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"V tom případě bych měl pomoct jemu. Ty jsi část zla, která drží město v Carceri."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"A co kdybych to zvedl z vás obou? Se svými společníky to dokážeme, když se do toho opřeme."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"Tak se vrátím později, až přijdu na to, jak tohle vyřešit."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"Stále velím strážím Curstu. Můžu je vést, pomoci jim, zpomalit vlny monster, které stojí mezi tebou a devou. Uvolni mě a tvůj úkol bude jednodušší. Uvolni jeho a nic nezískáš."~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"To... je deva. Ten malý zloděj je pro tebe nic v porovnáním s devou. Uvolni mě!"~ */
  IF ~~ THEN REPLY #57120 /* ~Zvedni vůz z Berroga: "Dobrá."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Připrav se zvednout vůz z Berroga. "Myslím, že raději uvolním jeho."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"Co kdybych uvolnil vás oba? Já a mí přátelé to dokážeme, když se do toho pořádně opřeme."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"Vrátím se, až mě napadne, jak to vyřešit."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~Shromáždil ses se svými společníky kolem vozu a soustředěným úsilím se vám podařilo zvednout vůz tak, že oba uvěznění mohli vyklouznout ven.~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"Děkuji ti... člověče. Půjdu teď pomoci svým strážím. Mé město nezahyne." Pokrouceně se usmál. "Nezávidím ti utkání s devou. Je to hrozný protivník. Tady. Vezmi si to. Může ti to pomoct.""~ */
  IF ~~ THEN REPLY #57126 /* ~"Sbohem."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"Je to... starosta, ty hlupáku." Obrátil svou pozornost k tobě.~ */
  IF ~~ THEN GOTO 24
END

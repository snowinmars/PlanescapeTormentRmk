// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~Vidíš hubeného muže skloněného nad stolem, který něco škrábe na kousek papíru. Vlasy má prořídlé, našedivělé  a  stažené do ohonu. Zahnutý nos zdobí velké brýle. Jeho věk může být kdekoli od dvaceti do padesáti. Bez toho, že by se na tebe podíval, řekl: "Co chceš? Tak se vymáčkni."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"Kdo jsi?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"Co tady děláš?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"Ztratil jsem lebku."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"Město musí shořet."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"Mám zepár otázek..."~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"Ano. Giltspur mě poslal s tímhle plakátem. Máš vytisknout sto kopií."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"Jsem Penn, blbe. A ještě bych chtěl něco říct: neměl jsi ani tušení před tím než si vešel, že tohle je tiskárna a teď ses rozhodl mrhat nejen časem svým, ale taky mým."~ */
  IF ~~ THEN REPLY #65200 /* ~"Co tlačíš?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"Mám pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"Dobře tedy. Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"Knihy. Brožury. Reklamní letáky. Noviny. Dopisy. Cokoliv." a doplňuje, "Nicméně netisknu všechno a rozhodně ne různé zvrhlosti, které by si ty mohl chtít. Ani se nemusíš obtěžovat s ptaním."~ */
  IF ~~ THEN REPLY #65236 /* ~"Mám pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"V pořádku. Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~Podíval se na tebe zostra, přestajíc škrábat svým pérem po papíře. "Jsi absolutně blbý? Tohle je tiskárna. Tlačím tu věci. Podívej se okolo sebe. Tisknu."~ */
  IF ~~ THEN REPLY #65238 /* ~"Co tiskneš?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"Mám pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"Taky jsi to myslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~Odfrkl si. "Taky to tak vypadá, když se na tebe dívám."~ */
  IF ~~ THEN REPLY #65241 /* ~"Nemluv na mě takovýmhle tónem, nebo toho budeš litovat."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"Myslím to vážně. Někdo mi ukradl druha."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"Má pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~Vzal si od tebe plakát, prohlédl si ho a řekl, "Budu to mít pro něj později. Běž mu to říct." Vrátil se k své práci.~ */
  IF ~~ THEN REPLY #65245 /* ~"Má pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"Mohl by ses poptat na Lothara, Pána Kostí. Říká se, že má pěknou sbírku lebek. Nevím, kde bys ho mohl najít, nicméně kdybych to věděl, neřekl bych - ví víc o magii, než se ti hlupáku snilo a nechci být jeden z těch, kteří se mu dostanou do cesty." Vrátil se k svým lejstrům. "A teď odejdi."~ */
  IF ~~ THEN REPLY #65246 /* ~"Má pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"Nemluv se mnou takovýmhle tónem příteli."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"Cože? Co jsi to řekl? Nic to pro mě neznamená."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"Řek jsem, že město musí shořet."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"Poslala mě Bedai-Lihn."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"Zapomeň na to. Sbohem."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"Řek jsem, že město musí shořet."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"Poslala mě Bedai-Lihn."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65247 /* ~"Má pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"Milostný dopis, eh? Dobře. Bude tě to něco stát. Řekněme... hmm... sto mincí. Pro tebe je to tak akorát."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"Tu máš."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"A co takhle slevu?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"A co takhle slevu?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~Vzal si od tebe záznam, přehlédl si ho a zmačkal do kuličky, kterou pohotově proměnil v hromádku popela. Upřeně na tebe pohlédl. "Zdá se, že chce někdo poškodit mé dobré jméno. No. Chtěl jsi něco?"~ */
  IF ~~ THEN REPLY #65262 /* ~"Neobáváš se toho?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"Chci se k vám přidat."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~Vzal si od tebe peníze, na chvíli zapřemýšlel a vybral navoněný arch papíru ze svého psacího stolu. Načmáral na něj pár, láskou uhlazených řádek květnatým, elegantním písmem. "Bude to dobré, jsem si jist."~ */
  IF ~~ THEN REPLY #65266 /* ~"Jasně, že bude. Mám nějaké jiné otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"Jasně, že bude. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"Mají něco společné s mou prací?"~ */
  IF ~~ THEN REPLY #65268 /* ~"Vlastně ne..."~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"Co tiskneš?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"Co je tohle za místo?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"Jsi ten co napsal tenhle záznam, který jsem našel v Márnici?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"Ano. Ztratil jsem lebku."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"Ano. Giltspur mě poslala s tímhle letákem. Máš udělat sto kopií."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"Ano. Město musí shořet."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"Město musí shořet."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"Chtěl bych, abys pro mě vytisknul milostný dopis."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"Tedy marníš svým i mým časem. Měj se pěkně." Obrátil se ke svému psacímu stolu.~ */
  IF ~~ THEN REPLY #65280 /* ~"Neignoruj mě."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~Tleskl rukama... a objevil jsi se před jeho obchodem.~ */
  IF ~~ THEN REPLY #65282 /* ~"Co se to..."~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"Dobře. Sedmdesát pět mincí. Ber nebo nech tak."~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"Beru to."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"Nechci to. Mám ještě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"Nechci to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~Uchechtl se. "Nemyslím, příteli. Sto mincí, nebo nic."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"Tu máš."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"Tak na to zapomeň. Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"Proč bych měl? Je to jenom konkurence. Asi vím, kdo by to mohl být a taky jsem trochu překvapen, že jsem to získal."~ */
  IF ~~ THEN REPLY #65289 /* ~"Můžu ti být nějak nápomocen?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"V pořádku. Mám tedy ještě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"Výborně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~Podíval se na tebe tvrdě. "Jsem si jistý, že jsi si mě s někým spletl. Běž dělat něco jiného, nebo tě mohu vykopnout?"~ */
  IF ~~ THEN REPLY #65292 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"Tak mě tedy vyhoď."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"Jsi vážně tak blbý, jak vypadáš? Samozřejmě ne."~ */
  IF ~~ THEN REPLY #65295 /* ~"Tedy v pořádku. Mám ještě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"Takhle se mnou nemluv."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"Slyšel jsem tě." řekl, ostře se na tebe dívajíc. "Když tě Bedai-Lihn poslala za mnou, znamená to, že jsi jeden z nás. Je to pravda?"~ */
  IF ~~ THEN REPLY #65298 /* ~"Ano."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"Vlastně ne."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"Nic to pro mě neznamená, až na to, že jste si všiml, že jsi totální magor. Teď. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #65301 /* ~"Ano. Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"Kdo? Bedai-Lihn? Takhle si ta stará babizna teďka říká?" unaveně si povzdechl. "Je to má žárlivá stará milenka. Pokouší se mě dostat za každou cenu. Nikdy mi nebude moct nic přišít." znova se narovnal. "Chceš ode mně ještě něco?"~ */
  IF ~~ THEN REPLY #65303 /* ~"Mám na tě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"Ano, ano, říkal jsi to i předtím. Co tím myslíš?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"Proč mě Bedai-Lihn za tebou poslala říct ti to, když to nic neznamená?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"Proč mě Bedai-Lihn k tobě poslala?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"Co si myslíš, troubo? Pomohl si jí zruinovat boží lidi. Domnívá se, že by jsi mohl chtít víc. Nabídka stále platí. Chceš to nebo ne?"~ */
  IF ~~ THEN REPLY #65307 /* ~"Ne, ještě ne."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"Ano."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"Staré záště a nevrácené odplaty umírají tvrdě. Šílenství umírá vždy tvrději." Těžko by sis představoval někoho, kdo by uznával tohohle muže; šílenství vypadá jako reální možnost. "Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #65309 /* ~"Ano, mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~Penn zdvihl oči od své roboty, když si vešel do obchodu. "Ven. A zůstaň venku." Ukázal rukou a ty jsi zjistil, že jsi pryč.~ */
  IF ~~ THEN REPLY #65311 /* ~"Co se to..."~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"Vítej spět." Penn stále se skloněnou hlavou študuje lejstra co má na stole. "Pomohli ti Ebb a jeho chlapi v Curste?" Vypadá však, že ho odpověď vůbec nezjímá.~ */
  IF ~~ THEN REPLY #65312 /* ~"Ano. Mám nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"Děkuji pěkně. Máš pro mě ještě nějakou práci?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"Jistě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"Ne, ještě ne. Když se něco vyskytne, dám ti vědět. Chceš teď ještě něco, nebo mně jen vyrušuješ?"~ */
  IF ~~ THEN REPLY #65315 /* ~"Mám pár otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~Jako vždycky Penn vypadá, že je velmi zaneprázdněný psaním. "Chceš něco napsat nebo vytisknout? Když jo, řekni a já ti to udělám. Jinak si běž promluvit do Sklepení Devátého světa a tam se o tebe postarají."~ */
  IF ~~ THEN REPLY #65317 /* ~"Mám jen pár otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"Ale rychle. Jsem zaneprázdněn."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"Ztratil jsem lebku."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"Giltspur mě poslal s tímhle letákem. Máš udělat sto kopií."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"Chtěl bych abys pro mě vytlačil milostný dopis."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"Jaké je heslo pro naši kobku? Zapomněl jsem."~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"Na čem děláš?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"Na čem děláš?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"Na čem děláš?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"Na čem děláš?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"Chtěl bych si s tebou promluvit o revoluci..."~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"Chtěl bych se tě na něco zeptat o organizaci..."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"Leena chce abych se prokázal."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"Víš kdo jsme?"~ */
  IF ~~ THEN REPLY #65331 /* ~"Řekni."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"Ne. Chci se stát členem. Když jste za ničení, jdu do toho."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"Kdyby ses připojil k Vaxisovi, stal by ses částí Revoluční Ligy."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"Proč mi tedy tykáš? Co chceš? Čekáš na to abych tě vykopl nebo co?"~ */
  IF ~~ THEN REPLY #65334 /* ~"Ne, ale mám ještě nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"Ano. Vykopni mě."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"Kdybych byl tebou, podíval bych se do zbořeného domu při Zastavárně. Uvnitř se poohlídni po žebříku dolů. Přežehnej se a běž se tam podívat. Lothar by tam dole někde měl být. Není to zrovna krev, kterou bych chtěl potkat. Je to sběrač lebek a jestli se mu bude líbit tvá, vezme si ji. Nevím jak jsi silný. Dávej pozor... jsi cenný přínos." Zdvihl oči ze svých papírů. "Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #65337 /* ~"Jenom odpovědi na několik otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~Vzal si od tebe plakát, přehlédl si ho a řekl, "Budu to mít pro něj později. Běž mu to říct." Vrátil se k své robotě.~ */
  IF ~~ THEN REPLY #65339 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~BLANK NODE~ */
  IF ~~ THEN REPLY #65341 /* ~"Jenom odpovědi na několik otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"Milostný dopis, eh? Nic neříkající a přitom vášnivý? Dobře." Na chvíli zapřemýšlel a vybral vonný arch papíru ze svého psacího stolu. Načmáral pár planých, láskyplných řádků květnatým, elegantním písmem. "Bude to dobré. Jsem si jist."~ */
  IF ~~ THEN REPLY #65343 /* ~"Dík. Mám ještě nějaké otázky..."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"Díky. Sbohem."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~Vzhlédl od svých papírů a zašilhal na tebe. "Heslo je 'úpadek.' Pohni a užij ho než ti to změní."~ */
  IF ~~ THEN REPLY #65345 /* ~"Dík. Mám ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"Je to hromada proti-Harmonických brožur. Už skoro půjdou k prodeji do Nižších Plání." Pokračuje v psaní. "Co chvíli budu hotov a poohlédnu se po něčem jiném." jeho pero jakoby létalo nad papírem.~ */
  IF ~~ THEN REPLY #65347 /* ~"Dík. Mám ještě nějaké otázky."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"Vím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"Guvneři raději podpoří anonymní petici, která pravdivě ukáže požadavky dvora, než vysmívačů zákona." pohlédl na tebe trochu déle, jako by jsi testoval jeho trpělivost.~ */
  IF ~~ THEN REPLY #65348 /* ~"Dík. Mám ještě nějaké otázky."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"Vím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"Je to plakát, který požaduje vypuštění některých politických vězňů z městské věznice. Byly neprávem zatčeni za činy spáchané Revoluční Ligou, protože oceňuji dobrých trpitelů kvůli..." Na chvíli zmlkl a pohlédl na tebe. "Protože oceňuji mučedníky, Nejsem tu proto abych obětoval nevinné. Chci je zachránit."~ */
  IF ~~ THEN REPLY #65349 /* ~"Dík. Mám ještě nějaké otázky."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~Zaškrábal pérem po papíře a tvrdě se na tebe podíval. "Proč se mě nepřestaneš ptát na takovéhle hloupé otázky a nepůjdeš dělat něco co dělat máš?" Prudce a zlostně zafuněl. "Jsem zaneprázdněný muž a ty se mě zeptáš geniální otázku co dělám. Děti jsou méně znervózňující než ty, protože lépe vědí kdy se mě mají přestat ptát co dělám. Tedy. Co jsi chtěl?"~ */
  IF ~~ THEN REPLY #65353 /* ~"Proč nejdeš ven, dělat něco důležitějšího?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"Jenom odpovědi na několik otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"Nic, když jste takový. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"Proč namísto mluvení o revoluci nejdeš ven a něco neuděláš? Zabij nějakého Zabedněnce, nebo zmasakruj nějaké Spalovače, nebo něco podobného. Prvořadé jsou činy, ne slova."~ */
  IF ~~ THEN REPLY #65356 /* ~"Proč neběháš venku namísto toho psaní?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"Dobře, dobře. Mám ještě nějaké otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"Jasně. Chci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"Jsme Revoluční Liga. Víš co je naším cílem?"~ */
  IF ~~ THEN REPLY #65359 /* ~"Ano."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"Ne."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"Chceme svrhnout  Sigilská nařízení. Stojíme proti ostatním frakcím. Jsme frakce, která není frakcí; jsme organizovaný ve jméně chaosu. My ničíme, aby ostatní mohli předělávat s větší svobodou a lepší cestou života. Staré nařízení nám stojí v cestě; staré frakce udržují lidi v slepotě."~ */
  IF ~~ THEN REPLY #65361 /* ~"Myslel jsem, že hledají pravdu."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"Proč vám překážejí?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"Ano, vím. A souhlasím s vámi. Pokračuj s tím."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"Správně, nejprve jsem se o to i pokoušel. Víš, za čím stojíme?"~ */
  IF ~~ THEN REPLY #65364 /* ~"Ano."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"Ne."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~Ruce mu strnuly. Kapka inkoustu dopadla na papír. "Cos mi to řekl?"~ */
  IF ~~ THEN REPLY #65378 /* ~"Ptám se tě proč něco neděláš, namísto skrývání se v tomhle obchodě?"~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~"Nic. Zapomeň na to."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~"Jednoduše: Staré pravidlo říká, že všichni musí být vytrženi z temnoty mnohovesmíru dokdy budou existovat. Přece jenom, co když jsme *vážně* zjistili podstatu věcí? Můžeme svalit jejich křehký světy. Někteří jsou již přesvědčeni, že to našli, jiní šlápnou vedle a můžou se zhroutit. To není proč bych chtěl svolat fórum, kde jsou všechny víry tolerovány."~ */
  IF ~~ THEN REPLY #65380 /* ~"Nemyslíš, že se snaží jak nejvíce mohou?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"Nehledají pravdu?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"Absolutně s tebou souhlasím. Pokračuj s tím. Chci se k vám přidat."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"Víš, zdá se mi to tak trochu paranoické. Zapomeň na to."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"Ne. Hledají něco co by je uznalo a dodalo jim pocit nadřazenosti. Oklamou sami sebe domněním, že to našli a pak pronásledují ty z nás, kteří nesouhlasí."~ */
  IF ~~ THEN REPLY #65384 /* ~"Jak víš, že nenašli velkou Pravdu?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"Jak víš, že se nesnaží jak mohou?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"Souhlasím. Jsem připraven ke všemu co by jim uškodilo."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"Myslím, že jsi úplný magor. Z téhle celé revoluční věci se mi obrací žaludek."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"Staré pravidlo se nezajímá hledáním pravdy více než udržováním si své autority a plnění jejich kapsy. Nemůžeme růst a víc se učit, dokud nebude smeteno pryč."~ */
  IF ~~ THEN REPLY #65388 /* ~"Jak víš, že nenašli velkou Pravdu?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"Souhlasím. Jsem připraven ke všemu co by jim uškodilo."~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"Myslím, že si zaměňuješ dobro se zlem a ve všem tomhle se mýlíš."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"Jestli jsi příliš nedočkavý tak tě pověřím jednou misí. Dokonči ji a budeš in."~ */
  IF ~~ THEN REPLY #65391 /* ~"Nech mě zeptat se tě, jak jste sehraní."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"Jakou úlohu?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"Protože ji mnoho z nich nenašlo, ani jejich oddaní členové. A ti, kteří ji našli, si nevytvořili více víry v 'to', že ji našli: Spalovači myslí jen na naši smrt. Vnímavý si myslí, že bychom měli být pohlceni sami sebou a následovat bude Temnota. Boží Lidé jsou jedni z těch, kteří ještě neobjevili Velkou Temnotu. Jejich jediná 'pravda' je 'zkoušej to a jednou uspěješ.' A proto do smrti otročí ve Slévárně. Je to banda bídáků."~ */
  IF ~~ THEN REPLY #65393 /* ~"Tohle je tedy pěkně divný pohled na jejich víru."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"Potřebují být roztrhaní. Teď dělej na své práci."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"Tedy neschvaluješ naše metody?" Všiml sis, že se jeho ruce nepatrně zatřásli.~ */
  IF ~~ THEN REPLY #65395 /* ~"Jenom kecám."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"Ne, já ne."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"Možná bys měl jít ven a přemyslet si to." Tleskl svýma roztřesenýma rukama a zjistil si, že stojíš venku.~ */
  IF ~~ THEN REPLY #65397 /* ~"Co se to..."~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~Patrně jsem rozhněval Scofflawa Penna, majitele tiskárny a anarchistu, tím, že jsem mu řekl, že nesouhlasím s jeho metodami. Teleportoval mě před obchod a zamknul přede mnou dveře.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"Každá revoluce potřebuje vůdce, troubo. Každé povstání potřebuje někoho, kdo by ho naplánoval. Myslíš si, že pouhý chaos zničí frakci? Musí to být něco víc, než náhodný útok - jenom dokonalý plán může frakcím nějak uškodit. Podívej: lid je meč, lid jsou ruce, které drží meče a jsou... jsou mozky, které řídí ruce."~ */
  IF ~~ THEN REPLY #65398 /* ~"A kdo tě jmenoval mozkem?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"Proč si nejsou všichni rovni?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"V pořádku... Asi by jste se měli všichni probudit."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"Myslím, že se ve všem mýlíš. Neměl bys to tu všechno řídit."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"No. Nikdo jiný nebyl ochotný tohle dělat. Lid potřebuje, aby mu bylo řečeno, co dělat. Někteří lidé se prostě chytnou. Jsem ochotný tohle dělat, jsem ochotný vzít na sebe vinu ze selhání a jsem ochotný odstoupit, když můj plán přinese ovoce. Vzdal jsem se všeho co mi bylo drahé, abych vedl lidi k lepšímu životu. Myslím, že mě to opravňuje."~ */
  IF ~~ THEN REPLY #65402 /* ~"Proč si nejsou všichni rovný?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"Jasně, ale dávej bacha aby ses nepřepracoval."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"Myslím, že jsi tanar'ri plný hnoje, jestli si myslíš, že jsi schopný to vést."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"Síla takového druhu revoluce spočívá v tom, že lidi se *musí* udržovat v dezinformovanosti. Operujeme v oddělených kobkách s minimálním kontaktem s hlavou frakce. Tak je to pro jiné frakce těžší nás zničit, zastavit naše aktivity. Když zničí jednu kobku, nenajdou další, ledaže by měli velké štěstí. Lidé si nemohou být rovný do té doby, než neuspějeme v našem poslání , nebo než se neprokážou."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"Musíš hodně na sobě pracovat."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"Kdo je ve tvé kobce? Kolik lidí?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"Jak získáš pomoc od ostatních kobek?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"To je absurdní. Je to odsouzeno ke zkáze. Tahle frakce je odsouzena ke zkáze."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"Pojďme hovořit o organizaci..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"Kdyby ses měl vzdát všeho za účelem pomáhat jiným jak já, neodsoudil bys mě tak rychle. Tohle je práce, která vyžaduje vášeň a idealismus, a obávám se, že tyhle přednosti v tobě zmizely." Na chvíli se zamyslel. Všiml sis, že se jeho ruce jemně zatřásly.~ */
  IF ~~ THEN REPLY #65409 /* ~"Soudím tě neb nic nevíš o obětování a ty a tví magoři si hrajete na anarchii. Tahle organizace je jedno velké lejno."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"V pořádku, pohov. Promluvme si o tvé organizaci..."~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"V pořádku, uklidni se. Pojďme hovořit o organizaci..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"Co by jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #65411 /* ~"Jak je řízena tvá organizace?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"Co s tou úlohou, co mám splnit?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"Jak je organizovaný váš chaos?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"Jak můžeš získat pomoc z druhých kobek?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"Kde je vaše základna?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"V Úřednické čtvrti, nebo v Městské hale je stone genasi s jménem Qui-Sai. Je pro nás nebezpečný, i když o tom ani neví. Najdi ho a zabij. Když to uděláš, vrať se a já ti řeknu o našich skrýších."~ */
  IF ~~ THEN REPLY #65416 /* ~"Vrátím se."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~Scofflaw Penn mě požádal, abych zabil v Úřednické Čtvrti Qui-Saie, v Městské hale. Řek jsem mu, že to udělám.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"Neudělám to. Je zlé zabíjet lidi."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~Řekl jsem Pennovi, že nezabiji genasi Qui-Sai. Trochu se rozčílil a vykopl mě před svůj obchod.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"Každá revoluce potřebuje vůdce, troubo. Každé povstání potřebuje někoho, kdo by ho naplánoval. Myslíš si, že pouhý chaos zničí frakci? Musí to být něco víc, než náhodný útok - jenom dokonalý plán může frakcím nějak uškodit. Podívej: lid je meč, lid jsou ruce, které drží meče a jsou... jsou mozky, které řídí ruce."~ */
  IF ~~ THEN REPLY #65418 /* ~"A kdo tě jmenoval mozkem?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"Proč si nejsou všichni rovni?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"Myslím, že se ve všem mýlíš. Neměl bys to tu všechno řídit."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"Bohužel máš pravdu. Ale je to lepší než vidět, že celá organizace padá v plamenech, nebo pod meči protivníků."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"Řekni mi víc."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"Co je to za službu, co ode mě potřebuješ?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"Řekni mi víc."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"Řeknu ti to až splníš svou úlohu."~ */
  IF ~~ THEN REPLY #65423 /* ~"Jaká je má úloha?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"Řekni mi víc o organizaci."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"Pokryli jsme celý svět. Máme síť informátorů. Víme, když někdo potřebuje pomoc a když se to nekříží se záměry organizace, poskytneme ji."~ */
  IF ~~ THEN REPLY #65425 /* ~"Co je to za práci, co chceš abych udělal?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"Řekni mi víc o organizaci."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"Všechno v pořádku? Postaral jsi se už o genasi Qui-Sai?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"Je mrtev."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Oznámil jsem Scofflawovi Pennovi svůj úspěch při zabíjení Qui-Saie. Tak se rozjásal, jako nikdy před tím, předpokládám, ale přibral mě do své kobky Revoluční Ligy a řek mi, kde mám najít jeho lidi: ve skladišti jménem Sklepení Devátého světa, v Dolní čtvrti. Řekl mi heslo, abych se mohl identifikovat. Je 'úpadek'. ~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~Lež: "Je mrtev."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"Ještě ne."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"Je mrtvý."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Oznámil jsem Scofflawovi Pennovi svůj úspěch při zabíjení Qui-Saie. Tak se rozjásal, jako nikdy před tím, předpokládám, ale přibral mě do své kobky Revoluční Ligy a řek mi, kde mám najít jeho lidi: ve skladišti jménem Sklepení Devátého světa, v Dolní čtvrti. Řekl mi heslo, abych se mohl identifikovat. Je 'úpadek'. ~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"Je mrtvý."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Oznámil jsem Scofflawovi Pennovi svůj úspěch při zabíjení Qui-Saie. Tak se rozjásal, jako nikdy před tím, předpokládám, ale přibral mě do své kobky Revoluční Ligy a řek mi, kde mám najít jeho lidi: ve skladišti jménem Sklepení Devátého světa, v Dolní čtvrti. Řekl mi heslo, abych se mohl identifikovat. Je 'úpadek'. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~Penn se na tebe ušklíbl a sklonil se zpět ke stolu. "Mě nemůžeš lhát... jsi strašně průhledný, vidím, když to zkoušíš. Běž zpět a dokonči práci. Nepřicházej, dokud nebude hotova."~ */
  IF ~~ THEN REPLY #65457 /* ~"Co když jsem se rozhodl tě udat?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"V pořádku. Můžeš mi něco vytisknout?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"Dej se do toho, tedy a nezdržuj mě tu."~ */
  IF ~~ THEN REPLY #65460 /* ~"Co když jsem se rozhodl tě udat?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"V pořádku. Můžeš mi něco vytisknout?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"A co bys řekl? 'Pane, zabil jsem člena Božích lidí a vyhodil do vzduchu jeho smrtící stroj a pak jsem se pokoušel přidat se k Anarchistům, ale chtěli po mně, abych zabil dalšího člověka a já jsem nechtěl. Běž je zadržet! Já jsem nevinný!' Promiň, troubo. Doufám, že nejsi tak stupidní, aby sis myslel, že ti to zbaští. Teď běž."~ */
  IF ~~ THEN REPLY #65463 /* ~"Jasně. Sbohem."~ */ JOURNAL #65464 /* ~Zeptal jsem se Penna co udělá, když ho udám. Předložil mi však proti této myšlence pádné argumenty. Myslím, že ho tedy prozatím nechám jít.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~Přímo se na tebe zadíval. "Když se zbavíš genasi, potom ti vytisknu co budeš chtít. Do té doby mě však neruš."~ */
  IF ~~ THEN REPLY #65465 /* ~"Co když jsem se rozhodl tě udat?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"Jasně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"Teď jsi prokázal své schopnosti." Podal ti ruku a ty jsi ji přijal. "Vítám tě do svého sklepení. Když potřebuješ odpočinek, kouzla, nebo podobné hračky, které by ti venku pomohly, promluv si ve skladišti se jménem Sklepení Devátého světa s Leenou nebo Conallem. Je to hned za rohem. Heslo zní 'úpadek'. Ještě něco chceš vědět?"~ */
  IF ~~ THEN REPLY #65467 /* ~"Řekni mi o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"Jaké máš plány?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"Ano, mám zepár otázek..."~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"Co chceš vědět?"~ */
  IF ~~ THEN REPLY #65471 /* ~"Jak je tato organizace zřízena?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"Jak se ti dostane pomoci z jiných kobek?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"Kde jsou vaše safehouses?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"Co když potřebuji pomoc?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"Mám nějaké další otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"V to doufám. A také doufám, že tě požádala, aby ses zbavil toho Vortena. Už mě s ním sere pěkně dlouho."~ */
  IF ~~ THEN REPLY #65477 /* ~"Err... správně. Chtěl bych se něco zeptat o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"Správně. Chtěl bych se něco dalšího zeptat..."~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"Oh. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"Jsem si jistý, že to skoro najdeš. Doufejme, že již brzy přijde k vyvrcholení. Teď se s tím ještě netrap."~ */
  IF ~~ THEN REPLY #65480 /* ~"Fajn. Řekni mi něco o organizaci."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"Fajn. Odpověz mi, prosím tě, na pár otázek."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"Síla takového druhu revoluce spočívá v tom, že lidi se *musí* udržovat v dezinformovanosti. Operujeme v oddělených kobkách s minimálním kontaktem s hlavou frakce. Tak je pro jiné frakce těžší nás zničit, zastavit naše aktivity. Když zničí jednu kobku, nenajdou další, ledaže by měli velké štěstí. Lidé si nemohou být rovný do té doby, než neuspějeme v našem poslání , nebo než se neprokážou."~ */
  IF ~~ THEN REPLY #65483 /* ~"Chtěl bych se něco dalšího zeptat o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"Mám nějaké další otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"Máme systém. Máme jistý druh spojení pomocí kterého víme o všech s minimálními kontakty. A slova tečou okolo nás, když se objeví něco, co musí být spraveno. Samozřejmé vše důkladně prověříme a až pak vyšleme pomoc. Když jsme roztroušeni vypadá to, že nás je málo, ale je nás víc než si ostatní frakce myslí ."~ */
  IF ~~ THEN REPLY #65486 /* ~"Chtěl bych se něco dalšího zeptat o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"Mám nějaké další otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"Náš současný domov, jak jsem ti předtím řekl, je Sklepení devátého světa. Moji lidé se tam teď tváří jako robotníci. Promluv si s Leenou, řekni jí heslo a budeš přijat."~ */
  IF ~~ THEN REPLY #65489 /* ~"Chtěl bych se něco dalšího zeptat o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"Mám nějaké další otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"Díky. Sbohem."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"Když budeš potřebovat pomoc, budeme o tom vědět. Když budeme moct, okamžitě ti ji pošleme. Nehledej ji. Neměj strach, ona si najde tebe. Pomoc od členů může přijít po velmi spletitých cestách."~ */
  IF ~~ THEN REPLY #65492 /* ~"Chtěl bych se něco dalšího zeptat o organizaci..."~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"Mám nějaké další otázky..."~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"Oh, bože. Znovu jsi mi přišel vyhrožovat?" Vypadá absolutně lhostejně.~ */
  IF ~~ THEN REPLY #65495 /* ~"Teleportuj mě jako předtím a já tě zabiji."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"Jaks mě teleportoval?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"Mám nějaké další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"Právě teď ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"Chceš něco konkrétního, nebo jen mrhat mým časem?"~ */
  IF ~~ THEN REPLY #65499 /* ~"Mám nějaké další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"Vážně ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"Obchodní tajemství. Vážně jsi něco chtěl anebo jsi přišel jen robit kravál?"~ */
  IF ~~ THEN REPLY #65501 /* ~"Varuji tě, nezkoušej to znova."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"Mám nějaké otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"Ne. Sbohem."~ */ EXIT
END

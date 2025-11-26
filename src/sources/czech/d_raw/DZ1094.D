// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1094.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1094~

IF ~  Global("Asonje","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6562 /* ~Tato chodící mrtvola má na čele vyřezáno číslo "1094". Ústa má sešita a kolem ní se povaluje chemický pach čerstvého formaldehydu. Navzdory bledým, propadlým rysům a neživým mléčným očím je jasné, že to byl kdysi pohledný mladík.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6565 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6566 /* ~"Tak... je tam dál vidět něco zajímavého?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6567 /* ~"Vím, že nejsi zombie, jasný? Mě neoklameš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6568 /* ~Použij svou schopnost Kosti vyprávějte na mrtvolu.~ */ DO ~SetGlobal("Asonje","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6569 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #6570 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6563 /* ~Mrtvola na tebe stále zírá.~ */
  IF ~~ THEN REPLY #6571 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6564 /* ~Mrtvola se na chvíli zachvěla, jak ještě jednou vnikl duch do této opuštěné smrtelné skořápky. Na vteřinu se v očích zombie objevilo zdání života a začala se kolem sebe rozhlížet s výrazem zvědavé rozpačitosti v obličeji. Celé tělo teď vypadá, jako by bylo obklopeno jemnou, zlatou aurou.~ */
  IF ~~ THEN REPLY #6572 /* ~"Rád bych se tě na něco zeptal..."~ */ GOTO 3
  IF ~~ THEN REPLY #9246 /* ~Opusť ducha.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9224 /* ~Náhle se zdá, že tě duch konečně bere na vědomí. Velice vřele a přátelsky se na tebe usmál, čímž očividně překvapil všechny stehy kolem své pusy natolik, že popraskaly úžasem. Do jeho očí se poté vedral udivený výraz a duch si svými prsty přejel přes rty, načež pokrčil rameny a kývl hlavou na pozdrav. "Kde... kde to jsem? Jaké to podivné místo. Z... znám tě?" Z jeho vyschlého hrdla se ozvalo mírné zakašlání.~ */
  IF ~~ THEN REPLY #9247 /* ~"Hele, duchu, *ty* budeš odpovídat na *moje* otázky. Jasný?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Asonje_1","GLOBALGood",-1)
SetGlobal("Asonje","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #9248 /* ~"Jsi... teda aspoň tvoje ostatky... v márnici."~ */ GOTO 13
  IF ~~ THEN REPLY #9249 /* ~"Ne, nemyslím, že bys mě znal. A teď bych pro tebe měl pár otázek..."~ */ GOTO 14
  IF ~~ THEN REPLY #9250 /* ~"No, to je důvod k zamyšlení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9225 /* ~Duchovo přátelské chování se během okamžiku vypařilo. Na moment se na tebe zamračil, z jeho zchřadlých šedých rtů mu visely cáry rozervaných stehů. "Jak myslíš, ptej se na co chceš." Zadíval se do prázdna, očividně znuděný.~ */
  IF ~~ THEN REPLY #9251 /* ~"Kdo vlastně jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #9252 /* ~"Odkud pocházíš?"~ */ GOTO 6
  IF ~~ THEN REPLY #9253 /* ~"Jak ses sem dostal? Tím myslím tvoje tělo."~ */ GOTO 7
  IF ~~ THEN REPLY #9254 /* ~"Kde jsi... kde tvá duše spočívá... teď?"~ */ GOTO 8
  IF ~~ THEN REPLY #9255 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9256 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9257 /* ~"Vlastně už nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #9226 /* ~"Jmenuju se Asonje. Už můžu jít?"~ */
  IF ~~ THEN REPLY #9258 /* ~"Nemůžeš, chci se tě totiž na něco zeptat..."~ */ GOTO 11
  IF ~~ THEN REPLY #9259 /* ~"Víc už od tebe nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 11.1
  SAY #9227 /* ~"Nemůžu si vzpomenout. Ještě něco dalšího?"~ */
  IF ~~ THEN REPLY #9260 /* ~"Ano. Několik dalších otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #9261 /* ~"Víc už od tebe nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 11.2
  SAY #9228 /* ~Duch pokrčil rameny a zadíval se do neznáma. "To nedovedu říct. Z jakých příčin? Nevím." Pevně sevřel své rty a nešťastně se na tebe podíval, v očích se mu zlostně zablesklo. "Potřebuješ ode mne ještě něco jiného?"~ */
  IF ~~ THEN REPLY #9262 /* ~"Ano. Několik dalších otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #9263 /* ~"Víc už od tebe nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 11.3
  SAY #9229 /* ~"Má duše existuje v Arborei..." Na chviličku se odmlčel, pevně pohroužen do svých myšlenek. "A teď bych si přál vrátit se zpět do mého domova. Pryč od tvého sobectví, netaktnosti a otravných otázek. Můžu tedy jít?"~ */
  IF ~~ THEN REPLY #9264 /* ~"Nemůžeš, chci se tě totiž na něco zeptat..."~ */ GOTO 11
  IF ~~ THEN REPLY #9265 /* ~"Ano, můžeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 11.4
  SAY #9230 /* ~Byl jsi obdarován popudlivým pohledem. "Samozřejmě že nic!" Zatřásl znuděně hlavou, rozervané stehy se mu houpaly na rtech.~ */
  IF ~~ THEN REPLY #9266 /* ~"A jak se tedy tvoje mrtvola dostala k práci tady?"~ */ GOTO 12
  IF ~~ THEN REPLY #9267 /* ~"Mám ještě další otázečku..."~ */ GOTO 11
  IF ~~ THEN REPLY #9268 /* ~"Víc už od tebe nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.5 11.5
  SAY #9231 /* ~"Ne." Začínáš mít dojem, že o tebe duše nemá ani prachbídný zájem.~ */
  IF ~~ THEN REPLY #9269 /* ~"Tak se tě ještě na něco zeptám..."~ */ GOTO 11
  IF ~~ THEN REPLY #9270 /* ~"Víc už od tebe nepotřebuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
  SAY #9232 /* ~Na tvá slova si duch dlouze povzdychl, čímž nasytil okolní vzduch další dávkou formaldehydu přímo ze svých plic. "Ano, ano... jen se ptej."~ */
  IF ~~ THEN REPLY #9271 /* ~"Kdo vlastně jsi?"~ */ GOTO 5
  IF ~~ THEN REPLY #9272 /* ~"Odkud pocházíš?"~ */ GOTO 6
  IF ~~ THEN REPLY #9273 /* ~"Jak ses sem dostal? Tím myslím tvoje tělo."~ */ GOTO 7
  IF ~~ THEN REPLY #9274 /* ~"Kde jsi... kde tvá duše spočívá... teď?"~ */ GOTO 8
  IF ~~ THEN REPLY #9275 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9276 /* ~"Neznáš náhodou člověka jménem Pharod?"~ */ GOTO 10
  IF ~~ THEN REPLY #9277 /* ~"Vlastně už nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #9233 /* ~"Mám stejné otázky jako tvá prostá mysl. Pokud dovolíš, vrátím se zase zpět tam, kam patřím."~ */
  IF ~~ THEN REPLY #9278 /* ~"Ne. Mám pro tebe další otázku..."~ */ GOTO 11
  IF ~~ THEN REPLY #9279 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.1
  SAY #9234 /* ~Po tvých slovech se zmateně rozhlédl, ale pak se zasmál. "Ano! Tak to už dává smysl?, ne? A teď - znám tě?" Naklonil hlavu na jednu stranu a intenzivně se do tebe zahleděl. Hádání tvé pravé identity nejspíš považuje za nějakou zábavnou hru.~ */
  IF ~~ THEN REPLY #9280 /* ~"O tom velice pochybuju. A teď, chtěl bych se tě na něco zeptat..."~ */ GOTO 14
  IF ~~ THEN REPLY #9281 /* ~"To je důvod k zamyšlení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.2 13.0
  SAY #9235 /* ~Duch pokrčil rameny a mírně se pousmál. "Nejspíš máš pravdu! Takže... na co ses mě chtěl zeptat?" S nepřítomným pohledem si začal vytahovat zbylé stehy ze rtů a házet je na zem, jeden za druhým. ~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9282 /* ~"Kdo vlastně jsi?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9286 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~~ THEN REPLY #9287 /* ~"Odkud pocházíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #9288 /* ~"Jak ses sem vlastně dostal? Tím myslím tvoje tělo."~ */ GOTO 17
  IF ~~ THEN REPLY #9317 /* ~"Kde jsi... kde tvá duše spočívá... nyní?"~ */ GOTO 18
  IF ~~ THEN REPLY #9318 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9319 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ GOTO 20
  IF ~~ THEN REPLY #9320 /* ~"Vlastně už nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 22.0
  SAY #9236 /* ~"Jmenoval jsem se Asonje. Mohl bych vědět, jak ty?"~ */
  IF ~~ THEN REPLY #9289 /* ~"Já... já nevím."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #9290 /* ~"To ti povím někdy jindy. Teď se chci zeptat na něco jiného..."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #9291 /* ~"Dozvíš se to někdy jindy. Sbohem."~ */ DO ~SetGlobal("Asonje","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 22.2
  SAY #9237 /* ~"Jsem z mnoha míst! Ale abych pravdu řekl, kde jsem se narodil, to sám nevím. Ve svém životě jsem mnoho cestoval a mnoha místům jsem říkal domov. Teď tak říkám Aborei..." Zdá se velmi spokojen.~ */
  IF ~~ THEN REPLY #9292 /* ~"Aha. Mám ještě další otázky..."~ */ GOTO 22
  IF ~~ THEN REPLY #9293 /* ~"Už tě nebudu déle otravovat. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.3
  SAY #9238 /* ~Ze rtů se mu náhle vypařil smích a duch se na tebe zadíval se znepokojeným pohledem. "To je hrozné... já nevím! Vlastně ani nevím, jak jsem umřel." Pokrčil rameny. "A není to nakonec jedno?" Jeho tváři opět dominuje úsměv typu 'sýýýýr' a tobě začíná docházet, proč měl sešité rty.~ */
  IF ~~ THEN REPLY #9294 /* ~"Měl bych ještě další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #9295 /* ~"Už tě nebudu déle otravovat. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.4 22.3
  SAY #9239 /* ~"Na místě zvaném Arborea! Je to nejúžasnější místo, jaké si dovedeš představit. Nikdy za svého života jsem neviděl tak klidné a mírumilovné místo. Tak... tak nádherné..." Na okamžik se odmlčel, ztracen v osidlech svých vzpomínek. "Ta krása té země, těch lidí -- velkolepá. Povím ti, opravdu už mi začíná scházet!"~ */
  IF ~~ THEN REPLY #9296 /* ~"Aha. Můžu se tě zeptat ještě na něco?"~ */ GOTO 22
  IF ~~ THEN REPLY #9297 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.5 22.4
  SAY #9240 /* ~"Skoro nic. Ze srandy jsem jisté Spalovačce podepsal smlouvu... vyprávěla mi něco o nějakém hrozném místě a pověděla, že si z mojí mrtvoly udělají pomocníka. Řekl jsem si 'vždyť tohle tělo stejně nebudu v příštím životě potřebovat, tak proč ne? Vezmu si to stříbro a utratím ho za nějaké dobré víno nebo ženu'. Pousmál se a v jeho očích vzplanuly radostné plamínky.~ */
  IF ~~ THEN REPLY #9298 /* ~"Nevíš náhodou něco o městě mimo Márnici?"~ */ GOTO 24
  IF ~~ THEN REPLY #9299 /* ~"Mohl bych se tě zeptat na pár dalších věcí?"~ */ GOTO 22
  IF ~~ THEN REPLY #9300 /* ~"Už tě nebudu déle otravovat. Měj se."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.6 22.5
  SAY #9241 /* ~Duch se na chviličku zamyslel. "Ne, obávám se, že o něm jsem nikdy neslyšel. To je nějaký tvůj přítel?"~ */
  IF ~~ THEN REPLY #9301 /* ~"Asi ano. Ještě na něco bych se tě rád zeptal..."~ */ GOTO 22
  IF ~~ THEN REPLY #9302 /* ~"To ještě nevím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0
  SAY #9242 /* ~Zaujatě na tebe pohleděl. "To je divné. Ale přece ti musím nějak říkat, ne?" Tentokrát se na tebe podíval s netrpělivostí v očích.~ */
  IF ~~ THEN REPLY #9303 /* ~"Tak si něco vymysli. Teď bych se tě rád na něco zeptal..."~ */ GOTO 22
  IF ~~ THEN REPLY #9304 /* ~Vymysli si jméno: "Já si nevzpomínám... snad 'Adahn?'"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #9305 /* ~"To přece není důležité. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
  SAY #9243 /* ~"Jak si přeješ. Jen se ptej!" Spokojeně se usmál a trpělivě očekával tvůj další dotaz. Ani poslední stehy už nevydržely jeho úsměv, který ti už nepřipadá tak zvláštní, jak dříve.~ */
  IF ~  !Global("Asonje","GLOBAL",2)
~ THEN REPLY #9306 /* ~"Kdo vlastně jsi?"~ */ GOTO 15
  IF ~  Global("Asonje","GLOBAL",2)
~ THEN REPLY #9307 /* ~"Kdo vlastně jsi?"~ */ GOTO 25
  IF ~~ THEN REPLY #9308 /* ~"Odkud pocházíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #9309 /* ~"Jak ses sem vlastně dostal. Myslím tvoje tělo."~ */ GOTO 18
  IF ~~ THEN REPLY #9310 /* ~"Kde jsi... kde tvá duše spočívá... nyní?"~ */ GOTO 19
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9311 /* ~"Co všechno víš o tomto místě?"~ */ GOTO 20
  IF ~~ THEN REPLY #9312 /* ~"Neznáš náhodou někoho jménem Pharod?"~ */ EXIT
  IF ~~ THEN REPLY #9321 /* ~"Vlastně už nic nepotřebuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #9244 /* ~Když viděl, jak se tváříš, od plic se zasmál. "Tak přece! Takže Adahn, povídáš, příteli. Takže Adahne, máš pro mě snad nějakou otázku?"~ */
  IF ~~ THEN REPLY #9313 /* ~"Ano, jedna by se našla..."~ */ GOTO 22
  IF ~~ THEN REPLY #9314 /* ~"Ne, už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.0
  SAY #9245 /* ~"O Sigilu?" Když jsi přikývl, úsměv mrtvoly se roztáhl ještě více. "No, o tohle tě nepřipravím! Jen běž a prozkoumej ho sám! Ztrať se v ulicích, v hospodách, v lidech... ale dávej pozor! Sigil dokáže být nebezpečný stejně jako podivuhodný. Ale to ho přece dělá zajímavým, ne?"~ */
  IF ~~ THEN REPLY #9315 /* ~"Jo, taky si myslím. Ale teď bych se tě chtěl zeptat na něco jiného..."~ */ GOTO 22
  IF ~~ THEN REPLY #9316 /* ~"Asi ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 14.1 22.1
  SAY #9283 /* ~"Jmenoval jsem se Asonje."~ */
  IF ~~ THEN REPLY #9284 /* ~"Měl bych ještě další otázku..."~ */ GOTO 22
  IF ~~ THEN REPLY #9285 /* ~"Tak to je prozatím vše. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Asonje","GLOBAL",0)
GlobalLT("Asonje","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #20061 /* ~"Zas zpátky, hmm?" Široce se usmál.~ */
  IF ~~ THEN REPLY #20063 /* ~"Mám pár otázek..."~ */ GOTO 22
  IF ~~ THEN REPLY #20064 /* ~"Jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~  Global("Asonje","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #20062 /* ~"Oh, ty... zase." Zamračil se a sklopil pohled stranou.~ */
  IF ~~ THEN REPLY #20065 /* ~"Mám pár otázek..."~ */ GOTO 11
  IF ~~ THEN REPLY #20066 /* ~"Jenom procházím kolem. Sbohem."~ */ EXIT
END

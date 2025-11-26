// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEK~

IF ~  Global("Know_Tek","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #58197 /* ~Vidíš humanoidní stvoření pokrtyté bizardními šupinami. Má velká křídla a chápavý ocas. Pobaveně tě sleduje.~ */
  IF ~~ THEN REPLY #58198 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #58199 /* ~Ignoruj stvoření.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58200 /* ~Zasmál se, pak na tváři vyloudil něco podobného úsměvu. "Ano... já tě taky zdravím, malý človíčku."~ */
  IF ~~ THEN REPLY #58201 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58202 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.2 8.0 9.2 11.1 12.1 13.1 14.1 17.1 18.1 19.1 21.1 22.0 26.1 27.1 29.1 30.0
  SAY #58203 /* ~"Jen se ptej..." Pobaveně se usmívá.~ */
  IF ~~ THEN REPLY #58204 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #58205 /* ~"Co jsi zač?"~ */ GOTO 5
  IF ~~ THEN REPLY #58206 /* ~"Co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #58207 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 13
  IF ~  Global("AR0800_Visited","GLOBAL",0)
~ THEN REPLY #58208 /* ~"Co mi můžeš říct o Curstu?"~ */ GOTO 15
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",0)
~ THEN REPLY #58209 /* ~"Co se stalo s Curstem? Proč ty změny?"~ */ GOTO 23
  IF ~  Global("AR0800_Visited","GLOBAL",1)
Global("Know_Curst_Cure","GLOBAL",1)
~ THEN REPLY #58210 /* ~"Co se stalo s Curstem? Proč ty změny?"~ */ GOTO 28
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #58211 /* ~"Jako Boží Člověk vím, že pracuješ ve Slévárně na jednom zařízení. Můžeš mi o něm něco říct?"~ */ GOTO 29
  IF ~~ THEN REPLY #58212 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58213 /* ~Chvíli uvažuje nad tvou otázkou. "Mé jméno není důležité. Pokud by pro tebe existoval důvod znát ho, tak bys ho znal." Odmlčel se. "Pokud ale ke mně chceš přiřadit nějaké jméno, můžeš mi říkat Tek'elach." Stvoření se usmálo.~ */
  IF ~~ THEN REPLY #58214 /* ~"Co je to za jméno?"~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #58215 /* ~"Mám nějaké otázky..."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58216 /* ~"Sbohem."~ */ DO ~SetGlobal("Know_Tek","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58217 /* ~"Jediné, které se ode mně dozvíš..." Upřeně se na tebe dívá.~ */
  IF ~~ THEN REPLY #58218 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58219 /* ~"Myslím, že bych měl jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #58220 /* ~Položil hlavu na stranu a zamyšleně se na tebe zadíval. "Co jsem? Hm... opravdu to potřebuješ vědět?" Odmlčel se a přemýšlí. "Myslím, že to žádnou škodu neudělá. Pokud vím, tvůj druh mě označuje jako vyššího baatezu... jmenovitě cornugon."~ */
  IF ~~ THEN REPLY #58221 /* ~"Ty jsi vyšší baatezu?"~ */ GOTO 6
  IF ~~ THEN REPLY #58222 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58223 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58224 /* ~"Ano... překvapuje tě to?" Dívá se na tebe s očekáváním.~ */
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #58225 /* ~"Nevidím důvod, proč bys tady měl být. Nemáš bojovat v nějaké Válce krve nebo tak něco?"~ */ GOTO 7
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #58226 /* ~"Nevidím důvod, proč bys tady měl být. Neměl bys dělat něco jiného?"~ */ GOTO 9
  IF ~~ THEN REPLY #58227 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58228 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58229 /* ~Zamračilo se to na tebe. "Ano... je tady Válka Krve. Ale, ta je pro mne teď velice vzdálená a není nutné o ní mluvit..."~ */
  IF ~~ THEN REPLY #58230 /* ~"Proč ne?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 10.0 12.0 14.0
  SAY #58231 /* ~"Protože to já nechci... pro teď." Dívá se na tebe rozzlobeně.~ */
  IF ~~ THEN REPLY #58232 /* ~"Aha. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58233 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58234 /* ~Zmateně se na tebe podíval. "Něco Jiného? Že bys mluvil o Válce Krve?"~ */
  IF ~~ THEN REPLY #58235 /* ~"Co je to Válka Krve?"~ */ GOTO 10
  IF ~~ THEN REPLY #58236 /* ~"Ne přímo válka, ale cokoli jiného, než jenom tak posedávat tady v chodbě."~ */ GOTO 11
  IF ~~ THEN REPLY #58237 /* ~"To nic, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58238 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 29.0
  SAY #58239 /* ~Chvíli přemýšlí nad tvou otázkou, když už jsi přesvědčený, že ti neodpoví, promluvil. "Válka Krve je... taková šarvátka, která je mezi námi a tanar'ri. Není nijak důležitá a není nutné se o ní dál vybavovat."~ */
  IF ~~ THEN REPLY #58240 /* ~"A to proč?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 2.2 9.1
  SAY #58241 /* ~"Mé důvody, proč být tady, jsou mé vlastní. Nevidím důvod, proč by tě to mělo zajímat." Vědoucně se na tebe usmál. "Doporučuju ti změnu tématu."~ */
  IF ~~ THEN REPLY #58242 /* ~"Nerozumím tomu, proč ta tajnost. Mám takový pocit, jakoby se tady dělo ještě něco dalšího."~ */ GOTO 12
  IF ~~ THEN REPLY #58243 /* ~"Dobrá, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58244 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #58245 /* ~Překvapeně se na tebe podíval. "Že by? Nebo ses rozhodl, že si mé slova a mé činy vyložíš podle svého? Ať tak či tak, na tvou otázku jsem už odpověděl. Už o tom nebudu dál mluvit."~ */
  IF ~~ THEN REPLY #58246 /* ~"Proč?"~ */ GOTO 8
  IF ~~ THEN REPLY #58247 /* ~"Dobrá, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58248 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #58249 /* ~"Co se k tomu dá říct?" Mávl rukou kolem. "Podívej se sám. Všechno je tady."~ */
  IF ~~ THEN REPLY #58252 /* ~"Nemůžu si pomoct, ale mám pocit, že se tady děje víc, než se dá vidět na vlastní oči..."~ */ GOTO 14
  IF ~~ THEN REPLY #58253 /* ~"Aha... Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58254 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58250 /* ~Překvapeně se na tebe podíval. "Vážně? Jsi paranoidní, nebo tak podezřívavý? Ať tak či tak, na tvou otázku jsem už odpověděl. Už o tom nebudu dál mluvit."~ */
  IF ~~ THEN REPLY #58251 /* ~"Proč?"~ */ GOTO 8
  IF ~~ THEN REPLY #58255 /* ~"Dobrá, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58256 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #58257 /* ~Zamračil se a popřemýšlel nad tvou otázkou. "Je to opuštěné místo... místo zrady a chaosu... město vyvážené na hranici katastrofy. Dávej si pozor, při cestách kolem."~ */
  IF ~~ THEN REPLY #58258 /* ~"Vyvážené na hranici katastrofy?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58259 /* ~Povzdychl si a odvrátil pohled. "Je to *hraniční* město, človíčku. Na jedné straně jsou pustiny, na druhé straně je Sféra Carceri. Dokud je v Curstu udržován status quo, zůstane Curst hraničním městem." Pro efekt se odmlčel.~ */
  IF ~~ THEN REPLY #58260 /* ~"Pokračuj."~ */ DO ~SetGlobal("Know_Curst_Cure","GLOBAL",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58261 /* ~"Kdyby se věci ve městě dostaly mimo kontrolu, sklouzlo by do Carceri a splynulo by se sférou. Když tu bude moc pořádku, město sklouzne do Pustin." Pokrčil rameny. "Tak už to chodí na takových místech."~ */
  IF ~~ THEN REPLY #58262 /* ~"Takže říkáš, že město by mohlo být... přestěhováno?"~ */ GOTO 18
  IF ~~ THEN REPLY #58263 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58264 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58265 /* ~Výsměšně se zašklebil. "Ano..."~ */
  IF ~~ THEN REPLY #58266 /* ~"Kdyby se to mělo stát, co by se s tím dalo dělat?"~ */ GOTO 19
  IF ~~ THEN REPLY #58267 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58268 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58269 /* ~Pokrčil rameny. "Zjisti, na kterou stranu město sklouzlo a zapracuj na druhé straně. Moc pořádku? Přidej nějaký chaos. Málo pořádku? Postarej se o zákon." Usmál se na tebe. "Když se budeš dostatečně snažit, možná se ti podaří stáhnout město zpátky na hranici... nebo na druhou stranu."~ */
  IF ~~ THEN REPLY #58270 /* ~"Moc jsi mi pomohl... Což mě přivádí k další otázce... Proč?"~ */ GOTO 20
  IF ~~ THEN REPLY #58271 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58272 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 27.0
  SAY #58273 /* ~Zmateně se na tebe podíval. "Proč co?"~ */
  IF ~~ THEN REPLY #58274 /* ~"Vy baatezu máte být inkarnací zla. Proč mi tolik pomáháš?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58275 /* ~Zasmál se. "Nespleť si mou pomoc s laskavostí. Pomáhám ti, protože to poslouží mým záměrům... nic víc."~ */
  IF ~~ THEN REPLY #58276 /* ~"Jak to, že mi pomůžeš, poslouží tvým záměrům?"~ */ GOTO 22
  IF ~~ THEN REPLY #58277 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58278 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #58279 /* ~"Jak asi..." Dál se na tebe usmívá.~ */
  IF ~~ THEN REPLY #58280 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58281 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.5 28.0
  SAY #58282 /* ~Povzdychl si a podíval se stranou. "Curst byl hraniční město, vyrovnané mezi dvěma extrémy. Na jedné straně pustiny, na druhé sféra Carceri." Odmlčel se.~ */
  IF ~~ THEN REPLY #58283 /* ~"Ano, tomu rozumím. Co tak rozhodilo rovnováhu, že město sklouzlo do Carceri?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58284 /* ~Pokrčil rameny. "Trias. To on to způsobil. Kvůli němu choas zvítězil a město sklouzlo do Carceri... a tam taky zůtane, pokud se nestane něco velice dramatického..."~ */
  IF ~~ THEN REPLY #58285 /* ~"Co se dá dělat?"~ */ GOTO 25
  IF ~~ THEN REPLY #58286 /* ~"Trias? Co ten s tím má společného?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 24.0 31.0
  SAY #58287 /* ~Pokrčil rameny. "Zjisti, na kterou stranu město sklouzlo a zapracuj na druhé straně. Moc pořádku? Přidej nějaký chaos. Málo pořádku? Postarej se o zákon." Usmál se na tebe. "Když se budeš dostatečně snažit, možná se ti podaří stáhnout město zpátky na hranici... nebo na druhou stranu."~ */
  IF ~~ THEN REPLY #58288 /* ~"Říkáš, že by se měl někdo postarat, aby byl ve městě pořádek a zákon?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #58289 /* ~Usmál se na tebe. "Ano... přesně to říkám."~ */
  IF ~~ THEN REPLY #58290 /* ~"Pomůžeš mi s tím?"~ */ GOTO 27
  IF ~~ THEN REPLY #58291 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58292 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #58293 /* ~Než odpověděl, upřeně tě pozoruje. "Ano... věřím, že je v mém zájmu pomoci ti. Já i mi služebníci ti rádi pomůžeme."~ */
  IF ~~ THEN REPLY #58294 /* ~"Moc jsi mi pomohl... Což mě přivádí k další otázce... Proč?"~ */ GOTO 20
  IF ~~ THEN REPLY #58295 /* ~"Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58296 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.6
  SAY #58297 /* ~Pokrčil rameny. "Přesně to, co jsem ti řekl při našem posledním hovoru."~ */
  IF ~~ THEN REPLY #58298 /* ~"Co to bylo?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 29 // from: 2.7
  SAY #58299 /* ~"Ty jsi Boží Člověk?" Podíval se na tebe s respektem. "Kvůli tvému zasvěcení ti odpovím. Mí nadřízení nařídili stavbu zařízení. Je to zbraň která bude použita ve Válce Krve."~ */
  IF ~~ THEN REPLY #58300 /* ~"Co je to Válka Krve?"~ */ GOTO 10
  IF ~~ THEN REPLY #58301 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58303 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~  Global("Know_Tek","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #58306 /* ~Vidíš cornugona Tek'elacha. Pobaveně se usmál. "Tak se zase setkáváme, človíčku. Co chceš?"~ */
  IF ~~ THEN REPLY #58307 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58309 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.1
  SAY #58310 /* ~Povzdychl si. "Trias je agent Chaosu. Odsoudili ho do vězení z dobrých důvodů. Naneštěstí ho nějaký pitomec uvolnil, takže mohl ve městě začít vyvádět." Odmlčel se a znovu si povzdychl. "Poslali mě sem, abych na něj dával pozor."~ */
  IF ~~ THEN REPLY #58311 /* ~"Takže co se dá dělat?"~ */ GOTO 25
END

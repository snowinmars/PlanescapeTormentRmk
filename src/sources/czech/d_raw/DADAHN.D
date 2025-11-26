// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADAHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DADAHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3015 /* ~Muž před tebou má velké oči a velice štíhlou postavu. Vypadá zmateně a zjevně má tak trochu obavy z ostatní návštěvníku baru, ale zjevně se mu velice ulevilo, když uviděl tebe.~ */
  IF ~~ THEN REPLY #3016 /* ~"Zdravím?"~ */ GOTO 1
  IF ~~ THEN REPLY #13301 /* ~Ignorovat toho muže a odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11268 /* ~Zašklebil se a zakoulel očima ve výrazu 'no neuvěříš, co se mi přihodilo', který ti připadá podivně známý. "Konečně, příteli! Už jsem se bál, že na tebe budu čekat celý den!"~ */
  IF ~~ THEN REPLY #13302 /* ~"Uh... já tě znám?"~ */ DO ~SetGlobal("Know_Adahn","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11269 /* ~"No, ano." Zašilhal na tebe. "Alespoň si to myslím. Já... uh... no... Nemůžu si na všechno vzpomenout, ale..." Zamyšleně se zamračil, pak pokrčil rameny. "...no, rád tě vidím. Já jsem Adahn. Jsme přátelé, aspoň co vím. Skvělé! Hodilo by se mi více přátel, jako jsi ty..." Zmateně se rozhlédl kolem. "Jelikož nikoho kolem neznám, a ani nevím, jak jsem se sem dostal."~ */
  IF ~~ THEN REPLY #13303 /* ~"Odkud jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #13304 /* ~"Adahn byl jeden z těch, které jsem stvořil. Nemyslím si, že by tam byl někdo další s podobným jménem."~ */ GOTO 5
  IF ~~ THEN REPLY #13305 /* ~"Dobře, musím odejít. Sbohem... Adahne."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13289 /* ~Adahn vypadá překvapeně, a jeho zmatek se obnovuje. "Já...  hmmnnn." Mračí se. "Dobrá, nejsem odtud, nevěřím...  nebo...? Myslím že bych se měl vrátit na své místo. Skutečně ale nevím odkud jsem, nebo kde patřím..."~ */
  IF ~~ THEN REPLY #13306 /* ~"ty víš, kdo jsem?"~ */ GOTO 4
  IF ~~ THEN REPLY #13307 /* ~"Dobře, musím odejít. Sbohem... Adahne."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #13290 /* ~"An... starý příteli?" Jeho hlas zní jako padající voda. "Nejsi?"~ */
  IF ~~ THEN REPLY #13308 /* ~"Jasně, jasně, Jsem. můžu se tě ještě na něco zeptat..."~ */ GOTO 7
  IF ~~ THEN REPLY #13309 /* ~"Ne úplně. Adahn byl jeden z těch, které jsem stvořil. nemyslím, že tam byl někdo jiný s podobným jménem, alespoň ne můj přítel."~ */ GOTO 5
  IF ~~ THEN REPLY #13310 /* ~"Dobře, to bylo zajímavé, Adahne, ale musím odejít. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #13291 /* ~"Skutečně?" Krčí se, jako by to nebylo důležité. "Dobrá, Nevěřím, že jsem to udělal, takže tady nemám žádné problémy... nebo mám? Myslím, proto jsem. Myslím." Vypadá bezradně. "Nemyslíš si to také?"~ */
  IF ~~ THEN REPLY #13311 /* ~"Zní to pravdivě. Můžu je ještě na něco zeptat..."~ */ GOTO 7
  IF ~~ THEN REPLY #13312 /* ~"Opravdu, Nemyslím, že jsem to zamýšlel udělat. Je možné, že jsi jenom výmysl mé fantazie?"~ */ GOTO 6
  IF ~~ THEN REPLY #13313 /* ~"Dobrá, to bylo zajímavé, Adahne, ale musím už jít. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #13292 /* ~Adahn vypadá překvapeně, je na to co říci, pak náhle mizí ve vzduchu.~ */
  IF ~~ THEN REPLY #36923 /* ~"Uh... sbohem tedy."~ */ DO ~DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #13293 /* ~"Oh, a já mám něco pro tebe, také..." Mračí se . "Vyloučit to nemůžu." Krčí se. "Otázky - kdo je potřebuje? Vše na čem záleží jsou odpovědi. Myslím."~ */
  IF ~~ THEN REPLY #13314 /* ~"Dobrá, to bylo zajímavé, Adahne, ale musím už jít. Sbohem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1 4.2 5.2 7.0
  SAY #13294 /* ~"Hej...  oh..." Mračí se. "Podívej, předtím, než odejdeš, nebo uletíš pro tebe něco mám...  alespoň si myslím..."~ */
  IF ~~ THEN REPLY #13315 /* ~"Co to je?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #13295 /* ~"Nejsem si jistý." Strká ruce do kapes a mračí se. "Kapsy jsou příliš malé" Škrábajíc se na hlavě pokračuje. "Možná..." Vyhrne si rukávy, nejdříve levý, pak pravý a vypadá naštvaně a pak si je nechá znova spustit dolů.~ */
  IF ~~ THEN REPLY #13316 /* ~"Ty jsi to ztratil?"~ */ DO ~GiveItemCreate("AdRing",Protagonist,1,0,0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13317 /* ~"Proč si zase vyhrnuješ levý rukáv? Myslím, že to tam může být."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13318 /* ~"Proč si zase vyhrnuješ levý rukáv? Myslím, že to tam může být."~ */ DO ~GiveItemCreate("AdRing2",Protagonist,1,0,0)
AddexperienceParty(250)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13296 /* ~"Ne, ne, dej mi minutku." Mumlá si pod fousy, pak si vyhrne rukávy, nejdříve pravý, pak levý. Jak si vyhrnuje levý rukáv, vidíš, že má něco přivázaného na zápěstí. Když to začíná sundávat, ulehčeně se usmívá a podává ti to. "Pro tebe, příteli. Ode mne, pro tebe...  a díky!" Přikývne a ty si to od něj bereš. Zkoumáš to... vypadá to jako prsten. ~ */
  IF ~~ THEN REPLY #13319 /* ~"Díky, Adahne."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 9.1 9.2
  SAY #13297 /* ~"Skutečně?" Znova si vyhrnuje levý rukáv a ty vidíš, že má něco přivázaného k zápěstí. Když si to začíná sundávat, usmívá se na tebe. "pro tebe příteli. Ode mne, tobě...  a opravdu díky!" Přikývne a ty si tu věc od něj bereš. Zkoumáš ji... vypadá to jako nějaký prsten. ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #13320 /* ~"Byly tam nějaké peníze?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #13321 /* ~"Byly tam nějaké peníze?"~ */ DO ~GiveGoldForce(100)
AddexperienceParty(500)
~ GOTO 12
  IF ~~ THEN REPLY #13322 /* ~"Díky, Adahne."~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #13298 /* ~Popadá se za prsty. Ano, to bylo ono, to bylo ono." Shlíží dolů ke svému opasku, tam, kde je vidět jeho vak. Odváže ho a podává ti jej. "Všechno je tam. Sto měďáků." Bereš si vak a otvíráš ho. Vypadá to, že je tam vše.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #13323 /* ~"A co ta kouzelná věc, kterou mi chceš dát?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,16,WIS)
~ THEN REPLY #13324 /* ~"A co ta kouzelná věc, kterou mi chceš dát?"~ */ DO ~GiveItemCreate("AdDagger",Protagonist,1,0,0)
AddexperienceParty(1000)
~ GOTO 13
  IF ~~ THEN REPLY #13325 /* ~"Díky, Adahne."~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #13299 /* ~Vypadá na chvíli bezradně, pak se usměje, jako by si vzpomněl. "Proč, ano, byla tam jedna, nebo ne?" Sahá do rukávu a vytahuje dlouhou, štíhlou dýku. "Tady máš."~ */
  IF ~~ THEN REPLY #13326 /* ~"Díky, Adahne."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 10.0 11.2 12.2 13.0
  SAY #13300 /* ~Když vidíš tenhle dar, musíš Adahnovi poděkovat, náhle však zjišťuješ, že zmizel. Vůbec jsi ho neslyšel odcházet.~ */
  IF ~~ THEN REPLY #36922 /* ~"Uh... sbohem tedy."~ */ DO ~DestroySelf()
~ EXIT
END

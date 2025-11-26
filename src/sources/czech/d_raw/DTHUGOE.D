// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~Vidíš před sebou podezřele vypadajícího chlapíka, který se rýpe v zubech něčím, co vypadá jako malá kovová vidlička. Hruď chlápka je pokrytá záplatovaným brněním zdobeným velkými ostny. Po boku mu visí dlouhý nůž. Všiml sis, že mu chybí pravé ucho..~ */
  IF ~~ THEN REPLY #30184 /* ~"Zdravím."~ */ JOURNAL #28824 /* ~Potkal jsem jednouchého tieflinga, který se skrýval ve stínu poblíž velkého průjezdu, v severní části Úlu. Něco v jeho očích mi napovědělo, že on není nikým, s kým by si bylo radno zahrávat.~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~Jdi dál.~ */ JOURNAL #28824 /* ~Potkal jsem jednouchého tieflinga, který se skrýval ve stínu poblíž velkého průjezdu, v severní části Úlu. Něco v jeho očích mi napovědělo, že on není nikým, s kým by si bylo radno zahrávat.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~Klidně si tě prohlíží, jako by tě odhadoval..~ */
  IF ~~ THEN REPLY #30186 /* ~"Řekl jsem *Z-D-R-A-V-Í-M.* Co je s tebou... druhý ucho ti taky nefunguje?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~Nechej ho být.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~Jednouchý se na tebe výhružně zamračil. "Vodpal, vole... nebo si z tvejch střev upletu podvazky."~ */
  IF ~~ THEN REPLY #30189 /* ~"Jestli potřebuješ podvazky... tak bych tu ňáký měl. Tvoje matka je u mě včera zapomněla."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"Jak jsi přišel o to ucho?"" ~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"Nepřišel jsi náhodou o to své ucho, když jsi okrádal starého muže tady v Úlu?"" ~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~Ignoruj jeho výhružky a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"Co žes to řek?" Jeho pravá ruka sjela k rukojeti nože..~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"Jsem jenom zvědavý. Za každou jizvou je dobrý příběh... a jak můžeš vidět, vím o čem mluvím."" ~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"Myslím, že jsi o to ucho přišel, když jsi tady v Úlu okrádal starého muže."" ~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"Nemám tucha, vo čem to brbleš, vole." Zuřivě na tebe zírá. "A teď ti radim, abys zved tu zdechlinu, kerý říkáš tělo a vodtáh ji pryč z mejch vočí, jináč ti do ní vyřežu svý méno!"~ */
  IF ~~ THEN REPLY #30196 /* ~"Jistě. Jenom mi dej vidličku, kterou jsi mu ukradnul a já půjdu.""~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"Pochybuju, že bys svý jméno dokázal *hláskovat*, natož napsat, ty neschopný kreténe!"" ~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"Hele... proč se na to nevykašleš, dokud ti ještě zbývá jedno ucho?""~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~Bleskovým pohybem vytrhl nůž z pochvy a začal ti s ním výhružně mávat pod nosem. "Proč si ji nezkusíš vzít, hňupe? Si to zkus!" ~ */
  IF ~~ THEN REPLY #30200 /* ~"Jestli si chceš hrát takhle... tak si zatancujeme."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"Měl bys ten nůž schovat. Ublížíš si.""~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"Jó, vypadá to, žes viděl dost sekání, 'žná až moc, jak se tak na tebe čumim." Podařil se mu lehký úšklebek a pak si přejel prsty po jizvě na straně hlavy. "Ale ty máš aspoň vobě ušiska.""~ */
  IF ~~ THEN REPLY #30203 /* ~"Co se stalo?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"Protože nepřepadávám staré dědky s ostrými zuby.""~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"Udělám to. Sbohem.""~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"Před ňákou dobou sem narazil na takovýho prosebnickýho magora..." Tvář se mu zkroutila v mrzutém výrazu, když začal vyprávět příběh. "nemoh sem toho blboňe ani vystát...""~ */
  IF ~~ THEN REPLY #30206 /* ~"Pokračuj..."~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"Nechej mě hádat... ukousl ti ucho, tak jsi ho zmlátil do bezvědomí a štípnul jeho vidličku. Mám pravdu?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"Zajímavé... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"Tak sem na něj byl kapku drsnej... a zatímco sme se šťouchali, popad mě za ušisko a ukous mi ho, parchant!"~ */
  IF ~~ THEN REPLY #30209 /* ~"Tak co se stalo?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"Takže to jsi *ty*, ten parchant, který ukradnul Nestorovi jeho vidličku!"~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"Zajímavé... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"Co bys řek, že stalo? Ten starej magor mi uhryz ucho, tak jsem ho praštil do kebule a strčil do knihy mrtvejch. A docela toho lituju..." Než pokračoval, nervózně se rozhlédnul. "Mám pocit, jako dyby mě naháněl jeho duch.""~ */
  IF ~~ THEN REPLY #30212 /* ~"Naháněl?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"Ten starý muž žije, hlupáku. Mluvil jsem s ním támhle v noclehárně a on mi řekl, že chce zpátky svoji vidličku."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"Zajímavé... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~Přikývl a opsal si před srdcem půlkruh. "Jó, je to tak. Někdy v kebuli slyšim jeho hlas. Nadává mi a řve na mě, že na mě čeká. Sem z toho podělanej strachy, abych řek pravdu."~ */
  IF ~~ THEN REPLY #30215 /* ~"Možná bych mohl jeho duchu uklidnit... takže už tě nebude 'nahánět'."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"Ten starý muž žije, hlupáku. Mluvil jsem s ním támhle v noclehárně a on mi řekl, že chce zpátky svoji vidličku."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"Zajímavé... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~Ustoupil o krok a kývl hlavou. "Ty bys to dokázal? Jak?""~ */
  IF ~~ THEN REPLY #30218 /* ~"Tak, že dám do knihy mrtvých *tebe*, ty kuse odporného svinstva!""~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~Lži: "Mám moc nad mrtvými. Vše, co potřebuji k uklidnění jeho ducha je předmět, který mu patřil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"Dej mi věc, kterou jsi mu ukradnul a já dohlídnu, aby ti dal pokoj.""~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~Chvíli se na tebe podezřívavě dívá, ale pak odevzdaně pokrčil rameny. "Dobře, kámo... tady máš. Stejně nemá žádnou cenu." Podal ti malou ocelovou vidličku. "Jenom mě zbav toho jeho ducha, okej? "" ~ */
  IF ~~ THEN REPLY #30222 /* ~"Neboj se... jeho duch už tě nebude obtěžovat. Sbohem."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~Podařilo se mi obalamutit jednouchého tieflingského zloděje, takže mi dal Nestorovu vidličku. Říkal, že byl někým chytán a poté že slyšel hlasy ve své hlavě. Nejspíš je bláznivý stejně jako ten starý muž.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"Máš vážně vostrej jazyk, vole. Asi ti ho vyříznu a dám ti ho sežrat!" Skočil po tobě a podává ti nůž špičkou napřed..~ */
  IF ~~ THEN REPLY #30223 /* ~Braň se..~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

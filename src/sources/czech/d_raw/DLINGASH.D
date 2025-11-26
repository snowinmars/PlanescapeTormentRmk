// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLINGASH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLINGASH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46175 /* ~Na malé skříni je urna, plná popela a zuhelnatělých úlomků kostí. Do urny jsou vyryta tyto slova: Fin Andlye - Milovaný Manžel, Otec a Učenec Jednoho Sta Jazyků.~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46176 /* ~Použij na pozůstatcích schopnost Kosti-vyprávějte.~ */ GOTO 1
  IF ~~ THEN REPLY #46177 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46178 /* ~Popel se trochu pohnul, jakoby ho rozvířil tvůj dech. Z urny se ozývá vzdálený hlas. "Proč, proč jsem byl přivolán do tohoto popela, studeného a šedého jako srdce čarodějnice?"~ */
  IF ~~ THEN REPLY #46179 /* ~"Abys mi odpověděl na nějaké otázky, duchu..."~ */ GOTO 2
  IF ~~ THEN REPLY #46180 /* ~"Žádný důvod. Sbohem, duchu."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46181 /* ~"Tak se tedy ptej, ať se mohu vrátit ke svým tichým myšlenkám..."~ */
  IF ~~ THEN REPLY #46182 /* ~"Kdo jsi byl?"~ */ GOTO 3
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46183 /* ~Popiš mu text ze skládacího dvanáctistěnu, zeptej se ho, jestli ten jazyk zná.~ */ GOTO 4
  IF ~~ THEN REPLY #46184 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46185 /* ~"Byl jsem Fin, lingvista a učenec. Zavraždil mě - zavraždil! - můj student... zavraždil mě, abych už nemohl nikoho jiného naučit jazyk, který jsem vštípil jemu. Bylo to jazyk Uyo, jeden z nejvzácnějších ve vesmíru. Neznám nikoho, kdo by jím mluvil, kromě mě a toho jednoho prokletého vražedného studenta..."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46186 /* ~Popiš mu text ze skládacího dvanáctistěnu, zeptej se ho, jestli ten jazyk zná.~ */ GOTO 5
  IF ~~ THEN REPLY #46187 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46188 /* ~"Ano, znám ten jazyk. Byl jsem lingvista a učenec, víš. Zavraždil mě - zavraždil! - můj student... zavraždil mě, abych už nemohl nikoho jiného naučit jazyk, který jsem vštípil jemu. Bylo to jazyk Uyo, jeden z nejvzácnějších ve vesmíru. Neznám nikoho, kdo by jím mluvil, kromě mně a toho prokletého vražedného studenta..."~ */
  IF ~~ THEN REPLY #46189 /* ~"Takže mi můžeš pomoct a naučit mě ten mrtvý jazyk?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #46190 /* ~"Mohl bych tě ten jazyk naučit, ano... docela by mě to potěšilo, když už jenom, tak naštvu toho dávného studenta. Nejprve mi ale řekni, jakými jazyky už *mluvíš*..."~ */
  IF ~~ THEN REPLY #46191 /* ~Nauč se od ducha, co můžeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46193 /* ~Jak k tobě duch promlouvá zapomenutým jazykem Uyo, v tvých spáncích se ohlásila tepavá bolest, jak se začíná objevovat vzpomínka... vzpomínka na tento jazyk. Vybavuješ si slova, písmo, fráze, dokud - jako když závan větru odfoukne jedovatý smog nad Velkou Slévárnou - se ti v paměti náhle neobjeví celý jazyk.~ */
  IF ~~ THEN REPLY #46194 /* ~Pokračuj...~ */ DO ~GiveExperience(Protagonist,8000)
~ JOURNAL #39479 /* ~Mluvil jsem s duchem lingvisty Fina Andlye a zjistil jsem, že jazyk, ve kterém jsou psány zápisky dvanáctistěnu, už vlastně znám. Teď to budu konečně schopný přečíst. ~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46195 /* ~Je tady další vzpomínka, myšlenka, která proniká na povrch... temnější. Její přítomnost tě nějak znepokojuje, naplňuje tě nepříjemným pocitem a také silným pocitem viny...~ */
  IF ~~ THEN REPLY #46196 /* ~Potlač vzpomínky.~ */ GOTO 11
  IF ~~ THEN REPLY #46197 /* ~Soustřeď se na vzpomínky.~ */ DO ~SetGlobal("Murdered_Fin","GLOBAL",1)
GiveExperience(Protagonist,4000)
PlaySoundNotRanged("SPTR_01")
~ JOURNAL #39480 /* ~Když jsem mluvil s duchem lingvisty Fina Andlye, vzpomněl jsem si, jak jsem toho muže zavraždil. Můžu jenom hádat, že to bylo proto, aby nemohl jazyk Uyo naučit ještě někoho jiného, tudíž zůstaly zápisky v dvanáctistěnu tajemstvím.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #46198 /* ~Konečně sis vzpomněl na samotného Fina Andlye. Pamatuješ si jeho jemný hlas, jeho příjemné vychování, jeho přednášky, kterými tě učil starodávný jazyk Uyo. A také si vzpomínáš na svou zjizvenou ruku omotanou kolem jeho křehkého hrdla, drtící jeho hrtan a tak zajišťujíc, že tajný obsah tvého deníku - skrytý a třikrát zapasťovaný v dvanáctistěnném hlavolamu a psaný v tajemném jazyku Uyo - bude navždy v bezpečí od cizích očí...~ */
  IF ~~ THEN REPLY #46199 /* ~"Fine... Musím ti něco říct... To já tě tenkrát zabil."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ashes_1","GLOBALGood",1)
~ JOURNAL #39506 /* ~Přiznal jsem Finu Andlyovi, že jem ho zavraždil a vysvětlil mu, proč jsem to udělal. Odpustil mi, za což jsem velice vděčný... a připadám si, jako by ze mě spadlo nějaké břímě - sice malé, ale přece břímě.~ */ GOTO 9
  IF ~~ THEN REPLY #46200 /* ~"Myslím, že už tomu jazyku rozumím. Díky, Fine. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46201 /* ~Duch je chvíli zticha, popel se v urně tiše přesouvá. Když znovu promluví, je jeho hlas plný zármutku. "Ale... proč... a proč bys ke mně přišel znovu? Copak jsi *zapomněl* vše, co jsem tě naučil?"~ */
  IF ~~ THEN REPLY #46202 /* ~"Ne... no, ano. Je to těžké vysvětlit, ale bylo to mé předchozí já, které tě zavraždilo. Pokaždé, když zemřu, znovu ožiju, jako z dlouhého spánku... ale zapomněl jsem vše... kým jsem byl a co jsem dělal..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46203 /* ~"Myslím, že rozumím... cítím tvou lítost a odpouštím ti. Mír s tebou, můj starý žáku. A ať se v tomto životě projevíš přívětivěji než v tom, ve kterém jsi zařídil můj konec..."~ */
  IF ~~ THEN REPLY #46204 /* ~"Díky, Fine. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #46205 /* ~Ducha poněkud zmátla tvá zjevná znalost jazyka Sidhi. "Vypadá to, že máš na jazyky talent, studente..."~ */
  IF ~~ THEN REPLY #46206 /* ~"Ano... myslím, že už tomu jazyku dost rozumím. Díky, Fine, a sbohem."~ */ EXIT
END

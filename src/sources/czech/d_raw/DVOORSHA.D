// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~Vidíš muže středního věku v potrhaných šatech. Zamračil se na tebe, podezíravě tě sleduje.~ */
  IF ~~ THEN REPLY #57957 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~Když si tě prohlédl, zamračil se ještě víc. "No... nazdar. Co chceš?"~ */
  IF ~~ THEN REPLY #57963 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"To nic. Už musím jít, sbohem."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"Jako co?"~ */
  IF ~~ THEN REPLY #57967 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"Co tady děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"Hledám devu. Slyšel jsem, že prý je v Curstu."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"Budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~Než odpověděl, zaváhal. "Jmenuju se Voorsha." Nijak svou odpověď nerozvádí.~ */
  IF ~~ THEN REPLY #57972 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~Prázdně na tebe zírá, pak pokrčil rameny. "Jsem... obchodník. Tohle je moje skladiště."~ */
  IF ~~ THEN REPLY #57975 /* ~"Co tady skladuješ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~Zamračil se. "Nevidím důvod, proč by tě to mělo zajímat."~ */
  IF ~~ THEN REPLY #57978 /* ~"Jsem jenom zvědavý..."~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~Pokrčil rameny. "No..." Mávl rukou. "Pivo, medovinu a... další zboží." Vypadá docela nervózně.~ */
  IF ~~ THEN REPLY #57982 /* ~"Z čeho jsi tak nervózní?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~Zavrtěl se. "Nic..." Vzdorně se na tebe podíval. "Můžeme změnit téma?"~ */
  IF ~~ THEN REPLY #57986 /* ~"Ne, myslím, že něco tajíš, a já chci zjistit co to je."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~Chvíli na tebe zírá, pak si povzdychl. "Já... dovážím věci... jinýma cestama. Které stráže neznají."~ */
  IF ~~ THEN REPLY #57990 /* ~"Jsi pašerák."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~Zamračil se. "Jsem podloudník. Zní to líp, než pašerák, nemyslíš?" Zatvářil se prohnaně. "Hele... co kdybys mi píchnul... a já se s tebou podělil?"~ */
  IF ~~ THEN REPLY #57995 /* ~"S čím píchnul?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~Na chvíli přemýšlí. "Blízko odsud je gehreleth. Pokouší se mně zabít, a tak mám nějaké problémy s přenášením zboží. Potřebuju, aby mě ho někdo zbavil."~ */
  IF ~~ THEN REPLY #58002 /* ~"Co je to gehreleth?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"Proč si to s ním nevyřídíš sám?"~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"Co dostanu, když se o něj postarám?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~Pokrčil rameny. "Je to jenom blbec, který chce sežrat všechno, co vidí..." Úzkostně se zatvářil.~ */
  IF ~~ THEN REPLY #58011 /* ~"Proč si to s ním nevyřídíš sám?"~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"Co dostanu, když se o něj postarám?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"Nejsem bojovník, hned by mně zabil." Podíval se na tvé jizvy. "Kdokoli, kdo přežije to, co ty, by s ním ale neměl mít problémy."~ */
  IF ~~ THEN REPLY #58023 /* ~"Co je to gehreleth?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"Co dostanu, když se o něj postarám?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~Usmál se. "Hodil by se mi partner. Kšeft je dobrej a já na to sám nestačím. O výdělek se podělíme. Co říkáš?"~ */
  IF ~~ THEN REPLY #58039 /* ~"Jistě, proč ne."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"To si nemyslím."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"Popřemýšlím o tom. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"Už jsem to s gehrelethem vyřešil, je po něm. Takže teď jsme partneři?"~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"Teď budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~Jeho úsměv se rozšířil. "Skvělý. Postarej se o gehreletha a pak přijď sem."~ */
  IF ~~ THEN REPLY #58056 /* ~"Dobrá. Mám nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"Už musím jít, sbohem..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~Zamračil se. "Dobře, ale má nabídka platí stále, takže kdyby sis to rozmyslel... Dokud tady bude ten parchant, kšefty stojí."~ */
  IF ~~ THEN REPLY #58065 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~Rozhlédl se kolem. "Nic zvláštního." Pokrčil rameny. "Podívej se sám."~ */
  IF ~~ THEN REPLY #58068 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~Zamračil se. "Deva... slyšel jsem drby..." Odmlčel se.~ */
  IF ~~ THEN REPLY #58071 /* ~"Jaké drby?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~Pokrčil rameny a podíval se stranou. "Dole se kopalo, rozšiřovali vězení. Prej se nabourali omylem do nějaké neznámé cely..." Otočil se zpátky k tobě. "Našli tam *něco* nebo *někoho* uvězněnýho."~ */
  IF ~~ THEN REPLY #58073 /* ~"Pokračuj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"Někteří tvrděj, že tam byl deva. Jiní tvrděj, že baatezu a jiní zase že tanar'ri." Pokrčil rameny. "Já se o to nestarám. Ať už je tam cokoli, já se od toho hodlám držet stranou."~ */
  IF ~~ THEN REPLY #58075 /* ~"Kde je ta cela?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"Teď budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"Nemám tušení. Hledej kolem, a nejspíš na ni brzy narazíš... ne snad, že by to byl dobrej nápad."~ */
  IF ~~ THEN REPLY #58078 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~Vidíš podloudníka Voorshu. Nervózně se rozhlíží. "No nazdar. Co pro tebe můžu udělat?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"Zmínil ses, že potřebuješ pomoc. S čím?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"Chtěl jsi po mně, ať se postarám o gehreletha."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"Zabil jsem pro tebe toho gehreletha."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~Chvíli na tebe zírá. "Ano. Uděláš to?"~ */
  IF ~~ THEN REPLY #58087 /* ~"Co za to dostanu?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~Vypadá překvapeně, ale rychle se vzpamatoval. "Uh... to je skvělý. Dobrá práce."~ */
  IF ~~ THEN REPLY #58089 /* ~"Řekl jsi, že ze mě uděláš partnera. Jsem tady pro svůj podíl."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~Přikývl. "Ano... To jsem řekl." Chvíli na tebe zírá, pak se začíná nervózně ošívat.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"Takže jsme teď partneři. Správně?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"Ty jsi nevěřil, že dokážu zabít gehreletha, že jo?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~Chvíli na tebe zírá, pak si povzdychl. "Ne..." Znovu si povzdychl. "Vypadá to, že jsi překonal má očekávání... Doufal jsem, že se o tebe Gehreleth postará a ušetří mi problémy. No, vypadá to, že se o tebe budu muset postarat sám." Vyškubl zbraň a zaútočil.~ */
  IF ~~ THEN REPLY #58094 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~Chvíli na tebe zírá, pak si povzdychl. "Ne..." Znovu si povzdychl. "Vypadá to, že jsi překonal má očekávání... Doufal jsem, že se o tebe Gehreleth postará a ušetří mi problémy. No, vypadá to, že se o tebe budu muset postarat sám." Vyškubl zbraň a zaútočil.~ */
  IF ~~ THEN REPLY #58097 /* ~Braň se.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

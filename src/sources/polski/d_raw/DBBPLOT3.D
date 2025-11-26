// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBBPLOT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBBPLOT3~

IF ~  Global("BBPlot_Secret_3","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53171 /* ~Miejsce to, w kształcie okręgu na podłodze labiryntu, jest szczególne, ponieważ wymarła wokół niego cała roślinność, za wyjątkiem trzech wątłych gałązek w samym środku... wygląda na to, że gałązki pożarły całą roślinność znajdującą się wokół nich.~ */
  IF ~  OR(2)
!Global("BBPlot_Secret_1","GLOBAL",0)
!Global("BBPlot_Secret_2","GLOBAL",0)
~ THEN REPLY #53172 /* ~Zacznij nucić melodię, tę samą, której użyła Ravela, gdy przywoływała moce labiryntu.~ */ GOTO 1
  IF ~  !Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53188 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 6
  IF ~  Class(Protagonist,MAGE)
Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53191 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 7
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53198 /* ~Przyjrzyj się uważnie tym gałązkom.~ */ GOTO 7
  IF ~~ THEN REPLY #53199 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #53173 /* ~Gdy zaczynasz sobie nucić, gałązki zaczynają się nagle wić w obrębie swojego martwego kręgu, bijąc o siebie, sięgając po coś w próżnię... a ty wiesz, instynktownie, że próbują pochwycić ziarno o czarnych kolcach.~ */
  IF ~  PartyHasItem("BBSeed")
~ THEN REPLY #53174 /* ~Wciąż nucąc, rzuć w środek jedno z ziaren o czarnych kolcach.~ */ DO ~DestroyPartyItem("BBSeed",FALSE)
SetGlobal("BBPlot_Secret_3","GLOBAL",1)
~ GOTO 2
  IF ~  !PartyHasItem("BBSeed")
~ THEN REPLY #53186 /* ~"Mam nadzieję, że znajdę jeszcze jakieś ziarna... chociaż mam wrażenie, że Ravela dała mi wszystkie, jakie tu są."~ */ EXIT
  IF ~~ THEN REPLY #53187 /* ~Zostaw wijące się gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53175 /* ~W dalszym ciągu sobie nucąc, rzucasz to ziarno między masę gałęzi, a trzy gałązki owijają się wokół niego z *trzaskiem*, rozłupując je. Gałązki przestają się gwałtownie poruszać i widzisz, jak powoli zaczynają rosnąć, stając się grubymi gałęziami. W czasie wzrostu, oplatają się wokół siebie, po czym odrywają się z *trzaskiem* od podstawy. Turlają się wzdłuż podłogi, a następnie zastygają w miejscu, śmiertelnie znieruchomiałe.~ */
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53176 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,9,9,0)
~ GOTO 3
  IF ~  Global("Ravel_Teach","GLOBAL",1)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53179 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,33,33,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #53182 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,66,66,0)
~ GOTO 4
  IF ~  Global("Ravel_Teach","GLOBAL",2)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #53183 /* ~Podnieś trzy splecione gałęzie.~ */ DO ~GiveItemCreate("BBWand",Protagonist,99,99,0)
~ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53177 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo słabo wyczuwasz wewnątrz niej swoją melodię. Gałąź jest bez wątpienia magiczna... ale odnogi wyglądają na nieco odrętwiałe; brak ci pewności, ile mocy się w niej kryje.~ */
  IF ~~ THEN REPLY #53178 /* ~"Wezmę to... może się później przydać."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.2
  SAY #53180 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo słabo wyczuwasz wewnątrz niej swoją melodię. Gałąź jest bez wątpienia magiczna... i kryje się w niej wielka moc.~ */
  IF ~~ THEN REPLY #53181 /* ~"Wezmę to... może się później przydać."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.3
  SAY #53184 /* ~Podnosisz po trzykroć splecioną gałąź; spoczywa w twoich rękach nieruchomo, ale bardzo wyraźnie wyczuwasz wewnątrz niej swoją melodię, jak bicie serca. Gałąź jest bez wątpienia magiczna... i potężna. *Czułeś*, że gałąź reaguje na twoją melodię, do tego stopnia, że mogłeś wspomóc jej wzrost, podczas gdy gałęzie przeplatały się nawzajem. Ogromna ilość mocy spoczywa wewnątrz niej... ślad mocy Raveli, być może, ale głównie siła twojej własnej woli. Nic na to nie możesz poradzić, ale robisz wrażenie na sobie samym.~ */
  IF ~~ THEN REPLY #53185 /* ~Weź tę gałąź... *twoją* gałąź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #53189 /* ~Gałązki są cienkie jak sięgające po coś palce i w ogóle nie mają na sobie czarnych kolców, którymi pokryte są gałęzie znajdujące się w innych miejscach labiryntu. Poza tym, wygląda na to, że nie odznaczają się niczym szczególnym.~ */
  IF ~~ THEN REPLY #53190 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 0.3
  SAY #53192 /* ~Gałązki są cienkie jak sięgające po coś palce i w ogóle nie mają na sobie czarnych kolców, którymi pokryte są gałęzie znajdujące się w innych miejscach labiryntu. Gdy je jednak uważniej badasz, wyczuwasz w ich wnętrzu magiczne wibracje - podobne do delikatnych wibracji, jakie wyczuwasz w labiryncie, ale o wiele bardziej uparte, jak zawodzenie malutkich dzieci.~ */
  IF ~  GlobalGT("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53193 /* ~Zacznij nucić melodię, tę samą, której użyła Ravela, gdy przywoływała moce labiryntu.~ */ GOTO 1
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #53194 /* ~Zbadaj te gałązki uważnie i sprawdź, czy możesz określić naturę tej aury.~ */ GOTO 8
  IF ~~ THEN REPLY #53197 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #53195 /* ~Badasz uważnie gałązki; z pewnego powodu odczuwasz silne wrażenie, że te gałązki rosną tutaj celowo. Zdają się mieć w sobie jakiś magiczny potencjał, ale nie możesz znaleźć sposobu na jego uwolnienie.~ */
  IF ~~ THEN REPLY #53196 /* ~Zostaw te gałązki w spokoju.~ */ EXIT
END

IF ~  Global("BBPlot_Secret_3","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #53200 /* ~Widzisz przed sobą martwy krąg na podłodze labiryntu... nie wyrosły tam żadne nowe gałęzie i nie wydaje ci się żeby miały jeszcze urosnąć, teraz, gdy dni Raveli dobiegły końca.~ */
  IF ~~ THEN REPLY #53201 /* ~Opuść ten krąg.~ */ EXIT
END

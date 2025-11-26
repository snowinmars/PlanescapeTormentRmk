// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~SCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~Widzisz stary, spłowiały, niewinnie wyglądający zwój pergaminu, przewiązany czerwoną wstążką i nieznacznie zalatujący pleśnią. Wstążkę utrzymuje prosta woskowa pieczęć.~ */
  IF ~~ THEN REPLY #66880 /* ~Złam pieczęć, rozwiń zwój i przeczytaj go.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~Otworzyłem i przeczytałem zwój z magiczną pułapką. Jego treść nie była zbyt obszerna:

"może to cię nie ZABIJE, ale z pewnością cię SPOWOLNI"
"PRZESTAŃCIE MNIE PRZEŚLADOWAĆ ZŁODZIEJSKIE BĘKATY... TO MOJE CIAŁO MOJE MOJE"

Zwój ten dostałem od pewnej kobiety, która powiedziała mi, że niegdyś przekazano to jej matce, z zaleceniem, aby dała to człowiekowi o moim wyglądzie.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~Odłóż zwój na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~Na pergaminie widać kilka zdań, nakreślonych czyjaś chwiejną ręką, oraz dziwny znak runiczny. Tekst brzmi następująco:

"to może cię nie ZABIJE, ale z pewnością cię SPOWOLNI"
"PRZESTAŃCIE MNIE PRZEŚLADOWAĆ ZŁODZIEJSKIE BĘKARTY... TO MOJE CIAŁO MOJE MOJE"
"A teraz... GIŃ!"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"A cóż to...?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"A cóż to...?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~Znak runiczny nagle pęka, a cały zwój poczyna przemieniać się w cuchnącą czarną masę. Ciecz ta wnika natychmiast w twoje dłonie... W ciągu kilku sekund magiczna trucizna przeobraża twoją krew w czarną skażoną posokę. Czujesz, jak ogarnia cię wyjątkowo bolesna śmierć...~ */
  IF ~~ THEN REPLY #66886 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~Znak runiczny nagle pęka, a cały zwój poczyna przemieniać się w cuchnącą czarną masę. Ciecz ta błyskawicznie przenika twoje dłonie... W ciągu kilku sekund, magiczna trucizna przeobraża twoją krew w czarną skażoną posokę. Przez moment zwijasz się, wydając z siebie jęki agonii. Nagle ból ustępuje. Jakąkolwiek śmiercionośną magią nasycono ten pergamin, czar ten nie zdołał pozbawić cię życia.~ */
  IF ~~ THEN REPLY #66888 /* ~Zrobione.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

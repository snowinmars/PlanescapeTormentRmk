// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~Gdy podchodzisz, mężczyzna cofa się; jego spojrzenie jest tchórzliwe i zarazem drapieżne, niczym u padlinożercy... wystarczy ci jedno spojrzenie, by stwierdzić, że ocenia cię wzrokiem, chcąc sprawdzić, czy dałby ci radę - mimo to jego głos drży niepewnie. "Zostaw mnie w spokoju, n-n-nic do ciebie nie mam."~ */
  IF ~~ THEN REPLY #1957 /* ~"Nawet nie myśl o ataku, albo moje ostrze zagości w twym ciele."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"Czy ty przypadkiem nie *szukasz* guza?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"Nie szukam guza..." Gdy mówi, ślina kapie mu z ust. "...i to ty lepiej na mnie uważaj, naprawdę!"~ */
  IF ~~ THEN REPLY #1961 /* ~"*Nikt* nie ma prawa tak do mnie mówić i *nikt* nie ma prawa mnie straszyć. Cofnij to, co powiedziałeś, albo będziesz zbyt martwy, by dostać drugą szansę."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"Taa, taa. Trzymaj się z daleka, albo gorzko tego pożałujesz."~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~Patrzy na ciebie ponurym wzrokiem.~ */
  IF ~~ THEN REPLY #1966 /* ~"Czy ty mnie *rozumiesz*? Cofnij to, albo wypruję ci flaki."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~Patrzy na ciebie ponurym wzrokiem.~ */
  IF ~~ THEN REPLY #1968 /* ~"Czy ty mnie *rozumiesz*? Trzymaj się ode mnie z daleka, albo wypruję ci flaki."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~Głos mu drży. "Ja... przełykam moją uwagę. Nie chciałem cię obrazić."~ */
  IF ~~ THEN REPLY #1974 /* ~"W porządku. Złaź mi z oczu."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"Złaź mi z oczu."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"A więc nasze drogi się nie skrzyżują. Nie chciałem cię obrazić idąc tą samą ulicą, co ty."~ */
  IF ~~ THEN REPLY #1978 /* ~"W porządku. Złaź mi z oczu."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"Złaź mi z oczu."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

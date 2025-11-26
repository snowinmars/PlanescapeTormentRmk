// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Człowiek ten przygląda ci się dziwnie wytrzeszczonymi ze zdumienia oczami. Jego oczy są *ogromne*... tak wielkie, że zdaje się, iż lada moment wyskoczą ze swoich oczodołów i potoczą się po bruku. Gdy się zbliżasz, człowiek zaczyna kiwać energicznie głową, ruszając nią na wszystkie strony jak ptak... zaś gdy podchodzisz do niego całkiem blisko, wyczuwasz nagle, że otacza go zapach moczu i kału.~ */
  IF ~~ THEN REPLY #9339 /* ~"Witaj."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Człowiek pociąga kilka razy nosem i wyciera go w rękaw, a następnie otwiera usta, ukazując sczerniałe, zgnite dziąsła. "Opowieści za miedziaka, sirrah?" Jego oddech cuchnie; śmierdzi tak jakby ten człowiek przetrzymywał w ustach zgnite mięso. "Opowieści za miedziaka?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Kim jesteś?"~ */ EXIT
END

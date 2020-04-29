BEGIN ~FERTHG~

IF WEIGHT #1~  NumTimesTalkedTo(0) ~ THEN BEGIN F0
SAY~You there! Be ye friend or foe! If ye be friend just don't stand there. Help me take care of these filthy bastards!~
IF ~~ THEN REPLY ~We are friends and we've come to help!~  GOTO 1
IF ~~ THEN REPLY ~This is not my concern and I would rather be elsewhere. Fight your own battles.~ GOTO 2
END

IF ~~ THEN BEGIN 1
 SAY ~Then let's get to it. These duergar are beggin' fer a splittin' headache - from me axe!~
IF ~~ THEN DO ~SetGlobal("HelpFerthg","GLOBAL",1) ~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~I see ye standin' out of the field of battle! Choose yer side quickly or ye'll be next in line tae meet me axe!~
IF ~~ THEN REPLY ~That's mighty big talk for a 'little' dwarf as outnumber such ye are. Perhaps we shall watch as these duergar dice ye into pieces.~ GOTO 3
IF ~~ THEN REPLY ~Very well...we will help ye!~GOTO 1
IF ~~ THEN REPLY ~We're not getting involved. This is your battle.~ EXIT
END

IF ~~ THEN BEGIN 3
SAY ~Ye have signed ye own death sentence...prepare tae meet thy end!~
IF ~~ THEN DO ~Enemy() ~ EXIT
END

IF ~~ THEN BEGIN 4
SAY ~Bah! Ye do as ye please. I'm not leavin' here until I have some answers. I can see that bravery is not one of yer strong points.~
IF ~~ THEN DO ~LeaveParty() ~ EXIT
END

IF WEIGHT #2 ~  Global("HelpFerthg","GLOBAL",0)GlobalGT("FerthgDuergr","GLOBAL",5) ~ THEN BEGIN 5
SAY ~Stand by and watch as I defend myself alone. Har, I kin see that honor is not one of yer strong points. Off with ye then. I'll not waste my time fightin' the likes of ye. Not worth my time!~
IF ~~ THEN DO ~SetGlobal("FerthgDuergr","GLOBAL",1) EscapeArea()~ EXIT
END

IF WEIGHT #3 ~  Global("HelpFerthg","GLOBAL",1) GlobalGT("FerthgDuergr","GLOBAL",5) ~ THEN BEGIN 6
SAY ~That was fine fightin'. What brings ye deep into these parts?~ [FERTG04]
IF ~~ THEN REPLY ~We were sent by a smithy named Otho to find his nephew Tearlac. Is that you?~ GOTO 7
END

IF ~~ THEN BEGIN 7
SAY ~My name is Ferthgil Trollslayer, I'm afraid that Tearlac didn't make it. These bastards killed him...all I have left is his warhammer. And it's meant to git it back to his family so that they can put it in a place of honor! Here, keep it save in case I don't make it out of here.~
=~I also mean to find out what is going on here. This place is crawling with duergar and it seems mighty strange being smack dab in the middle of the Sword Coast. Are ye with me?~
IF ~~ THEN REPLY ~We have cleared the way out. Let's take our leave and be done with this place and return to safety.~DO~GiveItem("DSHamm01",LastTalkedToBy)~ GOTO 8
END

IF ~~ THEN BEGIN 8
SAY ~Bah! Ye do as ye please. I'm not leavin' here until I have some answers. I can see that bravery is not one of yer strong points.~
IF ~~ THEN REPLY ~Very well...we will help ye!~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Your on your own you crazy dwarf. If you ask me, your begging for an early death.~ DO ~EscapeArea() ~ EXIT
END

IF WEIGHT #0 ~  Global("NEG","GLOBAL",1)~ THEN BEGIN F9
SAY ~Why 'er we goin' this way. This be tha wrong direction...we either turn around now 'er I'm goin' on me own way, without ye!~
IF ~~ THEN REPLY ~Very well...we will help ye!~ GOTO 11
IF ~~ THEN REPLY ~Your on your own you crazy dwarf. If you ask me, your begging for an early death.~ GOTO 4
END

IF ~~ THEN BEGIN 10
SAY ~So are ye ready to git some courage in ye and find out what in the nine hells is goin' on here?~
IF ~~ THEN REPLY ~Very well...we will help ye!~ GOTO 11
IF ~~ THEN REPLY ~Your on your own you crazy dwarf. If you ask me, your begging for an early death.~ GOTO 4
END

IF ~~ THEN BEGIN 11
SAY ~Let's git movin' then. Times a wastin'! I kin feel it in me bones...somethin' aint right here and I know ther be more of those filthy duergar beggin' fer a axe between tha eyes!~ IF ~~ THEN DO ~JoinParty()~ EXIT
END

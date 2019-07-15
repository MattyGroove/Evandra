// Wraith Scene

EXTEND_BOTTOM HGWRA01 18
IF ~Global("rh#EvaRomanceActive","GLOBAL",2) InParty("rh#Eva") 
!StateCheck("rh#Eva",CD_STATE_NOTVALID)~ DO ~SetGlobal("rh#EvaWraithTalk","GLOBAL",1)~ EXTERN HGWRA01 wraith1
END

CHAIN HGWRA01 wraith1
@0 /* What of the inevitable pain you must give to the one you love? The elven woman you call Evandra? */
== RH#EV25J @1 /* I have no interest in your lies, creature. */
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#evct5")~ EXIT
END

BEGIN RH#MARA

CHAIN IF ~NumTimesTalkedTo(0) InParty("rh#Eva") Global("rh#EvaRomanceActive","GLOBAL",2)~ THEN RH#MARA wraith2
@2 /* Vana? Vanathalara? Is that... is that really you? */
== RH#EV25J @3 /* A shade from the past, is it to be? I know that you're not real, Mara. */
== RH#MARA @4 /* No... no, I suppose not. I've never been real to you, have I? */
= @5 /* I was always just little Marathelassa... a hindrance and nothing more. You never really said how you felt about me, but I knew. I always knew. */
== RH#EV25J @6 /* That was a long time ago, Mara. A lifetime ago. */
== RH#MARA @7 /* For you, maybe, but for me... for me it might as well have been yesterday. */
= @8 /* Your brother told me what happened, you know. In a moment of anger, he told me that I was the reason your Test went wrong, that if I'd been less of a nuissance to you, you might have managed to do the right thing. My fault, even when I wasn't there. */
== RH#EV25J @9 /* He wouldn't have said that, Mara. Even... even if it's what he thought. */
== RH#MARA @10 /* Oh, but he did, Vana. He did. He was angry, angry like I've never seen anyone. */
= @11 /* You left an illusion of me to die in your Test, but the real me... the real me you destroyed too when you left. You destroyed all of us. */
== RH#EV25J @12 /* You... you're not real. None of this is real. I don't believe you. */
== RH#MARA @13 /* You're an illusionist, Vana. You know what's real and what isn't, and what I'm saying now has the ring of truth to it. Admit it. */
== RH#EV25J @14 /* I ... no. No, I don't believe you, creature. I won't. */
== RH#MARA @15 /* You wouldn't even know, would you? You never went back to see how the rest of us tried... and failed... to move on. How your parents refused to speak your name, how your brother sought his death on a forest patrol. */
= @16 /* But I was the one to die, in the end, just as I did in your Test. If you had been there, you could have saved me, but all you ever cared about was yourself. I wish I had seen that sooner. */
== RH#EV25J @17 /* No, I don't... <CHARNAME>, make her go away! */
DO ~SetGlobal("rh#EvaWraith","GLOBAL",2)~
END
	++ @18 /* Stop it, Mara! Whatever happened afterwards isn't her fault! */ EXTERN HGWRA01 25
	++ @19 /* Stop this, Gorion! Leave her alone! */ EXTERN HGWRA01 25
	++ @20 /* Enough! I won't stand for anymore of this! */ EXTERN HGWRA01 25
	+ ~CheckStatGT(Player1,16,WIS)~ + @21 /* Don't listen to her, Evandra! This isn't real! */ EXTERN HGWRA01 25

CHAIN IF WEIGHT #-1 ~Global("rh#EvaWraith","GLOBAL",3)~ THEN RH#EV25J w1
@22 /* I would have thought my mind better guarded against that type of attack... I'm not sure if that was arrogant or naive. */
DO ~SetGlobal("rh#EvaWraith","GLOBAL",4)~
END
	++ @23 /* Are you alright? You look somewhat shaken. */ + w1.1
	++ @24 /* It's over now. Don't let it bother you. */ + w1.2
	++ @25 /* There's always something we can't defend against. */ + w1.3
	++ @26 /* I hope you're ready to move on now, Evandra. */ + w1.4

APPEND RH#EV25J

IF ~~ w1.1
 SAY @27 /* Shaken? Yes... yes. That is an understatement, I think. */
IF ~~ + w1.5
END

IF ~~ w1.2
 SAY @28 /* I'm not sure how I can do otherwise. */
IF ~~ + w1.5
END

IF ~~ w1.3
 SAY @29 /* I know, but I don't care for the reminder. */
IF ~~ + w1.5
END

IF ~~ w1.4
 SAY @30 /* Gladly. Let's... let's simply put this behind us. */
IF ~~ EXIT
END

IF ~~ w1.5
 SAY @31 /* I never quite expected to have to face that Test again, you know. To have those memories plucked from my mind, twisted around and wielded as a weapon... */ 
 = @32 /* Such things are simply not done< <CHARNAME>. They're not done. */
	++ @33 /* It was a wraith, Evandra. It doesn't care about propriety. */ + w1.6
	++ @34 /* I'd have expected you to appreciate an illusion more. */ + w1.7
	++ @35 /* Are you upset about what was done? Or about what was said? */ + w1.8
END

IF ~~ w1.6
 SAY @36 /* I know. I just... I try not to think about the people I left behind. */
IF ~~ + w1.9
END

IF ~~ w1.7
 SAY @37 /* I would have, but I just... I try not to think about the people I left behind. */
IF ~~ + w1.9
END

IF ~~ w1.8
 SAY @38 /* The latter, I think. It's just... I try not to think about the people I left behind. */
IF ~~ + w1.9
END

IF ~~ w1.9
 SAY @39 /* I know that it was difficult for them. My former teacher would pass along the occasional message back before... before we all fell out entirely. I was selfish during my Test, and selfish afterwards, and Marathelassa in particular... perhaps I never did stop hurting her. */
 = @40 /* She'd had a gift for magic herself, you know, but after what happened with me, she never did develop it further. I suppose that's no wonder. */
	++ @41 /* One way or the other, that's not your fault. */ + w1.10
	++ @42 /* What ultimately became of her? */ + w1.11
	++ @43 /* This is ancient history, Evandra. Let it go. */ + w1.12
END

IF ~~ w1.10
 SAY @44 /* I am not so sure, <CHARNAME>. I'm not so sure at all. */
IF ~~ + w1.13
END

IF ~~ w1.11
 SAY @45 /* She married, I know, but beyond that, I couldn't tell you. */
IF ~~ + w1.13
END

IF ~~ w1.12
 SAY @46 /* I wish that I could, <CHARNAME>, but it seems that it's never quite buried entirely. */
IF ~~ + w1.13
END

IF ~~ w1.13
 SAY @47 /* But come, I'd be away from this horrid place as soon as possible. Let us do what we've come to do, and then let's try to put this incident behind us altogether. */
IF ~~ EXIT
END
END
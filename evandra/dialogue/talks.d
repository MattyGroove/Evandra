// ---------------------------------------------
// SoA
// ---------------------------------------------

// 1.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",2)~ THEN RH#EVAJ t1
@0 /* This world of yours, my friend... I can't say whether I'm looking forward to getting to know it or not. I must admit that I'm not exactly a consummate Planeswalker. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @1 /* After our trip to the Abyss, I'd say differently. */ + t1.1
	++ @2 /* New worlds, new adventures... don't look so glum about it! */ + t1.2
	++ @3 /* This hardly counts as a foreign plane. It's still the Prime. */ + t1.3
	++ @4 /* I really don't have time to talk right now, Evandra. */ + t1.4

APPEND RH#EVAJ

IF ~~ t1.1
 SAY @5 /* (laugh) And you speak of that as if it were nothing, <CHARNAME>. You seem to take to this type of madness far better than I do. */
IF ~~ + t1.5
END

IF ~~ t1.2
 SAY @6 /* (laugh) I can already tell that you are going to be an interesting companion, <CHARNAME>. You seem to take to this type of madness far better than I do. */
IF ~~ + t1.5
END

IF ~~ t1.3
 SAY @7 /* (laugh) No doubt the Abyss hardly counted as a foreign plane to you either, <CHARNAME>. You seem to take to this type of madness far better than I do. */ 
IF ~~ + t1.5
END

IF ~~ t1.4
 SAY @8 /* I see. Then I'll leave you in peace. */
IF ~~ EXIT
END

IF ~~ t1.5
 SAY @9 /* Or perhaps you are simply more used to it. Myself, I can hardly keep myself from thinking about that necromancer we faced in the sphere. Power of that caliber... you don't come across it every day. Much less power so poorly spent. */
 = @10 /* Perhaps that is why your world leaves me a little bit uneasy--I can't help but wonder what sort of world might produce such a man. If he was even still a man at all. */
	+ ~!InParty("Haerdalis")~ + @11 /* Lavok was a Planeswalker. They tend to be unique, whatever world they're from. */ + t1.6
	+ ~InParty("Haerdalis")~ 
	+ @11 /* Lavok was a Planeswalker. They tend to be unique, whatever world they're from. */ + t1.7
	++ @12 /* Stick around, and I'm sure you'll find out sooner or later. */ + t1.8
	++ @13 /* Tell me, do you always put this much reflection into defeated foes? */ + t1.9
END

IF ~~ t1.6
 SAY @14 /* Mm. That is probably true, but Lavok... I don't think the word "unique" begins to describe him. Lavok was something else entirely. */
IF ~~ + t1.10
END

IF ~~ t1.7
 SAY @15 /* Mm, perhaps, but there's more to it than that. Haer'dalis is unique. Lavok, on the other hand... Lavok was something else entirely. */
IF ~~ + t1.10
END

IF ~~ t1.8
 SAY @16 /* I'm sure I will too, though I'm less sure that I want to. Lavok... I suspect there were lessons there I haven't even considered yet. */
IF ~~ + t1.10
END

IF ~~ t1.9
 SAY @17 /* Only the interesting ones, and Lavok... mm. Lavok certainly qualified. */
IF ~~ + t1.10
END

IF ~~ t1.10
 SAY @18 /* I'm no stranger to the ways of dark wizards, my friend. Far from it. I've always thought there was a certain sense to their approach--practical, if cold as ice. Greater power means greater personal security. It seems almost obvious. */
 = @19 /* And yet to see one so powerful felled by his own folly... it gives a person cause to stop and think for a moment, if nothing else. A very long moment. */
	+ ~!Alignment(Player1,MASK_EVIL)~ + @20 /* Power only begets more powerful enemies. Lavok found that out the hard way. */ + t1.11
	+ ~!Alignment(Player1,MASK_GOOD)~ + @21 /* He overreached. Only a fool takes such risks without being prepared. */ + t1.12
	++ @22 /* Go seeking out the secrets of the multiverse, and there's a chance one will find you instead. */ + t1.13
	++ @23 /* The type of people who stop and think tend not to be the ones found conquering the planes. */ + t1.14
	+ ~Alignment(Player1,MASK_GOOD) !Race(Player1,ELF)~ + @24 /* You seem well acquainted with that mindset. Have you worked with dark wizards in the past? */ + t1.15
	+ ~Alignment(Player1,MASK_GOOD) Race(Player1,ELF)~ + @24 /* You seem well acquainted with that mindset. Have you worked with dark wizards in the past? */ + t1.16
	+ ~Alignment(Player1,MASK_EVIL) Class(Player1,MAGE_ALL)~ + @24 /* You seem well acquainted with that mindset. Have you worked with dark wizards in the past? */ + t1.17
	+ ~!Alignment(Player1,MASK_GOOD) OR(2) !Alignment(Player1,MASK_EVIL) !Class(Player1,MAGE_ALL)~ + @25 /* You seem well acquainted with that mindset. I take it you've worked with dark wizards in the past? */ + t1.18
	+ ~InParty("Valygar")~ + @26 /* Lavok, Lavok, Lavok. Are you sure you don't want to discuss this with Valygar instead? */ + t1.19
END

IF ~~ t1.11
 SAY @27 /* As simple as that, is it? Maybe you're right, and maybe there's nothing simple about it at all. */
IF ~~ + t1.20
END

IF ~~ t1.12
 SAY @28 /* Then it would seem that I've known more fools than wise men, though I suspect that any of us could say the same. */
IF ~~ + t1.20
END

IF ~~ t1.13
 SAY @29 /* Well put, and true enough. There was something terribly ironic about the whole mess. */
IF ~~ + t1.20
END

IF ~~ t1.14
 SAY @30 /* That is true, though there's still something terribly ironic in being conquered yourself in the attempt. */
IF ~~ + t1.20
END

IF ~~ t1.15
 SAY @31 /* I am more... flexible... with my associations than many, but the error in their philosophy is clear enough even to me. */
IF ~~ + t1.20
END

IF ~~ t1.16
 SAY @32 /* I am more... flexible... with my associations than many of our people, but the error in their philosophy is clear enough even to me. */
IF ~~ + t1.20
END

IF ~~ t1.17
 SAY @33 /* Worked with, lived with, argued with... you are hardly the first, <CHARNAME>. And even you must agree that there was something terribly ironic about what we just saw. */
IF ~~ + t1.20
END

IF ~~ t1.18
 SAY @34 /* Worked with, lived with, argued with... yes, I have. And even some of my former colleagues would have had to admit that there was something terribly ironic about what we just saw. */
IF ~~ + t1.20
END

IF ~~ t1.19
 SAY @35 /* And face that terrible scowl of his? No, <CHARNAME>, I know when to let matters lie. */ 
IF ~~ + t1.20
END

IF ~~ t1.20
 SAY @36 /* But no matter. Intriguing though Lavok may have been, I'm disinclined to waste too much more thought on him. As it is, I've far more pressing concerns to worry about. Such as my new status as a citizen of Faerûn. */
 = @37 /* It'll take some time to adjust, but time at least I have aplenty. And stopping a renegade wizard is an important task, whatever plane he happens to live on. This other mage of yours... you called him Irenicus, did you not? */
	++ @38 /* I wouldn't say he's mine. Not yet, at least. */ + t1.21
	++ @39 /* That's his name, and if you were intimidated by Lavok, just you wait. */ + t1.22
	++ @40 /* I try not to think about him. The memories are... painful. */ + t1.23
	++ @41 /* I'm not interested in stopping him. The farther away I am from him, the better. */ + t1.24
	++ @42 /* A more powerful magic-user I've yet to encounter. We'll need to be prepared. */ + t1.22
END

IF ~~ t1.21
 SAY @43 /* Soon enough, then, with any luck. I've come across more than a couple rogue wizards over the years, but if this is a sign of things to come... well. */
IF ~~ + t1.25
END

IF ~~ t1.22
 SAY @44 /* I see. I've come across more than a couple rogue wizards over the years, but if this is a sign of things to come... well. */
IF ~~ + t1.25
END

IF ~~ t1.23
 SAY @45 /* I... see. I'm sorry to hear that, and sorrier still that nothing was done about him beforehand. If this is a sign of things to come... well. */
IF ~~ + t1.25
END

IF ~~ t1.24
 SAY @46 /* Be that as it may, someone has to stop him. If this is a sign of things to come... well. */
IF ~~ + t1.25
END

IF ~~ t1.25
 SAY @47 /* I suppose we'll all simply have to be ready. */
IF ~~ EXIT
END
END

// 2. 
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",4)~ THEN RH#EVAJ t2
@48 /* Tell me, <CHARNAME>, what do you know about the Cowled Wizards? Your dealings with them have been more extensive than mine. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	+ ~Global("PCSphere","GLOBAL",1)~ + @49 /* I may be working for them now, but they're not exactly forthcoming. */ + t2.1
	++ @50 /* I know that their hobbies appear to include kidnapping and murder. */ + t2.2
	++ @51 /* My "dealings" with them involve getting stonewalled and ignored. */ + t2.1
	++ @52 /* They're secretive, power hungry, and dangerous when crossed. */ + t2.3
	++ @53 /* I'm not interested in talking about them. Or anything, right now. */ + t2.4

APPEND RH#EVAJ

IF ~~ t2.1
 SAY @54 /* Mm, few wizards are known for transparency, but these ones... they do seem to take it to an extreme. That's been my observation as well. */
IF ~~ + t2.5
END

IF ~~ t2.2
 SAY @55 /* Mm, yes. That has been my observation as well. */
IF ~~ + t2.5
END

IF ~~ t2.3
 SAY @56 /* Mm, descriptions that could apply to many of us, but these ones... they do seem to take it to an extreme. */ 
IF ~~ + t2.5
END

IF ~~ t2.4
 SAY @57 /* Then I shall leave you to your sullen mood. */
IF ~~ EXIT
END

IF ~~ t2.5
 SAY @58 /* I will admit, I had hoped that Tolgerias would prove something of an exception and that the rest were more... responsible, to put it mildly. A vain hope, it would seem. */
 = @59 /* For all their talk about keeping magic safe from the common people and the common people safe from it, I would be hard pressed to tell them apart from the wizards they consider criminals. */
	++ @60 /* What gave that away, Evandra? The constant scheming? */ + t2.6
	++ @61 /* Why would you ever expect responsibility from a group so bent on control? */ + t2.7
	++ @62 /* Maybe not, but they must be doing something right to hold so much power here. */ + t2.8
	++ @63 /* No kidding. I'd sooner trust a mage I met in the sewer than a Cowled Wizard. */ + t2.9
END

IF ~~ t2.6
 SAY @64 /* (laugh) Amongst other things, yes. */
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY @65 /* Because... well, because that has been my experience in the past. */
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY @66 /* From a certain point of view, perhaps, but not from mine. */
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY @67 /* (laugh) I wish that were an exaggeration, but I know it's not. */
IF ~~ + t2.10
END

IF ~~ t2.10
 SAY @68 /* My interest may seem strange, but as I've mentioned before, I belong to a magical organization of my own: the Orders of High Sorcery. All wizards in Ansalon are required to join our ranks if they wish to truly pursue the Art--to refuse is to brand oneself a renegade. An outlaw. */
 = @69 /* Our purpose is to prevent magic from becoming a threat in our world, but we're feared and distrusted all the same, much as the Cowled Wizards are in this land. I... don't much care for the parallels. */
 = @70 /* Nor do I like assuming that all that is said about them is true, as difficult as it may be at times to give them the benefit of the doubt. */
	++ @71 /* Remember that ambush in the Planar Sphere? There was nothing ambiguous there. */ + t2.11
	++ @72 /* Parallels, Evandra? I hope you're not in the business of hunting down illegal mages too. */ + t2.12
	++ @73 /* I'd like to assume the best also, but they've given me little reason to so far. */ + t2.13
	++ @74 /* Some may have nobler intentions, but we're less likely to come into conflict with them. */ + t2.14
END

IF ~~ t2.11
 SAY @75 /* I know, and yet I'm not at all accustomed to this. */
IF ~~ + t2.15
END

IF ~~ t2.12
 SAY @76 /* Myself personally? Not terribly often, though it's not the sort of thing I overlook when I come across it. The rules exist for a reason, <CHARNAME>. */
 = @77 /* Or at least on Ansalon they do. Here, on the other hand... I don't know. I'm not at all accustomed to this. */
IF ~~ + t2.15
END

IF ~~ t2.13
 SAY @78 /* So it would seem, and yet I'm not at all accustomed to this. */
IF ~~ + t2.15
END

IF ~~ t2.14
 SAY @79 /* That's a good point, but even so, I'm not at all accustomed to this. */
IF ~~ + t2.15
END

IF ~~ t2.15
 SAY @80 /* To viewing a magical order from the outside, always questioning their motives, always assuming the worst... it takes some getting used to. */
	++ @81 /* You'll adjust quickly enough, I can promise you that much. */ + t2.16
	++ @82 /* All I can say is welcome to the other side. */ + t2.17
	++ @83 /* My heart bleeds for you if that's the worst of your problems. */ + t2.18
	++ @84 /* You've never distrusted an organization before? That's hard to believe. */ + t2.19
END

IF ~~ t2.16
 SAY @85 /* Yes, I suppose I'll have to. */
IF ~~ EXIT
END

IF ~~ t2.17
 SAY @86 /* The other side, is it? That's as fine a way to look at it as any, I suppose. */
IF ~~ EXIT
END

IF ~~ t2.18
 SAY @87 /* No, <CHARNAME>. The worst of my problems is being stranded on a different plane. I would not have expected you to forget that so soon. */
IF ~~ EXIT
END

IF ~~ t2.19
 SAY @88 /* Not an arcane one, though I suppose what one is dedicated to makes little enough difference in the end. */
IF ~~ EXIT
END
END

// 3.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",6)~ THEN RH#EVAJ t3
@89 /* I heard a tale recently about a northerner who stopped a war--<PRO_HESHE> bore the same name as you, <CHARNAME>. I imagine that's no coincidence. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @90 /* It's no coincidence at all. That was me. */ + t3.1
	++ @91 /* They're telling tales about it, are they? It's about time. */ + t3.2
	++ @92 /* <CHARNAME> is a very popular name, as it so happens. */ + t3.3
	++ @93 /* I'm not interested in talking about it. Let's move on. */ + t3.4

APPEND RH#EVAJ

IF ~~ t3.1
 SAY @94 /* Hm. I expected as much. You're too... singular a personality for it to have been someone else. */
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY @95 /* Indeed they are. You're too... singular a personality for them not to, I imagine. */
IF ~~ + t3.5
END
END

CHAIN RH#EVAJ t3.3
@96 /* Is it? I would not know, but there were more similarities than just that. */
== RH#EVAJ IF ~Race(Player1,ELF) Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ THEN @97 /* Your skill at magic, for instance. Elven mages are hardly uncommon, but for there to be two of the same name with such dedication... I don't believe it, my friend. */
== RH#EVAJ IF ~!Race(Player1,ELF) Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ THEN @98 /* Your skill at magic, for instance. For there to be two of the same name with such dedication... I don't believe it, my friend. */
== RH#EVAJ IF ~Class(Player1,SORCERER)~ THEN @99 /* For instance, your sorcery. I've never seen such a thing before, and that two of the same name might possess such unusual powers... I don't believe it, my friend. */
== RH#EVAJ IF ~Class(Player1,CLERIC_ALL) !Class(Player1,MAGE_ALL)~ THEN @100 /* I know little of the deity you worship, but for there to be two powerful clerics of that faith with the same name... I don't believe it, my friend. */
== RH#EVAJ IF ~Class(Player1,DRUID_ALL)~ THEN @101 /* Druids don't seem to be terribly common in these lands, so for there to be two of the same name with such skill... I don't believe it, my friend. */
== RH#EVAJ IF ~Class(Player1,PALADIN_ALL)~ THEN @102 /* Your calling, for instance. Paladins don't seem to be terribly common, so for there to be two of the same name with such skill... I don't believe it, my friend. */
== RH#EVAJ IF ~Class(Player1,MONK)~ THEN @103 /* Your calling, for instance. Monks don't seem to be terribly common in these lands, so for there to be two of the same name with such skill... I don't believe it, my friend. */
== RH#EVAJ IF ~Race(Player1,ELF) !Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,DRUID_ALL) !Class(Player1,PALADIN_ALL) !Class(Player1,MONK)~ THEN @104 /* Our people don't seem to be terribly common in these lands, so for there to be two of the same name with such skill... I don't believe it, my friend. */
== RH#EVAJ IF ~Race(Player1,HALF_ELF) !Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL)!Class(Player1,DRUID_ALL) !Class(Player1,PALADIN_ALL) !Class(Player1,MONK)~ THEN @105 /* Your elven blood, for example. I'm not sure how common half-elves are in these lands, but for there to be two of the same name with such skill... I don't believe it, my friend. */
== RH#EVAJ IF ~!Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HUMAN) !Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL)!Class(Player1,DRUID_ALL) !Class(Player1,PALADIN_ALL) !Class(Player1,MONK)~ THEN @106 /* Your people don't seem to be terribly common in these lands, so for there to be two of the same name with such skill... I don't believe it, my friend. */
END
IF ~~ + t3.5

APPEND RH#EVAJ

IF ~~ t3.4
 SAY @107 /* I see. Very well, then. */
IF ~~ EXIT
END

IF ~~ t3.5
 SAY @108 /* Unfortunately, the story was somewhat too muddled to make much sense of, especially given my lack of familiarity with these lands. In some versions, there's a great deal of talk about a trade crisis, and in others... well. */
 = @109 /* In others it sounds as if you'd fought the sort of villain who might as well have stepped out of an ancient legend. */
 	++ @110 /* Both versions are true. The trade crisis was just the beginning. */ + t3.6
 	++ @111 /* The whole thing was a bit confusing, to tell the truth. */ + t3.7
 	++ @112 /* And what precisely do the stories have to say about me? */ + t3.8
	++ @113 /* I have no idea what you're talking about. Are we done here? */ + t3.4
END

IF ~~ t3.6
 SAY @114 /* I see. In that case, perhaps the truth was even more complicated than the tales. */
IF ~~ + t3.9
END

IF ~~ t3.7
 SAY @115 /* I believe you, though if anything it's grown even more confusing in the retelling. */
IF ~~ + t3.9
END

IF ~~ t3.8
 SAY @116 /* What you might expect, really, and half of it self-contradictory. */ 
IF ~~ + t3.9
END

IF ~~ t3.9
 SAY @117 /* Regardless, it seems that you have led a far more... eventful... life than I had realized, assuming that even half of the story is true. I'm not sure why I would have expected otherwise, but it comes as a surprise all the same. */
	+ ~Race(Player1,ELF)~ + @118 /* What exactly had you been expecting? */ + t3.10
	+ ~Race(Player1,HUMAN)~ + @118 /* What exactly had you been expecting? */ + t3.11
	+ ~!Race(Player1,ELF) !Race(Player1,HUMAN)~ + @118 /* What exactly had you been expecting? */ + t3.12
	++ @119 /* I assure you, you don't know the half of it. */ + t3.13
	++ @120 /* I didn't ask for any of it. These things just happen. */ + t3.14
	++ @121 /* I wouldn't assume that any of what you've heard is true. */ + t3.15
END

IF ~~ t3.10
 SAY @122 /* Our people are not terribly well known for taking such an interest in human affairs, at least on my world. Though it may well be different here, of course. */
IF ~~ + t3.16
END

IF ~~ t3.11
 SAY @123 /* Nothing in particular, truth be told. If I've learned nothing else about humans, it's that you tend to defy expectations. */
IF ~~ + t3.16
END

IF ~~ t3.12
 SAY @124 /* It is more a matter of what I was *not* expecting, <CHARNAME>, and to hear of a <PRO_RACE> playing such a role in human affairs... that was unexpected indeed. */
IF ~~ + t3.16
END

IF ~~ t3.13
 SAY @125 /* At this point, <CHARNAME>, I'm sure I know considerably less than that. */
IF ~~ + t3.16
END

IF ~~ t3.14
 SAY @126 /* Things just happen to many of us, <CHARNAME>, but we seldom end up preventing wars. */
IF ~~ + t3.16
END

IF ~~ t3.15
 SAY @127 /* No, that's not a mistake I'm inclined to make, but your story is impressive all the same. */
IF ~~ + t3.16
END

IF ~~ t3.16
 SAY @128 /* In any case, you will need to tell me the true story at some point, once I've mastered Faerûnian geography somewhat better. At present I'm lucky if I can find myself a detailed map of Amn, much less the rest of the world. */
	++ @129 /* I look forward to it. I'd love to share some of my old tales with you. */ + t3.17
	++ @130 /* Have you been feeling a bit lost? We can fix that easily enough. */ + t3.18
	++ @131 /* You and me both. The one I use looks like it was scrawled by a child. */ + t3.19
	++ @132 /* A geography lesson isn't going to make sense of any of this, unfortunately. */ + t3.20
END

IF ~~ t3.17
 SAY @133 /* I'm glad to hear it, <CHARNAME>. Thank you. */
IF ~~ EXIT
END

IF ~~ t3.18
 SAY @134 /* I would appreciate that, <CHARNAME>. Thank you. */
IF ~~ EXIT
END

IF ~~ t3.19
 SAY @135 /* (laugh) Yes, I had noticed that. */
IF ~~ EXIT
END

IF ~~ t3.20
 SAY @136 /* Perhaps not, but it will eliminate one source of confusion. */
IF ~~ EXIT
END
END

// 4.

BEGIN RH#EVMES

CHAIN IF ~Global("rh#EvaMessengerSpawn","GLOBAL",1)~ THEN RH#EVMES m1
@137 /* Excuse me, my Lady. You are Mistress Evandra the Red, are you not? */
DO ~SetGlobal("rh#EvaMessengerSpawn","GLOBAL",2)~
== RH#EVAJ @138 /* I am, though I can't imagine who might be asking for me. */
== RH#EVMES @139 /* Sir Onvo, Knight of the Sword, sends his regards. He wished me to deliver this to you. */
== RH#EVAJ @140 /* Really? Give it here, then, would you? I was hardly expecting to hear from him. */
EXIT

CHAIN IF ~Global("rh#EvaTalks","GLOBAL",8)~ THEN RH#EVAJ t4
@141 /* Hm. Onvo wishes us to know that he and the others are settling in well at the Radiant Heart, or at least as well as can be expected under the circumstances. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
= @142 /* He says... well, that's interesting. He says that he regrets that matters were always so tense between the four of us, and he suspects that Reyna feels similarly. */
= @143 /* I'm sure she does, if only because she now has to rely upon my good will if she ever wishes to see Ansalon again. What a dilemma that must be. */
END
	++ @144 /* You two certainly didn't seem to get along very well. */ + t4.1
	++ @145 /* That's awfully uncharitable, Evandra. */ + t4.2
	++ @146 /* They must be really worried you're going to forget about them. */ + t4.3
	++ @147 /* Is that it, then? Can we move on now? */ + t4.4

APPEND RH#EVAJ

IF ~~ t4.1
 SAY @148 /* I assure you, <CHARNAME>, you don't know the half of it. */
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY @149 /* I've never been overly known for my charity, <CHARNAME>. Particularly towards those I don't care for. */
IF ~~ + t4.5
END

IF ~~ t4.3
 SAY @150 /* To be writing like this, you mean? You may be right, <CHARNAME>. Reyna is certainly convinced I'm too fickle to be trusted, at least. */
IF ~~ + t4.5
END

IF ~~ t4.4
 SAY @151 /* As you'd like. I suppose I can reply on my own time. Or not, as the case may be. */
IF ~~ EXIT
END

IF ~~ t4.5
 SAY @152 /* Still, it was clever enough of her to use Onvo as a messenger. If the letter had come from anyone else, I may not have read it at all, but Onvo... for a Knight of Solamnia, he wasn't altogether unbearable. */
 = @153 /* As for the others, it was a minor miracle that we never did try to kill each other. */
	+ ~!Class(Player1,PALADIN_ALL)~ + @154 /* Paladins can be... difficult... people to get along with. */ + t4.6
	+ ~Class(Player1,PALADIN_ALL)~ + @155 /* I'm a paladin myself. What exactly was your quarrel with them? */ + t4.7
	++ @156 /* Surely you exaggerate. They didn't seem that violent. */ + t4.8
	++ @157 /* How did things get quite that bad between you anyway? */ + t4.7
	++ @158 /* So many enemies in that sphere and you were fighting amongst yourselves? */ + t4.9
END

IF ~~ t4.6
 SAY @159 /* That would be an understatement, and as for Knights of Solamnia and Wizards of High Sorcery... we've never exactly gotten along. */
IF ~~ + t4.10
END

IF ~~ t4.7
 SAY @160 /* The conflict between us is older than I am. Knights of Solamnia and Wizards of High Sorcery... we've never exactly gotten along. */
IF ~~ + t4.10
END

IF ~~ t4.8
 SAY @161 /* From your perspective, perhaps not, but Knights of Solamnia and Wizards of High Sorcery... we've never exactly gotten along. */
IF ~~ + t4.10
END

IF ~~ t4.9
 SAY @162 /* More often than not, unfortunately. Knights of Solamnia and Wizards of High Sorcery... we've never exactly gotten along. */
IF ~~ + t4.10
END

IF ~~ t4.10
 SAY @163 /* There are exceptions, of course, like Onvo himself. His brother Elic is a wizard--a White Robe, to be exact. You see, on Krynn, the color of a wizard's robes indicates their allegiance: white for good, black for evil, and red for those of us who haven't much use for such stupidity one way or the other. Three separate Orders for three different philosophies. */
 = @164 /* Of course, there are many on my world who are nervous around any mage who does not wear white, and no few who expect trouble even from those who do. */
	++ @165 /* Which of those two categories did the Solamnics fall into? */ + t4.11
	++ @166 /* And you never thought about wearing something like green instead? */ + t4.12
	+ ~Alignment(Player1,MASK_GOOD)~ + @167 /* What would you expect? You're ambiguous about your intentions. */ + t4.13
	+ ~!Alignment(Player1,MASK_EVIL)~ + @168 /* You don't believe in trying to make the world a better place? */ + t4.14
	+ ~!Alignment(Player1,MASK_GOOD)~ + @169 /* I guess white would mean they know you're at their beck and call. */ + t4.15
	+ ~Alignment(Player1,MASK_EVIL)~ + @170 /* Let them be nervous. It's just another form of respect. */ + t4.16
	+ ~InParty("Edwin")~ + @171 /* A wizard in red isn't going to do much better here, you know. */ + t4.17
	+ ~!InParty("Edwin")~ + @171 /* A wizard in red isn't going to do much better here, you know. */ + t4.18
END

IF ~~ t4.11
 SAY @172 /* The first one, to their credit, though as far as I was concerned, it made little enough difference. */
IF ~~ + t4.19
END

IF ~~ t4.12
 SAY @173 /* (laugh) That would have been inappropriate. And would no doubt have only made matters more difficult anyway. */
IF ~~ + t4.19
END

IF ~~ t4.13
 SAY @174 /* Ambiguous, am I? No more than anyone else, I should think, though Reyna would certainly agree with you. */
IF ~~ + t4.19
END

IF ~~ t4.14
 SAY @175 /* What I believe is that the noblest of intentions can still lead to a world in flames. People often forget that. The Solamnics certainly did. */
IF ~~ + t4.19
END

IF ~~ t4.15
 SAY @176 /* (laugh) I've never known even a White Robe to be quite so biddable, but perhaps people do assume otherwise. */
IF ~~ + t4.19
END

IF ~~ t4.16
 SAY @177 /* I've known many who would agree with you. Difficult people, more often than not, with overly complicated lives. */
IF ~~ + t4.19
END

IF ~~ t4.17
 SAY @178 /* (laugh) Yes, I had gathered as much from our friend Edwin. I don't seem to elicit quite the same reactions, though. */
IF ~~ + t4.19
END

IF ~~ t4.18
 SAY @179 /* (laugh) Yes, I've heard the wizards of Thay mentioned a time or two already, though my own colors seem to elicit bemusement rather than fear. */
IF ~~ + t4.19
END

IF ~~ t4.19
 SAY @180 /* Regardless, I hope you can now understand exactly why things were so strained between us. We coexisted as well as we could--we didn't have much of an alternative--but trust... no. Trust was never going to be an option. */
 = @181 /* Especially under the circumstances. They assumed that I was to blame for the sphere sealing itself and shifting planes in the first place. Whenever anything unpleasant happens, there must always be a mage behind it. */
 = @182 /* I'd never obliged them to stay, of course, but they were as unwilling to leave the sphere in my hands as I was to leave it in theirs. */
	++ @183 /* What about now? Do you mean to reply to that letter? */ + t4.20
	++ @184 /* Do you have any idea how long you were trapped there? */ + t4.21
	++ @185 /* When you put it like that, I'm surprised it didn't turn violent. */ + t4.22
	++ @186 /* A bit more good sense and you'd probably all still be home. */ + t4.23
END

IF ~~ t4.20
 SAY @187 /* Yes, I think so. I couldn't have been happier to see the last of them, but now... now I hardly know what to think. Here we are, the four of us, quite likely the only Ansalonians in this realm at all, and yet we might as well be from altogether different worlds ourselves. */
IF ~~ + t4.24
END

IF ~~ t4.21
 SAY @188 /* Several months, I would guess. Enough for their company to grow oppressive, but now... now I hardly know what to think. Here we are, the four of us, quite likely the only Ansalonians in this realm at all, and yet we might as well be from altogether different worlds ourselves. */
IF ~~ + t4.24
END

IF ~~ t4.22
 SAY @189 /* Once or twice it almost did, though now... now I hardly know what to think. Here we are, the four of us, quite likely the only Ansalonians in this realm at all, and yet we might as well be from altogether different worlds ourselves. */
IF ~~ + t4.24
END

IF ~~ t4.23
 SAY @190 /* Yes, I'm well aware of that much. And now... now I hardly know what to think. Here we are, the four of us, quite likely the only Ansalonians in this realm at all, and yet we might as well be from altogether different worlds ourselves. */
IF ~~ + t4.24
END

IF ~~ t4.24
 SAY @191 /* But no matter. I have a letter to reply to, and you also no doubt have more important things to do than hear about ancient feuds on distant worlds. Come, let's continue on for the moment, and we can speak again later. */
IF ~~ EXIT
END
END

// 5. 
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",10)~ THEN RH#EVAJ t5
@192 /* I'm beginning to think that I'm never going to get used to Athkatla. I can't say that I care for human settlements in general, but there's something about this one that truly sets me on edge. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @193 /* Athkatla is a bit of a madhouse, I have to agree. */ + t5.1
	++ @194 /* I take it you don't spend much time around humans? */ + t5.2
	++ @195 /* Come now, Evandra. There's opportunity around every corner. */ + t5.3
	++ @196 /* Not right now, please. I don't have time to talk. */ + t5.4

APPEND RH#EVAJ

IF ~~ t5.1
 SAY @197 /* A characteristic it shares with many other human cities, unfortunately. This is hardly the first one I've ever had the dubious honor of living in. */
IF ~~ + t5.5
END

IF ~~ t5.2
 SAY @198 /* Quite the opposite, truth be told. This is hardly the first human city I've ever had the dubious honor of living in. */
IF ~~ + t5.5
END

IF ~~ t5.3
 SAY @199 /* Followed by a blade, as often as not. This isn't the first human city I've  had the dubious honor of living in, you know. */
IF ~~ + t5.5
END

IF ~~ t5.4
 SAY @200 /* No? Very well, then. Perhaps later. */
IF ~~ DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t5.5
 SAY @201 /* I'd assumed that once you knew one pirate infested port city, you knew all of them, but that seems not to be the case. I suppose a city on a different plane is always going to seem somewhat alien, but I think there's more to it than that. */
 = @202 /* Perhaps there's some truth to the idea that every city has a unique flavor, a personality all its own. Maybe that is why Athkatla feels so different. */
	++ @203 /* Tell me, is that a good thing or a bad thing? */ + t5.6
	++ @204 /* Personality is certainly something Athkatla doesn't lack. */ + t5.7
	++ @205 /* I didn't take you for the type to be slumming in port cities. */ + t5.8
	++ @206 /* Not just every city. Every town, village, and hamlet as well. */ + t5.9
END

IF ~~ t5.6
 SAY @207 /* In Athkatla's case, bad, I should think. Few in my world would dare attack me in the middle of the street, but here, <CHARNAME>... here it seems almost a daily occurrence. */
IF ~~ + t5.10
END

IF ~~ t5.7
 SAY @208 /* No, and it doesn't lack for daring either, <CHARNAME>. Few in my world would dare attack me in the middle of the street, but here... here it seems almost a daily occurrence. */
IF ~~ + t5.10
END

IF ~~ t5.8
 SAY @209 /* There's little danger attached to it in my world, <CHARNAME>. Few would dare attack me in the middle of the street, but here... here it seems almost a daily occurrence. */
IF ~~ + t5.10
END

IF ~~ t5.9
 SAY @210 /* I trust those are less violent about it, though. Few in my world would dare attack me in the middle of the street, but here, <CHARNAME>... here it seems almost a daily occurrence. */
IF ~~ + t5.10
END

IF ~~ t5.10
 SAY @211 /* I wouldn't expect the same deference I'd receive in Ansalon, but even so, a company such as ours... surely nobody in possession of his senses would think to rob it. Not when there's easier prey at hand. */
 = @212 /* I'd find it insulting if it weren't so utterly bemusing. */
	+ ~!Alignment(Player1,MASK_EVIL)~ + @213 /* Better they come after us than people who can't defend themselves. */ + t5.11
	++ @214 /* You don't go after easy prey if you're interested in riches. */ + t5.12
	++ @215 /* In the dark, everyone must look like a victim. */ + t5.13
	++ @216 /* What I find bemusing is the fact that the city guard is almost never to be found. */ + t5.14
	++ @217 /* Is that what you don't like about Athkatla? All the thieves? */ + t5.15
END

IF ~~ t5.11
 SAY @218 /* Mm, better for everyone except the fools themselves, at least. */
IF ~~ + t5.16
END

IF ~~ t5.12
 SAY @219 /* Mm, I suppose not, though I would expect them to go after nobles instead. */
IF ~~ + t5.16
END

IF ~~ t5.13
 SAY @220 /* Mm, perhaps, though if the fools can't even see who they mean to attack, I question their sanity that much more. */
IF ~~ + t5.16
END

IF ~~ t5.14
 SAY @221 /* Mm, I wonder if they have any real control at all. */ 
IF ~~ + t5.16
END

IF ~~ t5.15
 SAY @222 /* Mm, that is certainly *one* thing I don't like about it. */
IF ~~ + t5.16
END

IF ~~ t5.16
 SAY @223 /* (sigh) But no matter. If the thieves wish for death, so be it--I've little pity for the incurably stupid. As for the rest of Athkatla, I wish I could say it made more sense than its criminal element, but I'm honestly not sure I've ever seen a city more poorly governed. */
 = @224 /* How it keeps from dissolving into a mass of competing factions is a puzzle I haven't the skill to solve. */
	++ @225 /* As far as I can tell, that's precisely what has happened here. */ + t5.17
	++ @226 /* Really, Evandra, is there anything about Athkatla you don't hate? */ + t5.18
	+ ~!Alignment(Player1,MASK_CHAOTIC)~ + @227 /* The city could use a firm hand to put it back into working order. */ + t5.19
	+ ~!Alignment(Player1,MASK_LAWFUL)~ + @228 /* I don't know about you, but I certainly relish the madness of it all. */ + t5.20
	++ @229 /* We haven't been here long enough to really know what's going on. */ + t5.21
END

IF ~~ t5.17
 SAY @230 /* An intriguing thought, to be sure... perhaps it is merely the illusion of a city we see before us. A mask. A house of cards. */
IF ~~ + t5.22
END

IF ~~ t5.18
 SAY @231 /* Oh, I wouldn't even say that I hate it, exactly. It's certainly quite the house of cards they've built here, if nothing else. */
IF ~~ + t5.22
END

IF ~~ t5.19
 SAY @232 /* It probably could, but I'm not sure that even that would make a difference. Sometimes I think that it's merely the illusion of a city we see before us. A mask. A house of cards. */
IF ~~ + t5.22
END

IF ~~ t5.20
 SAY @233 /* You would, wouldn't you? Still, if you wish to dance, then dance... it's certainly the intriguing house of cards they've built here, if nothing else. */
IF ~~ + t5.22
END

IF ~~ t5.21
 SAY @234 /* Perhaps not, but I can usually recognize a house of cards when I see one. I just wonder how long it will be before it all comes tumbling down. */
IF ~~ EXIT
END

IF ~~ t5.22
 SAY @235 /* I only wonder how long it will be before it all comes tumbling down. */
IF ~~ EXIT
END
END

// 6.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",12)~ THEN RH#EVAJ t6
@236 /* I must admit, I've given precious little thought to your friend Imoen's situation. Seeking a renegade mage's freedom rather than their capture... it takes some getting used to. */ 
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @237 /* She did nothing wrong. We had no way of knowing Amnish law. */ + t6.1
	++ @238 /* However little thought you've given to her, I've been giving even less. */ + t6.2
	++ @239 /* So you've finally figured out that you're not in Ansalon anymore? */ + t6.3
	++ @240 /* Can we talk about this later? I don't have time right now. */ + t6.4

APPEND RH#EVAJ

IF ~~ t6.1
 SAY @241 /* Yes, I understand that now. An exception ought to have been made for her. */
IF ~~ + t6.5
END

IF ~~ t6.2
 SAY @242 /* Oh. I see. I had been under the impression that you two had a family relation of some sort. I take it I was wrong? */
	++ @243 /* We did grow up together, but I never liked her. */ + t6.6
	++ @244 /* I'm annoyed with her, but yes, she's like a sister to me. */ + t6.7
	++ @245 /* She's family of a sort, but I'm tired of having to save her from herself. */ + t6.8
	++ @246 /* I honestly don't remember. The past is a bit blurry. */ + t6.9
END

IF ~~ t6.3
 SAY @247 /* I've known that for quite some time, <CHARNAME>. But old assumptions are hard to overcome. */
IF ~~ + t6.5
END

IF ~~ t6.4
 SAY @248 /* As you wish. I'll leave you be. */
IF ~~ DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t6.5
 SAY @249 /* If I might ask... I'm under the impression that you two have a family relation of some sort. What is she precisely to you? */
	++ @250 /* We grew up together, but I honestly never liked her. */ + t6.6
	++ @251 /* We're not related, but she's like a sister to me anyway. */ + t6.7
	++ @252 /* Imoen? She's best described as a neverending source of trouble. */ + t6.8
	++ @246 /* I honestly don't remember. The past is a bit blurry. */ + t6.9
END

IF ~~ t6.6
 SAY @253 /* Mm, I can understand that easily enough. I was never particularly considerate with all of my childhood acquaintances either, much as I might regret it now. Everyone I grew up with... well. */
IF ~~ + t6.10
END

IF ~~ t6.7
 SAY @254 /* Mm, you're lucky to have each other, then. I would give a great deal to know that my own brother was searching for me right now, but... well. */
IF ~~ + t6.10
END

IF ~~ t6.8
 SAY @255 /* (laugh) You sound a great deal like my own brother right now. I wish I could say that he would be searching for me also, but... well. */
IF ~~ + t6.10
END

IF ~~ t6.9
 SAY @256 /* Truly? How peculiar. I hope we find her, then, for both of your sakes. I can't say I know what it's like to lose your memory, but your past... well. */
IF ~~ + t6.10
END

IF ~~ t6.10
 SAY @257 /* There are things that once done, cannot be undone. Suffice to say that my family is unlikely to ever even find out that I disappeared, much less care if they did. */
	++ @258 /* You've never spoken about your family before. */ + t6.11
	++ @259 /* Why wouldn't they find out what happened to you? */ + t6.12
	++ @260 /* That's a pretty uncharitable assessment of your family, Evandra. */ + t6.13
	++ @261 /* Whatever tragedies are in your past, woman, I'm not interested. */ + t6.14
END

IF ~~ t6.11
 SAY @262 /* I can't say that I even have a family to speak of. Not anymore. */
IF ~~ + t6.15
END

IF ~~ t6.12
 SAY @263 /* We haven't spoken in over fifty years. I don't imagine anyone will think it appropriate to tell them anything at all. */
IF ~~ + t6.15
END

IF ~~ t6.13
 SAY @264 /* If you expect charity, look elsewhere. I have little enough use for it as it is, and less where my family is concerned. */
IF ~~ + t6.15
END

IF ~~ t6.14
 SAY @265 /* My, but you're in a beastly mood to<DAYNIGHT>. But very well, feel free to keep your own company in the future. */
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ t6.15
 SAY @266 /* We proved... a mutual disappointment to each other, <CHARNAME>. They had expected me to bring something like honor to the family, and I expected that they would be there when I needed them. None of us got what we wanted. */
	++ @267 /* What exactly happened between you? */ + t6.16
	++ @268 /* I've never known elves to care that much about honor. */ + t6.17
	++ @269 /* What did you do? Run away with a human? */ + t6.18
	++ @270 /* That seems like a cold way to look at it. */ + t6.19
END 

IF ~~ t6.16
 SAY @271 /* Many things, I'm afraid. Or perhaps just one thing, and all the consequences that were to follow. */
IF ~~ + t6.20
END

IF ~~ t6.17
 SAY @272 /* "Honor" is perhaps the wrong word, but it is the closest that comes to mind. */
IF ~~ + t6.20
END

IF ~~ t6.18
 SAY @273 /* No, it was a good deal more complicated than that. Or less complicated, depending on your point of view. */
IF ~~ + t6.20
END

IF ~~ t6.19
 SAY @274 /* Perhaps. I've found a good deal of value in approaching things coldly, however. If my people taught me nothing else, it was this. */
IF ~~ + t6.20
END

IF ~~ t6.20
 SAY @275 /* You see, in my world there's a test one takes to join the Orders of High Sorcery--a test of skill, a test of character, a test of one's commitment to magic. It's a dangerous, often deadly affair, and yet... intimate. Magically crafted, drawn from the dreams and memories of the candidate--a realm of possibility given life of a sort. */
 = @276 /* What I learned during mine... it changed me in ways I hadn't imagined possible, in ways there was no going back from. It was like being shoved in front of a mirror I'd been avoiding my entire life. My former mentor has since told me that she was not entirely surprised by the results, but I certainly was. */
 = @277 /* To put it briefly, I passed my test in every way except one--I was not deemed worthy of wearing white. */
	++ @278 /* That's the color associated with good magic, right? */ + t6.21
	++ @279 /* I take it your family took that poorly. */ + t6.22
	++ @280 /* "Worthy"? I didn't think you cared much for goodness and honor. */ + t6.23
	++ @281 /* Why not? What happened, exactly? */ + t6.24
END

IF ~~ t6.21
 SAY @282 /* Yes, and for an elf to wear any other... it is simply not done. */
IF ~~ + t6.25
END

IF ~~ t6.22
 SAY @283 /* Indeed. For an elf to wear any other color... it is simply not done. */
IF ~~ + t6.25
END

IF ~~ t6.23
 SAY @284 /* I did once, <CHARNAME>. Or at least I thought I did. For an elf to wear any other color... it is simply not done. */
IF ~~ + t6.25
END

IF ~~ t6.24
 SAY @285 /* Childish foolishness, more than anything else, but the consequences were real enough. For an elf to wear any other color... it is simply not done. */
IF ~~ + t6.25
END

IF ~~ t6.25
 SAY @286 /* But enough of this. I've no great desire to burden you with the nonsensical traditions and prejudices of my homeland. We can speak again later, but for now... I would sooner we just continued on. */
IF ~~ EXIT
END
END

// 7.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",14)~ THEN RH#EVAJ t7
@287 /* I fear I was... somewhat enigmatic when last we spoke, <CHARNAME>. For that I apologize. Perhaps I shouldn't have spoken at all, but what is said cannot be unsaid, and I'd rather not leave you with half of a story. */ 
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @288 /* Is this about your falling out with your family? */ + t7.1
	++ @289 /* You're always somewhat enigmatic. I thought it was intentional. */ + t7.2
	++ @290 /* If it's a painful topic, you don't need to share it. */ + t7.3
	++ @291 /* It's fine. I wasn't overly interested anyway. */ + t7.4

APPEND RH#EVAJ

IF ~~ t7.1
 SAY @292 /* A rather quaint way to put it, but... yes, effectively. */
IF ~~ + t7.5
END

IF ~~ t7.2
 SAY @293 /* Mm, I may be an illusionist, but... no. I seldom intentionally try to confuse people. Especially over issues like this. */
IF ~~ + t7.5
END

IF ~~ t7.3
 SAY @294 /* I appreciate the thought, but I'm not quite as fragile as that. */
IF ~~ + t7.5
END

IF ~~ t7.4
 SAY @295 /* Oh. I had thought you of a less... indifferent nature, but no matter. */
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ t7.5
 SAY @296 /* I don't think I've ever spoken to you of Qualinesti before--that's the name of the elven kingdom I come from. I could speak about it for hours on end, I'm sure, but the only thing that's truly relevant to my story is that magic... good magic, that is, is as prestigious a calling amongst us as any. */
 = @297 /* For a common family like mine, that meant a great deal. I was the first in several generations to have more than minor abilities, and I was... not exactly humble about it. None of us were. */
 = @298 /* I remember how my brother Caladras used to daydream about accompanying me to take my Test... he never quite appreciated the dangers that would be involved, nor the possibility that things might not play out as we had expected. */
 = @299 /* Though neither did I. For all my arcane training, there were far too many questions I'd never even thought to ask, too many situations I'd never considered at all. In many ways, I was my own worst enemy. */
	++ @300 /* What type of questions and situations are we talking about? */ + t7.6
	++ @301 /* Why would a magical test matter so much? None of it was real, right? */ + t7.7
	++ @302 /* Are you going to tell me what happened or just drop cryptic hints? */ + t7.8
	++ @303 /* On second thought, I've lost interest. Let's move on. */ + t7.4
END

IF ~~ t7.6
 SAY @304 /* The type that come up when you are too focused on your own achievements to pay much mind to the people around you. */
IF ~~ + t7.9
END

IF ~~ t7.7
 SAY @305 /* Reality is such a slippery concept, <CHARNAME>. Decisions are decisions, whether or not they have lasting consequences. */
IF ~~ + t7.9
END

IF ~~ t7.8
 SAY @306 /* I... I'm sorry, <CHARNAME>. Suffice to say that my decision making left something to be desired. */
IF ~~ + t7.9
END

IF ~~ t7.9
 SAY @307 /* (sigh) There was a girl I had known as a child--sweet Marathelassa, a timid little thing who all but worshiped the ground I walked upon. Three times she appeared during my Test, asking for my help, but I paid her no more attention there than I ever had in reality. */
 = @308 /* The first two would have cost me little, but the third time... the third time the stakes became clear for both of us. It would have cost me everything, and so I left her to her fate. */
 = @309 /* I knew then and there what color I would be wearing, and what it would mean for me. Only White Robed mages are accepted within elven lands. */
	+ ~!Alignment(Player1,MASK_EVIL)~ + @310 /* You seem to regret it. Were there no second chances allowed? */ + t7.10
	+ ~Alignment(Player1,MASK_EVIL)~ + @311 /* You seem to regret it, though I can't imagine why. Did that not matter? */ + t7.10
	+ ~Alignment(Player1,MASK_GOOD)~ + @312 /* Was that the only reason you cared? Because you wouldn't be allowed back? */ + t7.11
	++ @313 /* That sounds pretty arbitrary. You're not exactly a danger to society. */ + t7.12
	++ @314 /* Are you saying that a bit of childhood cruelty shaped the rest of your life? */ + t7.13
	++ @315 /* What did you do afterwards if you couldn't return home? */ + t7.14
END

IF ~~ t7.10
 SAY @316 /* No. The Conclave doesn't much care the color of its wizards' robes, and as for my people... well. I was kindly invited not to return home, on pain of official exile, and left to make sense of things on my own. */
IF ~~ + t7.15
END

IF ~~ t7.11
 SAY @317 /* No, <CHARNAME>. I cared about a great deal more than just that at the time. Perhaps I still would, had I not been kindly invited to stay away, on pain of official exile, and left to make sense of things on my own. */
IF ~~ + t7.15
END

IF ~~ t7.12
 SAY @318 /* No, but according to my people, red is but a step away from wearing black--on this issue they cannot be reasoned with. And so I was kindly invited not to return home, on pain of official exile. */
IF ~~ + t7.15
END

IF ~~ t7.13
 SAY @319 /* No more than it shapes anyone else's, <CHARNAME>. I was just made... more aware of it. But the reason did not matter--all that mattered was the results, so I was kindly invited not to return home, on pain of official exile. */ 
IF ~~ + t7.15
END

IF ~~ t7.14
 SAY @320 /* I wasn't sure what to do. At first I waited, hoping that by some miracle the rules would not apply, but of course they did. I was kindly invited to stay away, on pain of official exile. */
IF ~~ + t7.15
END

IF ~~ t7.15
 SAY @321 /* I had expected... worse, truth be told. I had been preparing myself as best I could for the news that I had been declared a dark elf, an outcast from elven society, but I would have to wait more than a decade for that particular... distinction. */
 = @322 /* I suspect there was at first some vain hope that the results of my Test had been mistaken, that I would eventually find my way to where I was supposed to be. I was already there, of course. A fact that would become... increasingly obvious. */
	++ @323 /* Increasingly obvious? What exactly does that mean? */ + t7.16
	++ @324 /* And your family really just went along with all of this? */ + t7.17
	++ @325 /* That sounds like something you can only say in hindsight. */ + t7.18
	++ @326 /* Was there really no solution or compromise available? */ + t7.19
END

IF ~~ t7.16
 SAY @327 /* Suffice to say that I was less... discerning about the company I kept than would have been deemed appropriate. My family was displeased to learn of that as well. */
IF ~~ + t7.20
END

IF ~~ t7.17
 SAY @328 /* It took them some time to process everything, but they never had any real choice in the matter. */
IF ~~ + t7.20
END

IF ~~ t7.18
 SAY @329 /* Hm. Perhaps so, but the path I chose seems more appropriate than any of the alternatives that might have been available. */
IF ~~ + t7.20
END

IF ~~ t7.19
 SAY @330 /* None that I would have been willing to accept myself. */
IF ~~ + t7.20
END

IF ~~ t7.20
 SAY @331 /* My brother... he wished me to renounce magic, abandon the Orders, and return home to attempt to live something of a normal life. I don't think he truly recognized how disgraceful that would have been, were it even possible at all. The type of people who survive the Test of High Sorcery are seldom inclined to walk away again afterwards. */
 = @332 /* For me, that was doubly true. Even if the choice was between my magic and the only home I had ever known, there was only ever one possibility. */
	+ ~Class(Player1,MAGE_ALL)~ + @333 /* I can certainly sympathize with that sentiment. */ + t7.21
	+ ~!Class(Player1,MAGE_ALL)~ + @333 /* I can certainly sympathize with that sentiment. */ + t7.22
	++ @334 /* That's the type of reasoning that got you in trouble in the first place. */ + t7.23
	++ @335 /* And you don't think that the cost was too high? */ + t7.24
	++ @336 /* As far as I'm concerned, family only slows you down. */ + t7.25
	++ @337 /* That's not the sort of choice anyone should have to make. */ + t7.26
END

IF ~~ t7.21
 SAY @338 /* Yes, I thought you might be able to, being a mage yourself. */
IF ~~ + t7.27
END

IF ~~ t7.22
 SAY @339 /* Can you? I suppose that doesn't surprise me. */
IF ~~ + t7.27
END

IF ~~ t7.23
 SAY @340 /* Yes, I dare say it is. That doesn't make it any less true now than it was then. */
IF ~~ + t7.27
END

IF ~~ t7.24
 SAY @341 /* I... would have rather not paid it, but I had precious little choice in the matter. */
IF ~~ + t7.27
END

IF ~~ t7.25
 SAY @342 /* It would be convenient to agree with you, but I've never been able to see it quite like that. */
IF ~~ + t7.27
END

IF ~~ t7.26
 SAY @343 /* No, it really isn't, but there's not much that can be done about it. */
IF ~~ + t7.27
END

IF ~~ t7.27
 SAY @344 /* In any case, I've taken up enough of your time to<DAYNIGHT>, and I've a handful of spell components that are unlikely to prepare themselves. I'm rather tired of this old tale now anyway, and I would hazard a guess that you must be as well. */
	++ @345 /* It's alright if it still bothers you, Evandra. */ + t7.28
	++ @346 /* Not at all. Thank you for letting me know. */ + t7.29
	++ @347 /* I found it rather illuminating, actually. */ + t7.30
	+ ~OR(2) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @348 /* I just think it's good to know that elves are idiots on any plane. */ + t7.31
	+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF)~ + @348 /* I just think it's good to know that elves are idiots on any plane. */ + t7.32	
	++ @349 /* Tired is an understatement. Bored half to death would be accurate. */ + t7.33
END

IF ~~ t7.28
 SAY @350 /* My thanks, <CHARNAME>, but ancient history such as this... I tend not to dwell on it. */
IF ~~ EXIT
END

IF ~~ t7.29
 SAY @351 /* Then... you're welcome, of course. And my thanks for your forebearance as well. */
IF ~~ EXIT
END

IF ~~ t7.30
 SAY @352 /* Illuminating, hm? I am not sure I altogether care for that sound of that, but... so be it. */
IF ~~ EXIT
END

IF ~~ t7.31
 SAY @353 /* Hm. I had not realized that your relationship with your people was as strained as my own. One day you'll need to share that story as well, I dare say. */
IF ~~ EXIT
END

IF ~~ t7.32
 SAY @354 /* Mm, and I suppose this is the legendary courtesy of the <PRO_RACE>s that I see before me now? You do your people proud, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ t7.33
 SAY @355 /* Indeed. Well, I'll just have to see to it that I spare you such tedium in the future. */
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END
END

// 8.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",16)~ THEN RH#EVAJ t8
@356 /* They say that we elves spend half our lives in memories. I try not to conform too closely to that picture, but... well. Too much talk about the past and it can be difficult to bury once more, even for me. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
== RH#EVAJ IF ~Race(Player1,ELF)~ THEN @357 /* I know that you're still quite young, <CHARNAME>, but you've already lived a fuller life than many. Is it the same for you? */
== RH#EVAJ IF ~!Race(Player1,ELF)~ THEN @358 /* I'm not sure I could explain it to you, <CHARNAME>--I've never known a <PRO_RACE> to feel the passage of time in quite the same way. Though perhaps you're an exception. */
END
	+ ~Race(Player1,ELF)~ + @359 /* I think so. I could easily lose myself thinking about happier times. */ + t8.1
	+ ~!Race(Player1,ELF)~ + @360 /* You don't need to be an elf to be nostalgic about happier times, Evandra. */ + t8.1
	++ @361 /* Not really. The past is the past--it's not very relevant to me. */ + t8.2
	+ ~Race(Player1,ELF)~ + @362 /* Sometimes I hardly feel like an elf at all. My life has been too unusual. */ + t8.3
	+ ~!Race(Player1,ELF)~ + @363 /* I'm an exception in many ways. My life has been too unusual. */ + t8.3
	++ @364 /* Maybe, maybe not. I'm not interested in talking about it. */ + t8.4

APPEND RH#EVAJ

IF ~~ t8.1
 SAY @365 /* Mm, it goes deeper than nostalgia, I would say, though I see why you would take it like that. */
IF ~~ + t8.5
END

IF ~~ t8.2
 SAY @366 /* Not at all? I can hardly believe that, though that might say more about me than you. */
IF ~~ + t8.5
END

IF ~~ t8.3
 SAY @367 /* Mm, I can certainly believe that much, and more so with every passing day. */
IF ~~ + t8.5
END

IF ~~ t8.4
 SAY @368 /* I suppose I don't blame you. Let's move on, then. */
IF ~~ EXIT
END

IF ~~ t8.5
 SAY @369 /* I've spoken more than I normally care to about my own homeland as of late, so perhaps it's no wonder that I find myself wondering about yours. And I actually *have* heard something interesting--they say you grew up in a library, in a place called Candlekeep? */
	++ @370 /* Yes, I did. Sometimes I miss the peace of it. */ + t8.6
	++ @371 /* You *would* find that interesting. All the accumulated knowledge. */ + t8.7
	++ @372 /* Unfortunately. A duller childhood I can scarcely imagine. */ + t8.8
	++ @373 /* Well, I would say it was as much a fortress as a library, but yes. */ + t8.9
	++ @374 /* I don't want to talk about Candlekeep. */ + t8.4
END

IF ~~ t8.6
 SAY @375 /* Compared to the life you lead now, I can see why you would. Though it strikes me as somewhat strange. */
IF ~~ + t8.10
END

IF ~~ t8.7
 SAY @376 /* (laugh) A prospect that does pique my interest, yes, but there's more to it than that. */
IF ~~ + t8.10
END

IF ~~ t8.8
 SAY @377 /* (laugh) Compared to the life you lead now, I suppose it would be. And it strikes even me as somewhat strange. */
IF ~~ + t8.10
END

IF ~~ t8.9
 SAY @378 /* I see. I can picture that easily enough as well. More easily, perhaps, though I think that is why it is so difficult to imagine. */
IF ~~ + t8.10
END
END

CHAIN RH#EVAJ t8.10
@379 /* I'm certainly no stranger to secluded places--needless to say, we wizards do not much care for uninvited guests, but to raise a child in one... it has been done, but I think everyone suffers for it. Most of all, the child. */
== RH#EVAJ IF ~Race(Player1,ELF)~ THEN @380 /* It seems not to have harmed you over much, but for an elf... well. It's a shame you never had the chance for a normal childhood amongst your own people. */
== RH#EVAJ IF ~!Race(Player1,ELF)~ THEN @381 /* It seems not to have harmed you over much, but... well. It's still a shame you never had the chance for a normal childhood. */
END
	++ @382 /* I think I would have liked that, but there's no use complaining about it. */ + t8.11
	++ @383 /* I wouldn't say that. Candlekeep provided precisely what I needed. */ + t8.12
	++ @384 /* I never had much use for normality in the first place. */ + t8.13
	+ ~Race(Player1,ELF)~ + @385 /* Growing up amongst elves didn't seem to help you too much, Evandra. */ + t8.14
	+ ~!Race(Player1,ELF)~ + @386 /* Maybe, but a normal childhood didn't seem to help you too much, Evandra. */ + t8.14

APPEND RH#EVAJ

IF ~~ t8.11
 SAY @387 /* No, I suppose that's true enough. Sometimes I forget that you're as much a victim of circumstances as I am. */
IF ~~ + t8.15
END

IF ~~ t8.12
 SAY @388 /* I suppose there's some truth to that. Childhood is nothing if not a time of preparation, and the conflicts that you've had to face... sometimes I forget that you're as much a victim of circumstances as I am. */
IF ~~ + t8.15
END

IF ~~ t8.13
 SAY @389 /* No? Perhaps not, but it's hard to say whether that would have held true had matters been different. Sometimes I think that you're as much a victim of circumstances as I am. */
IF ~~ + t8.15
END

IF ~~ t8.14
 SAY @390 /* I'm not sure I would say that, though I suppose the two of us are victims of circumstances in our own ways. */
IF ~~ + t8.15
END

IF ~~ t8.15
 SAY @391 /* Your exploits in the north, your history with the archmage we now seek... There was once a point where I could have turned back, but I get the impression that you never asked for any of this at all. */
 	+ ~OR(2) Class(Player1,CLERIC_All) Class(Player1,PALADIN_All)~ + @392 /* The gods call and we must follow whatever path is laid out for us. */ + t8.16
	++ @393 /* I never saw it playing out like this, but I did always want adventure. */ + t8.17
	+ ~OR(3) Class(Player1,FIGHTER_All) Class(Player1,RANGER_ALL) Class(Player1,MONK)~ + @394 /* You'd be surprised. I would never have really fit in with a local militia. */ + t8.18
	++ @395 /* Life's not worth living without a bit of chaos to keep you on your feet. */ + t8.19
	+ ~Class(Player1,MAGE_ALL)~ + @396 /* I didn't master magic so I could sit back and let the world pass me by. */ + t8.20
	++ @397 /* No, I didn't. If I could go back to the life I used to lead, I would. */ + t8.21
	++ @398 /* I never had to ask for it. In a way, I think I was made for it. */ + t8.22
END

IF ~~ t8.16
 SAY @399 /* Whether we care for that path or not, hm? You may well have a point. */
IF ~~ + t8.23
END

IF ~~ t8.17
 SAY @400 /* Mm. Perhaps we should all be a little more careful what we wish for, my friend. */
IF ~~ + t8.23
END

IF ~~ t8.18
 SAY @401 /* No, I don't suppose you would have. Perhaps you always were made for greater things. */
IF ~~ + t8.23
END

IF ~~ t8.19
 SAY @402 /* Well, you've a rare enough spirit, at least. Of that there's no question at all. */
IF ~~ + t8.23
END

IF ~~ t8.20
 SAY @403 /* Nor did I, but the way you chase after it sometimes... you've a rare enough spirit, at least. Of that there's no question at all. */
IF ~~ + t8.23
END

IF ~~ t8.21
 SAY @404 /* I hope you can one day, then, though... you might find that the road has a way of changing a person. */
IF ~~ + t8.23
END

IF ~~ t8.22
 SAY @405 /* Do you? Hm. You've a rare enough spirit, at least, so perhaps you're right. */
IF ~~ + t8.23
END

IF ~~ t8.23
 SAY @406 /* Perhaps... well. I've no wish to take up yet more of your time with speculation, <CHARNAME>. I think it might be best to simply move on now, for the moment. */
IF ~~ EXIT
END
END

// 9.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",18)~ THEN RH#EVAJ t9
@407 /* There's something I've been meaning to ask you about for quite some time, <CHARNAME>. The gods of Faerûn... is it true that they actually walk the face of the earth? */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @408 /* Not normally, though they did during the Time of Troubles. */ + t9.1
	++ @409 /* Just what stories have you been listening to recently? */ + t9.2
	++ @410 /* Absolutely. We had breakfast with Selûne just last tenday, don't you remember? */ + t9.3
	++ @411 /* I'm not interested in giving you a history lesson, Evandra. */ + t9.4

APPEND RH#EVAJ

IF ~~ t9.1
 SAY @412 /* The Time of Troubles... yes. That is what I've been given to understand. */
IF ~~ + t9.5
END

IF ~~ t9.2
 SAY @413 /* Anything and everything I manage to come across. Much of it is quite fanciful, but the Time of Troubles... that appears to be very different. */
IF ~~ + t9.5
END

IF ~~ t9.3
 SAY @414 /* (laugh) Jest, if you must, but the Time of Troubles... it seems to be as serious a matter as any. */
IF ~~ + t9.5
END

IF ~~ t9.4
 SAY @415 /* Mm, apparently not. At times I wonder why I even bother with you at all. */
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ t9.5
 SAY @416 /* I've been trying to learn as much as I can about this world of yours, just in case... in case returning home is not an option. I'd assumed that learning the names and functions of your gods would be one of the easiest tasks ahead of me, but it's become abundantly clear that that's not the case at all. */
 = @417 /* The tales I've heard, <CHARNAME>... I don't lack for imagination, but I'm used to such stories being the stuff of legend, not of recent history. */
	++ @418 /* I know what you mean, but you get used to it pretty quickly, I assure you. */ + t9.6
	++ @419 /* If this is all unusual to you, you should consider yourself lucky. */ + t9.7
	++ @420 /* You could say the same for much of what we come across. Why is this any different? */ + t9.8
END

IF ~~ t9.6
 SAY @421 /* I certainly hope so, but I'm not optimistic. The situation in Ansalon... it's complicated as well, though in a different way. */
IF ~~  + t9.9
END

IF ~~ t9.7
 SAY @422 /* Luck has very little to do with it, I'm afraid. The situation in Ansalon... it's complicated as well, though in a different way. */
IF ~~ + t9.9
END

IF ~~ t9.8
 SAY @423 /* Because when it comes to religion, the situation in Ansalon is complicated as well, if in a different way. */
IF ~~ + t9.9
END

IF ~~ t9.9
 SAY @424 /* You see, the gods are little more than a distant memory for us, or at least for all except the eldest of my people. There was an... incident... two centuries ago: a fool of a human king sought to ascend to godhood himself, and the gods... well. They didn't take kindly to that. They shattered the world in retaliation, and then they vanished. Or most of them, at least. */
 = @425 /* Since then... it's been difficult, to say the least. I'd never even thought to see divine magic firsthand. Our own priests have become little more than glorified record-keepers. To be suddenly in a land where the gods are still so intimately involved... it is unsettling. */
	+ ~!Class(Player1,CLERIC_ALL) !Class(Player1,PALADIN_ALL)~ + @426 /* For you and me both. If I could trade places with you, I would. */ + t9.10
	++ @427 /* Unsettling? It gets a good deal worse than that, I assure you. */ + t9.11
	++ @428 /* I didn't even realize the gods *could* abandon a world. */ + t9.12
	++ @429 /* What about the Solamnic Knights? They looked like paladins. */ + t9.13
	++ @430 /* You'd be better off thinking of the opportunities, with so much power in play. */ + t9.14
END

IF ~~ t9.10
 SAY @431 /* Would you? The fact that you would say that... hm. */
IF ~~ + t9.15
END

IF ~~ t9.11
 SAY @432 /* Does it? The fact that you would say that... hm. */
IF ~~ + t9.15
END

IF ~~ t9.12
 SAY @433 /* They can withhold their favors, at the very least. Beyond that, I'm in no better a position to say for certain than you are. Though if a certain rumor is true... hm. */
IF ~~ + t9.15
END

IF ~~ t9.13
 SAY @434 /* Once upon a time, certainly, but they have little behind them but tradition now. Tradition and nostalgia, though they at least deserve no more. */
 = @435 /* But my world's troubles are of little relevance here. It's your realm which is of greater interest right now, and you... hm. */
IF ~~ + t9.15
END

IF ~~ t9.14
 SAY @436 /* Hm. An interesting perspective, to be sure. Though the fact that you would put it quite like that... hm. */
IF ~~ + t9.15
END

IF ~~ t9.15
 SAY @437 /* <CHARNAME>, more than once now I've heard you referred to as a child of Bhaal yourself. I'd thought it a title perhaps, or a reference to some divine ancestor long ago, but now I'm beginning to suspect otherwise. And by your expression... */
 = @438 /* By your expression, I would guess that I have reason to. */
	++ @439 /* I'm afraid so. Does that bother you? */ + t9.16
	++ @440 /* The only father I ever knew was Gorion, but yes, my blood is divine. */ + t9.17
	++ @441 /* You didn't think I was just an ordinary <PRO_RACE>, did you? */ + t9.18
	++ @442 /* I don't want to talk about it, Evandra. Ever. */ + t9.19
END

IF ~~ t9.16
 SAY @443 /* I... no. No more than anything else we've discussed to<DAYNIGHT>. I suppose it's just another thing to get used to. */
IF ~~ + t9.20
END

IF ~~ t9.17
 SAY @444 /* I... see. I suppose that's just one more thing I'll have to get used to, then. */
IF ~~ + t9.20
END

IF ~~ t9.18
 SAY @445 /* I... yes. I did, though the fact that you're not... I suppose that's just one more thing I'll have to get used to. */
IF ~~ + t9.20
END

IF ~~ t9.19
 SAY @446 /* I... very well. I suppose I can understand that. */
IF ~~ EXIT
END

IF ~~ t9.20
 SAY @447 /* If you'll excuse me, I think... well, I think perhaps we should both focus on the task at hand for a little while. */
IF ~~ EXIT
END
END

// 10.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",20)~ THEN RH#EVAJ t10
@448 /* <CHARNAME>, if I've been somewhat quiet since we discussed your heritage, it isn't because of that. Not entirely, at least. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @449 /* You have been a bit distant. What's on your mind? */ + t10.1
	++ @450 /* I honestly hadn't noticed. Is something wrong? */ + t10.2
	++ @451 /* Not "entirely", you say? That's not encouraging. */ + t10.3
	++ @452 /* I was enjoying the silence, actually. */ + t10.4 

APPEND RH#EVAJ

IF ~~ t10.1
 SAY @453 /* A great many things, my friend. I almost don't know where to start. */
IF ~~ + t10.5
END

IF ~~ t10.2
 SAY @454 /* No, not exactly. But I've been thinking a great deal as of late. */
IF ~~ + t10.5
END

IF ~~ t10.3
 SAY @455 /* Don't be so dour, my friend. It's given me reason to think about a great number of things, but that's all. */ 
IF ~~ + t10.5
END

IF ~~ t10.4
 SAY @456 /* I see. Then I'll leave you in peace from now on. */
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ t10.5
 SAY @457 /* I had thought that this would be easier, you know. Adapting to a new world... I'd assumed that *I* of all people would have no trouble with it. After all, exile is something that I was already intimately familiar with. How much more difficult could this be? */
 = @458 /* I was a fool. A fool, and every bit as arrogant as I've ever been accused of being. */
	++ @459 /* You seem to be adapting well enough so far, Evandra. */ + t10.6
	++ @460 /* You should have realized that this would be a bit different. */ + t10.7
	++ @461 /* You? Arrogant? Who would ever dream of saying such a thing? */ + t10.8
	++ @462 /* Don't be so hard on yourself. We all misjudge things. */ + t10.9
END

IF ~~ t10.6
 SAY @463 /* "Well enough" is hardly an achievement. At least I don't see it as such. */ 
IF ~~ + t10.10
END

IF ~~ t10.7
 SAY @464 /* Oh, I did. I just didn't think it would matter in the end. */
IF ~~ + t10.10
END

IF ~~ t10.8
 SAY @465 /* Almost every other elven mage in Ansalon, up to and including the Master of the Conclave himself. */
IF ~~ + t10.10
END

IF ~~ t10.9
 SAY @466 /* I suppose so, though that isn't much of an excuse. */
IF ~~ + t10.10
END

IF ~~ t10.10
 SAY @467 /* You must understand, I've developed something of a reputation for... vicious independence, as my former teacher would say, back when we still spoke at all. When I was first cast out of Qualinesti, there was no room for naiveté, no room for hesitation. I had to learn quickly, and so I did. More quickly than some might have liked, perhaps. */
 = @468 /* But now... as strange as human lands in Ansalon were to me, it was still the same world. The same history. I knew enough to know how to handle any situation that could arise. Here, however... here it's considerably more complicated. */
	++ @469 /* Here at least you don't need to do it alone, Evandra. */ + t10.11
	++ @470 /* Take it one day at a time. That's what I do. */ + t10.12
	++ @471 /* You don't need to be in control all the time, you know. */ + t10.13
	++ @472 /* That sounds positively dreadful. Are we done here yet? */ + t10.14
END

IF ~~ t10.11
 SAY @473 /* Don't I? With a puzzle as intricate as this, I'm not sure how anyone can help at all. */
IF ~~ + t10.15
END

IF ~~ t10.12
 SAY @474 /* And I've been trying to as well, but it seldom helps with a puzzle as intricate as this one. */
IF ~~ + t10.15
END

IF ~~ t10.13
 SAY @475 /* I wouldn't even consider it a matter of control at all. It's more of a puzzle, and a particularly intricate one at that. */
IF ~~ + t10.15
END

IF ~~ t10.14
 SAY @476 /* Apparently so. I'll keep my own counsel from now on. */ 
IF ~~ DO ~SetGlobal("rh#EvaFriendshipActive","GLOBAL",3)~ EXIT
END

IF ~~ t10.15
 SAY @477 /* Usually the more pieces you have in place, the clearer your impression of the whole, but here... if anything, the opposite is true. The more I learn, the less I understand. Every new piece of knowledge and the overall picture dissolves once more into mist. */
 = @478 /* It's humbling, <CHARNAME>, and I don't much care for that. */
	++ @479 /* You just need to give it time. There's not much else you can do. */ + t10.16
	++ @480 /* I don't really have advice for you. Not for something like this. */ + t10.17
	++ @481 /* Well, you know what they say about adversity building character. */ + t10.18
	++ @482 /* Yes, I'm sure, but some of us have *real* problems, you know. */ + t10.19
END

IF ~~ t10.16
 SAY @483 /* No, I suppose not. I thought I'd already understood the value of patience, but it would appear otherwise. */
IF ~~ + t10.20
END

IF ~~ t10.17
 SAY @484 /* I know. I wouldn't expect you to. This is obviously something I'll need to figure out on my own. */
IF ~~ + t10.20
END

IF ~~ t10.18
 SAY @485 /* That would depend on whether they say the same thing about it here that they do at home, I should think. */
IF ~~ + t10.20
END

IF ~~ t10.19
 SAY @486 /* I... suppose you have a point. This must seem quite petty compared to the trouble you tend to face. But thank you for listening anyway. */
IF ~~ EXIT
END

IF ~~ t10.20
 SAY @487 /* I... thank you for listening, <CHARNAME>. I'm sure this must seem quite petty compared to the trouble you tend to face, but I appreciate it all the same. */
IF ~~ EXIT
END
END

// 11.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",22)~ THEN RH#EVAJ t11
@488 /* <CHARNAME>, is everything alright? I've noticed for some time now that you tend not to rest well. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @489 /* I'm fine, really. It's nothing. */ + t11.1
	++ @490 /* My dreams aren't particularly pleasant, I'm afraid. */ + t11.2
	++ @491 /* You've been watching me while I sleep? */ + t11.3
	++ @492 /* This is a bad time, Evandra. Can we talk later? */ + t11.4

APPEND RH#EVAJ

IF ~~ t11.1
 SAY @493 /* No? I would have assumed otherwise. More than once you've distracted me from my spell preparations, and you seemed far from fine. */
IF ~~ + t11.5
END

IF ~~ t11.2
 SAY @494 /* I had gotten that impression. More than once you've distracted me from my spell preparations, and I was beginning to worry. */
IF ~~ + t11.5
END

IF ~~ t11.3
 SAY @495 /* Not intentionally, I assure you, but more than once you've distracted me from my spell preparations. I was beginning to worry. */
IF ~~ + t11.5
END

IF ~~ t11.4
 SAY @496 /* Very well. I suppose it will have to wait. */
IF ~~ DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",-2)~ EXIT
END

IF ~~ t11.5
 SAY @497 /* I don't wish to pry, but is there anything you'd like to talk about? */
 	++ @498 /* My dreams are ugly and full of death. You're better off not knowing. */ + t11.6
 	++ @499 /* It's nothing new. I've had nightmares since leaving Candlekeep. */ + t11.7
 	++ @500 /* Irenicus stalks my dreams. I don't know what he did to me. */ + t11.8
 	++ @501 /* My dreams are my own. I don't want to talk about them. */ + t11.9
END

IF ~~ t11.6
 SAY @502 /* I see. That sounds... terrible. But still, perhaps there's something that can be done about that. */
IF ~~ + t11.10
END

IF ~~ t11.7
 SAY @503 /* I... see. I hadn't realized it was as bad as that. Still, perhaps there's something that can be done about that. */
IF ~~ + t11.10
END

IF ~~ t11.8
 SAY @504 /* I... see. It may not be him at all, though that's certainly a possibility worth ruling out. */
IF ~~ + t11.10
END

IF ~~ t11.9
 SAY @505 /* I don't blame you for that, but if I can help, I would like to. */
IF ~~ + t11.10
END

IF ~~ t11.10
 SAY @506 /* I'm an illusionist first and foremost, <CHARNAME>. I've more experience with the subtleties of dreams than many. If your own mind has turned against you, there are certain measures that can be taken. */
 = @507 /* I can't promise anything, but it may help reveal the source of your ailment. */
 	++ @508 /* My ailment? This is closer to a curse than an illness. */ + t11.11
 	++ @509 /* This is beyond the reach of any normal magic, Evandra. */ + t11.12
 	++ @510 /* What sort of measures are you talking about? */ + t11.13
 	++ @511 /* All I need is more magic messing with my head. */ + t11.14
END

IF ~~ t11.11
 SAY @512 /* Either way, you need genuine rest. I've seen how much you push yourself, and there are moments where I worry. */
IF ~~ + t11.15
END

IF ~~ t11.12
 SAY @513 /* That may ultimately be true, but... I don't know. You need genuine rest. I've seen how much you push yourself, and there are moments where I worry. */
IF ~~ + t11.15
END

IF ~~ t11.13
 SAY @514 /* Minor rituals of the sort the Order uses to examine an apprentice's dreams and memories. I would not normally suggest such a thing, but... I don't know. You need genuine rest. I've seen how much you push yourself, and there are moments where I worry. */
IF ~~ + t11.15
END

IF ~~ t11.14
 SAY @515 /* What you need, I suspect, is genuine rest. I've seen how much you push yourself, and I must admit, there are moments where I worry. */
IF ~~ + t11.15
END

IF ~~ t11.15
 SAY @516 /* To live your life as quickly as you do, with never a moment to spare... sometimes it's a challenge to keep pace with you at all. */
	++ @517 /* I don't have much of a choice, you know. */ + t11.16
	++ @518 /* A nice long vacation would be very welcome right now. */ + t11.17
	++ @519 /* We can rest when we're dead. Life's for living. */ + t11.18
	++ @520 /* Your concern is noted, but not necessary. */ + t11.19
END

IF ~~ t11.16
 SAY @521 /* I do, but I'm concerned all the same. */
IF ~!Race(Player1,ELF)~ + t11.20
IF ~Race(Player1,ELF)~ + t11.25
END

IF ~~ t11.17
 SAY @522 /* Mm, and what you would consider a vacation, I can only guess. */
IF ~!Race(Player1,ELF)~ + t11.20
IF ~Race(Player1,ELF)~ + t11.25
END

IF ~~ t11.18
 SAY @523 /* That doesn't mean we shouldn't live it wisely, my friend. */
IF ~!Race(Player1,ELF)~ + t11.20
IF ~Race(Player1,ELF)~ + t11.25
END

IF ~~ t11.19
 SAY @524 /* I hope not, but I'm far from certain. */
IF ~!Race(Player1,ELF)~ + t11.20
IF ~Race(Player1,ELF)~ + t11.25
END
END

CHAIN RH#EVAJ t11.20
@525 /* Perhaps it is not my place to say so, but I've seen the way humans can burn like the sun until there is nothing left at all. */
== RH#EVAJ IF ~Race(Player1,HUMAN)~ THEN @526 /* And you burn brighter than many... so much so that at times it troubles me. I would rather not see you meet such an end, <CHARNAME>. You're worth more than that. */ 
== RH#EVAJ IF ~Race(Player1,HALF_ELF)~ THEN @527 /* You are no human, I know, but at times you seem to favor that side of your heritage in a way that troubles me. I would rather not see you meet such an end, <CHARNAME>. You're worth more than that. */ 
== RH#EVAJ IF ~Race(Player1,DWARF)~ THEN @528 /* Perhaps it is different amongst your people--they certainly say that dwarves are an efficient folk, but it troubles me all the same. I don't want to see you meet such an end, <CHARNAME>. You're worth more than that. */
== RH#EVAJ IF ~OR(2) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN @529 /* Perhaps it is different amongst your people--there's always been something almost fey about <PRO_RACE>s, but it troubles me all the same. I don't want to see you meet such an end, <CHARNAME>. You're worth more than that. */
== RH#EVAJ IF ~!Race(Player1,HUMAN) !Race(Player1,HALF_ELF) !Race(Player1,DWARF) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN @530 /* Perhaps it is different amongst your people--you're the first I've ever known, but it troubles me all the same. I don't want to see you meet such an end, <CHARNAME>. You're worth more than that. */ 
== RH#EVAJ @531 /* I don't mean to criticize, and I know you have little say in the matter right now, but I do hope you'll find some time to slow down once you can. */
END
	++ @532 /* Thank you for your concern, Evandra. I'll keep that in mind. */ + t11.21
	++ @533 /* We don't all have 500 years to get things done, you know. */ + t11.22
	++ @534 /* I'm not going to collapse. I'm made of sterner stuff than that. */ + t11.22
	++ @535 /* I'm worth more than that, am I? Exactly how much more? */ + t11.23
	++ @536 /* You're right--I don't have any say, so I would appreciate it if you kept your suggestions to yourself. */ + t11.24

APPEND RH#EVAJ

IF ~~ t11.21
 SAY @537 /* Of course. You're welcome. */
IF ~~ EXIT
END

IF ~~ t11.22
 SAY @538 /* I know that, but still... please consider what I've said. */
IF ~~ EXIT
END

IF ~~ t11.23
 SAY @539 /* (laugh) Fishing for compliments, are we? Regardless... please consider what I've said. */
IF ~~ EXIT
END

IF ~~ t11.24
 SAY @540 /* I... of course. My apologies. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceCheck","GLOBAL",2)~ EXIT
END

IF ~~ t11.25
 SAY @541 /* I've heard stories of elves raised amongst humans before, <CHARNAME>. It's said that they often approach time from a human perspective, living as much as they can in a couple of decades, almost as if they were human themselves. Looking at you, I can see that there's some truth to that. */
  = @542 /* Our lives are long--longer perhaps than you can fathom yet. I'm not sure if your human teachers would have known to warn you, but it is entirely possible to go mad if you never learn to slow down. */
  = @543 /* I know you have little say in the matter right now, but I would rather not see you turn into a cautionary tale yourself, <CHARNAME>. You're worth much more than that. */
  	++ @544 /* Thank you for the warning, Evandra. I'll keep that in mind. */ + t11.21
	++ @545 /* But you've lived amongst humans. How do you do that without living at their speed? */ + t11.26
	++ @546 /* I've heard such warnings before, but I don't think I'm in danger just yet. */ + t11.27
	++ @547 /* I'd say there are many more serious threats upon my sanity right now. */ + t11.28
	+ ~Global("rh#EvaRomanceCheck","GLOBAL",1)~ + @535 /* I'm worth more than that, am I? Exactly how much more? */ + t11.29
	+ ~!Global("rh#EvaRomanceCheck","GLOBAL",1)~ + @535 /* I'm worth more than that, am I? Exactly how much more? */ + t11.23
	++ @548 /* You're right--I don't have any say, so I would appreciate it if you kept your concerns to yourself. */ + t11.24
END

IF ~~ t11.26
 SAY @549 /* It can get trying after a time if you don't disengage completely every so often. Learning how to do that... well, that is the difficult part. */
IF ~~ EXIT
END

IF ~~ t11.27
 SAY @550 /* Not yet, no, but I would suggest that you take the danger seriously all the same. */
IF ~~ EXIT
END

IF ~~ t11.28
 SAY @551 /* For the moment, perhaps, but I would suggest that you take the danger seriously all the same. */
IF ~~ EXIT
END

IF ~~ t11.29
 SAY @552 /* (laugh) That particular question I'm not about to answer. Regardless... please consider what I've said. */
IF ~~ EXIT
END
END

// 12. at rest in an inn
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",24)~ THEN RH#EVAJ t12
@553 /* Another night, another inn... it's been many years since I last traveled like this, but sometimes it feels like it was yesterday. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @554 /* You've adventured like this in the past? */ + t12.1
	++ @555 /* Time does tend to lose meaning when you're on the road. */ + t12.2
	++ @556 /* That's no surprise. We *were* traveling yesterday. */ + t12.3
	++ @557 /* I don't want to hear it, Evandra. Not right now. */ + t12.4

APPEND RH#EVAJ	

IF ~~ t12.1
 SAY @558 /* Upon occasion, yes. Not quite like this, but perhaps everything does just start to blend together. */
IF ~~ + t12.5
END

IF ~~ t12.2
 SAY @559 /* Mm, that may be true. Perhaps everything does just start to blend together. */
IF ~~ + t12.5
END

IF ~~ t12.3
 SAY @560 /* Indeed, but that's hardly what I meant. Though perhaps everything does just start to blend together. */
IF ~~ + t12.5
END

IF ~~ t12.4
 SAY @561 /* Suit yourself, then. I shall bid you a good night. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceCheck","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ t12.5
 SAY @562 /* Or perhaps it's just me. Being on the road again after so long... I've spent the past decade all but locked up inside our tower, researching dream magic. I'd almost forgotten the exhilaration of a more active life, especially when spent in interesting company. */
IF ~Race(Player1,ELF) Gender(Player1,MALE)~ + t12.6
IF ~Gender(Player1,FEMALE)~ + t12.11
IF ~!Race(Player1,ELF) !Gender(Player1,FEMALE)~ + t12.16
END

IF ~~ t12.6
 SAY @563 /* Too interesting, perhaps. Sitting here beside you, <CHARNAME>, I can't help but think of everything that was denied me. And the strange paths that I took instead. */
 = @564 /* Though I can imagine that you've walked some odd paths as well. A young elven man in human lands... their women can be as attractive as their men, at least if you've a taste for the madness that comes with them. */
	++ @565 /* I won't deny that I've had my adventures, but that's behind me now. */ + t12.7
	++ @566 /* I've never had time for such things. My life is too uncertain. */ + t12.8
	++ @567 /* Humans have never really interested me. You, on the other hand... */ + t12.9
	++ @568 /* What makes you think that I'm interested in women at all? */ + t12.10
END

IF ~~ t12.7
 SAY @569 /* Mm, then we are more alike than I realized. For better or for worse. */
IF ~~ + t12.20
END

IF ~~ t12.8
 SAY @570 /* (laugh) As was mine, but that never quite seemed to matter. */
IF ~~ + t12.20
END

IF ~~ t12.9
 SAY @571 /* (laugh) If you knew more about me, you might lose interest quickly enough. */
IF ~~ + t12.20
END

IF ~~ t12.10
 SAY @572 /* (laugh) Then perhaps I should ask you if you've the same taste for human *men* that I do. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceCheck","GLOBAL",2)~ + t12.20
END

IF ~~ t12.11
 SAY @573 /* And truth be told, the furtive glances of all the young men here don't hurt either. I wonder which of us has drawn their attention this night. I'm no stranger to their stares, but you, <CHARNAME>... you are something else entirely. Any man could sense that. */
	++ @574 /* I have more important things to worry about than their attention. */ + t12.12
	++ @575 /* I'm only interested in the attention of one man in particular. */ + t12.13
	++ @576 /* You like their attention, do you? Are you planning on slipping off with one? */ + t12.14
	++ @577 /* And if I were to tell you that I prefer the attention of women? */ + t12.15
END

IF ~~ t12.12
 SAY @578 /* (laugh) I don't doubt that. Still... with an environment as charged with intrigue as this one, I can't help but reminisce. */
IF ~~ + t12.20
END

IF ~~ t12.13
 SAY @579 /* (smile) I thought as much, but still... with an environment as charged with intrigue as this one, I at least can't help but reminisce. */
IF ~~ + t12.20
END

IF ~~ t12.14
 SAY @580 /* (laugh) Half a century ago, I might have. Now, however... now I'm only inclined to reminisce. */
IF ~~ + t12.20
END

IF ~~ t12.15
 SAY @581 /* (laugh) Then I would wish you well in your pursuits. My tastes have always run... well. I dare say you can tell. */
IF ~~ + t12.20
END

IF ~~ t12.16
 SAY @582 /* And you are interesting, if nothing else. Being in your company, <CHARNAME>, I remember what it was like to be very young again. Very young and very foolish, many would say. */
	++ @583 /* I hope you're not calling me foolish! */ + t12.17
	++ @584 /* Why do you say that, exactly? */ + t12.18
	++ @585 /* I'm interesting, am I? Do tell me more. */ + t12.19
END

IF ~~ t12.17
 SAY @586 /* (laugh) No, I'm calling *myself* foolish. And I certainly was. */
IF ~~ + t12.20
END

IF ~~ t12.18
 SAY @587 /* Because this is a night for reminiscence, apparently. */
IF ~~ + t12.20
END

IF ~~ t12.19
 SAY @588 /* (laugh) No, my friend. I learn from my mistakes. At least eventually. */ 
IF ~~ + t12.20
END

IF ~~ t12.20
 SAY @589 /* I don't think I've ever told you much about the years directly following my Test. They were interesting years, to say the least, and by that... well. By that I mean that I met someone that perhaps I shouldn't have. */
 = @590 /* His name was Nikos. Nikos Aurelion. And I dare say he's the missing piece in the puzzle that is my life. The elves cast me adrift, and Nikos... */
 = @591 /* Suffice to say that I was an enticing enough prize for a certain type of man. */
	++ @592 /* That sounds somewhat ominous. */  + t12.21
	++ @593 /* Who was he, exactly? */ + t12.22
	++ @594 /* I'm really not interested in a story tonight. */ + t12.4
END

IF ~~ t12.21
 SAY @595 /* Mm, I suppose it does. And not without reason. He was amongst other things, petty human nobility, with precisely the mixture of entitlement and ambition that one might expect from such a pedigree. And, of course, he was a Black Robed wizard. */
IF ~~ + t12.23
END

IF ~~ t12.22
 SAY @596 /* Amongst other things, petty human nobility, with precisely the mixture of entitlement and ambition that one might expect from such a pedigree. And, of course, a Black Robed wizard. */
IF ~~ + t12.23
END

IF ~~ t12.23
 SAY @597 /* Under other circumstances, I'd have kept my distance, but Nikos was... persistent, and truth be told, I was flattered by the attention. He was every taboo my people had, manifested in one person, and there was really nothing I wanted more at that point than to spite them. */
 = @598 /* It was a seduction, I won't deny that much. But in that moment, I don't think I could have resisted even if I'd wanted to. */ 
	++ @599 /* It sounds like he took advantage of you. */ + t12.24
	++ @600 /* You and a dark wizard, hm? How long did that last? */ + t12.25
	++ @601 /* That's some pretty terrible decision making on your part. */ + t12.26
END

IF ~~ t12.24
 SAY @602 /* Oh, he did, <CHARNAME>. Without a doubt. Enchanters and illusionists... we do enjoy our little games. */
IF ~~ + t12.27
END

IF ~~ t12.25
 SAY @603 /* Longer than you might think, <CHARNAME>. Enchanters and illusionists... we do enjoy our little games. */
IF ~~ + t12.27
END

IF ~~ t12.26
 SAY @604 /* You are not the first to say that, <CHARNAME>. And you're probably right, but enchanters and illusionists... we do enjoy our little games. */
IF ~~ + t12.27
END

IF ~~ t12.27
 SAY @605 /* And in time I learned to play them quite well myself. Better than I might have liked, at least. Still, as an introduction to what it would mean to live amongst humans, I could have done considerably worse. */
 = @606 /* My people disagreed, of course. Their silent disapproval of me exploded into something... rather louder, and it wasn't long before I found myself officially exiled. Though by that point, it was almost as much a relief as it was a punishment. */
	++ @607 /* Was it really worth it? It doesn't sound like the most functional of relationships. */ + t12.28
	++ @608 /* You were exiled for having an affair? How was that any of their business? */ + t12.29
	++ @609 /* You have to admit, you were sending them quite the message with your choice of lover. */ + t12.30
	++ @610 /* Well, whoever let a bit of public disapproval get in the way of a sordid love affair? */ + t12.31
END

IF ~~ t12.28
 SAY @611 /* If they hadn't exiled me for that, it would ultimately have been for something else. I certainly don't regret forcing their hand. */
IF ~!Race(Player1,HUMAN)~ + t12.32
IF ~Race(Player1,HUMAN)~ + t12.33
END

IF ~~ t12.29
 SAY @612 /* I'd been on very thin ice for years. If they hadn't ultimately exiled me for that, it would have been for something else. I certainly don't regret forcing their hand. */
IF ~!Race(Player1,HUMAN)~ + t12.32
IF ~Race(Player1,HUMAN)~ + t12.33
END

IF ~~ t12.30
 SAY @613 /* Oh, I certainly was, but if they hadn't exiled me for that, it would ultimately have been for something else. I don't regret forcing their hand. */
IF ~!Race(Player1,HUMAN)~ + t12.32
IF ~Race(Player1,HUMAN)~ + t12.33
END

IF ~~ t12.31
 SAY @614 /* There was more to it than public disapproval, but if they hadn't ultimately exiled me for that, it would have been for something else. I certainly don't regret forcing their hand. */
IF ~!Race(Player1,HUMAN)~ + t12.32
IF ~Race(Player1,HUMAN)~ + t12.33
END

IF ~~ t12.32
 SAY @615 /* Ahh, but listen to me... once more on the subject of dear, old Qualinesti. How dreadfully predictable I've become... perfect material for one of those drinking games that humans are so fond of. */
	++ @616 /* I wouldn't give anyone ideas, if I were you. */ + t12.34
	++ @617 /* I wouldn't say predictable, Evandra. You're allowed to be upset. */ + t12.35
	++ @618 /* Nobody is going to mock you like that. I won't allow it. */ + t12.36
	++ @619 /* If so, it'll be without me. I'm going to bed. */ + t12.37
END

IF ~~ t12.33
 SAY @620 /* hh, but listen to me... once more on the subject of dear, old Qualinesti. How dreadfully predictable I've become... perfect material for one of those drinking games that you humans are so fond of. */
	++ @616 /* I wouldn't give anyone ideas, if I were you. */ + t12.34
	++ @617 /* I wouldn't say predictable, Evandra. You're allowed to be upset. */ + t12.35
	++ @618 /* Nobody is going to mock you like that. I won't allow it. */ + t12.36
	++ @619 /* If so, it'll be without me. I'm going to bed. */ + t12.37
END

IF ~~ t12.34
 SAY @621 /* Wise advice, most certainly. And to be on the safe side, perhaps I should ask *you* to start sharing tales instead. */
IF ~~ + t12.38
END

IF ~~ t12.35
 SAY @622 /* Perhaps, but I still don't like presenting so easy a target. Still... I do appreciate the thought, <CHARNAME>. Though to be on the safe side, perhaps I should ask *you* to start sharing tales instead. */
IF ~~ + t12.38
END

IF ~~ t12.36
 SAY @623 /* I... thank you, <CHARNAME>. I do appreciate the thought. Though to be on the safe side, perhaps I should ask *you* to start sharing tales instead. */
IF ~~ + t12.38
END

IF ~~ t12.37
 SAY @624 /* Very well... if you're sure that that's what you'd prefer. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t12.38
 SAY @625 /* I've wanted to hear about your adventures on the Sword Coast for quite some time anyway, and I suppose this is as good an opportunity as any. */
 = @626 /* But first, the barkeep has been trying to sell me an Evereskan vintage all evening, and I've half a mind to find out what elven wine tastes like here. Would you care for a glass as well? */
	++ @627 /* Thank you, I would appreciate that. */ + t12.39
	++ @628 /* My thanks, but I don't think that's a good idea. */ + t12.39
	++ @629 /* Trying to loosen up my tongue, are you? */ + t12.40
	++ @630 /* Get me something stronger than that, would you? */ + t12.41
	++ @631 /* I think I've had enough of stories for now. I'm going to bed. */ + t12.37
END

IF ~~ t12.39
 SAY @632 /* Then wait here a moment, and I'll be back presently. And I do expect you to tell me *everything* about your adventures in Baldur's Gate this time. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t12.40
 SAY @633 /* Perhaps a bit. Wait here a moment, and I'll be back presently. And I do expect you to tell me *everything* about your adventures in Baldur's Gate this time. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t12.41
 SAY @634 /* Whatever your preference. Wait here a moment, and I'll be back presently. And I do expect you to tell me *everything* about your adventures in Baldur's Gate this time. */
IF ~~ DO ~RestParty()~ EXIT
END
END

// 13a.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",26) Race(Player1,ELF)~ THEN RH#EVAJ t13a
@635 /* <CHARNAME>, have you had a chance to visit any of the elven realms of these lands? I've heard a few names, but that's all they are to me--unfamiliar words in unfamiliar languages. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @636 /* I haven't had that luxury either, unfortunately. */ + t13a.1
	++ @637 /* I've never been to one, but I've heard plenty of stories. */ + t13a.2
	++ @638 /* Do you really think they'd let someone like me through the gates? */ + t13a.3
	++ @639 /* Nor to me, and I'd rather keep it that way. Let's move on. */ + t13a.4

APPEND RH#EVAJ

IF ~~ t13a.1
 SAY @640 /* I'm sorry to hear it. I had hoped... well. I'd hoped you'd had at least some contact with your kin, even if you had been raised apart from them. */
IF ~~ + t13a.5
END

IF ~~ t13a.2
 SAY @641 /* Have you? I suppose that's a connection of a sort, but I had hoped... well. I'd hoped you'd had at least some contact with your kin, even if you had been raised apart from them. */
IF ~~ + t13a.5
END

IF ~~ t13a.3
 SAY @642 /* A child of Bhaal, I take it you mean. I had hoped... well. I'd hoped you'd had at least some contact with your kin, at some point along the way. */
IF ~~ + t13a.5
END

IF ~~ t13a.4
 SAY @643 /* Oh... of course. Forgive me the intrusion, then. */
IF ~~ EXIT
END

IF ~~ t13a.5
 SAY @644 /* And not only because I'd have liked to ask you everything there is to know about them, though I will admit, that's certainly a factor as well. */
	+ ~!InParty("O#Xan") !InParty("O#Coran") !InParty("p#Kivan")~ + @645 /* I've had plenty of contact with other elves. I met several up north. */ + t13a.6
	+ ~InParty("O#Xan") !InParty("O#Coran") !InParty("p#Kivan")~ + @646 /* I've had plenty of contact with other elves. I met Xan up north. */ + t13a.6
	+ ~!InParty("O#Xan") InParty("O#Coran") !InParty("p#Kivan")~ + @647 /* I've had plenty of contact with other elves. I met Coran up north. */ + t13a.6
	+ ~!InParty("O#Xan") !InParty("O#Coran") InParty("p#Kivan")~ + @648 /* I've had plenty of contact with other elves. I met Kivan up north. */ + t13a.6
	+ ~InParty("O#Xan") InParty("O#Coran") !InParty("p#Kivan")~ + @649 /* I've had plenty of contact with other elves. I met Xan and Coran up north. */ + t13a.6
	+ ~InParty("O#Xan") !InParty("O#Coran") InParty("p#Kivan")~ + @650 /* I've had plenty of contact with other elves. I met Xan and Kivan up north. */ + t13a.6
	+ ~!InParty("O#Xan") InParty("O#Coran") InParty("p#Kivan")~ + @651 /* I've had plenty of contact with other elves. I met Coran and Kivan up north. */ + t13a.6
	+ ~InParty("O#Xan") InParty("O#Coran") InParty("p#Kivan")~ + @652 /* I've had plenty of contact with other elves. I met Xan, Coran, and Kivan up north. */ + t13a.6
	++ @653 /* We'd be strangers to them, Evandra. They're slow to welcome outsiders. */ + t13a.7
	++ @654 /* You and I both. I want nothing more than to know my people better. */ + t13a.8
	++ @655 /* And I, in contrast, really don't care about them at all. */ + t13a.9
END

IF ~~ t13a.6
 SAY @656 /* That's different than seeing an elven city in all of its splendor, <CHARNAME>. Any elf would tell you as much, I'm sure. */
IF ~~ + t13a.10
END

IF ~~ t13a.7
 SAY @657 /* Come now, <CHARNAME>. We're slow to do *anything*. Given enough time, I think you would be surprised. Or at least, I hope as much. */
IF ~~ + t13a.10
END

IF ~~ t13a.8
 SAY @658 /* I don't blame you for that, <CHARNAME>. For all my own troubles, I can't imagine what it would be like to have never known my old homeland at all. */
IF ~~ + t13a.10
END

IF ~~ t13a.9
 SAY @659 /* Perhaps not at the moment, but in time, that may change. I would be surprised if it did not. */
IF ~~ + t13a.10
END

IF ~~ t13a.10
 SAY @660 /* For myself, it's been just over half a century now since I last saw an elven city. The opportunity to see one again... for all the strangeness of being stranded here, there's something attractive about the blank slate that comes with it. */
	++ @661 /* Can you really consider them your people? It is a different world. */ + t13a.11
	++ @662 /* You're finally learning to look on the bright side, I take it. */ + t13a.12
	++ @663 /* Does that mean you're no longer interested in getting home? */ + t13a.13
	++ @664 /* I can imagine. I'd certainly appreciate one myself. */ + t13a.14
END

IF ~~ t13a.11
 SAY @665 /* They're as much my people as you are, and you... hm. */
IF ~~ + t13a.15
END

IF ~~ t13a.12
 SAY @666 /* I learned that some time ago, I should think, but... hm. */
IF ~~ + t13a.15
END

IF ~~ t13a.13
 SAY @667 /* I... no. I wouldn't say that, but... hm. */
IF ~~ + t13a.15
END

IF ~~ t13a.14
 SAY @668 /* Once all of this is finished, perhaps, but until then... hm. */
IF ~~ + t13a.15
END

IF ~~ t13a.15
 SAY @669 /* I'm glad that our paths crossed when they did, <CHARNAME>. For the obvious reasons, of course, but for others as well. You're unlike anyone I've ever met before, but for some reason you remind me of home anyway. */
IF ~!Global("rh#EvaRomanceCheck","GLOBAL",1) !Global("AerieRomanceActive","GLOBAL",2)
    !Global("JaheiraRomanceActive","GLOBAL",2)
    !Global("ViconiaRomanceActive","GLOBAL",2)
    !Global("NeeraRomanceActive","GLOBAL",2)
    !Global("DornRomanceActive","GLOBAL",2)~ + t13a.16
IF ~OR(6) Global("rh#EvaRomanceCheck","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)
    Global("JaheiraRomanceActive","GLOBAL",2)
    Global("ViconiaRomanceActive","GLOBAL",2)
    Global("NeeraRomanceActive","GLOBAL",2)
    Global("DornRomanceActive","GLOBAL",2)~ + t13a.17
END

IF ~~ t13a.16
 SAY @670 /* It's been so long since I was truly comfortable in the company of one of my own kin, I had almost forgotten what it was like. */
	++ @671 /* You'll remember quickly enough. Nobody here is going to turn you away. */ + t13a.18
	++ @672 /* That's your kin's loss, I'd say. We're more appreciative here. */ + t13a.18
	++ @673 /* You find my company comfortable? You're pretty much the only one. */ + t13a.19
	++ @674 /* You better not be about to declare your undying love for me, lady. */ + t13a.20
END

IF ~~ t13a.17
 SAY @675 /* What a strange pair we are, the two of us... one with no past amongst his kin, and the other with no future. */
	++ @676 /* Evandra, do you think that you and I could maybe...? */ + t13a.22
	++ @677 /* A pair, are we? I think I like the sound of that. */ + t13a.23
	++ @678 /* Don't get carried away now. It's not *that* strange. */ + t13a.19
	++ @674 /* You better not be about to declare your undying love for me, lady. */ + t13a.20
END

IF ~~ t13a.18
 SAY @679 /* Yes, I think you're right about that. At least, I hope you are. But in any case, I've said what I meant to say. */
IF ~~ + t13a.21
END

IF ~~ t13a.19
 SAY @680 /* (laugh) I'm not sure about that, but have it your way. In any case, I've said what I meant to say. */
IF ~~ + t13a.21
END

IF ~~ t13a.20
 SAY @681 /* (laugh) You have quite the imagination, my dear <PRO_MANWOMAN>. But no, lest you get any more ideas, I've said what I meant to say. */
IF ~~ + t13a.21
END

IF ~~ t13a.21
 SAY @682 /* These flights of fancy of mine... well, they'll have to wait a little while longer, I think. And I'll at least try not to distract you overmuch, <CHARNAME>. I suspect you're going to need all of your attention in the days ahead. */
IF ~~ EXIT
END

IF ~~ t13a.22
 SAY @683 /* (smile) I think... well, I would think many things about that possibility, if the timing were better. */
IF ~~ + t13a.24
END

IF ~~ t13a.23
 SAY @684 /* (laugh) I am certainly not averse to it myself, but I cannot say the timing is particularly good. */
IF ~~ + t13a.24
END

IF ~~ t13a.24
 SAY @685 /* If you were human, I would tell you to ask me again in a decade. Perhaps that's the best answer regardless--I suspect you're going to need all of your attention in the days ahead as it is. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",1)~ EXIT
END

// 13b.
IF ~Global("rh#EvaTalks","GLOBAL",26) !Race(Player1,ELF)~ t13b
 SAY @686 /* I'm glad that our paths crossed when they did, <CHARNAME>. For the obvious reasons, of course, but for others as well. */
IF ~Class(Player1,MAGE_ALL)~ DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~ + t13b.1
IF ~!Class(Player1,MAGE_ALL)~ DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~ + t13b.2
END

IF ~~ t13b.1
 SAY @687 /* So much about this experience has been strange to me, but you... there's a shared bond between all mages, I think, wherever they might happen to live. */
 	++ @688 /* A bit of familiarity amongst all the strangeness, I take it. */ + t13b.3
	++ @689 /* I wish all mages were as charitable with their own as you are. */ + t13b.4
	++ @690 /* Is that really all you've noticed about me? My magic? */ + t13b.5
	++ @691 /* I appreciate the sentiment, but this is not a great time. */ + t13b.6
END

IF ~~ t13b.2
 SAY @692 /* I've spent so much of my life with only other mages for company, sometimes I forget there's a world outside of our walls. */
 	++ @693 /* There are more things we have in common than that separate us. */ + t13b.7
	++ @694 /* Sometimes it's really best to pretend there isn't. */ + t13b.8
	++ @695 /* I take it the rest of us are just some curiosity for you. */ + t13b.9
	++ @691 /* I appreciate the sentiment, but this is not a great time. */ + t13b.6
END

IF ~~ t13b.3
 SAY @696 /* Yes, but it goes deeper than familiarity. Not all mages are terribly good company, but you at least I would call something of a kindred spirit, and that... well. I would not have hoped to find that here. */
IF ~~ + t13b.10
END

IF ~~ t13b.4
 SAY @697 /* Yes, I suppose it's naive to claim that there's some shared camaraderie amongst all of us, but I would still call *you* at least a kindred spirit, and that... well. I would not have hoped to find that here. */ 
IF ~~ + t13b.10
END

IF ~~ t13b.5
 SAY @698 /* Of course not. You're a remarkable <PRO_MANWOMAN>--that much is clear enough for anyone to see. And not all mages are precisely what I would call a kindred spirit, and that... well. I would not have hoped to find that here. */
IF ~~ + t13b.10
END

IF ~~ t13b.6
 SAY @699 /* My apologies, then. Shall we carry on? */
IF ~~ EXIT
END

IF ~~ t13b.7
 SAY @700 /* Perhaps you're right, though I would never have considered that before. To find that you're something of a kindred spirit yourself, despite everything... well. I would not have hoped to find that here. */
IF ~~ + t13b.10
END

IF ~~ t13b.8
 SAY @701 /* I suppose that's all too often true, but this time, I'm glad I did not. To find that you're something of a kindred spirit yourself, despite everything... well. I would not have hoped to find that here. */
IF ~~ + t13b.10
END

IF ~~ t13b.9
 SAY @702 /* To a certain degree you always were, I admit. To realize that you're something of a kindred spirit yourself, despite everything... well. I would not have hoped to find that here. */
IF ~~ + t13b.10
END

IF ~~ t13b.10
 SAY @703 /* I could have done a good deal worse than meeting you, <CHARNAME>. And given the luck I tend to have, I'm almost surprised I didn't. */
	+ ~Global("PaladinOrder","GLOBAL",1)~ + @704 /* Another trip to my superiors in the Order and you may change your mind. */ + t13b.11
	+ ~!Class(Player1,PALADIN_ALL)~ + @705 /* Yeah, you could have always ended up with another brigade of paladins. */ + t13b.11
	++ @706 /* You could have done worse, hm? That's some compliment. */ + t13b.12
	++ @707 /* The feeling is mutual, Evandra. You're pretty good company yourself. */ + t13b.13
	++ @708 /* Where's this coming from? You're not planning on leaving, are you? */ + t13b.14
END

IF ~~ t13b.11
 SAY @709 /* (laugh) Heavens forbid. More knights would be all I need. */
IF ~~ + t13b.15
END

IF ~~ t13b.12
 SAY @710 /* (laugh) *Considerably* worse, I said, but take it as you will. */
IF ~~ + t13b.15
END

IF ~~ t13b.13
 SAY @711 /* (laugh) Many would disagree with you, but thank you all the same. */
IF ~~ + t13b.15
END

IF ~~ t13b.14
 SAY @712 /* No, I said I would see your quest through, and that has not changed. But after that... */
IF ~~ + t13b.15
END

IF ~~ t13b.15
 SAY @713 /* Hm. I must admit, the future has been weighing upon me somewhat... hence my words, I suppose. I've become more used to the possibility of being stuck here permanently, and it doesn't trouble me quite as much as it once did. */
 = @714 /* If nothing else, there is something attractive about the idea of a blank slate. */
	++ @715 /* Don't resign yourself just yet. If there's a way back, we'll find it. */ + t13b.16
	++ @716 /* That sounds like a healthy attitude, Evandra. */ + t13b.17
	++ @717 /* Are you planning anything in particular with this blank slate? */ + t13b.18
	++ @664 /* I can imagine. I'd certainly appreciate one myself. */ + t13b.19
END

IF ~~ t13b.16
 SAY @718 /* Perhaps, but even if we don't, it's been half a century since I last saw an elven city. The chance to see one again... I would not pass that up for the world. */
IF ~~ + t13b.20
END

IF ~~ t13b.17
 SAY @719 /* More than healthy, I would think. It's been half a century since I last saw an elven city. The chance to see one again... I would not pass that up for the world. */
IF ~~ + t13b.20
END

IF ~~ t13b.18
 SAY @720 /* Oh, yes. It's been half a century since I last saw an elven city. The chance to see one again... I would not pass that up for the world. */
IF ~~ + t13b.20
END

IF ~~ t13b.19
 SAY @721 /* I know. I don't blame you for that, <CHARNAME>, though one day, once all this is finished... */
 = @722 /* Perhaps I could visit one of the elven cities of this realm, and you... what would you do, <CHARNAME>, if nobody knew your name? */
	+ ~Race(Player1,HALF_ELF)~ + @723 /* I'd like to visit the elves also. They're my people as well. */ + t13b.21
	+ ~Race(Player1,DWARF)~ + @724 /* I'd like to visit the dwarves. I've never lived amongst my kin. */ + t13b.22
	+ ~OR(3) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @725 /* I'd like to find some <RACE>s. I've never lived amongst my kin. */ + t13b.22
	++ @726 /* I try not to dream too much. Life tends to get in the way. */ + t13b.23
	+ ~Alignment(Player1,MASK_GOOD)~ + @727 /* With all the suffering in the world, I can't afford to focus on my own dreams. */ + t13b.24
	+ ~Alignment(Player1,MASK_EVIL)~ + @728 /* Power, riches, perhaps an army under my control. That would be a start. */ + t13b.25
	++ @729 /* I'd like to settle down somewhere, maybe start a family. */ + t13b.26
	++ @730 /* Adventure, treasure, excitement... I'm already living my dream. */ + t13b.27
	++ @731 /* I'd be happy just surviving to see the future. */ + t13b.28
END

IF ~~ t13b.20
 SAY @732 /* What about you, <CHARNAME>? What dreams do you have for the future? */
	+ ~Race(Player1,HALF_ELF)~ + @723 /* I'd like to visit the elves also. They're my people as well. */ + t13b.21
	+ ~Race(Player1,DWARF)~ + @724 /* I'd like to visit the dwarves. I've never lived amongst my kin. */ + t13b.22
	+ ~OR(3) Race(Player1,GNOME) Race(Player1,HALFLING) Race(Player1,HALFORC)~ + @725 /* I'd like to find some <RACE>s. I've never lived amongst my kin. */ + t13b.22
	++ @726 /* I try not to dream too much. Life tends to get in the way. */ + t13b.23
	+ ~Alignment(Player1,MASK_GOOD)~ + @727 /* With all the suffering in the world, I can't afford to focus on my own dreams. */ + t13b.24
	+ ~Alignment(Player1,MASK_EVIL)~ + @728 /* Power, riches, perhaps an army under my control. That would be a start. */ + t13b.25
	++ @729 /* I'd like to settle down somewhere, maybe start a family. */ + t13b.26
	++ @730 /* Adventure, treasure, excitement... I'm already living my dream. */ + t13b.27
	++ @731 /* I'd be happy just surviving to see the future. */ + t13b.28
END

IF ~~ t13b.21
 SAY @733 /* Then I hope for both of our sakes that we can one day find some sort of welcome amongst them. */
IF ~~ + t13b.29
END

IF ~~ t13b.22
 SAY @734 /* Then I hope you can find some sort of welcome amongst them. */
IF ~~ + t13b.29
END

IF ~~ t13b.23
 SAY @735 /* I know, but dream a little and you might find that changing. */
IF ~~ + t13b.29
END

IF ~~ t13b.24
 SAY @736 /* Ahh, noble to that last. I suppose I should have expected that. */
IF ~~ + t13b.29
END

IF ~~ t13b.25
 SAY @737 /* Well, you are ambitious, if nothing else. I will give you that. */
IF ~~ + t13b.29
END

IF ~~ t13b.26
 SAY @738 /* Interesting. I would not have quite taken you for a family <PRO_MANWOMAN>, but I suppose it makes a certain sense. */
IF ~~ + t13b.29
END

IF ~~ t13b.27
 SAY @739 /* Well, I suppose that makes a certain sense. You do seem to fit this life better than most. */
IF ~~ + t13b.29
END

IF ~~ t13b.28
 SAY @740 /* Well, I would suggest you dream a little bigger than that, my friend, but I suppose I understand. */
IF ~~ + t13b.29
END

IF ~~ t13b.29
 SAY @741 /* Regardless, the future will have to wait, I think, at least a little while longer. And I'll at least try not to distract you overmuch... I suspect you're going to need all of your attention in the days ahead. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Chapter 4
// ---------------------------------------------

// 14.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",28) Global("ThiefGroup","GLOBAL",1)~ THEN RH#EVAJ t14a
@742 /* Treachery from a pirate... who would have ever imagined such a thing happening. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)~
END
	++ @743 /* He'll pay dearly for what he's done. I swear it. */ + t14.1
	++ @744 /* This is no laughing matter, Evandra! */ + t14.2
	++ @745 /* At least he managed to get us here before betraying us. */ + t14.3
	++ @746 /* We have more important things to do right now than talk. */ + t14.4

CHAIN IF ~Global("rh#EvaTalks","GLOBAL",28) !Global("ThiefGroup","GLOBAL",1)~ THEN RH#EVAJ t14b
@747 /* He's a slippery one, isn't he? Saemon Havarian. Though that's about what you could expect from a pirate. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)~
END
	++ @748 /* If he crosses me, he's a dead man. I swear it. */ + t14.1
	++ @749 /* That's nothing to sound so amused about, Evandra! */ + t14.2
	++ @750 /* At least he managed to get us here in one piece. */ + t14.3
	++ @746 /* We have more important things to do right now than talk. */ + t14.4

APPEND RH#EVAJ

IF ~~ t14.1
 SAY @751 /* Come now, there's no need to take him so seriously. Especially now that we have a whole island full of pirates ahead of us. */
IF ~~ + t14.5
END

IF ~~ t14.2
 SAY @752 /* Come now, what is laughter good for if not situations like this? Especially now that we have a whole island full of pirates ahead of us. */
IF ~~ + t14.5
END

IF ~~ t14.3
 SAY @753 /* Indeed. A funeral at sea is not quite how I would have liked this quest of yours to end, though now all that's left is dealing with a whole island full of pirates. */
IF ~~ + t14.5
END

IF ~~ t14.4
 SAY @754 /* As you'd have it. */
IF ~~ EXIT
END

IF ~~ t14.5
 SAY @755 /* I found them intriguing, you know. Once upon a time. The rakish, seafaring type, who'd change their loyalties more often than their clothing. I'm not sure how they manage it, but... well. They clearly do. */
	++ @756 /* Until they cross the wrong person, at least. */ + t14.6
 	++ @757 /* They do have a certain style, I'll give them that much. */ + t14.7
	++ @758 /* You sound like you've known pirates in the past. */ + t14.8
	++ @759 /* I hadn't realized this was so entertaining for you. */ + t14.9
END

IF ~~ t14.6
 SAY @760 /* And they almost always do, sooner or later. */
IF ~~ + t14.10
END

IF ~~ t14.7
 SAY @761 /* Though it tends to get them killed, more often than not. */
IF ~~ + t14.10
END

IF ~~ t14.8
 SAY @762 /* By now, my friend, that shouldn't surprise you. */
IF ~~ + t14.10
END

IF ~~ t14.9
 SAY @763 /* Entertaining? That's not quite the word I'd use to describe it. */
IF ~~ + t14.10
END

IF ~~ t14.10
 SAY @764 /* Loath as I am to regale you with the more sordid tales of my past, I'm no stranger to criminal paradises like this one. I spent a decade running a magic shop in one once, back when I was involved with Nikos, and the things I could tell you about my clientele... well. */
 = @765 /* You're a breath of fresh air in comparison, <CHARNAME>. Really, you are. I don't think I realized just how much so until our ocean crossing with dear Captain Havarian. */
 = @766 /* Men like him I'm used to, but men like you... it's been too long, I'm afraid. Far too long. */
	++ @767 /* Men like me? What exactly do you mean by that? */ + t14.11
	++ @768 /* I hope you're not just referring to the fact that I'm an elf. */ + t14.12
	++ @769 /* There are very few men like me, Evandra. I'm fairly unique. */ + t14.13
	++ @770 /* And here I'd say it's been just long enough. */ + t14.14
	+ ~OR(2) Class(Player1,THIEF_ALL) Class(Player1,BARD_ALL)~ + @771 /* You know, most people would say that I *am* a man like Saemon. */ + t14.15
END

IF ~~ t14.11
 SAY @772 /* (laugh) It's hard to put into words, my friend, but you... let's just say that there's a certain something about you that is lacking in most men. */
IF ~~ + t14.16
END

IF ~~ t14.12
 SAY @773 /* (laugh) I won't pretend that it doesn't add to your appeal, my friend, but let's just say that there's a certain something about you that is even lacking in most elves. */
IF ~~ + t14.16
END

IF ~~ t14.13
 SAY @774 /* (laugh) Yes, I had noticed that, my friend. Let's just say that there's a certain something about you that is lacking in most men. */
IF ~~ + t14.16
END

IF ~~ t14.14
 SAY @775 /* (laugh) Perhaps you have the right of it, my friend. */
IF ~~ + t14.16
END

IF ~~ t14.15
 SAY @776 /* (laugh) You certainly have your moments, I will grant you that. Particularly when you have your hand in someone else's pocket, but there is a world of difference between the two of you. */
IF ~~ + t14.16
END

IF ~~ t14.16
 SAY @777 /* I've been thinking about what you said back in Amn, you know. About you and I, and whether there could be something more there. Perhaps it's a bit premature to bring it up now, but this quest is nearing its end, and what might follow... */
 = @778 /* Well, I think I might like to find out first hand. */
 	++ @779 /* I think I might like that also. */ + t14.17
 	++ @780 /* You've finally come to your senses, have you? */ + t14.18
 	++ @781 /* I thought you said you'd make me wait a decade. */ + t14.19
 	++ @782 /* Forget what I said before. I'm not interested. */ + t14.20
END

IF ~~ t14.17
 SAY @783 /* Then... well, then I suppose it's something worth considering. */
IF ~~ EXIT
END

IF ~~ t14.18
 SAY @784 /* Mm, either that or I've lost them entirely. */
IF ~~ EXIT
END

IF ~~ t14.19
 SAY @785 /* Mm, I said that I *should*, but that sort of game... I really don't want to play it with you. */
IF ~~ EXIT
END

IF ~~ t14.20
 SAY @786 /* Oh, I see. In that case, forget that I said anything at all. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END
END

// 15.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",30)~ THEN RH#EVAJ t15
@787 /* This is quite the trap they've laid for us, <CHARNAME>. If anyone can find a way out, it will be you, but all the same... I do not like the odds. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @788 /* Bodhi and Irenicus will pay for this, I swear it. */ + t15.1
	++ @789 /* I don't either, but the only thing we can do is try. */ + t15.2
	++ @790 /* I appreciate your confidence in me, Evandra. */ + t15.3 
	++ @791 /* Not right now. I'm not in the mood for conversation. */ + t15.4

APPEND RH#EVAJ

IF ~~ t15.1
 SAY @792 /* I hope they do, my friend. I'd like nothing more. */
IF ~~ + t15.5
END

IF ~~ t15.2
 SAY @793 /* True enough, my friend, though not exactly encouraging. */
IF ~~ + t15.5
END

IF ~~ t15.3
 SAY @794 /* You have earned it, my friend. Even if the current situation leaves something to be desired. */
IF ~~ + t15.5
END

IF ~~ t15.4
 SAY @795 /* As you wish. */
IF ~~ EXIT
IF ~Global("rh#EvaRomanceActive","GLOBAL",1)~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t15.5
 SAY @796 /* That mage, that Irenicus... you had spoken of his power before, but I don't think I really understood. I imagined another Lavok, if perhaps even grander in scale, but the reality of the man... */
 = @797 /* I've never seen a mage who made my skin crawl in quite the same way. */
	++ @798 /* We will stop him, Evandra, and we'll undo what he's done. */ + t15.6
	++ @799 /* He was a monster even before, and now things are so much worse. */ + t15.7
	++ @800 /* If you're shaken by this, how do you think I feel? */ + t15.8
	++ @801 /* Well, welcome to the reality of the situation, I suppose. */ + t15.9
END

IF ~~ t15.6
 SAY @802 /* And what is that, precisely? What *has* he done, <CHARNAME>? */
IF ~~ + t15.10
END

IF ~~ t15.7
 SAY @803 /* Yes, but worse how, precisely? What has he done, <CHARNAME>? */
IF ~~ + t15.10
END

IF ~~ t15.8
 SAY @804 /* I... I don't know, <CHARNAME>. What precisely has he done? */
IF ~~ + t15.10
END

IF ~~ t15.9
 SAY @805 /* That reality being what, precisely? What has he done, <CHARNAME>? */
IF ~~ + t15.10
END

IF ~~ t15.10
 SAY @806 /* Whatever the nature of that ritual, we could hear the sounds even in the adjoining cells. I'm not as well versed in necromancy as I could be, but it doesn't take a specialist to know that something... terrible... happened. */
 	++ @807 /* He took my soul from me, and I plan on getting it back. */ + t15.11
	++ @808 /* Terrible is an understatement! The madman stole my very soul! */ + t15.11
	++ @809 /* I'm not interested in discussing it. Now or ever. */ + t15.4
END

IF ~~ t15.11
 SAY @810 /* I... I see. Your soul itself, you say... */
 = @811 /* Legend in Ansalon tells of a dark wizard who would steal other mages' bodies, but to steal a soul instead... I can't say I've ever heard of such a thing before. */
 = @812 /* I shall have to think on this further, but in the meantime, if there's anything I can do for you, just let me know. */
 	++ @813 /* Thank you for the thought. I do appreciate it. */ + t15.12
 	++ @814 /* I'm cursed, Evandra. There's nothing anyone can do for me. */ + t15.13
 	++ @815 /* Anything? Anything at all? I do have a couple of ideas... */ + t15.14
 	++ @816 /* You can stay away from me, woman. I don't need your prodding. */ + t15.15
END

IF ~~ t15.12
 SAY @817 /* I... of course, <CHARNAME>. Think nothing of it. */
IF ~~ EXIT
END

IF ~~ t15.13
 SAY @818 /* I... I hope that's not true, <CHARNAME>. I really do. */
IF ~~ EXIT
END

IF ~~ t15.14
 SAY @819 /* (laugh) Anything within reason and propriety, <CHARNAME>. Do behave yourself. */
IF ~~ EXIT
END

IF ~~ t15.15
 SAY @820 /* Very well, <CHARNAME>. Then you won't receive it. */
IF ~~ EXIT
IF ~Global("rh#EvaRomanceActive","GLOBAL",1)~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END
END

// 16.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",32)~ THEN RH#EVAJ t16
@821 /* I suppose we can be grateful that at least something has gone according to plan, <CHARNAME>. Your sister Imoen... */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
== RH#EVAJ IF ~InParty("Imoen2")~ THEN @822 /* Well, her situation may be as dire as yours, but I wasn't sure we would even find her alive at all. */
== RH#EVAJ IF ~!InParty("Imoen2")~ THEN @823 /* Well, you may have sent her on her way, but I wasn't sure we would even find her alive at all. */
END
  ++ @824 /* You're ever the optimist, Evandra. */ + t16.1
  + ~InParty("Imoen2")~ + @825 /* And now we can wither away and die together. */ + t16.2
  + ~!InParty("Imoen2")~ + @826 /* She was as good as dead, all things considered. */ + t16.2
  ++ @827 /* I was worried about that as well, though Imoen is strong. */ + t16.3
  ++ @828 /* This is no time for a discussion, woman. */ + t16.4

APPEND RH#EVAJ

IF ~~ t16.1
 SAY @829 /* I'm a realist, my friend, though I usually prefer to be wrong. */
IF ~~ + t16.5
END

IF ~~ t16.2
 SAY @830 /* I hope that's not the case. And I do think it's too soon to know anything for sure. */
IF ~~ + t16.5
END

IF ~~ t16.3
 SAY @831 /* Strong, yes. I only hope that will be enough. */
IF ~~ + t16.5
END

IF ~~ t16.4
 SAY @832 /* I see. If that's the way it's to be, then I shall be silent. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ t16.5
 SAY @833 /* I've been putting some thought into your... condition, you know. As much as I can spare, which is probably no great surprise. The fact that the both of you are still standing, still functioning despite what happened... */
 = @834 /* It shouldn't be possible, <CHARNAME>. It makes me question everything I thought we knew about the soul. */
	++ @835 /* It obviously *is* possible, Evandra. */ + t16.6
	++ @836 /* Given my heritage, I'm probably unique. */ + t16.7
	++ @837 /* Don't treat this like so much magical theory! */ + t16.8
	++ @838 /* Have you figured out anything that might help? */ + t16.9
END

IF ~~ t16.6
 SAY @839 /* Yes... yes. Obviously so. */
IF ~~ + t16.10
END

IF ~~ t16.7
 SAY @840 /* Yes... yes. It might be as simple as that. */
IF ~~ + t16.10
END

IF ~~ t16.8
 SAY @841 /* I assure you, I'm not. I honestly wish I were. */
IF ~~ + t16.10
END

IF ~~ t16.9
 SAY @842 /* I... no. I'm not even certain where to start. */
IF ~~ + t16.10
END

IF ~~ t16.10
 SAY @843 /* (sigh) Under other circumstances, if it were anyone else... if it were even just Imoen, I would have been cold about this. Detached. Able to treat it like a curiosity, an interesting problem to be solved. */
 = @844 /* And perhaps I would have even been some use because of that. As it is, I can't tell you anything that you don't already know. */
	++ @845 /* All I need to know now is where Irenicus is. */ + t16.11
	++ @846 /* Are you apologizing to me for actually caring? */ + t16.12
	++ @847 /* Regardless, I do appreciate your concern. */ + t16.13
	++ @848 /* I should be the one whining about it, not you. */ + t16.14
END

IF ~~ t16.11
 SAY @849 /* Well, I can't help you with that either, unfortunately. */
IF ~~ + t16.15
END

IF ~~ t16.12
 SAY @850 /* It wasn't exactly an apology. Just a frustration. */
IF ~~ + t16.15
END

IF ~~ t16.13
 SAY @851 /* If only my concern were of any real use. */
IF ~~ + t16.15
END

IF ~~ t16.14
 SAY @852 /* You may have a point, much as I wish you didn't. */
IF ~~ + t16.15
END

IF ~~ t16.15
 SAY @853 /* I suppose... I suppose there's little point in trying to figure out precisely what was done to you. I may prefer knowing, but I doubt knowledge alone will do us much good right now. I just... */
 = @854 /* I don't know what else I can do to help you, <CHARNAME>. Perhaps nothing. */
	++ @855 /* You don't need to do anything at all, Evandra. */ + t16.16
	++ @856 /* You can stop treating me like I'm made of glass. */ + t16.17
	++ @857 /* Well, I certainly wouldn't turn down a massage. */ + t16.18
	++ @858 /* You can stay. That's all I could ask for right now. */ + t16.19
END

IF ~~ t16.16
 SAY @859 /* Mm, it doesn't look like I have much of a choice in the matter. */
IF ~~ EXIT
END

IF ~~ t16.17
 SAY @860 /* I'm sorry. That really wasn't my intention. */
IF ~~ EXIT
END

IF ~~ t16.18
 SAY @861 /* Mm, that at least I can probably manage. */
IF ~~ EXIT
END

IF ~~ t16.19
 SAY @862 /* Mm, that really goes without saying at this point. */
IF ~~ EXIT
END
END

// 17. Underdark
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",34)~ THEN RH#EVAJ t17
@863 /* There's a certain dark beauty to this place, <CHARNAME>. I can't say I've ever seen anything so fascinating and yet at the same time so deadly dangerous. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @864 /* You like it down here? I never thought I'd hear an elf say that! */ + t17.1
  ++ @865 /* Just don't touch anything. It'll almost certainly be poisonous. */ + t17.2
  ++ @866 /* There's no beauty here, Evandra. Only death and cruelty. */ + t17.3
  ++ @867 /* I don't have time to talk about this trap infested hell. */ + t17.4

APPEND RH#EVAJ

IF ~~ t17.1
 SAY @868 /* "Like" is a strong word, my friend, but it does have its charms. */
IF ~~ + t17.5
END

IF ~~ t17.2
 SAY @869 /* Duly noted, but the place still does have its charms. */
IF ~~ + t17.5
END

IF ~~ t17.3
 SAY @870 /* Death and cruelty can be found anywhere, my friend, but underground lakes... they certainly have their charms. */
IF ~~ + t17.5
END

IF ~~ t17.4
 SAY @871 /* I... no. I suppose you wouldn't. */
IF ~~ EXIT
END

IF ~~ t17.5
 SAY @872 /* Especially right now, when any sort of distraction is so very welcome. I don't know if we're getting closer or further away from recovering your soul, but here... here in the darkness, it's almost as if time were standing still. */
 = @873 /* It's an illusory comfort, thinking that you have more time than perhaps you do, but a comfort all the same. */
	++ @874 /* For me, it's the opposite. If anything, time has sped up. */ + t17.6
	++ @875 /* We'll get through this, Evandra. One way or the other. */ + t17.7
	++ @876 /* Hopefully reality won't come crashing down on us just yet. */ + t17.8
	++ @877 /* I'll take all the illusory comforts I can get right now. */ + t17.9
END

IF ~~ t17.6
 SAY @878 /* I see. I hope that's due to the way the darkness wrecks havoc with a person's sense of time. */
IF ~~ + t17.10
END

IF ~~ t17.7
 SAY @879 /* We usually do, but this time... I hope you're right. */
IF ~~ + t17.10
END

IF ~~ t17.8
 SAY @880 /* (smile) One could say the same thing about the ceiling here. */
IF ~~ + t17.10
END

IF ~~ t17.9
 SAY @881 /* (smile) I don't blame you for that. */
IF ~~ + t17.10
END

IF ~~ t17.10
 SAY @882 /* I've heard stories about this place, you know. Not many, but enough to have an idea of the history involved. The ancient strife between our people and the dark elves that make their home down here. */
 = @883 /* Of all the elven realms I might have liked to visit, perhaps it's fitting that this is the first. You're the child of a dark god, and me... on my world, I'm the one called dark elf. Perhaps it's here we belong, rather than in the light. */
	++ @884 /* That isn't true, Evandra, and you know it. */ + t17.11
	++ @885 /* A surprisingly romantic image. I like it. */ + t17.12
	++ @886 /* I doubt the drow would agree with you. */ + t17.13
	++ @887 /* Is that what you want? To rot down here? */ + t17.14
END

IF ~~ t17.11
 SAY @888 /* Do I? I couldn't begin to guess what I know and what I don't anymore. */
IF ~~ + t17.15
END

IF ~~ t17.12
 SAY @889 /* Mm, that doesn't surprise me. Sometimes I think you're as lost as I am. */
IF ~~ + t17.15
END

IF ~~ t17.13
 SAY @890 /* No, from what I've seen, I don't imagine they would. */
IF ~~ + t17.15
END

IF ~~ t17.14
 SAY @891 /* I'd have some trouble telling you what I want and what I don't right now. */
IF ~~ + t17.15
END

IF ~~ t17.15
 SAY @892 /* I... I'm sorry, <CHARNAME>. The lighting in this place has left me slightly hypnotized, I think, or perhaps it's more than just that. Perhaps... perhaps it's the entire situation. */
 = @893 /* I have never been known to break under pressure before, but I suppose this is the first time the stakes have been quite so high. */
	++ @894 /* What do you mean? The stakes have always been high. */ + t17.16
	++ @895 /* You've been acting strange for some time now. */ + t17.17
	++ @896 /* I appreciate your concern. Really, I do. */ + t17.18
	++ @897 /* Well, don't fall apart now. I need you at your best. */ + t17.19
END

IF ~~ t17.16
 SAY @898 /* Mm, we've always played a game of life and death, my friend, but there's more to stakes than that. */
IF ~~ + t17.20
END

IF ~~ t17.17
 SAY @899 /* Is it that obvious? Well, I guess that's no surprise. */
IF ~~ + t17.20
END

IF ~~ t17.18
 SAY @900 /* Mm, if only it weren't so necessary right now. */
IF ~~ + t17.20
END

IF ~~ t17.19
 SAY @901 /* Mm, I'm not sure that's an option, but I'll do whatever I can. */
IF ~~ + t17.20
END

IF ~~ t17.20
 SAY @902 /* I think... well, perhaps this isn't the best place for any conversation at all, much less the type I would like to have right now. */
 = @903 /* Come, let's move on before something else down here tries to devour us. */
IF ~~ EXIT
END
END

// 18.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",36)~ THEN RH#EVAJ t18
@904 /* Something about you has changed, <CHARNAME>. Ever so slightly. And I don't mean that monstrosity that you turn into from time to time. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @905 /* What do you mean? What has changed? */ + t18.1
  ++ @906 /* That doesn't surprise me. I certainly feel different. */ + t18.2
  ++ @907 /* A slow, creeping death tends to have that effect. */ + t18.3
  ++ @908 /* I don't want to talk about it, Evandra. */ + t18.4

APPEND RH#EVAJ

IF ~~ t18.1
 SAY @909 /* Hm. How precisely to put it into words...? */
IF ~~ + t18.5
END

IF ~~ t18.2
 SAY @910 /* I thought that you might, all things considered. */
IF ~~ + t18.5
END

IF ~~ t18.3
 SAY @911 /* Hm. A terrible thought, but perhaps not inaccurate. */
IF ~~ + t18.5
END

IF ~~ t18.4
 SAY @912 /* Then I won't press you further. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t18.5
 SAY @913 /* There's a certain... urgency... I've noticed more often than not amongst humans, a need to live each moment as if it might be your last. You had a trace of it about you even before, probably due to your upbringing, but now... */
 = @914 /* Now it's considerably stronger. So much so that it's the first thing I notice about you anymore. */
	++ @915 /* If I don't do everything I can, Irenicus might escape forever. */ + t18.6
	++ @916 /* Does that surprise you? I *could* drop dead at any moment. */ + t18.7
	++ @917 /* What of it? It's hardly a defining character trait, Evandra. */ + t18.8
	++ @918 /* And here I'd hoped the first thing you noticed about me was my wit and dashing good looks. */ + t18.9
END

IF ~~ t18.6
 SAY @919 /* I know, but it's more than that. It's mortality, <CHARNAME>... it clings to you like a second skin now. */
IF ~~ + t18.10
END

IF ~~ t18.7
 SAY @920 /* Yes... yes, I know. Mortality, <CHARNAME>... it clings to you like a second skin now. */
IF ~~ + t18.10
END

IF ~~ t18.8
 SAY @921 /* But isn't it? It's mortality, <CHARNAME>... it clings to you like a second skin now. */ 
IF ~~ + t18.10
END

IF ~~ t18.9
 SAY @922 /* (laugh) Once, perhaps, but now... it's mortality, <CHARNAME>... it clings to you like a second skin now. */ 
IF ~~ + t18.10
END

IF ~~ t18.10
 SAY @923 /* Oh, I won't deny that it's a trait I've always found fascinating. Attractive, in its own way. To burn brightly and then to fade into the night... */
 = @924 /* With humans, if anything it's a trait that draws the attention, but with you, <CHARNAME>... with you it just makes me sad. */
	++ @925 /* Sad? Why exactly would it make you sad? */ + t18.11
	++ @926 /* Then we can be depressed by current events together. */ + t18.12
	++ @927 /* I'm sorry my situation has inconvenienced you so. */ + t18.13
	++ @928 /* It won't be forever, Evandra. This will pass. */ + t18.14
END

IF ~~ t18.11
 SAY @929 /* Because... because it's not what I wanted for you. */
IF ~~ + t18.15
END

IF ~~ t18.12
 SAY @930 /* So it would seem. */
IF ~~ + t18.15
END

IF ~~ t18.13
 SAY @931 /* I didn't mean it like that. I meant... this is not what I wanted for you. */
IF ~~ + t18.15
END

IF ~~ t18.14
 SAY @932 /* Yes... one way or the other, I suppose that's true. */
IF ~~ + t18.15
END

IF ~~ t18.15
 SAY @933 /* To look into your eyes now, my friend, and see nothing but a lingering death lurking there... perhaps you'll be lucky enough to live a human lifespan, and perhaps even that is baseless optimism. There's no way to know for sure. */
	++ @934 /* There never is, Evandra. Even a god can die. */ + t18.16
	++ @935 /* I'm not dead and buried yet, you know. */ + t18.17
	++ @936 /* If you're upset about this, how do you think I feel? */ + t18.18
	++ @937 /* What does this mean, Evandra? For you? For us? */ + t18.19
END

IF ~~ t18.16
 SAY @938 /* Yes, the possibility always exists, but it's not the same. I... */
IF ~~ + t18.20
END

IF ~~ t18.17
 SAY @939 /* I do. And yet... and yet sometimes it's hard to remember. I... */
IF ~~ + t18.20
END

IF ~~ t18.18
 SAY @940 /* I couldn't begin to guess. I... */
IF ~~ + t18.20
END

IF ~~ t18.19
 SAY @941 /* I... I don't know. I wish I did, but I don't. I... */
IF ~~ + t18.20
END

IF ~~ t18.20
 SAY @942 /* I'm sorry, <CHARNAME>. I seem not to be in the right mood for talking right now. */
IF ~~ EXIT
END
END

// 19.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",38)~ THEN RH#EVAJ t19
@943 /* I think I owe you an apology, <CHARNAME>. My words the last time we spoke... they left much to be desired. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @944 /* You weren't wrong. My future has become decidedly uncertain. */ + t19.1
  ++ @945 /* Apology accepted. We're all under a lot of stress right now. */ + t19.1
  ++ @946 /* You're right, they did. This is difficult enough as it is. */ + t19.2
  ++ @947 /* I don't want to hear it. Or anything else, for that matter. */ + t19.3

APPEND RH#EVAJ

IF ~~ t19.1
 SAY @948 /* True enough, but that's no excuse for what I said. */
IF ~~ + t19.4
END

IF ~~ t19.2
 SAY @949 /* I know, and I certainly shouldn't be adding to your problems. */
IF ~~ + t19.4
END

IF ~~ t19.3
 SAY @950 /* I... very well. I suppose that's understandable. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t19.4
 SAY @951 /* (sigh) Mortality has always been such a strange thing to me. Convenient in its own way, truth be told. No ties, no complications, no tomorrow at all when a relationship won't last more than a season. There's something almost liberating in that. */
 = @952 /* I'm sure that sounds terrible, and I won't deny that it is. Perhaps that explains my taste for Black Robed mages and other unsavory types as well. No ties, no complications... and no guilt either. If it was a game for me, it was a game for them too. A whole elaborate farce, more often than not. */
	++ @953 /* That sounds extremely lonely, Evandra. */ + t19.5
	++ @954 /* The past doesn't matter. It's the future that counts now. */ + t19.6
	++ @955 /* If you think games bother me, you don't know me well. */ + t19.7
	++ @956 /* Terrible is an understatement. I don't want to hear anymore. */ + t19.3
END

IF ~~ t19.5
 SAY @957 /* Lonely... yes. That would be a good word for it. */
IF ~~ + t19.10
END

IF ~~ t19.6
 SAY @958 /* I don't see how the two can be separated so easily. I really don't. */
IF ~~ + t19.10
END

IF ~~ t19.7
 SAY @959 /* Perhaps not. Is that all that you're looking for right now? */ 
	++ @960 /* I was hoping for more, but I don't mind the alternative. */ + t19.8
	++ @961 /* The road isn't the place for real commitment. */ + t19.9
	++ @962 /* Does that surprise you? I'm not the type for more. */ + t19.9
END

IF ~~ t19.8
 SAY @963 /* You might not, but I really can't say the same. */
IF ~~ + t19.10
END

IF ~~ t19.9
 SAY @964 /* I see. In that case, I suppose there's no real need to explain myself at all. Thank you, <CHARNAME>. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t19.10
 SAY @965 /* Living like that, seeing nothing but myself reflected back at me in any relationship... I grew bored of it a long time ago. Perhaps that's normal for our kin--spending a few seasons of our youth in human lands, enjoying what it has to offer before returning to our real lives. */
 = @966 /* Of course, I have never had a real life to return to at all. Sometimes... sometimes I feel more an illusion than an illusionist, <CHARNAME>. */
	++ @967 /* You could have a real life, Evandra. You could have one here. */ + t19.11
	++ @968 /* That's not uncommon. We're all swept up by events beyond ourselves. */ + t19.12
	++ @969 /* You're better off than I am. I'm hardly even an illusion anymore. */ + t19.13
	++ @970 /* Enough of your whining, woman. We have important things to get done. */ + t19.14
END

IF ~~ t19.11
 SAY @971 /* Could I? Perhaps, but what what about you? Sometimes I worry that the two of us are just a pair of ghosts, my friend. Memories. Mirages. */
IF ~~ + t19.15
END

IF ~~ t19.12
 SAY @972 /* Mm, so it would seem, and in the aftermath... sometimes I worry that the two of us are just a pair of ghosts, my friend. Memories. Mirages. */
IF ~~ + t19.15
END

IF ~~ t19.13
 SAY @973 /* Mm, sometimes I worry that the two of us are just a pair of ghosts, my friend. Memories. Mirages. */
IF ~~ + t19.15
END

IF ~~ t19.14
 SAY @974 /* Indeed. Then I suppose I shouldn't keep you waiting any longer. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t19.15
 SAY @975 /* You deserve to be more than just a mirage, <CHARNAME>. And me... I don't know what I deserve at all. I hardly even know what I want. */
	++ @976 /* Maybe that's something you should think about. What do you want? */ + t19.16
	++ @977 /* There's more to life than just desserts. We get what we get. */ + t19.17
	++ @978 /* Stop being dramatic. I'm not a mirage at all. */ + t19.18
	++ @979 /* How about an island kingdom and a hoard of dragon's gold? */ + t19.19
END

IF ~~ t19.16
 SAY @980 /* You might be right. A bit of self-reflection would not go amiss right now. */
IF ~~ + t19.20
END

IF ~~ t19.17
 SAY @981 /* Perhaps that's true. */
IF ~~ + t19.20
END

IF ~~ t19.18
 SAY @982 /* I'd like to believe thatd, but I suppose time will tell. */
IF ~~ + t19.20
END

IF ~~ t19.19
 SAY @983 /* (laugh) No, but I wouldn't turn that down either. */
IF ~~ + t19.20
END

IF ~~ t19.20
 SAY @984 /* I... I'm sorry to be constantly troubling you with all these strange, dark thoughts, <CHARNAME>. This entire convoluted situation must be difficult enough for you already, without me complicating it further. */
 = @985 /* Come, there will be time to talk later, once I get more of a grip on my own mind. Until then, there are no doubt a great number of things that need our attention right now. */
IF ~~ EXIT
END
END

// 20.
CHAIN IF ~Global("rh#EvaTalks","GLOBAL",40)~ THEN RH#EVAJ t20
@986 /* Veldrin... it really does just roll off the tongue, doesn't it? Dark and velvety, like everything else in this realm, and yet somehow it suits you. */
DO ~IncrementGlobal("rh#EvaTalks","GLOBAL",1)~
END
  ++ @987 /* Don't get too used to it. I'm not keeping it. */ + t20.1
  ++ @988 /* I'd certainly say so. Adalon chose very well. */ + t20.2
  ++ @989 /* Please don't call me that. It doesn't feel right. */ + t20.3
  ++ @990 /* I'm glad, but we don't have time to talk. */ + t20.4

APPEND RH#EVAJ

IF ~~ t20.1
 SAY @991 /* I wouldn't expect you to. I'm sure this experience is as disorienting for you as it is for me. */
IF ~~ + t20.5
END

IF ~~ t20.2
 SAY @992 /* Mm, I suppose she did. If only the rest of this experience weren't quite so disorienting. */
IF ~~ + t20.5
END

IF ~~ t20.3
 SAY @993 /* No, I suppose not. I'm sure this experience is as disorienting for you as it is for me. */
IF ~~ + t20.5
END

IF ~~ t20.4
 SAY @994 /* No, I suppose not. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t20.5
 SAY @995 /* To see you as you are right now, your features so familiar and yet so alien... perhaps I was distracted by Philomena's plight before, but now I can take the time to really appreciate this spell. I'm not used to being under the power of an illusion not of my own making, and this one... this one is almost humbling. */
 = @996 /* This is the very height of my craft, my friend. This is pure artistry. */
	++ @997 /* And yet you don't seem entirely comfortable with it. */ + t20.6
	++ @998 /* Looking like this? It's unsettling, is what it is. */ + t20.7
	++ @999 /* It's invigorating as well, playing a whole city for a fool. */ + t20.8
	++ @1000 /* What would you expect? Dragons are powerful. */ + t20.9
END

IF ~~ t20.6
 SAY @1001 /* No... no. I can't say that I am. */
IF ~~ + t20.10
END

IF ~~ t20.7
 SAY @1002 /* Mm, illusions all too often are, I'm afraid. */
IF ~~ + t20.10
END

IF ~~ t20.8
 SAY @1003 /* Mm, if only the credit were truly ours. */
IF ~~ + t20.10
END

IF ~~ t20.9
 SAY @1004 /* Mm, yes. Powerful enough to make the rest of us look like children, I'm afraid. */ 
IF ~~ + t20.10
END

IF ~~ t20.10
 SAY @1005 /* If I had this sort of power myself, if I could walk into a kingdom with a different face and a different name and know that no magic in the world could reveal me... what a temptation that would be. What a terrible temptation. */
 = @1006 /* I tried it once or twice, you know, returning to Qualinesti with no-one the wiser for it. Exiling an illusionist... well, it's a more complicated endeavor than you might think. I lasted almost a month once before one of the diviners discovered me. */
 = @1007 /* To his credit, he was more concerned than angry. "Vanathalara," he said, the name I was known by amongst my own people, "how long before you confuse illusion with reality and lose even yourself?" It was a good question then, and now... now I worry that we might have an answer to it before this is over. */
 = @1008 /* Are you <CHARNAME>, or are you Veldrin now? And me... sometimes I wonder if I *didn't* truly lose myself at some point along the way. */
	++ @1009 /* I'm the same person beneath this face, Evandra. As are you. */ + t20.11
	++ @1010 /* And what of it if you did? We build our identities day by day. */ + t20.12
	++ @1011 /* Well, as long as you don't start worshiping the Spider Queen. */ + t20.13
	++ @1012 /* I don't have an answer. I don't know who I am anymore either. */ + t20.14
END

IF ~~ t20.11
 SAY @1013 /* (smile) I hope your confidence is warranted. */
IF ~~ + t20.15
END

IF ~~ t20.12
 SAY @1014 /* And rebuild them, as the case may be... perhaps that's true. */
IF ~~ + t20.15
END

IF ~~ t20.13
 SAY @1015 /* (laugh) Oh, I have no intention of going that far. */
IF ~~ + t20.15
END

IF ~~ t20.14
 SAY @1016 /* (smile) We're a fine pair in that case, aren't we? */
IF ~~ + t20.15
END

IF ~~ t20.15
 SAY @1017 /* I know that I've been difficult lately, <CHARNAME>. Or perhaps I've always been difficult with you. I'm accustomed to dealing with humans, but when it comes to my own people, I feel... exposed, more often than not, shorn of the tricks that are my trade. */
 = @1018 /* It would be easier if I didn't care for you, but I think it's altogether too clear that I do. The thought of you withering away to nothingness would not be so painful otherwise. */
	++ @1019 /* I care about you too, Evandra. With or without your tricks. */ + t20.16
	++ @1020 /* Does this mean we're finally going to stop beating around the bush? */ + t20.17
	++ @1021 /* Maybe we should wait until I get my soul back to have this conversation. */ + t20.18
	++ @1022 /* Care about me from a distance, then. I'm tired of this nonsense. */ + t20.19
END

IF ~~ t20.16
 SAY @1023 /* Without them, <CHARNAME>. I would rather it be without them. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",2)~ + t20.20
END

IF ~~ t20.17
 SAY @1024 /* Yes... yes. I think I would like that. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",2)~ + t20.20
END

IF ~~ t20.18
 SAY @1025 /* If that's what you prefer, but... well. I will be waiting. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ t20.19
 SAY @1026 /* Then... well, very well. I suppose that's settled. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t20.20
 SAY @1027 /* If only the slightest gesture of affection wouldn't give us away down here, I would very much like to do... well. A great many things, truth be told. */
 = @1028 /* But there will be time for that later, I suppose. Once we've finished our tasks down here and returned to the sunlit realms. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Chapter 4-7 Friendship
// ---------------------------------------------

// 1. Spellhold, friendship version
CHAIN IF ~Global("rh#EvaSpellholdTalk","GLOBAL",2)~ THEN RH#EVAJ spell
@787 /* This is quite the trap they've laid for us, <CHARNAME>. If anyone can find a way out, it will be you, but all the same... I do not like the odds. */
DO ~IncrementGlobal("rh#EvaSpellholdTalk","GLOBAL",1)~
END
	++ @788 /* Bodhi and Irenicus will pay for this, I swear it. */ + spell.1
	++ @789 /* I don't either, but the only thing we can do is try. */ + spell.2
	++ @790 /* I appreciate your confidence in me, Evandra. */ + spell.3
	++ @791 /* Not right now. I'm not in the mood for conversation. */ + spell.4

APPEND RH#EVAJ

IF ~~ spell.1
 SAY @1029 /* I hope they do, my friend. I'd like nothing more, but right now we have more pressing concerns. */
IF ~~ + spell.5
END

IF ~~ spell.2
 SAY @1030 /* Yes, I know. Hopefully it will be enough. */
IF ~~ + spell.5
END

IF ~~ spell.3
 SAY @1031 /* Confident is not precisely how I'd describe myself right now, I'm afraid. */
IF ~~ + spell.5
END

IF ~~ spell.4
 SAY @1032 /* Then I shall leave you in peace. */
IF ~~ EXIT
END

IF ~~ spell.5
 SAY @1033 /* Trapped inside a prison meant to hold mages... there are places like this on Ansalon, you know. At least according to our records. I've never seen one myself, but I'm familiar enough with the type of defenses wizards can bring to bear to know that this is only going to get worse. */
 = @1034 /* We're considerably more powerful than the average renegade wizard back home, and no doubt more powerful than the normal inmate here as well, but I'm concerned all the same. */
	++ @1035 /* Good. Caution will keep us alive right now. */ + spell.6
	++ @1036 /* What sort of traps do you think we have in store? */ + spell.7
	++ @1037 /* We will get out of here, Evandra. I promise. */ + spell.8
	++ @1038 /* Keep your concerns to yourself. I don't have time for this. */ + spell.4
END

IF ~~ spell.6
 SAY @1039 /* Perhaps. Perhaps not. But even if it does... well. */
IF ~~ + spell.9
END

IF ~~ spell.7
 SAY @1040 /* The possibilities are endless, and even if we get through them... well. */
IF ~~ + spell.9
END

IF ~~ spell.8
 SAY @1041 /* I appreciate the sentiment, but even if we do... well. */
IF ~~ + spell.9
END

IF ~~ spell.9
 SAY @796 /* That mage, that Irenicus... you had spoken of his power before, but I don't think I really understood. I imagined another Lavok, if perhaps even grander in scale, but the reality of the man... */
 = @1042 /* It frightens even me, <CHARNAME>. A monster such as that would need to be hunted down even if he hadn't stolen your soul from you, but I can't say I relish the task. */
 	+ ~!InParty("Imoen2")~ + @1043 /* If you don't like it, how do you think I feel? */ + spell.10
 	+ ~InParty("Imoen2")~ + @1044 /* If you don't like it, how do you think Imoen and I feel? */ + spell.10
 	++ @1045 /* Whatever he is, he's not invincible. We can beat him. */ + spell.11
 	++ @1046 /* The only alternative right now is to give up and die. */ + spell.12
 	++ @1047 /* A bit of encouragement, please. I could use it right now. */ + spell.13
END

IF ~~ spell.10
 SAY @1048 /* At this point, I couldn't begin to guess. */
IF ~~ + spell.14
END

IF ~~ spell.11
 SAY @1049 /* I do hope you're right about that. */
IF ~~ + spell.14
END

IF ~~ spell.12
 SAY @1050 /* Which is no alternative at all. Yes, I know. */
IF ~~ + spell.14
END

IF ~~ spell.13
 SAY @1051 /* (smile) I'll certainly try, but I can't imagine I'll be overly successful right now. */
IF ~~ + spell.14
END

IF ~~ spell.14
 SAY @1052 /* Regardless, I think I've taken enough of your attention for the moment. Considering what we're facing down here, I expect both of us could do without the additional distraction. */
IF ~~ EXIT
END
END

// 2. Underdark, friendship version
CHAIN IF ~Global("rh#EvaUnderdarkTalk","GLOBAL",2)~ THEN RH#EVAJ und
@863 /* There's a certain dark beauty to this place, <CHARNAME>. I can't say I've ever seen anything so fascinating and yet at the same time so deadly dangerous. */
DO ~IncrementGlobal("rh#EvaUnderdarkTalk","GLOBAL",1)~
END
  ++ @864 /* You like it down here? I never thought I'd hear an elf say that! */ + und.1
  ++ @865 /* Just don't touch anything. It'll almost certainly be poisonous. */ + und.2
  ++ @866 /* There's no beauty here, Evandra. Only death and cruelty. */ + und.3
  ++ @867 /* I don't have time to talk about this trap infested hell. */ + und.4

APPEND RH#EVAJ

IF ~~ und.1
 SAY @868 /* "Like" is a strong word, my friend, but it does have its charms. */
IF ~~ + und.5
END

IF ~~ und.2
 SAY @869 /* Duly noted, but the place still does have its charms. */
IF ~~ + und.5
END

IF ~~ und.3
 SAY @1053 /* There are death and cruelty everywhere, my friend, but underground lakes... those are rarer. */
IF ~~ + und.5
END

IF ~~ und.4
 SAY @871 /* I... no. I suppose you wouldn't. */
IF ~~ EXIT
END

IF ~~ und.5
 SAY @1054 /* I doubt I could endure more than a ten-day or two away from the sky, and I pray I won't have to, but a brief visit to a land as strange as this one... it's a pity that time is so of the essence right now. I would have liked to explore a bit. */
	++ @1055 /* I'd have liked that as well. Not everyone gets to see this. */ + und.6
	++ @1056 /* The Underdark is the sort of place to be escaped, not explored. */ + und.7
	++ @1057 /* You did nothing but complain about Athkatla, but this interests you? */ + und.8
	++ @1058 /* Sometimes it's very obvious you're from a different plane. */ + und.9
END

IF ~~ und.6
 SAY @1059 /* Much less live to tell the tale, I'm sure. */
IF ~Race(Player1,ELF)~ + und.10
IF ~!Race(Player1,ELF)~ + und.11
END

IF ~~ und.7
 SAY @1060 /* (laugh) The two often go hand in hand. */
IF ~Race(Player1,ELF)~ + und.10
IF ~!Race(Player1,ELF)~ + und.11
END

IF ~~ und.8
 SAY @1061 /* (laugh) Athkatla is ordinary. This is... decidedly different. */
IF ~Race(Player1,ELF)~ + und.10
IF ~!Race(Player1,ELF)~ + und.11
END

IF ~~ und.9
 SAY @1062 /* (laugh) Oh, I'm sure it is. */
IF ~Race(Player1,ELF)~ + und.10
IF ~!Race(Player1,ELF)~ + und.11
END

IF ~~ und.10
 SAY @882 /* I've heard stories about this place, you know. Not many, but enough to have an idea of the history involved. The ancient strife between our people and the dark elves that make their home down here. */
 = @1063 /* Of all the elven realms I might have liked to visit, perhaps it's fitting that this is the first. On my world, I'm the one called dark elf... cast out, cast off, with no ties left to speak of. I wonder if I would be light or dark here on Faerûn. */
	++ @1064 /* Neither, Evandra. Neither of us is so easily pigeonholed. */ + und.12
	++ @1065 /* If you were dark, people would be running from you in fear. */ + und.13
	++ @1066 /* Which of the two would you prefer to be? */ + und.14
	++ @1067 /* You'd have an easier time qualifying as light than I would. */ + und.15
END

IF ~~ und.11
 SAY @1068 /* I've heard stories about this place, you know. Not many, but enough to have an idea of the history involved. The ancient strife between my people and the dark elves that make their home down here. */
 = @1069 /* Though perhaps I would be wrong to consider them my people at all. On my world, *I* am the one called dark elf... cast out, cast off, with no ties left to speak of. I wonder if I would be light or dark here on Faerûn. */
	++ @1070 /* Neither, Evandra. You're no more easily pigeonholed than I am. */ + und.12
	++ @1065 /* If you were dark, people would be running from you in fear. */ + und.13
	++ @1066 /* Which of the two would you prefer to be? */ + und.14
	++ @1067 /* You'd have an easier time qualifying as light than I would. */ + und.15
END

IF ~~ und.12
 SAY @1071 /* No, you're decidedly unique, <CHARNAME>, and I am... well, I couldn't say what I am at all. */
IF ~~ + und.16
END

IF ~~ und.13
 SAY @1072 /* Back on Ansalon, occasionally they did. */
IF ~~ + und.16
END

IF ~~ und.14
 SAY @1073 /* Nobody wishes to be a dark elf, <CHARNAME>. Or at least nobody on Ansalon does... perhaps the drow are different. */
IF ~~ + und.16
END

IF ~~ und.15
 SAY @1074 /* I would not be sure of that, <CHARNAME>. You're decidedly unique, but me... I couldn't say what I am at all. */ 
IF ~~ + und.16
END
END

CHAIN RH#EVAJ und.16
@1075 /* Ahh, what strange memories this place dredges up... memories that have absolutely nothing to do with it at all. For you, the Underdark must have considerably more significance, I'm sure. */
== RH#EVAJ IF ~Race(Player1,ELF)~ THEN @1076 /* After all, the cultural enmity between the elves and the drow... that is part of your heritage, not mine. */
== RH#EVAJ IF ~!Race(Player1,ELF)~ THEN @1077 /* You may not be an elf, but this world is still yours, as is its history. */
END
	+ ~Race(Player1,HALF_ELF)~ + @1078 /* I am half-elven, Evandra. I feel like part of the conflict as well. */ + und.17
	++ @1079 /* Indeed it is, and if I could cleanse this place, I would. */ + und.18
	++ @1080 /* You're right. Simply being here makes my skin crawl. */ + und.19
	+ ~Race(Player1,ELF)~ + @1081 /* Only by blood. I was raised amongst humans, after all. */ + und.20
	+ ~Race(Player1,ELF)~ + @1082 /* I am a child of Bhaal, Evandra. No more, no less. */ + und.21
	+ ~!Race(Player1,ELF)~ + @1083 /* You'd think, but history was never my strong point in Candlekeep. */ + und.22
	+ ~!Race(Player1,ELF)~ + @1084 /* I'm a child of Bhaal, Evandra. What's a bit of danger? */ + und.23

APPEND RH#EVAJ

IF ~~ und.17
 SAY @1085 /* Mm, perhaps that should not surprise me at all. */
IF ~~ + und.24
END

IF ~~ und.18
 SAY @1086 /* Mm, a strong sentiment, but I can understand why. */
IF ~~ + und.24
END

IF ~~ und.19
 SAY @1087 /* I would make sure that what's crawling isn't a spider. They really are all over the place. */
IF ~~ + und.24
END

IF ~~ und.20
 SAY @1088 /* Mm, you're perhaps more elven than you think you are, my friend, but I won't press you on that. */
IF ~~ + und.24
END

IF ~~ und.21
 SAY @1089 /* Mm, but an elven one, my friend, whether you care to admit it or not. That does make a difference. */
IF ~~ + und.24
END

IF ~~ und.22
 SAY @1090 /* I suppose I'll have to take your word for it. */
IF ~~ + und.24
END

IF ~~ und.23
 SAY @1091 /* What, indeed? I suppose you have a point. */
IF ~~ + und.24
END

IF ~~ und.24
 SAY @1092 /* Regardless, I've taken up enough of your time already, I think. We should probably move on before something else down here tries to devour us. */
IF ~~ EXIT
END
END

// 3. Veldrin, friendship only
CHAIN IF ~Global("rh#EvaVeldrinTalk","GLOBAL",2)~ THEN RH#EVAJ vel
@986 /* Veldrin... it really does just roll off the tongue, doesn't it? Dark and velvety, like everything else in this realm, and yet somehow it suits you. */
DO ~IncrementGlobal("rh#EvaVeldrinTalk","GLOBAL",1)~
END
  ++ @987 /* Don't get too used to it. I'm not keeping it. */ + vel.1
  ++ @988 /* I'd certainly say so. Adalon chose very well. */ + vel.2
  ++ @989 /* Please don't call me that. It doesn't feel right. */ + vel.3
  ++ @990 /* I'm glad, but we don't have time to talk. */ + vel.4

APPEND RH#EVAJ

IF ~~ vel.1
 SAY @1093 /* Mm, I wouldn't write it off so quickly. */
IF ~~ + vel.5
END

IF ~~ vel.2
 SAY @1094 /* Mm, she certainly did. */
IF ~~ + vel.5
END

IF ~~ vel.3
 SAY @1095 /* Mm, it's as right as you wish it to be, my friend. */
IF ~~ + vel.5
END

IF ~~ vel.4
 SAY @1096 /* No, I suppose that doesn't surprise me. */
IF ~~ EXIT
END

IF ~~ vel.5
 SAY @1097 /* I suppose I was too distracted by Philomena's plight before to really appreciate that dragon's work, but now... now it's all I can do to tear my eyes away from any mirror we pass. I'm not used to being under the power of an illusion not of my own making, and this one is almost humbling. */
 = @996 /* This is the very height of my craft, my friend. This is pure artistry. */
	++ @997 /* And yet you don't seem entirely comfortable with it. */ + vel.6
	++ @998 /* Looking like this? It's unsettling, is what it is. */ + vel.7
	++ @999 /* It's invigorating as well, playing a whole city for a fool. */ + vel.8
	++ @1000 /* What would you expect? Dragons are powerful. */ + vel.9
END

IF ~~ vel.6
 SAY @1001 /* No... no. I can't say that I am. */
IF ~~ + vel.10
END

IF ~~ vel.7
 SAY @1002 /* Mm, illusions all too often are, I'm afraid. */
IF ~~ + vel.10
END

IF ~~ vel.8
 SAY @1003 /* Mm, if only the credit were truly ours. */
IF ~~ + vel.10
END

IF ~~ vel.9
 SAY @1004 /* Mm, yes. Powerful enough to make the rest of us look like children, I'm afraid. */ 
IF ~~ + vel.10
END

IF ~~ vel.10
 SAY @1005 /* If I had this sort of power myself, if I could walk into a kingdom with a different face and a different name and know that no magic in the world could reveal me... what a temptation that would be. What a terrible temptation. */
 = @1098 /* I tried it once or twice, you know, returning to Qualinesti with no-one the wiser for it. Exiling an illusionist... well, it's a more complicated endeavor than you might think. It never quite worked out in the end, but perhaps that was for the best in the long run. */
 = @1099 /* Playing games like this... there's always a chance that you'll lose yourself to it, Veldrin. Just slip into the anonymity and never come back again. */
	++ @1100 /* I don't think there's any risk of that, Evandra. */ + vel.11
	++ @1101 /* As long as you don't start thinking you're really drow. */ + vel.12
	++ @1102 /* I feel similarly these days. More so than I'd care to. */ + vel.13
	++ @1103 /* You make the possibility sound almost attractive. */ + vel.14
END

IF ~~ vel.11
 SAY @1104 /* I hope not, but I'm not so certain. */
IF ~~ + vel.15
END

IF ~~ vel.12
 SAY @1105 /* Yes... that is the sort of thing I'd really rather avoid. */
IF ~~ + vel.15
END

IF ~~ vel.13
 SAY @1106 /* That doesn't surprise me. These days identity must be as difficult for you as it is for me. */
IF ~~ + vel.15
END

IF ~~ vel.14
 SAY @1107 /* Do I? That wasn't quite my intention, but I suppose it makes some sense. */
IF ~~ + vel.15
END

IF ~~ vel.15
 SAY @1108 /* I don't think I've ever mentioned this, but "Evandra" is not a typical Qualinesti name. It doesn't have quite enough syllables to appease our musical sensibilities, you see. My full name was Vanathalara, once upon a time, shortened to Vana as often as not. */
 = @1109 /* Evandra, on the other hand... that I picked up in human lands. Evandra the Red. It fit uncomfortably at first, but now it's Vanathalara who seems a stranger to me. The distant memory of an identity long since shed. Names and illusions... they go together so well, but they really do complicate things in the end. */
	++ @1110 /* Vanathalara. I think I'll start calling you that instead. */ + vel.16
	++ @1111 /* I think *you're* the one complicating things, Evandra. */ + vel.17
	++ @1112 /* You may need to shed "Evandra the Red" soon as well. */ + vel.18
	++ @1113 /* Does this odd bit of nostalgia actually have a point? */ + vel.19
END

IF ~~ vel.16
 SAY @1114 /* (laugh) Call me whatever you wish, but don't expect me to respond. */
IF ~~ + vel.20
END

IF ~~ vel.17
 SAY @1115 /* (laugh) Perhaps, but it still seems obviously true to me. */
IF ~~ + vel.20
END

IF ~~ vel.18
 SAY @1116 /* I might, yes. And perhaps sooner rather than later. */
IF ~~ + vel.20
END

IF ~~ vel.19
 SAY @1117 /* (laugh) Yes. Yes, I would say that it does. */
IF ~~ + vel.20
END

IF ~~ vel.20
 SAY @1118 /* Names are such strange things, my friend. It's a pity that they can't change slowly and gradually as we ourselves do... an A here, a V there, and the entire name transformed before we notice the change at all. */
 = @1119 /* I don't know if it's this drow skin that makes me feel so different, or meeting Philomena and realizing that I simply didn't care anymore, but I do have to wonder... I'm no longer Vanathalara, but am I even Evandra anymore? Am I the same person who stepped out of that planar dungeon not so long ago? */
 = @1120 /* More every day, I'm beginning to suspect that I'm not. */
	++ @1121 /* And yet here you are, so close to finding a way back home. */ + vel.21
	+ ~!InParty("Viconia")~ + @1122 /* This is a strange experience for all of us, Evandra. */ + vel.22
	+ ~InParty("Viconia")~ + @1122 /* This is a strange experience for all of us, Evandra. */ + vel.23
	++ @1123 /* You're the illusionist. You should be used to this. */ + vel.24
	++ @1124 /* I really don't have the time to deal with your identity crisis. */ + vel.25
END

IF ~~ vel.21
 SAY @1125 /* Mm, I know. I suppose that decision is weighing upon my mind as well. */
IF ~~ + vel.26
END

IF ~~ vel.22
 SAY @1126 /* All of us except Viconia, at least. */
IF ~~ + vel.26
END

IF ~~ vel.23
 SAY @1127 /* Yes, I suppose it would be. */
IF ~~ + vel.26
END

IF ~~ vel.24
 SAY @1128 /* I should be, yes, but that doesn't seem to matter right now. */
IF ~~ + vel.26
END

IF ~~ vel.25
 SAY @1129 /* No, I suppose you wouldn't. And you're not wrong--this is hardly the proper time or place for such a discussion. */
IF ~~ EXIT
END

IF ~~ vel.26
 SAY @1130 /* Regardless, this is hardly the proper time or place for such a discussion. I'm ready to continue on when you are, Veldrin. */
IF ~~ EXIT
END
END

// 4. Suldanessellar
CHAIN IF WEIGHT #-1 ~Global("rh#EvaSuldaTalk","GLOBAL",2)~ THEN RH#EVAJ suld
@1131 /* This city must have been beautiful once upon a time. To see it like this instead... this is a nightmare, <CHARNAME>. A veritable nightmare. */
DO ~SetGlobal("rh#EvaSuldaTalk","GLOBAL",3)~ 
END
	++ @1132 /* We'll save it, Evandra. We'll save it, and then we'll kill Irenicus. */ + suld.1
	++ @1133 /* It's not the image you'd expect of an elven city, I'll say that much. */ + suld.2
	++ @1134 /* I know. I can't imagine why anyone would do what Irenicus has done. */ + suld.3
	++ @1135 /* We don't have time to stand back and watch, Evandra. Let's get moving. */ + suld.4

APPEND RH#EVAJ

IF ~~ suld.1
 SAY @1136 /* I... yes. I have to believe that right now. I... */
IF ~~ + suld.5
END

IF ~~ suld.2
 SAY @1137 /* I... no. No, it never is. I... */
IF ~~ + suld.5
END

IF ~~ suld.3
 SAY @1138 /* I... I can barely fathom it myself. I... */
IF ~~ + suld.5
END

IF ~~ suld.4
 SAY @1139 /* Yes... yes, of course. */
IF ~~ EXIT
END

IF ~~ suld.5
 SAY @1140 /* I'm sorry. I had not expected this sight to hit me quite as strongly as it does. This is not my city, and these are not my people, and even if they were... */
IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ + suld.6
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ + suld.7
END

IF ~~ suld.6
 SAY @1141 /* Enough. Let's just do whatever we can, <CHARNAME>. There will be time to talk once this is over. I hope. */
IF ~~ EXIT
END

IF ~~ suld.7
 SAY @1142 /* I have no reason to care. Not anymore. Not like this. */
	++ @1143 /* You can't make yourself not care, Evandra. Anymore than I can. */ + suld.8
	++ @1144 /* They don't need to be your people to have a reason to care! */ + suld.9
	++ @1145 /* If only it were that easy to cut yourself off from your own history. */ + suld.10
	++ @1146 /* You need to make a decision. Are the elves your people or not? */ + suld.11
END

IF ~~ suld.8
 SAY @1147 /* No... no. It would seem that I can't. Would that I could. */
IF ~~ + suld.12
END

IF ~~ suld.9
 SAY @1148 /* Life and death, my friend... it doesn't hit me as strongly as it does most people. Or at least it didn't. */
IF ~~ + suld.12
END

IF ~~ suld.10
 SAY @1149 /* No... no. It would seem that it isn't. Would that it were. */
IF ~~ + suld.12
END

IF ~~ suld.11
 SAY @1150 /* Yes... no... I couldn't begin to guess, and certainly not now. */
IF ~~ + suld.12
END

IF ~~ suld.12
 SAY @1151 /* When I gaze at this madness, I'm not even sure that it's Suldanessellar I'm seeing at all. The architecture here... it's slightly alien, slightly rougher, but not as much as I might have expected, and the people... */
 = @1152 /* I barely understand a word of their speech, but it almost doesn't matter. Perhaps an attack on one of us really is an attack on all of us. */
	++ @1153 /* Then it's time to make Irenicus answer for what he's done. */ + suld.13
	++ @1154 /* Perhaps, though these elves didn't show us the same solidarity. */ + suld.14
	++ @1155 /* That almost sounds like wisdom, Evandra. Are you ready? */ + suld.15
	++ @1156 /* Our "people" can take care of themselves. My soul is what matters. */ + suld.16
END

IF ~~ suld.13
 SAY @1157 /* Yes, <CHARNAME>. Yes, it is. */
IF ~~ + suld.17
END

IF ~~ suld.14
 SAY @1158 /* I'm not sure that matters right now, <CHARNAME>. Right now, we just need to get through this. */
IF ~~ + suld.17
END

IF ~~ suld.15
 SAY @1159 /* Yes, <CHARNAME>. Yes, I think I am. */
IF ~~ + suld.17
END

IF ~~ suld.16
 SAY @1160 /* If we save your soul, we save the city, but I can't imagine we'll save either by standing around here. */
IF ~~ + suld.17
END

IF ~~ suld.17
 SAY @1161 /* Come, my friend, shall we put ourselves to the task? */
IF ~~ EXIT
END
END
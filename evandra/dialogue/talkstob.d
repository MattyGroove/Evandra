BEGIN RH#EV25J

// ---------------------------------------------
// Friendship
// ---------------------------------------------

// 1.
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",2)~ THEN RH#EV25J t1
@0 /* I would have liked to have stayed in Suldanessellar a little bit longer, <CHARNAME>. It's a shame that your destiny keeps dragging us about like this. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @1 /* It is what it is, unfortunately. That can't be helped. */ + t1.1
	++ @2 /* I was growing tired of the city, honestly. */ + t1.2
	++ @3 /* I'd have liked that too. It's been a while since I felt at peace. */ + t1.3
	++ @4 /* This isn't a good time, Evandra. Let's move on. */ + t1.4

APPEND RH#EV25J	

IF ~~ t1.1
 SAY @5 /* No, but I wish it were otherwise all the same. */
IF ~~ + t1.5
END

IF ~~ t1.2
 SAY @6 /* Yes, you made that clear enough. You may be something of a restless soul, but I'm afraid I've become quite the opposite these days. */
IF ~~ + t1.5
END

IF ~~ t1.3
 SAY @7 /* Yes, I dare say it's been a lifetime for the both of us. */
IF ~~ + t1.5
END

IF ~~ t1.4
 SAY @8 /* If that's what you'd prefer, so be it. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ t1.5
 SAY @9 /* I spoke with Queen Ellesime more than once, you know. Strange as it might seem to worry over it now, we had a great deal to discuss, and one subject in particular continues to gnaw at me. */
 = @10 /* The terrible tale of Joneleth Irenicus... even from beyond the grave he continues to leave an impression. */
	++ @11 /* All dark wizards seem to have that effect on you. */ + t1.6
	++ @12 /* The memory of that bastard will plague me to my dying day. */ + t1.7
	++ @13 /* In what way, precisely? What's troubling you? */ + t1.8
	++ @14 /* He's dead and gone, Evandra. We have larger problems now. */ + t1.9
END

IF ~~ t1.6
 SAY @15 /* Yes... yes. Perhaps they do. Perhaps that's part of the problem. */
IF ~~ + t1.10
END

IF ~~ t1.7
 SAY @16 /* Yes... yes. I can believe that. Forgive me if I take too abstract a view on something that has touched you so intimately. But I really can't help it. Perhaps that's part of the problem. */
IF ~~ + t1.10
END

IF ~~ t1.8
 SAY @17 /* The entire wretched story is troubling me, though perhaps not for the obvious reasons. */
IF ~~ + t1.10
END

IF ~~ t1.9
 SAY @18 /* I know, but there's more troubling me than a mere vanquished enemy. */
IF ~~ + t1.10
END
END

CHAIN RH#EV25J t1.10
@19 /* For an elf to fall as far as Irenicus did... I wouldn't have thought it possible if I hadn't seen it with my own eyes. Perhaps that's a strange sentiment coming from me--I'm no bastion of elven purity myself, but... I had not expected to see something like this. */
= @20 /* We have tales in Ansalon, my friend. Ancient tales of dark elves given over utterly to wickedness... I'd always thought them fanciful, ignorant exaggerations, but now I'm not so sure. */
== RH#EV25J IF ~Race(Player1,ELF)~ THEN @21 /* Our people, <CHARNAME>, on your world as well as mine... I'm beginning to wonder whether we're not truly more given to extremes than the other races. Whether we don't simply take whatever role we're given and play it with exquisite precision, no matter how wonderful or terrible the results might be. */
== RH#EV25J IF ~!Race(Player1,ELF)~ THEN @22 /* I'm beginning to wonder whether we elves are not truly more given to extremes than the other races. Whether we don't simply take whatever role we're given and play it with exquisite precision, no matter how wonderful or terrible the results might be. */
END
	+ ~Race(Player1,ELF)~ + @23 /* And what would that make me? The quintessential Bhaalspawn? */ + t1.11
	++ @24 /* That's certainly one way to look at the artistic tendencies of the elves. */ + t1.12
	++ @25 /* Is that what you feel like you've been doing? Playing your role? */ + t1.13
	++ @26 /* Irenicus was unique. I wouldn't make generalizations because of him. */ + t1.14
	+ ~!Race(Player1,ELF)~ + @27 /* If nothing else, you elves are certainly more self-absorbed than other races. */ + t1.15

APPEND RH#EV25J

IF ~~ t1.11
 SAY @28 /* Aren't you, <CHARNAME>? You're the one who has ended up here at the end, not one of your siblings. I'd rather not make anything of it, but there's too much I'm questioning right now. */
IF ~~ + t1.16
END

IF ~~ t1.12
 SAY @29 /* I'd prefer looking at it from any other angle, <CHARNAME>. Truly, I would, but there's too much I'm questioning right now. */
IF ~~ + t1.16
END

IF ~~ t1.13
 SAY @30 /* At times it really does feel like that, <CHARNAME>. I wish it were otherwise. */ 
IF ~~ + t1.16
END

IF ~~ t1.14
 SAY @31 /* It isn't just because of him, <CHARNAME>. The same could be said of Queen Ellesime... and even of myself, I dare say. I wish it were otherwise. */
IF ~~ + t1.16
END

IF ~~ t1.15
 SAY @32 /* Perhaps we are, at that. In that case, <CHARNAME>, I'll spare you the rest of my ruminations. */
IF ~~ EXIT
END

IF ~~ t1.16
 SAY @33 /* I'd always thought my people foolish for their insistence upon only the whitest of magics, but now I wonder if there wasn't a genuine reason behind that ancient policy... an Irenicus of our own, long lost to history. What would be too high a price, I wonder, to prevent something like that from occurring once more? */
	++ @34 /* That's something that every society needs to decide for itself. */ + t1.17
	++ @35 /* If a solution leaves victims, it's worse than the problem it hopes to solve. */ + t1.18
	++ @36 /* If it means less over the top villains in the world, no price is too high. */ + t1.19
	++ @37 /* The one I've had to pay is too high, and I suspect you could say the same. */ + t1.20
END

IF ~~ t1.17
 SAY @38 /* That is not much of an answer, my friend, but perhaps I shouldn't expect one. Not to a question like this. */
IF ~~ + t1.21
END

IF ~~ t1.18
 SAY @39 /* A very noble thought, my friend, but whether it's a realistic one... that I could not say. */
IF ~~ + t1.21
END

IF ~~ t1.19
 SAY @40 /* A dangerous thought, my friend, though I can't say I don't sympathize with it. Especially right now. */
IF ~~ + t1.21
END

IF ~~ t1.20
 SAY @41 /* I could have once, but now... I'm no longer so certain. */ 
IF ~~ + t1.21
END

IF ~~ t1.21
 SAY @42 /* Regardless, I've taken up enough of your time today with this particular curiosity. Perhaps I'll come to some conclusions in the near future and perhaps I won't. Either way... well, either way, it can wait until later. */
IF ~~ EXIT
END
END

// 2. (outside, at night)
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",4)~ THEN RH#EV25J t2
@43 /* After all this time, I'd have expected to become more used to this night sky of yours, but it's still as strange to me as it was the first time I saw it. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)~
END
  ++ @44 /* What's so strange about it? Are the stars different? */ + t2.1
  ++ @45 /* With all that's going on, you're distracted by the sky? */ + t2.2
  ++ @46 /* Sometimes it's the simplest things that are the hardest to get used to. */ + t2.3
  ++ @47 /* I'm not interested, Evandra. Not right now. */ + t2.4

APPEND RH#EV25J

IF ~~ t2.1
 SAY @48 /* Yes, they are, but that is not what constantly catches my attention. */
IF ~~ + t2.5
END

IF ~~ t2.2
 SAY @49 /* No, not exactly. It was an observation, not a distraction. */
IF ~~ + t2.5
END

IF ~~ t2.3
 SAY @50 /* I suppose that's true, though I'm not sure this is actually simple at all. */
IF ~~ + t2.5
END

IF ~~ t2.4
 SAY @51 /* No, apparently not. */
IF ~~ EXIT
END

IF ~~ t2.5
 SAY @52 /* Your moon--you call her Selûne, or so I'm told, after the human deity of the same name. A goddess of magic and mystery, by all accounts, much like the elven goddess Sehanine Moonbow I heard about so often in Suldanessellar. */
 = @53 /* To think of a pantheon specifically for elves... that is strange enough as well in its own way. The Seldarine are unheard of in Ansalon. */
	++ @54 /* Did you have a patron deity in your own world? */ + t2.6
	++ @55 /* We have more pantheons in Faerûn than we know what to do with. */ + t2.7
	++ @56 /* That just sounds like another reason to stick around here. */ + t2.8
	++ @57 /* I'm sure they were eager enough to educate you in Suldanessellar. */ + t2.9
END

IF ~~ t2.6
 SAY @58 /* I did... I do. One I find myself missing every time I look at your night sky. */
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY @59 /* Perhaps, but I'm afraid you've one less than I would like. Whenever I look at your night sky, I can't help but remember that. */
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY @60 /* I wish that were true, but whenever I look at your night sky, I see what isn't there rather than what is. */
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY @61 /* Eager enough, yes, but whenever I look at your night sky, I see what isn't there rather than what is. */
IF ~~ + t2.10
END

IF ~~ t2.10
 SAY @62 /* Lunitari, the Lady of the Crimson Moon... she was my goddess, and the goddess of all Red Robed wizards. Similar enough in some ways to Selûne and Sehanine--mystery, magic, and the moon seem to go hand in hand in this realm as well, but in many ways that makes Lunitari's absence more obvious instead of less. */
	++ @63 /* There are many other options if you want a deity of magic. */ + t2.11
	++ @64 /* If you want to return home, don't feel obligated to stay. */ + t2.12
	++ @65 /* Sometimes I wonder if your nostalgia is ever going to end. */ + t2.13
	++ @66 /* I didn't take you for the religious type, Evandra. */ + t2.14
END

IF ~~ t2.11
 SAY @67 /* I know, but I don't think a new deity is what I am looking for. The Order of the Red Robes was everything to me. And now... now I don't know. */
IF ~~ + t2.15
END

IF ~~ t2.12
 SAY @68 /* I'm afraid I haven't quite decided what I want. The Order of the Red Robes was everything to me. And now... now I don't know. */
IF ~~ + t2.15
END

IF ~~ t2.13
 SAY @69 /* Sometimes I wonder the same thing. The Order of the Red Robes was everything to me. And now... now I don't know. */
IF ~~ + t2.15
END

IF ~~ t2.14
 SAY @70 /* The bond between the gods of magic and their wizards is unique, and the Order of the Red Robes... it was everything to me. But now... now I don't know. */
IF ~~ + t2.15
END
END

CHAIN RH#EV25J t2.15
@71 /* I was welcomed in Suldanessellar, <CHARNAME>. I won't pretend that it was the same as being amongst my own people in Qualinesti, but there's no use pining over what can never be, and Suldanessellar... it wouldn't be easy, but I know I could build a life there. */ 
== RH#EV25J IF ~Race(Player1,ELF)~ THEN @72 /* Perhaps you could as well, once this is all finally behind us. */
== RH#EV25J IF ~!Race(Player1,ELF)~ THEN @73 /* As for you, I assume you'll be returning to Amn once this is all finally behind us? */ 
END
	+ ~Race(Player1,ELF)~ + @74 /* Perhaps, though I didn't feel particularly welcomed there myself. */ + t2.16
	+ ~Race(Player1,ELF)~ + @75 /* After a lifetime spent away from my people, I think I would like that. */ + t2.17
	+ ~Race(Player1,ELF)~ + @76 /* I don't think so. It was Amn where I built a life for myself. */ + t2.18
	+ ~!Race(Player1,ELF)~ + @77 /* Most likely. I built something of a life there myself. */ + t2.19
	+ ~Race(Player1,HALF_ELF)~ + @78 /* I'd prefer Suldanessellar. I felt more at home there than in human lands. */ + t2.20
	++ @79 /* I doubt it. It's the Sword Coast that will always be home to me. */ + t2.21
	+ ~!Race(Player1,ELF)~ + @80 /* I can't see myself settling down anywhere. I prefer the road. */ + t2.21
	+ ~Race(Player1,ELF)~ + @80 /* I can't see myself settling down anywhere. I prefer the road. */ + t2.22
	++ @81 /* I try not to think that far ahead. I can't afford distractions. */ + t2.23

APPEND RH#EV25J

IF ~~ t2.16
 SAY @82 /* Your situation is... not ideal, <CHARNAME>. I would give them more time to come to terms with it. And I do hope that they will. */
IF ~~ + t2.24
END

IF ~~ t2.17
 SAY @83 /* I thought that you might. And I certainly hoped that you would. */
IF ~~ + t2.24
END

IF ~~ t2.18
 SAY @84 /* A life that you'll outlive, <CHARNAME>, though there's no harm in seeing it out to its natural end first. */
IF ~~ + t2.24
END

IF ~~ t2.19
 SAY @85 /* Yes, that was the impression that I had gotten. */
IF ~~ + t2.24
END

IF ~~ t2.20
 SAY @86 /* I've known few half-elves who felt that way, <CHARNAME>, but I'm glad that you're an exception. I hope it stays that way. */
IF ~~ + t2.24
END

IF ~~ t2.21
 SAY @87 /* I can understand that as well, at least in part. */
IF ~~ + t2.24
END

IF ~~ t2.22
 SAY @88 /* For the moment, perhaps, but that is the sort of thing that usually changes with time. */
IF ~~ + t2.24
END

IF ~~ t2.23
 SAY @89 /* Ever practical, <CHARNAME>. I do appreciate that about you. */
IF ~~ + t2.24
END

IF ~~ t2.24
 SAY @90 /* In any event, I suppose it's something that we'll both have to put considerably more thought into in the future. In my case, preferably when not gazing up at this pale moon of yours and wishing it had a couple of siblings to keep it company. */
	++ @91 /* Multiple moons! Now that would be quite the sight. */ + t2.25
	++ @92 /* Nostalgia is a bad companion when making plans for the future. */ + t2.26
	++ @93 /* It'll be morning soon enough, so you won't have to wait long. */ + t2.27
	++ @94 /* I think it's about time we got some rest tonight anyway. */ + t2.28
END

IF ~~ t2.25
 SAY @95 /* (laugh) A normal enough one in some worlds, I assure you. But that is a tale for another night. */ 
IF ~~ EXIT
END

IF ~~ t2.26
 SAY @96 /* True enough, though it's unfortunately a more common companion than I might like. */
IF ~~ EXIT
END

IF ~~ t2.27
 SAY @97 /* (laugh) True enough, my friend, though the dawn is sure to bring with it complications of its own. */
IF ~~ EXIT
END

IF ~~ t2.28
 SAY @98 /* Yes, I dare say you're right about that. */
IF ~~ EXIT
END
END

// 3. (post-Saradush)
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",6)~ THEN RH#EV25J t3
@99 /* Your title has never been more appropriate than it is these days, <CHARNAME>. Child of Bhaal. I don't enjoy saying that, but it seems to be true. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @100 /* I assume you're thinking about Saradush? */ + t3.1
  ++ @101 /* I don't enjoy it either, I assure you. */ + t3.2
  ++ @102 /* It's no more true than it's ever been. */ + t3.3
  ++ @103 /* I really don't want to talk about it. */ + t3.4

APPEND RH#EV25J

IF ~~ t3.1
 SAY @104 /* I... yes. Amongst other things. */
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY @105 /* I didn't think you did. */
IF ~~ + t3.5
END

IF ~~ t3.3
 SAY @106 /* Perhaps not, but it's more obviously so. */
IF ~~ + t3.5
END

IF ~~ t3.4
 SAY @107 /* I suppose I don't blame you for that. */
IF ~~ EXIT
END

IF ~~ t3.5
 SAY @108 /* I'm no stranger to hardship, to tragedy, to death... such is the price of an elven lifespan, unfortunately. To be ever an observer to the misfortunes of others, to pass through their troubles untouched. */
 = @109 /* Or perhaps not quite untouched. Disasters like Saradush... I don't think that is an image I am likely to forget anytime soon. */
	++ @110 /* What happened there wasn't our fault, Evandra. */ + t3.6
	++ @111 /* Nor will I. All those lives, lost for nothing. */ + t3.7
	++ @112 /* I've never seen you so troubled by the concerns of humans. */ + t3.8
	++ @113 /* That's what a war looks like, whatever the context. */ + t3.9
END

IF ~~ t3.6
 SAY @114 /* I don't think it even matters whose fault it was. Not anymore. But to see death on such a scale... it's hard to take in. */
IF ~~ + t3.10
END

IF ~~ t3.7
 SAY @115 /* I'm not sure that death is ever anything but pointless, but to see it on such a scale... it's hard to take in. */
IF ~~ + t3.10
END

IF ~~ t3.8
 SAY @116 /* I seldom am, you're right, but to see death on such a scale... it's hard to take in. */
IF ~~ + t3.10
END

IF ~~ t3.9
 SAY @117 /* You're right, of course, but to see death on such a scale... it's hard to take in. */
IF ~~ + t3.10
END

IF ~~ t3.10
 SAY @118 /* I've never really wondered what it must be like to be you, <CHARNAME>. To be all but stalked by horror, death following you wherever you go. Even Irenicus... I'm beginning to suspect that it was he who was swept away by your destiny, rather than the reverse. */
	++ @119 /* A strange thought, to be sure. But perhaps there's some truth to it. */ + t3.11
	++ @120 /* Irenicus didn't seem swept away by anything but his own arrogance. */ + t3.12
	++ @121 /* My destiny is of my own making. I won't let it be anything else. */ + t3.13
	++ @122 /* This is bigger than me, Evandra. Look at all my so-called siblings. */ + t3.14
END

IF ~~ t3.11
 SAY @123 /* Truth and strangeness go hand in hand as often as not, I should think. */
IF ~~ + t3.15
END

IF ~~ t3.12
 SAY @124 /* Perhaps not, but I wouldn't be so sure that any of this is what it seems to be. */
IF ~~ + t3.15
END

IF ~~ t3.13
 SAY @125 /* So I've seen, and perhaps that is what makes it such a powerful force. */
IF ~~ + t3.15
END

IF ~~ t3.14
 SAY @126 /* I haven't forgotten about them, but you... there's something about you that seems unique. */
IF ~~ + t3.15
END

IF ~~ t3.15
 SAY @127 /* Ahh, but listen to me. The mad imaginings of an illusionist... forgive me if I've merely fallen afoul of my own whimsies, <CHARNAME>, but circumstances such as these... well, they are trying, to say the least. */
	++ @128 /* For all of us, Evandra. They're trying for all of us. */ + t3.16
	++ @129 /* I'd say "terrifying" is a better way to describe the situation. */ + t3.17
	++ @130 /* Mad imaginings they may be, but they have the ring of truth to them. */ + t3.18
	++ @131 /* Just don't fall apart now. We're almost at the end of this. */ + t3.19
END

IF ~~ t3.16
 SAY @132 /* I don't doubt that at all. */
IF ~~ EXIT
END

IF ~~ t3.17
 SAY @133 /* Yes, I'm afraid you may be right about that. */
IF ~~ EXIT
END

IF ~~ t3.18
 SAY @134 /* Mm, or perhaps I've bewitched you as well as myself. */
IF ~~ EXIT
END

IF ~~ t3.19
 SAY @135 /* I hope you're right. For everyone's sake. */
IF ~~ EXIT
END
END

// 4. (pocket plane)
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",8)~ THEN RH#EV25J t4
@136 /* This place never ceases to amaze me, <CHARNAME>. A soul laid bare, given form and essence of a sort... a marvelous work of magic, if that's even what it is at all. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @137 /* If you think this is a reflection of my soul, I assure you, it isn't. */ + t4.1
  ++ @138 /* What could it be, if not a work of magic? */ + t4.2
  ++ @139 /* It is an odd little pocket of nothingness, isn't it? */ + t4.3
  ++ @140 /* Keep your ruminations to yourself, elf. I don't have time for this. */ + t4.4

APPEND RH#EV25J

IF ~~ t4.1
 SAY @141 /* Reflections aren't always shown through a clear looking glass. Sometimes... well, sometimes they are very different. */
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY @142 /* I don't know enough about the divine to say for sure, but this... well, there's something familiar about it. */
IF ~~ + t4.5
END

IF ~~ t4.3
 SAY @143 /* That's an intriguing way to describe it. But not inappropriate, I think. */
IF ~~ + t4.5
END

IF ~~ t4.4
 SAY @144 /* Oh, yes. Because there's so much going on here. */
IF ~~ EXIT
END

IF ~~ t4.5
 SAY @145 /* Forgive me if I seem overly intrigued by this place, but dream realms never cease to intrigue me... especially those with the power to kill, as this one seems intent upon doing. In that regard, it shares a certain something in common with the Test we used to craft back home for hopeful young wizards. */
	++ @146 /* Whatever this realm might be, Evandra, it's not a dream. */ + t4.6
	++ @147 /* It intrigues you more because it's trying to kill us? */ + t4.7
	++ @148 /* It is fascinating, isn't it? Do you think Bhaal once reigned here? */ + t4.8
	++ @149 /* Hopefully not in terms of interior design. Look at this place! */ + t4.9
END

IF ~~ t4.6
 SAY @150 /* No, I suppose not. Not unless your subconscious is considerably more powerful than anyone could have guessed, at least. Though perhaps it is. */
IF ~~ + t4.10
END

IF ~~ t4.7
 SAY @151 /* Oh, yes. Certainly. That may sound morbid, but it's only in adversity that a person can truly come to know <PRO_HIMHER>self. */ 
IF ~~ + t4.10
END

IF ~~ t4.8
 SAY @152 /* I couldn't begin to guess. One way or the other, its current function interests me considerably more than whatever use it's been put to in the past. */
IF ~~ + t4.10
END

IF ~~ t4.9
 SAY @153 /* Oh, I've been trying not to. But whatever it lacks in aesthetics, it certainly makes up for in other categories. */
IF ~~ + t4.10
END

IF ~~ t4.10
 SAY @154 /* The things that can be learned in a place like this, with a trial behind every door... it's not exactly the most pleasant of experiences, that much I'll grant you, but the purpose of it is clear enough. */
 = @155 /* You, my friend, are being tested. The only question is--to what end? */
	++ @156 /* I wish I knew the answer to that myself. */ + t4.11
	++ @157 /* The question I'd sooner ask is "by whom?" */ + t4.12
	++ @158 /* Divinity, more likely than not, given current events. */ + t4.13
	++ @159 /* It doesn't matter, since I don't plan on playing along. */ + t4.14
END

IF ~~ t4.11
 SAY @160 /* Whatever is going on behind the scenes, <CHARNAME>, you've attracted the sort of attention that most people could do without. */
IF ~~ + t4.15
END

IF ~~ t4.12
 SAY @161 /* Indeed. Given your divine heritage, <CHARNAME>, I imagine there's only one answer to that. Though perhaps that goes for my own question as well. */
IF ~~ + t4.15
END

IF ~~ t4.13
 SAY @162 /* <CHARNAME>, heir to <PRO_HISHER> father Bhaal... I'm not sure I like the sound of that. Though I suppose it would be a fitting enough end. */
IF ~~ + t4.15
END 

IF ~~ t4.14
 SAY @163 /* Defiant to the end... even in the face of the very powers that be themselves. You are bold, <CHARNAME>, if nothing else. */
IF ~~ + t4.15
END

IF ~~ t4.15
 SAY @164 /* I don't mean to hold us up in this ghastly place too long, but when I think back to how shocked I was to learn about the Time of Troubles in the first place, I can only say that I'm glad to have met you in Amn and not now. */
 = @165 /* This would have been... well, perhaps it would have been precisely what I'd have expected of a different plane. Abyssal realm and all. */
	++ @166 /* I'm still getting used to the abyssal realm part myself, trust me. */ + t4.16
	++ @167 /* I doubt what we're living right now is normal on any plane. */ + t4.17
	++ @168 /* I'm glad we met earlier too. At this point, it's hard to trust anyone. */ + t4.18
	++ @169 /* If nothing else, at least you'll never be able to complain about boredom. */ + t4.19
END

IF ~~ t4.16
 SAY @170 /* Mm, I think it'd probably be best if you didn't. */
IF ~~ EXIT
END

IF ~~ t4.17
 SAY @171 /* No, almost certainly not. */
IF ~~ EXIT
END

IF ~~ t4.18
 SAY @172 /* Mm, I can't say I blame you for that. */
IF ~~ EXIT
END

IF ~~ t4.19
 SAY @173 /* Mm, that would depend upon how long we stay hidden away in this pocket dimension. */
IF ~~ EXIT
END
END

// 5. (Amkethran)
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",10)~ THEN RH#EV25J t5
@174 /* Sand, sand, and nothing but sand... I don't think I'll ever again underestimate the human propensity for building homes in the most inhospitable of places. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @175 /* I take it you don't care for the desert? */ + t5.1
  ++ @176 /* Heat, heat, and nothing but heat, I think you mean! */ + t5.2
  ++ @177 /* It's not as if a forest city is any less remote. */ + t5.3
  ++ @178 /* We don't have time for this right now. */ + t5.4

APPEND RH#EV25J

IF ~~ t5.1
 SAY @179 /* Not exactly, no. What is there to like about a barren wasteland? */ 
IF ~~ + t5.5
END

IF ~~ t5.2
 SAY @180 /* Yes, that as well. It really does leave something to be desired. */ 
IF ~~ + t5.5
END

IF ~~ t5.3
 SAY @181 /* It isn't the remoteness that troubles me, so much as the barrenness. */
IF ~~ + t5.5
END

IF ~~ t5.4
 SAY @182 /* If silence means getting out of here sooner, so be it. */
IF ~~ EXIT
END

IF ~~ t5.5
 SAY @183 /* I assume that the town is here to service the monastery, and the monks... well, they really do seem to be the oddest of a decidedly odd race. */
 = @184 /* If a person were given to contemplation, and I can certainly see the appeal, I can think of better environments for it than this one. */
	++ @185 /* By which I assume you mean leafier environments? */ + t5.6
	++ @186 /* There's nothing better than austerity to gain a sense of discipline. */ + t5.7
	++ @187 /* You can see the appeal of contemplation? Please enlighten me! */ + t5.8
	++ @188 /* I can forward your recommendation to Balthazar, if you'd like. */ + t5.9
END

IF ~~ t5.6
 SAY @189 /* (laugh) Amongst other options. One needn't starve their senses to gain a degree of self-knowledge. */
IF ~~ + t5.10
END

IF ~~ t5.7
 SAY @190 /* I wouldn't be so sure of that. There are methods that don't involve starving one's senses entirely. */
IF ~~ + t5.10
END

IF ~~ t5.8
 SAY @191 /* (laugh) Study, discipline, self-knowledge... I would hope that most people could see the appeal. */
IF ~~ + t5.10
END

IF ~~ t5.9
 SAY @192 /* (laugh) He would certainly benefit from it. One needn't starve their senses to gain a degree of self-knowledge. */
IF ~~ + t5.10
END

IF ~~ t5.10
 SAY @193 /* You'd best not forget that I was an apprentice myself, once upon a time. Discipline was something that I needed to learn as well, and I did. But not like this, my friend. This would have bored me to tears, I think. */
 = @194 /* But there was a lake that my teacher would take me to when I was learning my very first cantrips, a lake by the edge of the forest. "Your mind must be as still as the surface of the water," she used to say, and then she would leave me there with nothing but my thoughts for company. */
 = @195 /* That was tranquility itself, <CHARNAME>. This, on the other hand... this I would describe somewhat differently. */
	++ @196 /* I think that's the first positive thing you've ever said about your home. */ + t5.11
	++ @197 /* If you'd grown up in the desert instead, you might think differently. */ + t5.12
	++ @198 /* The promise of imminent war tends to take its toll on tranquility. */ + t5.13
	++ @199 /* I take it your forest didn't have much in the way of predatory wildlife. */ + t5.14
END

IF ~~ t5.11
 SAY @200 /* You might be right. I'm not exactly used to remembering it without bitterness, but to<DAYNIGHT>... to<DAYNIGHT> I'm only glad to have not grown up here instead. */
IF ~~ + t5.15
END

IF ~~ t5.12
 SAY @201 /* You may be right, though it's not something I can imagine at this point. */ 
IF ~~ + t5.15
END

IF ~~ t5.13
 SAY @202 /* No, I would think not, but even at the best of times, I can't imagine this place being anything but hostile. */
IF ~~ + t5.15
END

IF ~~ t5.14
 SAY @203 /* Well, none that my teacher couldn't guard against with a simple spell, at least. */
IF ~~ + t5.15
END

IF ~~ t5.15
 SAY @204 /* I've made a decision, you know. Perhaps it's that this neverending desert has made me long so much for the wilds of home, but I think I *am* going to go back to Suldanessellar once this has finally played out to its end. Perhaps it will work out and perhaps it won't, but it's something that I do need to try. */
	++ @205 /* Assuming we survive to see the end of this at all. */ + t5.16
	++ @206 /* Then I hope that everything does work out well for you. */ + t5.17
	++ @207 /* Just think--we might be able to find you a clan of desert elves instead. */ + t5.18
	++ @208 /* You don't need to see this to the end if you'd rather leave. */ + t5.19
END

IF ~~ t5.16
 SAY @209 /* Yes... assuming that. But I do trust you to succeed here, <CHARNAME>. */
IF ~~ EXIT
END

IF ~~ t5.17
 SAY @210 /* Thank you, <CHARNAME>. I certainly hope so as well. */
IF ~~ EXIT
END

IF ~~ t5.18
 SAY @211 /* Really, <CHARNAME>, I doubt even the wildest of elves would have such poor taste. */
IF ~~ EXIT
END

IF ~~ t5.19
 SAY @212 /* I'm not exactly in a hurry, <CHARNAME>. I would rather see things through. */
IF ~~ EXIT
END
END

// 6.
CHAIN IF ~Global("rh#EvaTalksToB","GLOBAL",12)~ THEN RH#EV25J t5
@213 /* The type of power that we wield these days, <CHARNAME>... I can't help but wonder what will become of all of us once this is over. */
DO ~IncrementGlobal("rh#EvaTalksToB","GLOBAL",1)~
END
  ++ @214 /* Power can be put down again, Evandra. It doesn't define us. */ + t6.1
  ++ @215 /* I doubt my future holds any sort of mortal life at all. */ + t6.2
  ++ @216 /* Would you even want a quiet life? I certainly wouldn't. */ + t6.3
  ++ @217 /* We can worry about that once it happens. Now is not the time. */ + t6.4

APPEND RH#EV25J

IF ~~ t6.1
 SAY @218 /* I would not be so sure. You could say our choices define us, but it was those choices that led to our present situation. */
IF ~~ + t6.5
END

IF ~~ t6.2
 SAY @219 /* No, your situation is particularly unusual, without a doubt. But it still bears some considering, I would say. */
IF ~~ + t6.5
END

IF ~~ t6.3
 SAY @220 /* I would have liked to have the option, I think. Though perhaps that is the problem... perhaps we have too many options now, rather than too little. */
IF ~~ + t6.5
END

IF ~~ t6.4
 SAY @221 /* As you wish. */
IF ~~ EXIT
END

IF ~~ t6.5
 SAY @222 /* When I stop to think about the things we can do these days, the wonders that can made real with barely a thought... I'm beginning to understand why powerful people try to remake the world in their own image. */
 = @223 /* Unpleasant though the thought might be, it would not be very difficult. */
	++ @224 /* The difficulty would lie in not breaking it in the attempt. */ + t6.6
	++ @225 /* Don't think I haven't considered it. There's a lot I'd change here. */ + t6.7
	++ @226 /* Why are you bringing it up if you find it unpleasant? */ + t6.8
	++ @227 /* I have enough to worry about without trying to fix the world too. */ + t6.9
END

IF ~~ t6.6
 SAY @228 /* Indeed. And in not losing oneself in the process. */
IF ~~ + t6.10
END

IF ~~ t6.7
 SAY @229 /* I can believe it. This realm leaves as much to be desired as any other, that much is not in doubt. */
IF ~~ + t6.10
END

IF ~~ t6.8
 SAY @230 /* Because I think it's an important point to recognize all the same. */
IF ~~ + t6.10
END

IF ~~ t6.9
 SAY @231 /* Oh, I know, though I think the same thing goes for anyone else. */
IF ~~ + t6.10
END

IF ~~ t6.10
 SAY @232 /* <CHARNAME>, it's clear to everyone that you're going to have a choice to make at some point in the future, and not the sort that can be taken back. The power to remake the world... well, that pales in comparison to what may soon be within your reach, my friend. */
 = @233 /* Perhaps that's another unpleasant thought, but then again, perhaps not. */
	++ @234 /* The Solar is getting less and less subtle, isn't she? */ + t6.11
	++ @235 /* I find the thought exhilarating, to tell the truth. */ + t6.12
	++ @236 /* Don't remind me! I can barely handle mundane decisions! */ + t6.13
	++ @237 /* The future will bring what it must. Let's worry about today. */ + t6.14
END

IF ~~ t6.11
 SAY @238 /* Indeed. To put it mildly. */
IF ~~ + t6.15
END

IF ~~ t6.12
 SAY @239 /* Mm, perhaps you would. */
IF ~~ + t6.15
END

IF ~~ t6.13
 SAY @240 /* Mm, you sell yourself short, I think. */
IF ~~ + t6.15
END

IF ~~ t6.14
 SAY @241 /* Mm, that is wise, I think. */
IF ~~ + t6.15
END

IF ~~ t6.15
 SAY @242 /* I've been so focused on my own options, you know. Whether I should stay here or return home to Ansalon, but compared to the decision you're facing... if nothing else, it puts everything else into perspective. */
 = @243 /* It may well put your options into perspective as well. Even if you stay mortal, you have more open to you than just Faerûn. Considerably more. */
	++ @244 /* Is that an invitation to go walking the planes with you? */ + t6.16
	++ @245 /* Either way, it's not worth worrying about right now. */ + t6.17
	++ @246 /* Perhaps so, but that would close one door for me forever. */ + t6.18
	++ @247 /* Faerûn is all I want, Evandra. It's all I've ever wanted. */ + t6.19
END

IF ~~ t6.16
 SAY @248 /* (laugh) It might be, my friend. It very well might be. */
IF ~~ EXIT
END

IF ~~ t6.17
 SAY @249 /* No, but the time will come, and perhaps sooner rather than later. */
IF ~~ EXIT
END

IF ~~ t6.18
 SAY @250 /* As would choosing godhood, my friend. Just weigh everything carefully. */
IF ~~ EXIT
END

IF ~~ t6.19
 SAY @251 /* (laugh) Then I suppose the choice is already made, but just keep in mind that you might find a season on a different plane as enlightening as I have. */
IF ~~ EXIT
END
END

// ---------------------------------------------
// Romance
// ---------------------------------------------

// 1.
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",2)~ THEN RH#EV25J r1
@0 /* I would have liked to have stayed in Suldanessellar a little bit longer, <CHARNAME>. It's a shame that your destiny keeps dragging us about like this. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @1 /* It is what it is, unfortunately. That can't be helped. */ + r1.1
	++ @2 /* I was growing tired of the city, honestly. */ + r1.2
	++ @252 /* I'd have liked that too. It's been a while since I felt at home. */ + r1.3
	++ @4 /* This isn't a good time, Evandra. Let's move on. */ + r1.4

APPEND RH#EV25J	

IF ~~ r1.1
 SAY @5 /* No, but I wish it were otherwise all the same. */
IF ~~ + r1.5
END

IF ~~ r1.2
 SAY @6 /* Yes, you made that clear enough. You may be something of a restless soul, but I'm afraid I've become quite the opposite these days. */
IF ~~ + r1.5
END

IF ~~ r1.3
 SAY @7 /* Yes, I dare say it's been a lifetime for the both of us. */
IF ~~ + r1.5
END

IF ~~ r1.4
 SAY @8 /* If that's what you'd prefer, so be it. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r1.5
 SAY @253 /* The days that we spent in the city... it was a good start to something new, I think. A better one than I might have hoped for. I'd long wondered what it would be like to live amongst a group of elves who were not my own people, but... well. */
 = @254 /* Perhaps I shouldn't have worried so much. Or perhaps it was your presence that made the difference... if you'll forgive me the sentimentality. */
	++ @255 /* You know that I would forgive you far worse than that, Evandra. */ + r1.6
	++ @256 /* My presence? You were off with the other elves as often as not! */ + r1.7
	++ @257 /* Be that as it may, we need to look at the future, not the past. */ + r1.8
	++ @258 /* If anything, I was a hindrance. To the elves, I'm a child of Bhaal. */ + r1.9
END

IF ~~ r1.6
 SAY @259 /* Mm, and I hope we have centuries ahead of us to put that to the test. */
IF ~~ + r1.10
END

IF ~~ r1.7
 SAY @260 /* Mm, you exaggerate, surely. Though there was much to discuss, it's true. */ 
IF ~~ + r1.10
END

IF ~~ r1.8
 SAY @261 /* Yes, I know. And it is precisely the future that I've been thinking about. */
IF ~~ + r1.10
END

IF ~~ r1.9
 SAY @262 /* Mm, I would not be so sure of that. */
IF ~~ + r1.10
END

IF ~~ r1.10
 SAY @263 /* I spent a great deal of time talking to the queen, you know. About any number of things, but the most important one was the possibility of returning there permanently. We could, if we wished, once this quest of yours is finally behind us. */
 = @264 /* I don't know if it's the best option, but at least it is an option. And I cannot say I'm displeased to have one of those again. */
	++ @265 /* I would be interested in seeing if it could work out. */ + r1.11
	++ @266 /* If I settle in an elven realm, I'd prefer one that's more open. */ + r1.12
	++ @267 /* Their gratitude will no doubt wear off sooner or later. */ + r1.13
	++ @268 /* We've had options for a while. Athkatla, for example. */ + r1.14
END

IF ~~ r1.11
 SAY @269 /* Good. I'd expected as much, but I'm glad to hear you say it all the same. */
IF ~~ + r1.15
END

IF ~~ r1.12
 SAY @270 /*  That seems almost a contradiction in terms, though I suppose I can appreciate why. */
IF ~~ + r1.15
END

IF ~~ r1.13
 SAY @271 /* That may be so, though I suspect that if they didn't want us around, they would have been far more open about it. */
IF ~~ + r1.15
END

IF ~~ r1.14
 SAY @272 /* I'm not sure I would consider Athkatla an option. It struck me more as a place to be when you had nowhere else to go. */
IF ~~ + r1.15
END

IF ~~ r1.15
 SAY @273 /* Regardless, we'll have time to discuss that later. For the moment it's the road that beckons... alongside your increasingly strange destiny. Sometimes I wonder how you can keep apace with events at all. */
	++ @274 /* One day at a time, Evandra. That's all it takes. */ + r1.16
	++ @275 /* With skill, endurance, and extraordinary good luck. */ + r1.17
	++ @276 /* I don't see much of an alternative. Do you? */ + r1.18
	++ @277 /* The same thing goes for you. You're here too. */ + r1.19
END

IF ~~ r1.16
 SAY @278 /* One day at a time, is it? In that case, perhaps we're both simply passengers on this mad adventure of yours. */
IF ~~ + r1.20
END

IF ~~ r1.17
 SAY @279 /* (laugh) Good luck, is it? In that case, perhaps we're both simply passengers on this mad adventure of yours. */
IF ~~ + r1.20
END

IF ~~ r1.18
 SAY @280 /* No, I don't. Perhaps we're both simply passengers on this mad adventure of yours. */
IF ~~ + r1.20
END

IF ~~ r1.19
 SAY @281 /* (laugh) True, even if I'm simply a passenger on this mad adventure of yours... though perhaps you feel the same way. */
IF ~~ + r1.20
END

IF ~~ r1.20
 SAY @282 /* That's not a particularly encouraging thought, of course, but I suppose we'll find out just how much control we have over matters soon enough. */
IF ~~ EXIT
END
END

// 2. (upon rest)
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",4)~ THEN RH#EV25J r2
@283 /* I hope you weren't planning on retiring just yet, <CHARNAME>. I've a bottle of Elverquisst left and half a mind to finish it tonight. Would you care to join me? */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
	++ @284 /* How could I decline such an offer? */ + r2.1
	++ @285 /* Of course, but let's not get carried away. */ + r2.2
	++ @286 /* I certainly wouldn't have you drinking alone! */ + r2.3
	++ @287 /* Not tonight, Evandra. Good night. */ + r2.4

APPEND RH#EV25J

IF ~~ r2.1
 SAY @288 /* (smile) How could you, indeed? */
IF ~~ + r2.5
END

IF ~~ r2.2
 SAY @289 /* (laugh) With Elverquisst? That would be quite the feat. */
IF ~~ + r2.5
END

IF ~~ r2.3
 SAY @290 /* (laugh) That's probably wise of you. */
IF ~~ + r2.5
END

IF ~~ r2.4
 SAY @291 /* As you wish. Good night, then. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ r2.5
 SAY @292 /* Hm. There's a ritual associated with this drink, you know. I witnessed it once or twice in Suldanessellar, though you might have been elsewhere at the time. */
 = @293 /* It would have been lovely to be able to carry it out again here, just you and I, but I'm afraid I still don't speak this realm's elven quite well enough to remember the chant involved. */
	++ @294 /* They're just words. We can come up with our own. */ + r2.6
	++ @295 /* Then it's fortunate that I do happen to remember it. */ + r2.7
	++ @296 /* Surely you had rituals of your own in Ansalon? */ + r2.8
	++ @297 /* There are *other* things we could do, just you and I. */ + r2.9
END

IF ~~ r2.6
 SAY @298 /* We could, though I'm not sure it would be the same. Of course, precious little is what it once was. */
IF ~~ + r2.10
END

IF ~~ r2.7
 SAY @299 /* Do you? I suppose I should have expected as much... you're no longer as detached from your heritage as you once were. */
IF ~~ + r2.10
END

IF ~~ r2.8
 SAY @300 /* Several, though I'm not sure it would be the same. Of course, precious little is what it once was. */
IF ~~ + r2.10
END

IF ~~ r2.9
 SAY @301 /* Mm, so there are. And it's becoming increasingly clear to me that there's no need to make you wait for them. */
IF ~~ + r2.10
END

IF ~~ r2.10
 SAY @302 /* You've grown, <CHARNAME>. We both have, I think, though perhaps you the more. When I first saw you in that planar sphere, you seemed so young, and now... */
 = @303 /* Now I hardly know what to do with you at all. */
	++ @304 /* Really? The gleam in your eyes would suggest otherwise. */ + r2.11
	++ @305 /* I could certainly offer you a couple of ideas. */ + r2.12
	++ @306 /* I was never as young as that, Evandra. Even in Amn. */ + r2.13
	++ @307 /* Evandra... this is really not the time. Good night. */ + r2.14
END

IF ~~ r2.11
 SAY @308 /* Gleaming, are they? That is really no wonder. */
IF ~~ + r2.15
END

IF ~~ r2.12
 SAY @309 /* I'm sure you could, though I'd rather start with several of my own. */
IF ~~ + r2.15
END

IF ~~ r2.13
 SAY @310 /* Perhaps not, but now... now it has really begun to show. */
IF ~~ + r2.15
END

IF ~~ r2.14
 SAY @311 /* Ah. Very well, then. Good night, <CHARNAME>. */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ r2.15
 SAY @312 /* I couldn't quite say why I never invited you to my bed in Suldanessellar. I am usually not so coy, though perhaps I've simply been relishing the chance to take things slowly for once. Torturously slowly, as the case my be. */
 = @313 /* Tonight, however... tonight I would have more, shalori. I trust that you're of like mind? */
	++ @314 /* I'm very much of like mind, Evandra. Tonight and any night. */ + r2.16
	++ @315 /* And here I was beginning to think you'd never ask. */ + r2.17
	++ @316 /* I'm sorry, but this isn't the right time or place. */ + r2.14
	++ @317 /* I'm not. I actually think this relationship is a mistake. */ + r2.18
END

IF ~~ r2.16
 SAY @318 /* One moment at a time, my dear. I would not have you offering too much all at once. But come, that is more than enough talk for now... */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ r2.17
 SAY @319 /* Oh, there was never any danger of that, my dear. But come, that is more than enough talk for now... */
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ r2.18
 SAY @320 /* Oh... oh, I see. In that case, I shall leave you be. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3) RestParty()~ EXIT
END
END

// 3. (outside, at night)
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",6)~ THEN RH#EV25J r3
@43 /* After all this time, I'd have expected to become more used to this night sky of yours, but it's still as strange to me as it was the first time I saw it. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)~
END
  ++ @44 /* What's so strange about it? Are the stars different? */ + r3.1
  ++ @321 /* Really? You've never mentioned that before. */ + r3.2
  ++ @322 /* Nostalgia for Ansalon? I thought you were past that. */ + r3.3
  ++ @47 /* I'm not interested, Evandra. Not right now. */ + r3.4

APPEND RH#EV25J

IF ~~ r3.1
 SAY @48 /* Yes, they are, but that is not what constantly catches my attention. */
IF ~~ + r3.5
END

IF ~~ r3.2
 SAY @323 /* No, I suppose not. Perhaps I was simply waiting to get used to it. */
IF ~~ + r3.5
END

IF ~~ r3.3
 SAY @324 /* I don't think I'll ever quite be past it. Especially on a night like this. */
IF ~~ + r3.5
END

IF ~~ r3.4
 SAY @51 /* No, apparently not. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r3.5
 SAY @325 /* Your moon--you call her Selûne, or so I'm told, after the human deity of the same name. At this point, of course, I know far more about our own Sehanine Moonbow... the Moonlit Mystery, the Lady of Dreams. */
 = @326 /* To think of a pantheon specifically for elves... I'm not sure you realize just how strange that seems. The Seldarine are unheard of in Ansalon. */
	++ @54 /* Did you have a patron deity in your own world? */ + r3.6
	++ @327 /* I can't imagine being elven and not knowing of the Seldarine. */ + r3.7
	++ @55 /* We have more pantheons in Faerûn than we know what to do with. */ + r3.8
	++ @328 /* How did we jump from the topic of the moon to the Seldarine? */ + r3.9
END

IF ~~ r3.6
 SAY @58 /* I did... I do. One I find myself missing every time I look at your night sky. */
IF ~~ + r3.10
END

IF ~~ r3.7
 SAY @329 /* We have our own deities in Ansalon, <CHARNAME>. Ones I find myself missing every time I look at your night sky. */
IF ~~ + r3.10
END

IF ~~ r3.8
 SAY @59 /* Perhaps, but I'm afraid you've one less than I would like. Whenever I look at your night sky, I can't help but remember that. */
IF ~~ + r3.10
END

IF ~~ r3.9
 SAY @330 /* Because I can hardly look at it without thinking of our own deities. */
IF ~~ + r3.10
END

IF ~~ r3.10
 SAY @62 /* Lunitari, the Lady of the Crimson Moon... she was my goddess, and the goddess of all Red Robed wizards. Similar enough in some ways to Selûne and Sehanine--mystery, magic, and the moon seem to go hand in hand in this realm as well, but in many ways that makes Lunitari's absence more obvious instead of less. */
 = @331 /* The Order of the Red Robes was once everything to me, and now... now I don't know, <CHARNAME>. I'm not entirely sure where I stand anymore. */
 	++ @332 /* You stand with me, Evandra. What else matters? */ + r3.11
 	++ @333 /* Would you rather return to Ansalon? */ + r3.12
 	++ @334 /* Do any of us really know where we stand? */ + r3.13
 	++ @335 /* Where is this new uncertainty coming from? */ + r3.14
END

IF ~~ r3.11
 SAY @336 /* Even at your side, there are choices I'd rather not have to make. */
IF ~~ + r3.15
END

IF ~~ r3.12
 SAY @337 /* I do not know. I don't think so, but even so, there are choices I'd rather not have to make. */
IF ~~ + r3.15
END

IF ~~ r3.13
 SAY @338 /* Perhaps not, but there are still choices here I'd rather not have to make. */
IF ~~ + r3.15
END

IF ~~ r3.14
 SAY @339 /* I think it's a matter of choices I'd rather not have to take. */
IF ~~ + r3.15
END

IF ~~ r3.15
 SAY @340 /* Abandoning one goddess for another, for instance... I could do it, of course. I could take up the faith of Sehanine and declare myself in no uncertain terms an elf of Faerûn. I'm not sure it's a step I'm ready to take, but more and more it seems like an inevitability. */
	++ @341 /* Don't rush into a decision, Evandra. There is still time. */ + r3.16
	++ @342 /* You don't need to be an elf of Faerûn simply because you're here. */ + r3.16
	++ @343 /* It would be for the best. Why follow a goddess who isn't active here? */ + r3.17
	++ @344 /* Perhaps this is something you ought to discuss with Sehanine's clergy. */ + r3.19
	+ ~!Class(Player1,CLERIC_ALL)~ + @345 /* Don't ask me for advice. I try to avoid the gods whenever possible. */ + r3.20
END

IF ~~ r3.16
 SAY @346 /* I know, though it's something I'll need to consider all the same. */
IF ~~ + r3.20
END

IF ~~ r3.17
 SAY @347 /* Why indeed? That is something I'll need to put considerably more thought into. */
IF ~~ + r3.20
END

IF ~~ r3.18
 SAY @348 /* Yes, that might be for the best, though it's something I'll need to consider all the same. */
IF ~~ + r3.20
END

IF ~~ r3.19
 SAY @349 /* (laugh) I shall need to consider it on my own, in that case. */
IF ~~ + r3.20
END

IF ~~ r3.20
 SAY @350 /* But not right now. Not until I can gaze up at this pale moon of yours without wishing that it had a couple of siblings to keep it company. */
IF ~~ EXIT
END
END

// 4. (post-Saradush)
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",8)~ THEN RH#EV25J r4
@351 /* You seem to have rested as poorly this past night as I did, <CHARNAME>. What we saw in Saradush... I take it that was on your mind as well. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @352 /* How could it not be? It was a terrible thing to witness. */ + r4.1
  ++ @353 /* Only insofar as it was a reminder of how high the stakes are now. */ + r4.2
  ++ @354 /* I seldom sleep very well, Evandra. I haven't for some time. */ + r4.3
  ++ @355 /* I really don't want to talk about Saradush. Ever. */ + r4.4

APPEND RH#EV25J

IF ~~ r4.1
 SAY @356 /* I know. And yet... I didn't expect it to be quite so difficult. */
IF ~~ + r4.5
END

IF ~~ r4.2
 SAY @357 /* Ever practical, shalori... I would have expected to feel similarly. */
IF ~~ + r4.5
END

IF ~~ r4.3
 SAY @358 /* Yes, I know, but this... to me at least, this seemed different. */
IF ~~ + r4.5
END

IF ~~ r4.4
 SAY @107 /* I suppose I don't blame you for that. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r4.5
 SAY @359 /* I'm no stranger to hardship, to tragedy, to death... such is the price of our elven lifespans, unfortunately. To be ever an observer to the misfortunes of others, to pass through their troubles untouched. */
 = @109 /* Or perhaps not quite untouched. Disasters like Saradush... I don't think that is an image I am likely to forget anytime soon. */
	++ @110 /* What happened there wasn't our fault, Evandra. */ + r4.6
	++ @111 /* Nor will I. All those lives, lost for nothing. */ + r4.7
	++ @360 /* I hadn't expected the concerns of humans to touch you so deeply. */ + r4.8
	++ @113 /* That's what a war looks like, whatever the context. */ + r4.9
END

IF ~~ r4.6
 SAY @114 /* I don't think it even matters whose fault it was. Not anymore. But to see death on such a scale... it's hard to take in. */
IF ~~ + r4.10
END

IF ~~ r4.7
 SAY @115 /* I'm not sure that death is ever anything but pointless, but to see it on such a scale... it's hard to take in. */
IF ~~ + r4.10
END

IF ~~ r4.8
 SAY @361 /* They seldom do, you're right, but to see death on such a scale... it's hard to take in. */
IF ~~ + r4.10
END

IF ~~ r4.9
 SAY @117 /* You're right, of course, but to see death on such a scale... it's hard to take in. */
IF ~~ + r4.10
END

IF ~~ r4.10
 SAY @362 /* I'm getting a clearer and clear picture of what it must be like to be you, <CHARNAME>. To be all but stalked by horror, death following you wherever you go. Even Irenicus... sometimes I wonder if it was he who was swept away by your destiny, rather than the reverse. */
 = @363 /* Sometimes I wonder if the same doesn't go for all of us. For the people of Saradush, for the people of Suldanessellar... even for myself. */
	++ @364 /* What do you mean by that? */ + r4.11
	++ @365 /* I wouldn't examine that line of thought too closely. */ + r4.12
	++ @366 /* I don't think destiny works like that. */ + r4.13
END

IF ~~ r4.11
 SAY @367 /* It was the strangest quirk of fate that tossed the two of us together, <CHARNAME>, but strange quirks of fate... they seem to be the norm for you. Particularly when an element of horror is involved. Perhaps the reach of your destiny stretches farther than simply Faerûn. */
 = @368 /* I am not complaining, shalori. I would not take any of this back, but it's a chilling thought all the same. As chilling as anything else these days. */
	++ @369 /* If something good has come from all of this, I'm grateful for it. */ + r4.14
	++ @370 /* Don't attribute too much to destiny. Our choices are our own. */ + r4.15
	++ @371 /* You might be right. It's clear that something about me is different. */ + r4.16
	++ @372 /* Too chilling, perhaps. I don't think this relationship is a good idea, Evandra. */ + r4.17
END

IF ~~ r4.12
 SAY @373 /* For fear of what it might reveal? No, that is no reason not to consider it. */
IF ~~ + r4.11
END

IF ~~ r4.13
 SAY @374 /* Perhaps. Perhaps not. How could we really say? */
IF ~~ + r4.11
END

IF ~~ r4.14
 SAY @375 /* As am I, <CHARNAME>. As am I. */
IF ~~ + r4.18
END

IF ~~ r4.15
 SAY @376 /* Our choices, perhaps, but our circumstances... I would say otherwise. */
IF ~~ + r4.18
END

IF ~~ r4.16
 SAY @377 /* Yes, I dare say that much is true. */
IF ~~ + r4.18
END

IF ~~ r4.17
 SAY @378 /* I... see. I hadn't expected that, but I suppose I'll leave you to your own devices, then. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ r4.18
 SAY @379 /* But come, enough of my mad imaginings... if that's what they are. After what befell Saradush, I'd rather not let the day catch us lounging about. */
IF ~~ EXIT
END
END

// 5. (pocket plane)
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",10)~ THEN RH#EV25J r5
@136 /* This place never ceases to amaze me, <CHARNAME>. A soul laid bare, given form and essence of a sort... a marvelous work of magic, if that's even what it is at all. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @380 /* You really think this horrid place is a reflection of my soul? */ + r5.1
  ++ @138 /* What could it be, if not a work of magic? */ + r5.2
  ++ @139 /* It is an odd little pocket of nothingness, isn't it? */ + r5.3
  ++ @381 /* Not right now, Evandra. I don't have time for this. */ + r5.4

APPEND RH#EV25J

IF ~~ r5.1
 SAY @382 /* In a manner of speaking, yes. Reflections aren't always shown through a clear looking glass. Sometimes... well, sometimes they are very different. */
IF ~~ + r5.5
END

IF ~~ r5.2
 SAY @142 /* I don't know enough about the divine to say for sure, but this... well, there's something familiar about it. */
IF ~~ + r5.5
END

IF ~~ r5.3
 SAY @143 /* That's an intriguing way to describe it. But not inappropriate, I think. */
IF ~~ + r5.5
END

IF ~~ r5.4
 SAY @383 /* No? I hadn't realized you were busy here. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r5.5
 SAY @384 /* Dream realms have always intrigued me, shalori... ever since the day I took my Test. Particularly those with the power to kill, as this one seems intent upon doing. I'm sure that sounds morbid, but there is usually a purpose behind such places. */
 = @385 /* Not always a pleasant purpose, of course, but a purpose all the same. */
	++ @386 /* And this one? What do you think its purpose is? */ + r5.6
	++ @387 /* The only question is whose purpose it might be. */ + r5.6
	++ @388 /* You're surprisingly cold about all of this. */ + r5.7
END

IF ~~ r5.6
 SAY @389 /* That is a very good question. */
IF ~~ + r5.8
END

IF ~~ r5.7
 SAY @390 /* Less so than you might think. */ 
IF ~~ + r5.8
END

IF ~~ r5.8
 SAY @391 /* Forgive me if I seem somewhat... disinterested, but it's easier to think of this place as a test of some sort, a simple proving ground with a trial behind every door, than to wonder just why this realm has been conjured up for you. */
 = @392 /* You're being tested, shalori. That much is clear, though I do not care to consider the implications. */
	++ @393 /* Whatever is going on, we'll get through it, Evandra. */ + r5.9
	++ @394 /* I'd think the implications are obvious. I am the child of a god. */ + r5.10
	++ @395 /* There's a lot these days that I don't care to think about either. */ + r5.11
	++ @396 /* I hadn't realized you were worried about these challenges. */ + r5.12
END

IF ~~ r5.9
 SAY @397 /* Optimistic to the end. I hope you're right to be. */
IF ~~ + r5.13
END

IF ~~ r5.10
 SAY @398 /* Yes... yes, I know. And yet knowledge does not make it easier. */
IF ~~ + r5.13
END

IF ~~ r5.11
 SAY @399 /* Then perhaps we had both better face up to it. */
IF ~~ + r5.13
END

IF ~~ r5.12
 SAY @400 /* How could I not be? This is... far beyond my experience. */
IF ~~ + r5.13
END

IF ~~ r5.13
 SAY @401 /* I'm not accustomed to conflicts such as this one, <CHARNAME>, to knowing that the powers themselves are watching every move and countermove. I am far more used to indifference, but here... here every eye seems to be upon you. */
	++ @402 /* I know. It's growing more and more unnerving. */ + r5.14
	++ @403 /* By this point, I'm used to being the center of attention. */ + r5.15
	++ @404 /* What's going on is important, but I won't let it change who I am. */ + r5.16
	++ @405 /* As long as that includes your eyes as well, I don't mind. */ + r5.17
END

IF ~~ r5.14
 SAY @406 /* (smile) You bear it better than I do. */
IF ~~ + r5.18
END

IF ~~ r5.15
 SAY @407 /* (laugh) I think this is a step beyond your normal situation. */
IF ~~ + r5.18
END

IF ~~ r5.16
 SAY @408 /* (smile) Are my concerns so obvious? I suppose that's no surprise. */
IF ~~ + r5.18
END

IF ~~ r5.17
 SAY @409 /* (laugh) Naturally, but you shouldn't take this so lightly. */
IF ~~ + r5.18
END

IF ~~ r5.18
 SAY @410 /* I don't mean to make too much of what might very well be nothing, but after everything we've come through, after Bodhi and Irenicus and the Underdark, I would hate to lose you to... this. To whatever role you're being prepared for. */
	++ @411 /* You won't, Evandra. That much I can promise you. */ + r5.19
	++ @412 /* You could still lose me to a lucky blow from one of my siblings. */ + r5.20
	++ @413 /* I don't care for the thought either, but my fate may not be my own. */ + r5.21
	++ @414 /* All things considered, there are worse things to lose someone too. */ + r5.22
END

IF ~~ r5.19
 SAY @415 /* Then I shall have to take your word for it. */
IF ~~ + r5.23
END

IF ~~ r5.20
 SAY @416 /* Perhaps, though that seems increasingly less likely. */
IF ~~ + r5.23
END

IF ~~ r5.21
 SAY @417 /* Yes, that's part of what troubles me. */
IF ~~ + r5.23
END

IF ~~ r5.22
 SAY @418 /* Perhaps, though that isn't exactly reassuring. */
IF ~~ + r5.23
END

IF ~~ r5.23
 SAY @419 /* Whatever it is that fate has in store for you, <CHARNAME>, whatever these strange trials might mean... well. I plan to stand beside you. */
 = @420 /* I only hope that's enough. */
IF ~~ EXIT
END
END

// 6. (Amkethran)
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",12)~ THEN RH#EV25J r6
@174 /* Sand, sand, and nothing but sand... I don't think I'll ever again underestimate the human propensity for building homes in the most inhospitable of places. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)
RealSetGlobalTimer("rh#EvaTalksTimer","GLOBAL",2700)~
END
  ++ @175 /* I take it you don't care for the desert? */ + r6.1
  ++ @176 /* Heat, heat, and nothing but heat, I think you mean! */ + r6.2
  ++ @177 /* It's not as if a forest city is any less remote. */ + r6.3
  ++ @178 /* We don't have time for this right now. */ + r6.4

APPEND RH#EV25J

IF ~~ r6.1
 SAY @179 /* Not exactly, no. What is there to like about a barren wasteland? */ 
IF ~~ + r6.5
END

IF ~~ r6.2
 SAY @180 /* Yes, that as well. It really does leave something to be desired. */ 
IF ~~ + r6.5
END

IF ~~ r6.3
 SAY @181 /* It isn't the remoteness that troubles me, so much as the barrenness. */ 
IF ~~ + r6.5
END

IF ~~ r6.4
 SAY @182 /* If silence means getting out of here sooner, so be it. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r6.5
 SAY @183 /* I assume that the town is here to service the monastery, and the monks... well, they really do seem to be the oddest of a decidedly odd race. */
 = @184 /* If a person were given to contemplation, and I can certainly see the appeal, I can think of better environments for it than this one. */
	++ @185 /* By which I assume you mean leafier environments? */ + r6.6
	++ @186 /* There's nothing better than austerity to gain a sense of discipline. */ + r6.7
	++ @187 /* You can see the appeal of contemplation? Please enlighten me! */ + r6.8
	++ @188 /* I can forward your recommendation to Balthazar, if you'd like. */ + r6.9
END

IF ~~ r6.6
 SAY @189 /* (laugh) Amongst other options. One needn't starve their senses to gain a degree of self-knowledge. */
IF ~~ + r6.10
END

IF ~~ r6.7
 SAY @190 /* I wouldn't be so sure of that. There are methods that don't involve starving one's senses entirely. */
IF ~~ + r6.10
END

IF ~~ r6.8
 SAY @191 /* (laugh) Study, discipline, self-knowledge... I would hope that most people could see the appeal. */
IF ~~ + r6.10
END

IF ~~ r6.9
 SAY @192 /* (laugh) He would certainly benefit from it. One needn't starve their senses to gain a degree of self-knowledge. */
IF ~~ + r6.10
END

IF ~~ r6.10
 SAY @421 /* You'd best not forget that I was an apprentice myself, once upon a time. Discipline was something that I needed to learn as well, and I did. But not like this, shalori. This would have bored me to tears, I think. */
 = @194 /* But there was a lake that my teacher would take me to when I was learning my very first cantrips, a lake by the edge of the forest. "Your mind must be as still as the surface of the water," she used to say, and then she would leave me there with nothing but my thoughts for company. */
 = @195 /* That was tranquility itself, <CHARNAME>. This, on the other hand... this I would describe somewhat differently. */
	++ @422 /* You still really miss your home, don't you? */ + r6.11
	++ @423 /* You've mentioned your old teacher once or twice before. */ + r6.12
	++ @424 /* That does sound like an ideal way to learn. */ + r6.13
	++ @425 /* They're humans, not elves. They do things differently. */ + r6.14
END

IF ~~ r6.11
 SAY @426 /* Not like I once did, shalori, but it's seldom far from my mind. */
IF ~~ + r6.15
END

IF ~~ r6.12
 SAY @427 /* We were close for quite some time, shalori. Even after events played out. */
IF ~~ + r6.15
END

IF ~~ r6.13
 SAY @428 /* It was, shalori. If our people are gifted at one thing, it would be teaching. */
IF ~~ + r6.15
END

IF ~~ r6.14
 SAY @429 /* I know, shalori. Needless to say, I think our people have the right of it here. */
IF ~~ + r6.15
END

IF ~~ r6.15
 SAY @430 /* But come, I don't mean to hold you up with ancient stories, <CHARNAME>. I only wish... well, it would be nice if you could know my world as well as I've come to know yours. I can paint something of a picture with words, but it isn't quite the same. */
	++ @431 /* I would have liked that as well, Evandra. */ + r6.16
	++ @432 /* I thought you had your heart set on Suldanessellar. */ + r6.17
	++ @433 /* The past doesn't matter to me. Only the future. */ + r6.18
	++ @434 /* Your nostalgia is getting on my nerves. Enough already. */ + r6.19
END

IF ~~ r6.16
 SAY @435 /* I thought you might have. */
IF ~~ + r6.20
END

IF ~~ r6.17
 SAY @436 /* I do, though that hardly erases the past entirely. */
IF ~~ + r6.20
END

IF ~~ r6.18
 SAY @437 /* Mm, sometimes the two go hand in hand. */
IF ~~ + r6.20
END

IF ~~ r6.19
 SAY @438 /* I see. I hadn't realized I was troubling you so. I'll keep to myself from now on, in that case. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ r6.20
 SAY @439 /* Regardless, that is something best discussed later, I suppose. For now, it seems that this wretched little city awaits our attention. */
IF ~~ EXIT
END
END

// 7.
CHAIN IF ~Global("rh#EvaLoveTalks","GLOBAL",14)~ THEN RH#EV25J r7
@213 /* The type of power that we wield these days, <CHARNAME>... I can't help but wonder what will become of all of us once this is over. */
DO ~IncrementGlobal("rh#EvaLoveTalks","GLOBAL",1)~
END
  ++ @440 /* Power can be put down again. It doesn't define us. */ + r7.1
  ++ @441 /* I've been wondering the same thing, Evandra. */ + r7.2
  ++ @216 /* Would you even want a quiet life? I certainly wouldn't. */ + r7.3
  ++ @442 /* I don't want to hear it right now. Let's move on. */ + r7.4

APPEND RH#EV25J

IF ~~ r7.1
 SAY @443 /* Perhaps not, but it will affect the way others look at us all the same. */
IF ~~ + r7.5
END

IF ~~ r7.2
 SAY @444 /* And I assume you don't have any better an answer than I do. */
IF ~~ + r7.5
END

IF ~~ r7.3
 SAY @445 /* I'd have liked the option, at the very least. I don't expect to have it now. */
IF ~~ + r7.5
END

IF ~~ r7.4
 SAY @446 /* I... very well. As you wish. */
IF ~~ DO ~IncrementGlobal("rh#EvaIgnoreToB","GLOBAL",1)~ EXIT
END

IF ~~ r7.5
 SAY @447 /* It's somewhat ironic, I think. I was so focused on the idea of feeling welcome somewhere again, having a home I could call my own, and now... now I can't help but fear that the time for that has passed. */
 = @448 /* Whatever path we take after this, I think it'll have to be our own. */
	++ @449 /* You'd be surprised. The immensely powerful settle wherever they want. */ + r7.6
	++ @450 /* Did you ever think it was going to be otherwise? */ + r7.7
	++ @451 /* What happened to your dream of returning to Suldanessellar? */ + r7.8
	++ @452 /* I have no problem with that. I like to keep my options open. */ + r7.9
END

IF ~~ r7.6
 SAY @453 /* Perhaps. But I can't imagine it being terribly easy. */
IF ~~ + r7.10
END

IF ~~ r7.7
 SAY @454 /* Briefly... yes. Briefly, I dare say I did. */
IF ~~ + r7.10
END

IF ~~ r7.8
 SAY @455 /* What happened to it indeed? I'm no longer quite sure. */
IF ~~ + r7.10
END

IF ~~ r7.9
 SAY @456 /* That makes you wiser than I, I'm beginning to think. */
IF ~~ + r7.10
END
END

CHAIN RH#EV25J r7.10
@457 /* I know what our people are like, shalori. I know how difficult change can be for us. If we were their own, they would hold power like ours in great esteem, but to come from afar... I couldn't say. */
== RH#EV25J IF ~Class(Player1,MAGE_ALL)~ THEN @458 /* And to come from afar with magic such as ours... that I am even less certain of. It will be centuries before they've forgotten Irenicus. */
== RH#EV25J IF ~!Class(Player1,MAGE_ALL)~ THEN @459 /* And to come from afar with magic such as mine... that I am even less certain of. It will be centuries before they've forgotten Irenicus. */
END
	++ @460 /* I don't remember you being concerned about that before. */ + r7.11
	++ @461 /* We can play it by ear and see what happens, Evandra. */ + r7.12
	++ @462 /* We have larger things to worry about right now, you know. */ + r7.13
	++ @463 /* Given our people's love of magic, I don't that will be a problem. */ + r7.14

APPEND RH#EV25J

IF ~~ r7.11
 SAY @464 /* I suppose not. Perhaps I'm simply seeing problems that don't exist. */
IF ~~ + r7.15
END

IF ~~ r7.12
 SAY @465 /* I suppose you're right. And I might simply be seeing problems that don't exist. */
IF ~~ + r7.15
END

IF ~~ r7.13
 SAY @466 /* I know. And I suppose I might simply be seeing problems that don't exist. */
IF ~~ + r7.15
END

IF ~~ r7.14
 SAY @467 /* You may be right. Perhaps I'm simply seeing problems that don't exist. */
IF ~~ + r7.15
END

IF ~~ r7.15
 SAY @468 /* I look at you sometimes, and I wonder if this realm might soon be too small to contain you. And then I wonder the same thing about myself... I'm not half divine, but I'm not precisely what I used to be either. */
 = @469 /* Perhaps the both of us belong in the planes now. And it isn't as if we didn't have the means to travel them. */
 	++ @470 /* I remember when you used to warn me about living too quickly. */ + r7.16
	++ @471 /* I can't think of anything I'd rather do than go planeswalking. */ + r7.17
	++ @472 /* I would rather not abandon Faerûn, Evandra. This is my home. */ + r7.18
	++ @473 /* Let's not get carried away. This realm still has much to offer. */ + r7.19
END

IF ~~ r7.16
 SAY @474 /* (laugh) I don't mean to mislead you with the thought of days and nights of wild adventure. Simply a larger horizon. */
IF ~~ + r7.20
END

IF ~~ r7.17
 SAY @475 /* (laugh) Planeswalking? I don't mean to mislead you with the thought of days and nights of wild adventure. Simply a larger horizon. */
IF ~~ + r7.20
END

IF ~~ r7.18
 SAY @476 /* And I can't blame you for that, but... well. At some point we might find ourselves wanting a larger horizon. */
IF ~~ + r7.20
END

IF ~~ r7.19
 SAY @477 /* For the moment... yes, I'm sure it does. But at some point we might find ourselves wanting a larger horizon. */
IF ~~ + r7.20
END

IF ~~ r7.20
 SAY @478 /* But we can speak of that larger horizon another <DAYNIGHT>, I suppose. Once all of this is finally behind us and we can begin to make plans in earnest. */
IF ~~ EXIT
END
END

// 8.
CHAIN IF ~Global("rh#EvaFinalTalk","GLOBAL",2)~ THEN RH#EV25J r8
@479 /* How strange to be so close to the end, <CHARNAME>... after so many false starts and unexpected turns, it almost feels surreal. */
= @480 /* Perhaps that is why I'm so uncomfortable with it. Something more is sure to go wrong. It very nearly has to. */
DO ~IncrementGlobal("rh#EvaFinalTalk","GLOBAL",1)~
END
	++ @481 /* Not this time, Evandra. This is it, once and for all. */ + r8.1
	++ @482 /* I know what you mean, but this has to end eventually. */ + r8.2
	++ @483 /* It probably will. We'll need to be ready for that. */ + r8.3
	++ @484 /* This is no time for pessimism, Evandra. Let's go. */ + r8.4

APPEND RH#EV25J

IF ~~ r8.1
 SAY @485 /* I hope you're right. I'd like to think that there's something worthwhile waiting for us on the other end of this. */
IF ~~ + r8.5
END

IF ~~ r8.2
 SAY @486 /* And once it finally does... I'd like to think that there's something worthwhile waiting for us on the other end of this. */
IF ~~ + r8.5
END

IF ~~ r8.3
 SAY @487 /* And afterwards... I'd like to think that there's something worthwhile waiting for us on the other end of this. */
IF ~~ + r8.5
END

IF ~~ r8.4
 SAY @488 /* Then... very well. Hopefully there will be time to speak once this is over. */
IF ~~ EXIT
END

IF ~~ r8.5
 SAY @489 /* You and I, <CHARNAME>... we have been very good, I think. So much so that sometimes I cannot help but wonder what ill fate will befall us next. We've been lucky so far, almost in spite of ourselves, but looking ahead to the future... */
 = @490 /* I wonder, shalori. I wonder more with every passing day. */
	++ @491 /* Whatever happens, we'll face it. And we'll face it together. */ + r8.6
	++ @492 /* We've been anything *but* lucky, Evandra. But we're still here. */ + r8.7
	++ @493 /* Isn't that how it always is? Nobody knows the future. */ + r8.8
	++ @494 /* So do I. I expect nothing to be the same after what happens next. */ + r8.9
END

IF ~~ r8.6
 SAY @495 /* In that case, perhaps I should set the pessimism aside once and for all. Perhaps it's time to simply assume that the future will be kinder to us than the past has been. */
IF ~~ + r8.10
END

IF ~~ r8.7
 SAY @496 /* Yes... yes, we are. And in that case, perhaps I should finally set the pessimism aside altogether. Perhaps it's time to simply assume that the future will be kinder to us than the past has been. */
IF ~~ + r8.10
END

IF ~~ r8.8
 SAY @497 /* Nobody but the diviners, at least. But perhaps I should set the pessimism aside, all the same. Perhaps it's time to simply assume that the future will be kinder to us than the past has been. */
IF ~~ + r8.10
END

IF ~~ r8.9
 SAY @498 /* Perhaps we should both set the pessimism aside, in that case. Perhaps it's time for both of us to simply assume that the future will be kinder to us than the past has been. */
IF ~~ + r8.10
END

IF ~~ r8.10
 SAY @499 /* And if it is... well. I'd like to return to Suldanessellar, once this is over. For how long, I couldn't say, but long enough to be married in the manner of our people. Perhaps it is too soon for such a move, but... I doubt that any later moment could be as appropriate. */
	++ @500 /* There's nothing I'd like more, Evandra. */ + r8.11
	++ @501 /* We have friends in Amn. Why not do it there? */ + r8.12
	++ @502 /* Why marry? A ceremony won't change anything between us. */ + r8.13
	++ @503 /* I never wanted this to be a permanent thing, Evandra. */ + r8.14
END

IF ~~ r8.11
 SAY @504 /* (smile) Then it is settled. */
IF ~~ DO ~SetGlobal("rh#EvaMarriage","GLOBAL",1)~ + r8.17
END

IF ~~ r8.12
 SAY @505 /* It would not be the same, <CHARNAME>. Not for me, at least. */
	++ @506 /* Then I would be happy to do it in Suldanessellar. */ + r8.11
	++ @507 /* Why choose, then? We can always do both. */ + r8.15
	++ @502 /* Why marry? A ceremony won't change anything between us. */ + r8.13
	++ @503 /* I never wanted this to be a permanent thing, Evandra. */ + r8.14
END

IF ~~ r8.13
 SAY @508 /* Perhaps not, but I would appreciate it all the same. */
	++ @509 /* Very well. In that case I would be happy to get married. */ + r8.11
	++ @510 /* I dislike the very idea of marriage. It isn't my way. */ + r8.16
	++ @503 /* I never wanted this to be a permanent thing, Evandra. */ + r8.14
END

IF ~~ r8.14
 SAY @511 /* I see. I... I had misjudged you, in that case. Let us move on and speak of this no more. */
IF ~~ DO ~SetGlobal("rh#EvaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ r8.15
 SAY @512 /* (smile) As fine a compromise as any. */
IF ~~ DO ~SetGlobal("rh#EvaMarriage","GLOBAL",2)~ + r8.17
END

IF ~~ r8.16
 SAY @513 /* If that is the way you feel... very well. I won't press further. */
IF ~~ + r8.17
END

IF ~~ r8.17
 SAY @514 /* The only thing left, then, is to face whatever trial lies ahead of us now, and after that... after that we'll see what more fate has in store for us. */
IF ~~ EXIT
END
END
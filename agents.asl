// Agent scratchpad

// ---------------------------------------------------------------------------
// Punch agent

// A lot of Punch's behaviour is inherited from the roles that he enacts in various tropes:

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("idiot.asl") } // "Punch, Judy, and the Baby", "Crocodile and Sausages"
{ include("husband.asl") } // "Punch, Judy and the Baby"
{ include("pursuer.asl") } // "Punch, Judy and the Baby", "Punch and the Policeman", "Punch and the Devil"
{ include("hero.asl") } // "Punch and the Policeman", "Punch and the Devil"
{ include("slapper.asl") } // "Punch and the Policeman", "Punch and the Devil"
{ include("pursuee.asl") } // "Crocodile and Sausages"

{ include("audience-aware-character.asl") } // All scenes

// The user is also able to author any other plans they want to add in order to customise Punch's behaviour

// ---------------------------------------------------------------------------
// Judy agent

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("wife.asl") } // "Punch, Judy and the Baby" scene
{ include("owner.asl") } // "Punch, Judy and the Baby" scene
{ include("pursuee.asl") } // "Punch, Judy and the Baby" scene

{ include("audience-aware-character.asl") } // All scenes

// ---------------------------------------------------------------------------
// Joey agent

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("narrator.asl") } // "Introduction" scene

// ---------------------------------------------------------------------------
// Crocodile agent

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("accomplice.asl") } // "Crocodile" scene
{ include("pursuer.asl") } // "Crocodile" scene

// ---------------------------------------------------------------------------
// Devil agent

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("mini-boss.asl") } // "Punch and the Devil" scene
{ include("pursuee.asl") } // "Punch and the Devil" scene
{ include("slapped.asl") } // "Punch and the Devil" scene

// ---------------------------------------------------------------------------
// Policeman agent

{ include("movement.asl") }
{ include("emotions.asl") }

{ include("mini-boss.asl") } // "Punch and the Policeman" scene
{ include("pursuee.asl") } // "Punch and the Policeman" scene
{ include("slapped.asl") } // "Punch and the Policeman" scene

// ---------------------------------------------------------------------------
// Idiot agent (generated from "Don't Touch It" and "Mishandling" tropes)

// "Mishandling:"

+startTrope(mishandling)
  <- !breakItem;

+startTrope(mishandling)
  <- !loseItem;

+!breakItem : not (desperate | perm(break(X))) & type(X, item)
  <- !breakItem;

+!breakItem : (desperate | perm(break(X))) & type(X, item)
  <- !break(X);

+!loseItem : not (desperate | perm(lose(X))) & type(X, item)
  <- !loseItem;

+!loseItem : (desperate | perm(lose(X))) & type(X, item)
  <- !lose(X);

// ---------------------------------------------------------------------------
// Narrator agent

+startTrope(narratorTrope)
 <- !talkToAudience;

+!talkToAudience : not (desperate | perm(talkTo(X))) & role(X, audience)
  <- !talkToAudience;

+!talkToAudience : (desperate | perm(talkTo(X))) & role(X, audience)
  <- talkTo(X);

// ---------------------------------------------------------------------------
// Audience-aware Character agent

+startTrope(audienceParticipation)
 <- !talkToAudience;

+!talkToAudience : not (desperate | perm(talkTo(X))) & role(X, audience)
                   <- !talkToAudience;

+!talkToAudience : (desperate | perm(talkTo(X))) & role(X, audience)
                   <- talkTo(X);

// ---------------------------------------------------------------------------
// Owner agent

+startTrope(settingTheSceneForMischief)
 <- !entrustIdiotItem;
    !go(away);
    !return;

+!entrustIdiotItem : not (desperate | perm(entrust(X, Y))) & role(X, idiot) & type(Y, item)
 <- !entrustIdiotItem;

+!entrustIdiotItem : (desperate | perm(entrust(X, Y))) & role(X, idiot) & type(Y, item)
 <- entrust(X, Y);

+!go(X) : not (desperate | perm(go(X))) & location(X, away)
  <- !go(X);

+!go(X) : (desperate | perm(go(X))) & location(X, away)
          <- go(X);

+!return : not (desperate | perm(return))
           <- !return;

+!return : (desperate | perm(return))
          <- return;

// ---------------------------------------------------------------------------
// Pursuer agent

+startTrope(chaseFight)
 <- !chasePursuee;
    !killPursuee;

+!chasePursuee : not (desperate | perm(chase(X))) & role(X, pursuee)
  <- !chasePursuee;

+!chasePursuee : (desperate | perm(chase(X))) & role(X, pursuee)
  <- chase(X);

+!killPursuee : not (desperate | perm(kill(X))) & role(X, pursuee)
                 <- !killPursuee;

+!killPursuee : (desperate | perm(kill(X))) & role(X, pursuee)
                 <- kill(X);

// ---------------------------------------------------------------------------
// Pursuee agent


+startTrope(chaseFight)
 <- !fightPursuer;
    !escape;

+!fightPursuer : not (desperate | perm(fight(X))) & role(X, pursuer)
                 <- !fightPursuer;

+!fightPursuer : (desperate | perm(fight(X))) & role(X, pursuer)
                 <- fight(X);

+!escape : not (desperate | perm(escape))
                <- !escape;

+!escape : (desperate | perm(escape(X)))
                <- escape;

// ---------------------------------------------------------------------------
// Hero agent

// "Mini-boss"

+startTrope(miniBossTrope)
  <- !fightMiniBoss;
     !defeatOrDie;
     !escape;

+!fightMiniBoss : not perm(fight(X, Y)) & role(X, hero) & role(Y, miniBoss)
              <- !fightMiniBoss;

+!breakItem : (desperate | perm(break(X))) & type(X, item)
              <- !break(X);

+!loseItem : not perm(lose(X)) & type(X, item)
             <- !loseItem;

+!loseItem : perm(lose(X)) & type(X, item)
             <- !lose(X);

// ---------------------------------------------------------------------------
// Director agent

// How can we decide which trope is best to replace the violated one with?
// Could match roles / objects / places of violated trope with another

trope(herosJourney);
role(hero, herosJourney);
place(landOfAdventure, herosJourney);
object(magicalAgent, herosJourney);

// look for A* search in Prolog
// look at literature on case-based reasoning
// Enric Plaza
// Ramon Lopez de Mantaras
// Look at Norvig & Russell for case-based reasoning

// get tropes that share at least one role, object and place
getSimilarTropes(X, T)
 :- 1{trope(T) &
    trope(X) &
    role(R, X) &
    role(R, T) &
    object(O, X) &
    object(O, T) &
    place(P, X) &
    place(P, T)}1;

// lowerbound{}upperbound


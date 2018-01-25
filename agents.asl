// Agent scratchpad

// ---------------------------------------------------------------------------
// Idiot agent (generated from "Don't Touch It" and "Mishandling" tropes)

// "Mishandling:"

+startTrope(mishandling)
  <- !breakItem;
     !loseItem;

+!breakItem : not perm(break(X)) & type(X, item)
  <- !breakItem;

+!breakItem : (desperate | perm(break(X))) & type(X, item)
  <- !break(X);

+!loseItem : not perm(lose(X)) & type(X, item)
  <- !loseItem;

+!loseItem : perm(lose(X)) & type(X, item)
  <- !lose(X);

// ---------------------------------------------------------------------------

// Hero agent

// "Mini-boss"

+startTrope(miniBoss)
  <- !fightMiniBoss;
     !defeatOrDie;
     !escape;

+!breakItem : not perm(break(X)) & type(X, item)
              <- !breakItem;

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
 :- trope(T) &
    trope(X) &
    role(R, X) &
    role(R, T) &
    object(O, X) &
    object(O, T) &
    place(P, X) &
    place(P, T);


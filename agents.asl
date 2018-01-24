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
// Director agent

// How can we decide which trope is best to replace the violated one with?
// Could match roles / objects / places of violated trope with another

trope();
role(X, trope);
hasRole(mishandling, idiot);
roleMatches(mishandling, herosJourney, 0);
bestMatch();

+!checkViols
 <- !checkViols;

// get tropes that share at least one role, object and place
getSimilarTropes(X, T)
 :- trope(T) &
    role(R, X) &
    role(R, T) &
    object(O, X) &
    object(O, T) &
    place(P, X) &
    place(P, T);

+!chooseTrope : viol(X) & trope(X)
  <-

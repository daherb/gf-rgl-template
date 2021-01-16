--1 Adverb: Adverbs and Adverbial Phrases

concrete AdverbXXX of Adverb = CatXXX ** open Prelude in {

  lin

-- The two main ways of forming adverbs are from adjectives and by
-- prepositions from noun phrases.

    -- PositAdvAdj : A -> Adv ;                 -- warmly
  PositAdvAdj = notYet "PositAdvAdj" ; 
    -- PrepNP      : Prep -> NP -> Adv ;        -- in the house
  PrepNP = notYet "PrepNP" ; 

-- Comparative adverbs have a noun phrase or a sentence as object of
-- comparison.

    -- ComparAdvAdj  : CAdv -> A -> NP -> Adv ; -- more warmly than John
  ComparAdvAdj = notYet "ComparAdvAdj" ; 
    -- ComparAdvAdjS : CAdv -> A -> S  -> Adv ; -- more warmly than he runs
  ComparAdvAdjS = notYet "ComparAdvAdjS" ; 
    
-- Adverbs can be modified by 'adadjectives', just like adjectives.

    -- AdAdv  : AdA -> Adv -> Adv ;             -- very quickly
  AdAdv = notYet "AdAdv" ; 
    
-- Like adverbs, adadjectives can be produced by adjectives.

    -- PositAdAAdj : A -> AdA ;                 -- extremely
  PositAdAAdj = notYet "PositAdAAdj" ; 
    
-- Subordinate clauses can function as adverbs.

    -- SubjS  : Subj -> S -> Adv ;              -- when she sleeps
  SubjS = notYet "SubjS" ; 
-- Comparison adverbs also work as numeral adverbs.

    -- AdnCAdv : CAdv -> AdN ;                  -- less (than five)
  AdnCAdv = notYet "AdnCAdv" ; 
}

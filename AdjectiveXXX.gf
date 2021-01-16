--1 Adjective: Adjectives and Adjectival Phrases

concrete AdjectiveXXX of Adjective = CatXXX ** open Prelude in {

  lin

-- The principal ways of forming an adjectival phrase are
-- positive, comparative, relational, reflexive-relational, and
-- elliptic-relational.

    -- PositA  : A  -> AP ;        -- warm
  PositA = notYet "PositA" ; 
    -- ComparA : A  -> NP -> AP ;  -- warmer than I
  ComparA = notYet "ComparA" ; 
    -- ComplA2 : A2 -> NP -> AP ;  -- married to her
  ComplA2 = notYet "ComplA2" ; 
    -- ReflA2  : A2 -> AP ;        -- married to itself
  ReflA2 = notYet "ReflA2" ; 
    -- UseA2   : A2 -> AP ;        -- married
  UseA2 = notYet "UseA2" ; 
    -- UseComparA : A  -> AP ;     -- warmer
  UseComparA = notYet "UseComparA" ; 
    -- CAdvAP  : CAdv -> AP -> NP -> AP ; -- as cool as John
  CAdvAP = notYet "CAdvAP" ; 
    
-- The superlative use is covered in $Ord$.

    -- AdjOrd  : Ord -> AP ;       -- warmest
  AdjOrd = notYet "AdjOrd" ; 
    
-- Sentence and question complements defined for all adjectival
-- phrases, although the semantics is only clear for some adjectives.
 
    -- SentAP  : AP -> SC -> AP ;  -- good that she is here
  SentAP = notYet "SentAP" ; 
    
-- An adjectival phrase can be modified by an *adadjective*, such as "very".

    -- AdAP    : AdA -> AP -> AP ; -- very warm
  AdAP = notYet "AdAP" ; 
    
-- It can also be postmodified by an adverb, typically a prepositional phrase.

    -- AdvAP   : AP -> Adv -> AP ; -- warm by nature
  AdvAP = notYet "AdvAP" ; 
    
-- The formation of adverbs from adjectives (e.g. "quickly") is covered
-- in [Adverb Adverb.html]; the same concerns adadjectives (e.g. "extremely").

}

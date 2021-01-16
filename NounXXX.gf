--1 Noun: Nouns, noun phrases, and determiners

concrete NounXXX of Noun = CatXXX ** open Prelude in {


--2 Noun phrases

-- The three main types of noun phrases are
-- - common nouns with determiners
-- - proper names
-- - pronouns
--
--
  lin
    -- DetCN   : Det -> CN -> NP ;   -- the man
  DetCN = notYet "DetCN" ;  
    -- UsePN   : PN -> NP ;          -- John
  UsePN = notYet "UsePN" ; 
    -- UsePron : Pron -> NP ;        -- he
  UsePron = notYet "UsePron" ; 

-- Pronouns are defined in the module [``Structural`` Structural.html].

-- A noun phrase already formed can be modified by a $Predet$erminer.

    -- PredetNP : Predet -> NP -> NP ; -- only the man 
  PredetNP = notYet "PredetNP" ; 
      
-- A noun phrase can also be postmodified by the past participle of a
-- verb, by an adverb, or by a relative clause

    -- PPartNP : NP -> V2  -> NP ;    -- the man seen
  PPartNP = notYet "PPartNP" ; 
    -- AdvNP   : NP -> Adv -> NP ;    -- Paris today
  AdvNP = notYet "AdvNP" ; 
    -- ExtAdvNP: NP -> Adv -> NP ;    -- boys, such as ..
  ExtAdvNP = notYet "ExtAdvNP" ; 
    -- RelNP   : NP -> RS  -> NP ;    -- Paris, which is here
  RelNP = notYet "RelNP" ; 
-- Determiners can form noun phrases directly.

    -- DetNP   : Det -> NP ;  -- these five
  DetNP = notYet "DetNP" ; 

--2 Determiners

-- The determiner has a fine-grained structure, in which a 'nucleus'
-- quantifier and an optional numeral can be discerned.

    -- DetQuant    : Quant -> Num ->        Det ;  -- these five
  DetQuant = notYet "DetQuant" ; 
    -- DetQuantOrd : Quant -> Num -> Ord -> Det ;  -- these five best
  DetQuantOrd = notYet "DetQuantOrd" ; 
    
-- Whether the resulting determiner is singular or plural depends on the
-- cardinal.

-- All parts of the determiner can be empty, except $Quant$, which is
-- the "kernel" of a determiner. It is, however, the $Num$ that determines
-- the inherent number.

    -- NumSg   : Num ;  -- [no numeral, but marked as singular]
  NumSg = notYet "NumSg" ; 
    -- NumPl   : Num ;  -- [no numeral, but marked as plural]
  NumPl = notYet "NumPl" ;  
    -- NumCard : Card -> Num ; -- one/five [explicit numeral]
  NumCard = notYet "NumCard" ; 
    
-- $Card$ consists of either digits or numeral words.

    --     NumDigits  : Digits  -> Card ;  -- 51
  NumDigits = notYet "NumDigits" ; 
    --     NumNumeral : Numeral -> Card ;  -- fifty-one
  NumNumeral = notYet "NumNumeral" ; 

-- The construction of numerals is defined in [Numeral Numeral.html].

-- A $Card$ can  be modified by certain adverbs.

  -- lin
    -- AdNum : AdN -> Card -> Card ;   -- almost 51
  AdNum = notYet "AdNum" ; 
-- An $Ord$ consists of either digits or numeral words.
-- Also superlative forms of adjectives behave syntactically like ordinals.

    -- OrdDigits  : Digits  -> Ord ;  -- 51st
  OrdDigits = notYet "OrdDigits" ; 
    -- OrdNumeral : Numeral -> Ord ;  -- fifty-first
  OrdNumeral = notYet "OrdNumeral" ; 
    -- OrdSuperl  : A       -> Ord ;  -- warmest
  OrdSuperl = notYet "OrdSuperl" ; 

-- One can combine a numeral and a superlative.

    -- OrdNumeralSuperl : Numeral -> A -> Ord ; -- third largest
  OrdNumeralSuperl = notYet "OrdNumeralSuperl" ; 
    
-- Definite and indefinite noun phrases are sometimes realized as
-- neatly distinct words (Spanish "un, unos ; el, los") but also without
-- any particular word (Finnish; Swedish definites).

    -- IndefArt   : Quant ;  -- a/an
  IndefArt = notYet "IndefArt" ; 
    -- DefArt     : Quant ;  -- the
  DefArt = notYet "DefArt" ; 

-- Nouns can be used without an article as mass nouns. The resource does
-- not distinguish mass nouns from other common nouns, which can result
-- in semantically odd expressions.

    -- MassNP     : CN -> NP ;            -- (beer)
  MassNP = notYet "MassNP" ; 
    
-- Pronouns have possessive forms. Genitives of other kinds
-- of noun phrases are not given here, since they are not possible
-- in e.g. Romance languages. They can be found in $Extra$ modules.

    -- PossPron : Pron -> Quant ;    -- my (house)
  PossPron = notYet "PossPron" ; 
-- Other determiners are defined in [Structural Structural.html].



--2 Common nouns

-- Simple nouns can be used as nouns outright.

    -- UseN : N -> CN ;              -- house
  UseN = notYet "UseN" ; 
    
-- Relational nouns take one or two arguments.

    -- ComplN2 : N2 -> NP -> CN ;    -- mother of the king
  ComplN2 = notYet "ComplN2" ; 
    -- ComplN3 : N3 -> NP -> N2 ;    -- distance from this city (to Paris)
  ComplN3 = notYet "ComplN3" ; 
    
-- Relational nouns can also be used without their arguments.
-- The semantics is typically derivative of the relational meaning.

    -- UseN2   : N2 -> CN ;          -- mother
  UseN2 = notYet "UseN2" ; 
    -- Use2N3  : N3 -> N2 ;          -- distance (from this city)
  Use2N3 = notYet "Use2N3" ; 
    -- Use3N3  : N3 -> N2 ;          -- distance (to Paris)
  Use3N3 = notYet "Use3N3" ; 
    
-- Nouns can be modified by adjectives, relative clauses, and adverbs
-- (the last rule will give rise to many 'PP attachment' ambiguities
-- when used in connection with verb phrases).

    -- AdjCN   : AP -> CN  -> CN ;   -- big house
  AdjCN = notYet "AdjCN" ; 
    -- RelCN   : CN -> RS  -> CN ;   -- house that John bought
  RelCN = notYet "RelCN" ; 
    -- AdvCN   : CN -> Adv -> CN ;   -- house on the hill
  AdvCN = notYet "AdvCN" ; 
    
-- Nouns can also be modified by embedded sentences and questions.
-- For some nouns this makes little sense, but we leave this for applications
-- to decide. Sentential complements are defined in [Verb Verb.html].

    -- SentCN  : CN -> SC  -> CN ;   -- question where she sleeps
  SentCN = notYet "SentCN" ; 
    
--2 Apposition

-- This is certainly overgenerating.

    -- ApposCN : CN -> NP -> CN ;    -- city Paris (, numbers x and y)
  ApposCN = notYet "ApposCN" ; 
--2 Possessive and partitive constructs

-- (New 13/3/2013 AR; Structural.possess_Prep and part_Prep should be deprecated in favour of these.)

    -- PossNP  : CN -> NP -> CN ;     -- house of Paris, house of mine
  PossNP = notYet "PossNP" ; 
    -- PartNP  : CN -> NP -> CN ;     -- glass of wine
  PartNP = notYet "PartNP" ; 

-- This is different from the partitive, as shown by many languages.

    -- CountNP : Det -> NP -> NP ;    -- three of them, some of the boys
  CountNP = notYet "CountNP" ; 
    
--3 Conjoinable determiners and ones with adjectives

    -- AdjDAP : DAP -> AP -> DAP ;    -- the large (one)
  AdjDAP = notYet "AdjDAP" ; 
    -- DetDAP : Det -> DAP ;          -- this (or that)
  DetDAP = notYet "DetDAP" ; 

}

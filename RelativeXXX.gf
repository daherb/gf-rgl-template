--1 Relative clauses and pronouns

concrete RelativeXXX of Relative = CatXXX ** open Prelude in{

  lin

-- The simplest way to form a relative clause is from a clause by
-- a pronoun similar to "such that".

    -- RelCl    : Cl -> RCl ;            -- such that John loves her
  RelCl = notYet "RelCl" ; 
    
-- The more proper ways are from a verb phrase 
-- (formed in [``Verb`` Verb.html]) or a sentence 
-- with a missing noun phrase (formed in [``Sentence`` Sentence.html]).

    -- RelVP    : RP -> VP -> RCl ;      -- who loves John
  RelVP = notYet "RelVP" ; 
    -- RelSlash : RP -> ClSlash -> RCl ; -- whom John loves
  RelSlash = notYet "RelSlash" ; 

-- Relative pronouns are formed from an 'identity element' by prefixing
-- or suffixing (depending on language) prepositional phrases or genitives.

    -- IdRP  : RP ;                      -- which
  IdRP = notYet "IdRP" ; 
    -- FunRP : Prep -> NP -> RP -> RP ;  -- the mother of whom
  FunRP = notYet "FunRP" ; 

}


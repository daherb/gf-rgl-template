--1 Question: Questions and Interrogative Pronouns

concrete QuestionXXX of Question = CatXXX ** open Prelude in {

-- A question can be formed from a clause ('yes-no question') or
-- with an interrogative.

  lin
    -- QuestCl     : Cl -> QCl ;            -- does John walk
  QuestCl = notYet "QuestCl" ; 
    -- QuestVP     : IP -> VP -> QCl ;      -- who walks
  QuestVP = notYet "QuestVP" ; 
    -- QuestSlash  : IP -> ClSlash -> QCl ; -- whom does John love
  QuestSlash = notYet "QuestSlash" ; 
    -- QuestIAdv   : IAdv -> Cl -> QCl ;    -- why does John walk
  QuestIAdv = notYet "QuestIAdv" ; 
    -- QuestIComp  : IComp -> NP -> QCl ;   -- where is John
  QuestIComp = notYet "QuestIComp" ; 

-- Interrogative pronouns can be formed with interrogative
-- determiners, with or without a noun.

  -- IdetCN    : IDet -> CN -> IP ;       -- which five songs
  IdetCN = notYet "IdetCN" ;
  -- IdetIP    : IDet       -> IP ;       -- which five
  IdetIP = notYet "IdetIP" ; 
    
-- They can be modified with adverbs.

    -- AdvIP     : IP -> Adv -> IP ;        -- who in Paris
  AdvIP = notYet "AdvIP" ; 
    
-- Interrogative quantifiers have number forms and can take number modifiers.

    -- IdetQuant : IQuant -> Num -> IDet ;  -- which (five)
  IdetQuant = notYet "IdetQuant" ; 
    
-- Interrogative adverbs can be formed prepositionally.

    -- PrepIP    : Prep -> IP -> IAdv ;     -- with whom
  PrepIP = notYet "PrepIP" ; 
    
-- They can be modified with other adverbs.

    -- AdvIAdv   : IAdv -> Adv -> IAdv ;    -- where in Paris
  AdvIAdv = notYet "AdvIAdv" ; 
    
-- Interrogative complements to copulas can be both adverbs and
-- pronouns.

    -- CompIAdv  : IAdv -> IComp ;          -- where (is it)
  CompIAdv = notYet "CompIAdv" ; 
    -- CompIP    : IP   -> IComp ;          -- who (is it)
  CompIP = notYet "CompIP" ; 
    
-- More $IP$, $IDet$, and $IAdv$ are defined in $Structural$.

-- Wh questions with two or more question words require a new, special category.

  lincat 
    QVP = SS ;          -- buy what where
  lin
    -- ComplSlashIP  : VPSlash -> IP -> QVP ;   -- buys what
  ComplSlashIP = notYet "ComplSlashIP" ; 
    -- AdvQVP        : VP  ->   IAdv -> QVP ;   -- lives where
  AdvQVP = notYet "AdvQVP" ; 
    -- AddAdvQVP     : QVP ->   IAdv -> QVP ;   -- buys what where 
  AddAdvQVP = notYet "AddAdvQVP" ; 
    
    -- QuestQVP      : IP -> QVP -> QCl ;       -- who buys what where
  QuestQVP = notYet "QuestQVP" ; 
}

--1 Idiom: Idiomatic Expressions

concrete IdiomXXX of Idiom = CatXXX ** open Prelude in {

-- This module defines constructions that are formed in fixed ways,
-- often different even in closely related languages.

  lin 

    -- ImpersCl  : VP -> Cl ;        -- it is hot
  ImpersCl = notYet "ImpersCl" ; 
    -- GenericCl : VP -> Cl ;        -- one sleeps
  GenericCl = notYet "GenericCl" ; 
    
    -- CleftNP   : NP  -> RS -> Cl ; -- it is I who did it
  CleftNP = notYet "CleftNP" ;  
    -- CleftAdv  : Adv -> S  -> Cl ; -- it is here she slept
  CleftAdv = notYet "CleftAdv" ; 
    
    -- ExistNP   : NP -> Cl ;        -- there is a house
  ExistNP = notYet "ExistNP" ; 
    -- ExistIP   : IP -> QCl ;       -- which houses are there
  ExistIP = notYet "ExistIP" ; 
    
-- 7/12/2012 generalizations of these

    -- ExistNPAdv : NP -> Adv -> Cl ;    -- there is a house in Paris
  ExistNPAdv = notYet "ExistNPAdv" ; 
    -- ExistIPAdv : IP -> Adv -> QCl ;   -- which houses are there in Paris
  ExistIPAdv = notYet "ExistIPAdv" ; 
    
    -- ProgrVP   : VP -> VP ;        -- be sleeping
  ProgrVP = notYet "ProgrVP" ; 
    
    -- ImpPl1    : VP -> Utt ;       -- let's go
  ImpPl1 = notYet "ImpPl1" ; 
    
    -- ImpP3     : NP -> VP -> Utt ; -- let John walk
  ImpP3 = notYet "ImpP3" ; 
    
-- 3/12/2013 non-reflexive uses of "self"

    -- SelfAdvVP : VP -> VP ;        -- is at home himself
    SelfAdvVP = id SS;
    -- SelfAdVVP : VP -> VP ;        -- is himself at home
  SelfAdVVP = notYet "SelfAdVVP" ; 
    -- SelfNP    : NP -> NP ;        -- the president himself (is at home)
  SelfNP = notYet "SelfNP" ; 

}

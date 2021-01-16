--1 Conjunction: Coordination

-- Coordination is defined for many different categories; here is
-- a sample. The rules apply to *lists* of two or more elements,
-- and define two general patterns: 
-- - ordinary conjunction: X,...X and X
-- - distributed conjunction: both X,...,X and X
--
--
-- $VP$ conjunctions are not covered here, because their applicability
-- depends on language. Some special cases are defined in 
-- [``Extra`` ../abstract/Extra.gf].

concrete ConjunctionXXX of Conjunction = CatXXX ** open Prelude in {

--2 Rules

  lin
    
    -- ConjS    : Conj -> ListS -> S ;       -- he walks and she runs
  ConjS = notYet "ConjS" ; 
    -- ConjRS   : Conj -> ListRS -> RS ;     -- who walks and whose mother runs
  ConjRS = notYet "ConjRS" ; 
    -- ConjAP   : Conj -> ListAP -> AP ;     -- cold and warm
  ConjAP = notYet "ConjAP" ; 
    -- ConjNP   : Conj -> ListNP -> NP ;     -- she or we
  ConjNP = notYet "ConjNP" ; 
    -- ConjAdv  : Conj -> ListAdv -> Adv ;   -- here or there
  ConjAdv = notYet "ConjAdv" ; 
    -- ConjAdV  : Conj -> ListAdV -> AdV ;   -- always or sometimes
  ConjAdV = notYet "ConjAdV" ; 
    -- ConjIAdv : Conj -> ListIAdv -> IAdv ; -- where and with whom
  ConjIAdv = notYet "ConjIAdv" ; 
    -- ConjCN   : Conj -> ListCN -> CN ;     -- man and woman
  ConjCN = notYet "ConjCN" ; 
    -- ConjDet  : Conj -> ListDAP -> Det ;   -- his or her
  ConjDet = notYet "ConjDet" ; 

--2 Categories

-- These categories are only used in this module.

  lincat
    [S] = SS ; 
    [RS] = SS ; 
    [Adv] = SS ;
    [AdV] = SS ;
    [NP] = SS ; 
    [AP] = SS ;
    [IAdv] = SS ;
    [CN] = SS ;
    [DAP] = SS ;

--2 List constructors

-- The list constructors are derived from the list notation and therefore
-- not given explicitly. But here are their type signatures:
{-
-- overview
    BaseC : C -> C   -> [C] ;  --- for C = AdV, Adv, AP, CN, Det, IAdv, NP, RS, S
    ConsC : C -> [C] -> [C] ;  --- for C = AdV, Adv, AP, CN, Det, IAdv, NP, RS, S
-}
-- complete list

  lin
    -- BaseAP : AP -> AP -> ListAP ;       -- red, white
  BaseDAP = notYet "BaseDAP" ; 
    -- ConsAP : AP -> ListAP -> ListAP ;   -- red, white, blue
  ConsDAP = notYet "ConsDAP" ; 
    
    -- BaseAP : AP -> AP -> ListAP ;       -- red, white
  BaseAP = notYet "BaseAP" ; 
    -- ConsAP : AP -> ListAP -> ListAP ;   -- red, white, blue
  ConsAP = notYet "ConsAP" ; 
    
    -- BaseAdV : AdV -> AdV -> ListAdV ;     -- always, sometimes
  BaseAdV = notYet "BaseAdV" ; 
    -- ConsAdV : AdV -> ListAdV -> ListAdV ; -- always, sometimes, never
  ConsAdV = notYet "ConsAdV" ; 
    
    -- BaseAdv : Adv -> Adv -> ListAdv ;     -- here, there
  BaseAdv = notYet "BaseAdv" ; 
    -- ConsAdv : Adv -> ListAdv -> ListAdv ; -- here, there, everywhere
  ConsAdv = notYet "ConsAdv" ; 
    
    -- BaseCN : CN -> CN -> ListCN ;      -- man, woman
  BaseCN = notYet "BaseCN" ; 
    -- ConsCN : CN -> ListCN -> ListCN ;  -- man, woman, child
  ConsCN = notYet "ConsCN" ; 

    -- BaseIAdv : IAdv -> IAdv -> ListIAdv ;     -- where, when
  BaseIAdv = notYet "BaseIAdv" ; 
    -- ConsIAdv : IAdv -> ListIAdv -> ListIAdv ; -- where, when, why
  ConsIAdv = notYet "ConsIAdv" ; 
    
    -- BaseNP : NP -> NP -> ListNP ;      -- John, Mary
  BaseNP = notYet "BaseNP" ; 
    -- ConsNP : NP -> ListNP -> ListNP ;  -- John, Mary, Bill
  ConsNP = notYet "ConsNP" ; 
    
    -- BaseRS : RS -> RS -> ListRS ;       -- who walks, whom I know
  BaseRS = notYet "BaseRS" ; 
    -- ConsRS : RS -> ListRS -> ListRS ;   -- who wals, whom I know, who is here
  ConsRS = notYet "ConsRS" ; 

    -- BaseS : S -> S -> ListS ;      -- John walks, Mary runs
  BaseS = notYet "BaseS" ; 
    -- ConsS : S -> ListS -> ListS ;  -- John walks, Mary runs, Bill swims
  ConsS = notYet "ConsS" ; 
}


--1 Symbolic expressions

-- *Note*. This module is not automatically included in the main
-- grammar [Lang Lang.html].

concrete SymbolXXX of Symbol = CatXXX, PredefAbs, Prelude ** {

--2 Noun phrases with symbols and numbers

  lin

    -- SymbPN   : Symb -> PN ;                -- x
  SymbPN = notYet "SymbPN" ; 
    -- IntPN    : Int -> PN ;                 -- 27
  IntPN = notYet "IntPN" ; 
    -- FloatPN  : Float -> PN ;               -- 3.14159
  FloatPN = notYet "FloatPN" ; 
    -- NumPN    : Card -> PN ;                -- twelve [as proper name]
  NumPN = notYet "NumPN" ; 
    -- CNNumNP  : CN -> Card -> NP ;          -- level five ; level 5
  CNNumNP = notYet "CNNumNP" ; 
    -- CNSymbNP : Det -> CN -> [Symb] -> NP ; -- (the) (2) numbers x and y
  CNSymbNP = notYet "CNSymbNP" ; 

--2 Sentence consisting of a formula

    -- SymbS    : Symb -> S ;                 -- A
  SymbS = notYet "SymbS" ; 
--2 Symbols as numerals

    -- SymbNum  : Symb -> Card ;              -- n
  SymbNum = notYet "SymbNum" ; 
    -- SymbOrd  : Symb -> Ord ;               -- n'th
  SymbOrd = notYet "SymbOrd" ; 
    
--2 Symbol lists

-- A symbol list has at least two elements. The last two are separated
-- by a conjunction ("and" in English), the others by commas.
-- This produces "x, y and z", in English. 

  lincat
    Symb = SS;
    [Symb] = SS;

  lin
    -- MkSymb : String -> Symb ;     -- foo [making a symbol from a string]
  MkSymb = notYet "MkSymb" ; 

    -- BaseSymb : Symb -> Symb -> ListSymb ;
  BaseSymb = notYet "BaseSymb" ; 
    -- ConsSymb : Symb -> ListSymb -> ListSynm
  ConsSymb = notYet "ConsSymb" ; 
    
--2 Obsolescent
    
    -- CNIntNP  : CN -> Int -> NP ;           -- level 53 (covered by CNNumNP)
  CNIntNP = notYet "CNIntNP" ; 
}

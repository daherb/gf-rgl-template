--1 Numerals

-- This grammar defines numerals from 1 to 999999. 
-- The implementations are adapted from the
-- [numerals library http://www.cs.chalmers.se/~aarne/GF/examples/numerals/] 
-- which defines numerals for 88 languages.
-- The resource grammar implementations add to this inflection (if needed)
-- and ordinal numbers.
--
-- *Note* 1. Number 1 as defined 
-- in the category $Numeral$ here should not be used in the formation of
-- noun phrases, and should therefore be removed. Instead, one should use
-- [Structural Structural.html]$.one_Quant$. This makes the grammar simpler
-- because we can assume that numbers form plural noun phrases.
--
-- *Note* 2. The implementations introduce spaces between
-- parts of a numeral, which is often incorrect - more work on
-- (un)lexing is needed to solve this problem.

concrete NumeralXXX of Numeral = CatXXX [Numeral,Digits] ** open Prelude in {

  lincat 
    Digit = SS ;            -- 2..9
    Sub10 = SS ;            -- 1..9
    Sub100 = SS ;           -- 1..99
    Sub1000 = SS ;          -- 1..999
    Sub1000000 = SS;        -- 1..999999
    Sub1000000000 = SS ;    -- 1..999999999
    Sub1000000000000 = SS ; -- 1..999999999999
 

  lin
    -- num : Sub1000000 -> Numeral ; -- 123456 [coercion to top category]
    num = id SS ;
    
    -- n2, n3, n4, n5, n6, n7, n8, n9 : Digit ;
    n2 = ss "two" ;
    n3 = ss "three" ;
    n4 = ss "four" ;
    n5 = ss "five" ;
    n6 = ss "six" ;
    n7 = ss "seven" ;
    n8 = ss "eight" ;
    n9 = ss "nine" ;
    
    -- pot01 : Sub10 ;                               -- 1
    pot01 = ss "one" ;
    -- pot0 : Digit -> Sub10 ;                       -- d * 1
    pot0 = id SS ;
    -- pot110 : Sub100 ;                             -- 10
    pot110 = ss "ten" ;
    -- pot111 : Sub100 ;                             -- 11
    pot111 = ss "eleven" ;
    -- pot1to19 : Digit -> Sub100 ;                  -- 10 + d
    pot1to19 = id SS ;
    -- pot0as1 : Sub10 -> Sub100 ;                   -- coercion of 1..9
    pot0as1 = id SS ;
    -- pot1 : Digit -> Sub100 ;                      -- d * 10
    pot1 = id SS ;
    -- pot1plus : Digit -> Sub10 -> Sub100 ;         -- d * 10 + n
    pot1plus = cc2 ;
    -- pot1as2 : Sub100 -> Sub1000 ;                 -- coercion of 1..99
    pot1as2 = id SS ;
    -- pot21 : Sub1000 ;                             -- a hundred instead of one hundred
    pot21 = ss "a hundred" ;
    -- pot2 : Sub10 -> Sub1000 ;                     -- m * 100
    pot2 = id SS ;
    -- pot2plus : Sub10 -> Sub100 -> Sub1000 ;       -- m * 100 + n
    pot2plus = cc2 ;
    -- pot2as3 : Sub1000 -> Sub1000000 ;             -- coercion of 1..999
    pot2as3 = id SS ;
    -- pot31 : Sub1000000 ;                          -- a thousand instead of one thousand
    pot31 = ss "a thousand" ;
    -- pot3 : Sub1000 -> Sub1000000 ;                -- m * 1000
    pot3 = id SS ;
    -- pot3plus : Sub1000 -> Sub1000 -> Sub1000000 ; -- m * 1000 + n
    pot3plus = cc2 ;
    -- pot3as4 : Sub1000000 -> Sub1000000000 ;       -- coercion of 1..999999
    pot3as4 = id SS ;
    -- pot3decimal : Decimal -> Sub1000000 ;         -- 3.5 thousand
    pot3decimal = id SS ;

    -- pot41 : Sub1000000000 ;                                    -- a million instead of one million
    pot41 = ss "a million" ;
    -- pot4  : Sub1000 -> Sub1000000000 ;                         -- m * 1000000000
    pot4 = id SS ;
    -- pot4plus : Sub1000 -> Sub1000000 -> Sub1000000000 ;        -- m * 1000000000 + n
    pot4plus = cc2;
    -- pot4as5 : Sub1000000000 -> Sub1000000000000 ;              -- coercion of 1..999999999
    pot4as5 = id SS ;
    -- pot4decimal : Decimal -> Sub1000000000 ;                   -- 3.5 million
    pot4decimal = id SS ;
    
    -- pot51 : Sub1000000000000 ;                                 -- a billion instead of one billion
    pot51 = ss "a billion" ;
    -- pot5  : Sub1000 -> Sub1000000000000 ;                      -- m * 1000000000
    pot5 = id SS ;
    -- pot5plus : Sub1000 -> Sub1000000000 -> Sub1000000000000 ;  -- m * 1000000000 + n
    pot5plus = cc2 ;
    -- pot5decimal : Decimal -> Sub1000000000000 ;                -- 3.5 billion
    pot5decimal = id SS ;

    
-- Numerals as sequences of digits have a separate, simpler grammar

  lincat
    Dig = SS;  -- single digit 0..9

  lin
    -- IDig  : Dig -> Digits ;       -- 8
    IDig = id SS ;
    -- IIDig : Dig -> Digits -> Digits ; -- 876
    IIDig = cc2 ;
    
    -- D_0, D_1, D_2, D_3, D_4, D_5, D_6, D_7, D_8, D_9 : Dig ;
    D_0 = ss "0" ;
    D_1 = ss "1" ;
    D_2 = ss "2" ;
    D_3 = ss "3" ;
    D_4 = ss "4" ;
    D_5 = ss "5" ;
    D_6 = ss "6" ;
    D_7 = ss "7" ;
    D_8 = ss "8" ;
    D_9 = ss "9" ;

    -- PosDecimal : Digits -> Decimal ;        --  8
    PosDecimal = id SS ;
    -- NegDecimal : Digits -> Decimal ;        -- -8
    NegDecimal = id SS ;
    -- IFrac : Decimal -> Dig -> Decimal ;     -- 3.14 -> 3.141
    IFrac = cc2 ;

}

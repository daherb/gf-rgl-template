concrete NamesXXX of Names = CatXXX ** open Prelude in {

  lin
    -- GivenName : GN -> NP ;
    GivenName = id SS ;
    -- MaleSurname   : SN -> NP ;
    MaleSurname = id SS ;
    -- FemaleSurname : SN -> NP ;
    FemaleSurname = id SS;
    -- PlSurname     : SN -> NP ;
    PlSurname = id SS ;
    -- FullName  : GN -> SN -> NP ;
    FullName = cc2 ;

    -- UseLN : LN -> NP ;
    UseLN = id SS ;
    -- PlainLN : LN -> NP ;
    PlainLN = id SS ;
    -- InLN : LN -> Adv ;
    InLN = id SS ;
    -- AdjLN : AP -> LN -> LN ;
    AdjLN = cc2 ;

}

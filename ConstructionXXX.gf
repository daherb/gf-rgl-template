concrete ConstructionXXX of Construction = CatXXX ** open Prelude in {

-- started by AR 6/12/2013. (c) Aarne Ranta under LGPL and BSD

-- This module is, in the spirit of construction grammar, "between syntax and lexicon". 
-- So is the module Idiom, but the difference is that the constructions in Idiom 
-- apply to categories in a general way (e.g. existentials) whereas here they
-- are typically about particular predicates such as "NP is hungry" which are found
-- to work differently in different languages. The purpose of this module is hence
-- not so much to widen the scope of string recognition, but to provide trees that
-- are abstract enough to yield correct translations.


-- The first examples are from the MOLTO Phrasebook

  lin
    
    --     hungry_VP     : VP ;                 -- x is hungry / x a faim (Fre)
    hungry_VP = ss "hungry" ;
    --     thirsty_VP    : VP ;                 -- x is thirsty / x a soif (Fre)
    thirsty_VP = ss "thirsty" ;
    --     tired_VP      : VP ;                 -- x is tired / x estoy cansado (Spa)
    tired_VP = ss "tired" ;
    --     scared_VP     : VP ;                 -- x is scared
    scared_VP = ss "scared" ;
    --     ill_VP        : VP ;                 -- x is ill
    ill_VP = ss "ill" ;
    --     ready_VP      : VP ;                 -- x is ready
    ready_VP = ss "ready" ;
    --     has_age_VP    : Card -> VP ;         -- x is y years old / x a y ans (Fre)
    has_age_VP = id SS ;
    --     have_name_Cl  : NP -> NP -> Cl ;     -- x's name is y / x s'appelle y (Fre)
    have_name_Cl = cc2 ;
    --     married_Cl    : NP -> NP -> Cl ;     -- x is married to y / x on naimisissa y:n kanssa (Fin)
    married_Cl = cc2 ;
    --     what_name_QCl : NP -> QCl ;          -- what is x's name / wie heisst x (Ger)
    what_name_QCl = id SS ;
    --     how_old_QCl   : NP -> QCl ;          -- how old is x / quanti anni ha x (Ita)
    how_old_QCl = id SS ;
    --     how_far_QCl   : NP -> QCl ;          -- how far is x / quanto dista x (Ita)
    how_far_QCl = id SS ;
    
-- -- some more things
    
    --     weather_adjCl : AP -> Cl ;           -- it is warm / il fait chaud (Fre)
    weather_adjCl = id SS ;
    --     is_right_VP   : VP ;                 -- he is right / il a raison (Fre)
    is_right_VP = ss "is right" ;
--     is_wrong_VP   : VP ;                 -- he is wrong / han har fel (Swe)
    is_wrong_VP = ss "is wrong" ;
    
    --     n_units_AP    : Card -> CN -> A  -> AP ;  -- x inches long
    n_units_AP = cc3 ;
    --     n_units_of_NP : Card -> CN -> NP -> NP ;  -- x ounces of this flour
    n_units_of_NP = cc3 ;
    --     n_unit_CN     : Card -> CN -> CN -> CN ;  -- x gallon bottle
    n_unit_CN = cc3 ;
    
-- -- containers
    --     bottle_of_CN : NP -> CN ;       --- bottle of beer / flaska öl (Swe)
    bottle_of_CN = id SS ;
    --     cup_of_CN    : NP -> CN ;       --- cup of tea / kupillinen teetä (Fin)
    cup_of_CN = id SS ;
--     glass_of_CN  : NP -> CN ;       --- glass of wine / lasillinen viiniä (Fin)
    glass_of_CN = id SS ;
    
-- -- idiomatic expressions
    --     few_X_short_of_Y : NP -> CN -> CN -> S ; --- NP is a few X's short of a Y / NP:llä ei ole kaikki X:t Y:ssä (Fin)
    few_X_short_of_Y = cc3 ;

{- 
---- postponed  
-- spatial deixis and motion verbs
-- verbs like `walk' or `run' can take both: there or to there

  where_go_QCl   : NP -> QCl ;      --- where did X go / vart gick X (Swe)
  where_come_from_QCl : NP -> QCl ; --- where did X come from / mistä X tuli (Fin)
  
  go_here_VP   : VP ;      --- X went here / X gick hit (Swe)
  come_here_VP : VP ;      --- X came here / X tuli tänne (Fin)
  come_from_here_VP : VP ; --- X came from here / X tuli täältä (Fin)

  go_there_VP   : VP ;      --- X went here / X gick dit (Swe)
  come_there_VP : VP ;      --- X came there / X tuli sinne (Fin)
  come_from_there_VP : VP ; --- X came from there / X tuli sieltä (Fin)

-}

-- time expressions

  lincat
    
    Timeunit = SS;
    Hour = SS;
    Weekday = SS;
    Month = SS ;
    Monthday = SS;
    Year = SS;

  lin
    
    -- timeunitAdv   : Card -> Timeunit -> Adv ; -- (for) three hours
    timeunitAdv = cc2 ;
    -- timeunitRange : Card -> Card -> Timeunit -> Adv ; -- (cats live) ten to twenty years
    timeunitRange = cc3 ;
    
    -- oneHour : Hour ;
    oneHour = ss "one" ;
    -- twoHour : Hour ;
    twoHour = ss "two" ;
    -- threeHour : Hour ;
    threeHour = ss "three" ;
      -- fourHour : Hour ;
    fourHour = ss "four" ;
    -- fiveHour : Hour ;
    fiveHour = ss "five" ;
    -- sixHour : Hour ;
    sixHour = ss "six" ;
    -- sevenHour : Hour ;
    sevenHour = ss "seven" ;
    -- eightHour : Hour ;
    eightHour = ss "eight" ;
    -- nineHour : Hour ;
    nineHour = ss "nine" ;
    -- tenHour : Hour ;
    tenHour = ss "ten" ;
    -- elevenHour : Hour ;
    elevenHour = ss "eleven" ;
    -- twelveHour : Hour ;
    twelveHour = ss "twelve" ;
    -- thirteenHour : Hour ;
    thirteenHour = ss "one" ;
    -- fourteenHour : Hour ;
    fourteenHour = ss "two" ;
    -- fifteenHour : Hour ;
    fifteenHour = ss "three" ;
    -- sixteenHour : Hour ;
    sixteenHour = ss "four" ;
    -- seventeenHour : Hour ;
    seventeenHour = ss "five" ;
    -- eighteenHour : Hour ;
    eighteenHour = ss "six" ;
    -- nineteenHour : Hour ;
    nineteenHour = ss "seven" ;
    -- twentyHour : Hour ;
    twentyHour = ss "eight" ;
    -- twentyOneHour : Hour ;
    twentyOneHour = ss "nine" ;
    -- twentyTwoHour : Hour ;
    twentyTwoHour = ss "ten" ;
    -- twentyThreeHour : Hour ;
    twentyThreeHour = ss "eleven" ;
    -- twentyFourHour : Hour ;
    twentyFourHour = ss "twelve" ;
    
    -- timeHour : Hour -> Adv ; -- at three a.m./p.m.
    timeHour = id SS ;
    -- timeHourMinute : Hour -> Card -> Adv ; -- at six forty a.m./p.m.
    timeHourMinute = cc2 ;
    
    -- weekdayPunctualAdv : Weekday -> Adv ;  -- on Monday
    weekdayPunctualAdv = id SS ;
    -- weekdayHabitualAdv : Weekday -> Adv ;  -- on Mondays
    weekdayHabitualAdv = id SS ;
    -- weekdayLastAdv : Weekday -> Adv ;      -- last Monday
    weekdayLastAdv = id SS ;
    -- weekdayNextAdv : Weekday -> Adv ;      -- next Monday
    weekdayNextAdv = id SS ;
    
    -- monthAdv        : Month -> Adv ;                        -- in June
    monthAdv = id SS ;
    -- yearAdv         : Year -> Adv ;                         -- in 1976
    yearAdv = id SS ;
    -- dayMonthAdv     : Monthday -> Month -> Adv ;            -- on 17 May
    dayMonthAdv = cc2 ;
    -- monthYearAdv    : Month -> Year -> Adv ;                -- in May 2013
    monthYearAdv = cc2 ;
    -- dayMonthYearAdv : Monthday -> Month -> Year -> Adv ;    -- on 17 May 2013
    dayMonthYearAdv = cc3 ;
    
    -- intYear     : Int -> Year ;  -- (year) 1963
    intYear = id SS ;
    -- intMonthday : Int -> Monthday ; -- 31th (March)
    intMonthday = id SS ;
    
    
-- languages

  lincat
    
    Language = SS;

  lin
    
    -- InLanguage : Language -> Adv ; -- in English, auf englisch, englanniksi, etc
    InLanguage = id SS ;
    
-- coercions to RGL categories

    -- weekdayN   : Weekday -> N ; -- (this) Monday
    weekdayN = id SS ;
  -- monthN     : Month -> N ;   -- (this) November
    monthN = id SS ;
    -- weekdayPN  : Weekday -> PN ; -- Monday (is free)
    weekdayPN = id SS ;
  -- monthPN    : Month -> PN ;   -- March (is cold)
    monthPN = id SS ;
    
    -- languageNP : Language -> NP ;  -- French (is easy)
    languageNP = id SS ;
    -- languageCN : Language -> CN ;  -- (my) French
    languageCN = id SS ;

----------------------------------------------
---- lexicon of special names

    -- second_Timeunit : Timeunit ;
    second_Timeunit = ss "second" ;
    -- minute_Timeunit : Timeunit ;
    minute_Timeunit = ss "Timeunit" ;
    -- hour_Timeunit : Timeunit ;
    hour_Timeunit = ss "hour"; 
    -- day_Timeunit : Timeunit ;
    day_Timeunit = ss "day" ;
    -- week_Timeunit : Timeunit ;
    week_Timeunit = ss "week" ;
    -- month_Timeunit : Timeunit ;
    month_Timeunit = ss "month" ;
    -- year_Timeunit : Timeunit ;
    year_Timeunit = ss "year" ;

    -- monday_Weekday : Weekday ;
    monday_Weekday = ss "Monday" ;
    -- tuesday_Weekday : Weekday ;
    tuesday_Weekday = ss "Tuesday" ;
    -- wednesday_Weekday : Weekday ;
    wednesday_Weekday = ss "Wednesday" ;
    -- thursday_Weekday : Weekday ;
    thursday_Weekday = ss "Thursday" ;
    -- friday_Weekday : Weekday ;
    friday_Weekday = ss "Friday" ;
    -- saturday_Weekday : Weekday ;
    saturday_Weekday = ss "Saturday" ;
    -- sunday_Weekday : Weekday ;
    sunday_Weekday = ss "Sunday" ;

    -- january_Month : Month ;
    january_Month = ss "January" ;
    -- february_Month : Month ;
    february_Month = ss "February" ;
    -- march_Month : Month ;
    march_Month = ss "March" ;
    -- april_Month : Month ;
    april_Month = ss "April" ;
    -- may_Month : Month ;
    may_Month = ss "May" ;
    -- june_Month : Month ;
    june_Month = ss "June" ;
    -- july_Month : Month ;
    july_Month = ss "July" ;
    -- august_Month : Month ;
    august_Month = ss "August" ;
    -- september_Month : Month ;
    september_Month = ss "September" ;
    -- october_Month : Month ;
    october_Month = ss "October" ;
    -- november_Month : Month ;
    november_Month = ss "November" ;
    -- december_Month : Month ;
    december_Month = ss "December" ;


    -- afrikaans_Language : Language ;
    afrikaans_Language = ss "Afrikaans" ;
    -- amharic_Language : Language ;
    amharic_Language = ss "Amharic" ;
    -- arabic_Language : Language ;
    arabic_Language = ss "Arabic" ;
    -- bulgarian_Language : Language ;
    bulgarian_Language = ss "Bulgarian" ;
    -- catalan_Language : Language ;
    catalan_Language = ss "Catalan" ;
    -- chinese_Language : Language ;
    chinese_Language = ss "Chinese" ;
    -- danish_Language : Language ;
    danish_Language = ss "Danish" ;
    -- dutch_Language : Language ;
    dutch_Language = ss "Dutch" ;
    -- english_Language : Language ;
    english_Language = ss "English" ;
    -- estonian_Language : Language ;
    estonian_Language = ss "Estonian" ;
    -- finnish_Language : Language ;
    finnish_Language = ss "Finnish" ;
    -- french_Language : Language ;
    french_Language = ss "Frenche" ;
    -- german_Language : Language ;
    german_Language = ss "German" ;
    -- greek_Language : Language ;
    greek_Language = ss "Greek" ;
    -- hebrew_Language : Language ;
    hebrew_Language = ss "Hebrew" ;
    -- hindi_Language : Language ;
    hindi_Language = ss "Hindi" ;
    -- japanese_Language : Language ;
    japanese_Language = ss "Japanese" ;
    -- italian_Language : Language ;
    italian_Language = ss "Italian" ;
    -- latin_Language : Language ;
    latin_Language = ss "Latin" ;
    -- latvian_Language : Language ;
    latvian_Language = ss "Latvian" ;
    -- maltese_Language : Language ;
    maltese_Language = ss "Maltese" ;
    -- nepali_Language : Language ;
    nepali_Language = ss "Nepali" ;
    -- norwegian_Language : Language ;
    norwegian_Language = ss "Norwegian" ;
    -- persian_Language : Language ;
    persian_Language = ss "Persian" ;
    -- polish_Language : Language ;
    polish_Language = ss "Polish" ;
    -- punjabi_Language : Language ;
    punjabi_Language = ss "Punjabi" ;
    -- romanian_Language : Language ;
    romanian_Language = ss "Romanian" ;
    -- russian_Language : Language ;
    russian_Language = ss "Russian" ;
    -- sindhi_Language : Language ;
    sindhi_Language = ss "Sindhi" ;
    -- spanish_Language : Language ;
    spanish_Language = ss "Spanish" ;
    -- swahili_Language : Language ;
    swahili_Language = ss "Swahili" ;
    -- swedish_Language : Language ;
    swedish_Language = ss "Swedish" ;
    -- thai_Language : Language ;
    thai_Language = ss "Thai" ;
    -- turkish_Language : Language ;
    turkish_Language = ss "Turkish" ;
    -- urdu_Language : Language ;
    urdu_Language = ss "Urdu" ;
   
}

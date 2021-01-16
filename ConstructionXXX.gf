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
  hungry_VP = notYet "hungry_VP" ; 
    --     thirsty_VP    : VP ;                 -- x is thirsty / x a soif (Fre)
  thirsty_VP = notYet "thirsty_VP" ; 
    --     tired_VP      : VP ;                 -- x is tired / x estoy cansado (Spa)
  tired_VP = notYet "tired_VP" ; 
    --     scared_VP     : VP ;                 -- x is scared
  scared_VP = notYet "scared_VP" ; 
    --     ill_VP        : VP ;                 -- x is ill
  ill_VP = notYet "ill_VP" ; 
    --     ready_VP      : VP ;                 -- x is ready
  ready_VP = notYet "ready_VP" ; 
    --     has_age_VP    : Card -> VP ;         -- x is y years old / x a y ans (Fre)
  has_age_VP = notYet "has_age_VP" ; 
    --     have_name_Cl  : NP -> NP -> Cl ;     -- x's name is y / x s'appelle y (Fre)
  have_name_Cl = notYet "have_name_Cl" ; 
    --     married_Cl    : NP -> NP -> Cl ;     -- x is married to y / x on naimisissa y:n kanssa (Fin)
  married_Cl = notYet "married_Cl" ; 
    --     what_name_QCl : NP -> QCl ;          -- what is x's name / wie heisst x (Ger)
  what_name_QCl = notYet "what_name_QCl" ; 
    --     how_old_QCl   : NP -> QCl ;          -- how old is x / quanti anni ha x (Ita)
  how_old_QCl = notYet "how_old_QCl" ; 
    --     how_far_QCl   : NP -> QCl ;          -- how far is x / quanto dista x (Ita)
  how_far_QCl = notYet "how_far_QCl" ; 
    
-- -- some more things
    
    --     weather_adjCl : AP -> Cl ;           -- it is warm / il fait chaud (Fre)
  weather_adjCl = notYet "weather_adjCl" ; 
    --     is_right_VP   : VP ;                 -- he is right / il a raison (Fre)
  is_right_VP = notYet "is_right_VP" ; 
--     is_wrong_VP   : VP ;                 -- he is wrong / han har fel (Swe)
  is_wrong_VP = notYet "is_wrong_VP" ; 
    
    --     n_units_AP    : Card -> CN -> A  -> AP ;  -- x inches long
  n_units_AP = notYet "n_units_AP" ; 
    --     n_units_of_NP : Card -> CN -> NP -> NP ;  -- x ounces of this flour
  n_units_of_NP = notYet "n_units_of_NP" ; 
    --     n_unit_CN     : Card -> CN -> CN -> CN ;  -- x gallon bottle
  n_unit_CN = notYet "n_unit_CN" ; 
    
-- -- containers
    --     bottle_of_CN : NP -> CN ;       --- bottle of beer / flaska öl (Swe)
  bottle_of_CN = notYet "bottle_of_CN" ; 
    --     cup_of_CN    : NP -> CN ;       --- cup of tea / kupillinen teetä (Fin)
  cup_of_CN = notYet "cup_of_CN" ; 
--     glass_of_CN  : NP -> CN ;       --- glass of wine / lasillinen viiniä (Fin)
  glass_of_CN = notYet "glass_of_CN" ; 
    
-- -- idiomatic expressions
    --     few_X_short_of_Y : NP -> CN -> CN -> S ; --- NP is a few X's short of a Y / NP:llä ei ole kaikki X:t Y:ssä (Fin)
  few_X_short_of_Y = notYet "few_X_short_of_Y" ; 

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
  timeunitAdv = notYet "timeunitAdv" ; 
    -- timeunitRange : Card -> Card -> Timeunit -> Adv ; -- (cats live) ten to twenty years
  timeunitRange = notYet "timeunitRange" ; 
    
    -- oneHour : Hour ;
  oneHour = notYet "oneHour" ; 
    -- twoHour : Hour ;
  twoHour = notYet "twoHour" ; 
    -- threeHour : Hour ;
  threeHour = notYet "threeHour" ; 
      -- fourHour : Hour ;
  fourHour = notYet "fourHour" ; 
    -- fiveHour : Hour ;
  fiveHour = notYet "fiveHour" ; 
    -- sixHour : Hour ;
  sixHour = notYet "sixHour" ; 
    -- sevenHour : Hour ;
  sevenHour = notYet "sevenHour" ; 
    -- eightHour : Hour ;
  eightHour = notYet "eightHour" ; 
    -- nineHour : Hour ;
  nineHour = notYet "nineHour" ; 
    -- tenHour : Hour ;
  tenHour = notYet "tenHour" ; 
    -- elevenHour : Hour ;
  elevenHour = notYet "elevenHour" ; 
    -- twelveHour : Hour ;
  twelveHour = notYet "twelveHour" ; 
    -- thirteenHour : Hour ;
  thirteenHour = notYet "thirteenHour" ; 
    -- fourteenHour : Hour ;
  fourteenHour = notYet "fourteenHour" ; 
    -- fifteenHour : Hour ;
  fifteenHour = notYet "fifteenHour" ; 
    -- sixteenHour : Hour ;
  sixteenHour = notYet "sixteenHour" ; 
    -- seventeenHour : Hour ;
  seventeenHour = notYet "seventeenHour" ; 
    -- eighteenHour : Hour ;
  eighteenHour = notYet "eighteenHour" ; 
    -- nineteenHour : Hour ;
  nineteenHour = notYet "nineteenHour" ; 
    -- twentyHour : Hour ;
  twentyHour = notYet "twentyHour" ; 
    -- twentyOneHour : Hour ;
  twentyOneHour = notYet "twentyOneHour" ; 
    -- twentyTwoHour : Hour ;
  twentyTwoHour = notYet "twentyTwoHour" ; 
    -- twentyThreeHour : Hour ;
  twentyThreeHour = notYet "twentyThreeHour" ; 
    -- twentyFourHour : Hour ;
  twentyFourHour = notYet "twentyFourHour" ; 
    
    -- timeHour : Hour -> Adv ; -- at three a.m./p.m.
  timeHour = notYet "timeHour" ; 
    -- timeHourMinute : Hour -> Card -> Adv ; -- at six forty a.m./p.m.
  timeHourMinute = notYet "timeHourMinute" ; 
    
    -- weekdayPunctualAdv : Weekday -> Adv ;  -- on Monday
  weekdayPunctualAdv = notYet "weekdayPunctualAdv" ; 
    -- weekdayHabitualAdv : Weekday -> Adv ;  -- on Mondays
  weekdayHabitualAdv = notYet "weekdayHabitualAdv" ; 
    -- weekdayLastAdv : Weekday -> Adv ;      -- last Monday
  weekdayLastAdv = notYet "weekdayLastAdv" ; 
    -- weekdayNextAdv : Weekday -> Adv ;      -- next Monday
  weekdayNextAdv = notYet "weekdayNextAdv" ; 
    
    -- monthAdv        : Month -> Adv ;                        -- in June
  monthAdv = notYet "monthAdv" ; 
    -- yearAdv         : Year -> Adv ;                         -- in 1976
  yearAdv = notYet "yearAdv" ; 
    -- dayMonthAdv     : Monthday -> Month -> Adv ;            -- on 17 May
  dayMonthAdv = notYet "dayMonthAdv" ; 
    -- monthYearAdv    : Month -> Year -> Adv ;                -- in May 2013
  monthYearAdv = notYet "monthYearAdv" ; 
    -- dayMonthYearAdv : Monthday -> Month -> Year -> Adv ;    -- on 17 May 2013
  dayMonthYearAdv = notYet "dayMonthYearAdv" ; 
    
    -- intYear     : Int -> Year ;  -- (year) 1963
  intYear = notYet "intYear" ; 
    -- intMonthday : Int -> Monthday ; -- 31th (March)
  intMonthday = notYet "intMonthday" ; 
    
    
-- languages

  lincat
    
    Language = SS;

  lin
    
    -- InLanguage : Language -> Adv ; -- in English, auf englisch, englanniksi, etc
  InLanguage = notYet "InLanguage" ; 
    
-- coercions to RGL categories

    -- weekdayN   : Weekday -> N ; -- (this) Monday
  weekdayN = notYet "weekdayN" ; 
  -- monthN     : Month -> N ;   -- (this) November
  monthN = notYet "monthN" ; 
    -- weekdayPN  : Weekday -> PN ; -- Monday (is free)
  weekdayPN = notYet "weekdayPN" ; 
  -- monthPN    : Month -> PN ;   -- March (is cold)
  monthPN = notYet "monthPN" ; 
    
    -- languageNP : Language -> NP ;  -- French (is easy)
  languageNP = notYet "languageNP" ; 
    -- languageCN : Language -> CN ;  -- (my) French
  languageCN = notYet "languageCN" ; 

----------------------------------------------
---- lexicon of special names

    -- second_Timeunit : Timeunit ;
  second_Timeunit = notYet "second_Timeunit" ; 
    -- minute_Timeunit : Timeunit ;
  minute_Timeunit = notYet "minute_Timeunit" ; 
    -- hour_Timeunit : Timeunit ;
    hour_Timeunit = ss "hour"; 
    -- day_Timeunit : Timeunit ;
  day_Timeunit = notYet "day_Timeunit" ; 
    -- week_Timeunit : Timeunit ;
  week_Timeunit = notYet "week_Timeunit" ; 
    -- month_Timeunit : Timeunit ;
  month_Timeunit = notYet "month_Timeunit" ; 
    -- year_Timeunit : Timeunit ;
  year_Timeunit = notYet "year_Timeunit" ; 

    -- monday_Weekday : Weekday ;
  monday_Weekday = notYet "monday_Weekday" ; 
    -- tuesday_Weekday : Weekday ;
  tuesday_Weekday = notYet "tuesday_Weekday" ; 
    -- wednesday_Weekday : Weekday ;
  wednesday_Weekday = notYet "wednesday_Weekday" ; 
    -- thursday_Weekday : Weekday ;
  thursday_Weekday = notYet "thursday_Weekday" ; 
    -- friday_Weekday : Weekday ;
  friday_Weekday = notYet "friday_Weekday" ; 
    -- saturday_Weekday : Weekday ;
  saturday_Weekday = notYet "saturday_Weekday" ; 
    -- sunday_Weekday : Weekday ;
  sunday_Weekday = notYet "sunday_Weekday" ; 

    -- january_Month : Month ;
  january_Month = notYet "january_Month" ; 
    -- february_Month : Month ;
  february_Month = notYet "february_Month" ; 
    -- march_Month : Month ;
  march_Month = notYet "march_Month" ; 
    -- april_Month : Month ;
  april_Month = notYet "april_Month" ; 
    -- may_Month : Month ;
  may_Month = notYet "may_Month" ; 
    -- june_Month : Month ;
  june_Month = notYet "june_Month" ; 
    -- july_Month : Month ;
  july_Month = notYet "july_Month" ; 
    -- august_Month : Month ;
  august_Month = notYet "august_Month" ; 
    -- september_Month : Month ;
  september_Month = notYet "september_Month" ; 
    -- october_Month : Month ;
  october_Month = notYet "october_Month" ; 
    -- november_Month : Month ;
  november_Month = notYet "november_Month" ; 
    -- december_Month : Month ;
  december_Month = notYet "december_Month" ; 


    -- afrikaans_Language : Language ;
  afrikaans_Language = notYet "afrikaans_Language" ; 
    -- amharic_Language : Language ;
  amharic_Language = notYet "amharic_Language" ; 
    -- arabic_Language : Language ;
  arabic_Language = notYet "arabic_Language" ; 
    -- bulgarian_Language : Language ;
  bulgarian_Language = notYet "bulgarian_Language" ; 
    -- catalan_Language : Language ;
  catalan_Language = notYet "catalan_Language" ; 
    -- chinese_Language : Language ;
  chinese_Language = notYet "chinese_Language" ; 
    -- danish_Language : Language ;
  danish_Language = notYet "danish_Language" ; 
    -- dutch_Language : Language ;
  dutch_Language = notYet "dutch_Language" ; 
    -- english_Language : Language ;
  english_Language = notYet "english_Language" ; 
    -- estonian_Language : Language ;
  estonian_Language = notYet "estonian_Language" ; 
    -- finnish_Language : Language ;
  finnish_Language = notYet "finnish_Language" ; 
    -- french_Language : Language ;
  french_Language = notYet "french_Language" ; 
    -- german_Language : Language ;
  german_Language = notYet "german_Language" ; 
    -- greek_Language : Language ;
  greek_Language = notYet "greek_Language" ; 
    -- hebrew_Language : Language ;
  hebrew_Language = notYet "hebrew_Language" ; 
    -- hindi_Language : Language ;
  hindi_Language = notYet "hindi_Language" ; 
    -- japanese_Language : Language ;
  japanese_Language = notYet "japanese_Language" ; 
    -- italian_Language : Language ;
  italian_Language = notYet "italian_Language" ; 
    -- latin_Language : Language ;
  latin_Language = notYet "latin_Language" ; 
    -- latvian_Language : Language ;
  latvian_Language = notYet "latvian_Language" ; 
    -- maltese_Language : Language ;
  maltese_Language = notYet "maltese_Language" ; 
    -- nepali_Language : Language ;
  nepali_Language = notYet "nepali_Language" ; 
    -- norwegian_Language : Language ;
  norwegian_Language = notYet "norwegian_Language" ; 
    -- persian_Language : Language ;
  persian_Language = notYet "persian_Language" ; 
    -- polish_Language : Language ;
  polish_Language = notYet "polish_Language" ; 
    -- punjabi_Language : Language ;
  punjabi_Language = notYet "punjabi_Language" ; 
    -- romanian_Language : Language ;
  romanian_Language = notYet "romanian_Language" ; 
    -- russian_Language : Language ;
  russian_Language = notYet "russian_Language" ; 
    -- sindhi_Language : Language ;
  sindhi_Language = notYet "sindhi_Language" ; 
    -- spanish_Language : Language ;
  spanish_Language = notYet "spanish_Language" ; 
    -- swahili_Language : Language ;
  swahili_Language = notYet "swahili_Language" ; 
    -- swedish_Language : Language ;
  swedish_Language = notYet "swedish_Language" ; 
    -- thai_Language : Language ;
  thai_Language = notYet "thai_Language" ; 
    -- turkish_Language : Language ;
  turkish_Language = notYet "turkish_Language" ; 
    -- urdu_Language : Language ;
  urdu_Language = notYet "urdu_Language" ; 
   
}

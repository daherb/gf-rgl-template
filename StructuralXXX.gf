--1 Structural: Structural Words
--
-- Here we have some words belonging to closed classes and appearing
-- in all languages we have considered.
-- Sometimes more distinctions are needed, e.g. $we_Pron$ in Spanish
-- should be replaced by masculine and feminine variants, found in
-- [``ExtendSpa`` ../spanish/ExtendSpa.gf].

concrete StructuralXXX of Structural = CatXXX ** open Prelude in {

  lin

-- This is an alphabetical list of structural words

    --   above_Prep : Prep ;
    above_Prep = ss "above" ;
    --   after_Prep : Prep ;
    after_Prep = ss "after" ;
    --   all_Predet : Predet ;
    all_Predet = ss "all" ;
    --   almost_AdA : AdA ;
    almost_AdA = ss "almost" ;
    --   almost_AdN : AdN ;
    almost_AdN = ss "almost" ;
    --   although_Subj : Subj ;
    although_Subj = ss "although" ;
    --   always_AdV : AdV ;
    always_AdV = ss "always" ;
    --   and_Conj : Conj ;
    and_Conj = ss "and" ;
    --   because_Subj : Subj ;
    because_Subj = ss "because" ;
    --   before_Prep : Prep ;
    before_Prep = ss "before" ;
    --   behind_Prep : Prep ;
    behind_Prep = ss "behind" ; 
    --   between_Prep : Prep ;
    between_Prep = ss "between" ;
    --   both7and_DConj : Conj ; -- both...and
    both7and_DConj = ss "both and" ;
  -- ---b  both7and_DConj : DConj ;
    --   but_PConj : PConj ;
    but_PConj = ss "but" ;
    --   by8agent_Prep : Prep ; -- by (agent)
    by8agent_Prep = ss "by" ;
    --   by8means_Prep : Prep ; -- by (means of)
    by8means_Prep = ss "by" ;
    --   can8know_VV : VV ; -- can (capacity)
    can8know_VV = ss "can" ;
    --   can_VV : VV ;      -- can (possibility)
    can_VV = ss "can" ;
    --   during_Prep : Prep ;
    during_Prep = ss "during" ;
    --   either7or_DConj : Conj ; -- either...or
    either7or_DConj = ss "either or" ;
  -- ---b  either7or_DConj : DConj ;
    --   every_Det : Det ;
    every_Det = ss "every" ;
    --   everybody_NP : NP ;  -- everybody
    everybody_NP = ss "everybody" ;
    --   everything_NP : NP ;
    everything_NP = ss "everything" ;
    --   everywhere_Adv : Adv ;
    everywhere_Adv = ss "everywhere" ;
  -- ---  first_Ord : Ord ; DEPRECATED
    --   few_Det : Det ;
    few_Det = ss "few" ;
    --   for_Prep : Prep ;
    for_Prep = ss "for" ;
    --   from_Prep : Prep ;
    from_Prep = ss "from" ;
    --   he_Pron : Pron ;
    he_Pron = ss "he" ;
    --   here_Adv : Adv ;
    here_Adv = ss "here" ;
    --   here7to_Adv : Adv ; -- to here
    here7to_Adv = ss "to here" ;
    --   here7from_Adv : Adv ;  -- from here
    here7from_Adv = ss "from here" ;
    --   how_IAdv : IAdv ;
    how_IAdv = ss "how" ;
    --   how8many_IDet : IDet ;
    how8many_IDet = ss "how many" ;
    --   how8much_IAdv : IAdv ;
    how8much_IAdv = ss "how much" ;
    --   i_Pron : Pron ;
    i_Pron = ss "I" ;
    --   if_Subj : Subj ;
    if_Subj = ss "if" ;
    --   in8front_Prep : Prep ; -- in front of
    in8front_Prep = ss "in front" ;
    --   in_Prep : Prep ;
    in_Prep = ss "in" ;
    --   it_Pron : Pron ;
    it_Pron = ss "it" ;
    --   less_CAdv : CAdv ;
    less_CAdv = { s = "less" ; p = "" } ; -- CAdv is defined in CommonX
    --   many_Det : Det ;
    many_Det = ss "many" ;
    --   more_CAdv : CAdv ;
    more_CAdv = { s = "more" ; p = "" } ;
    --   most_Predet : Predet ;
    most_Predet = ss "most" ;
    --   much_Det : Det ;
    much_Det = ss "much" ;
    --   must_VV : VV ;
    must_VV = ss "must" ;
  -- ---b  no_Phr : Phr ;
    --   no_Utt : Utt ;
    no_Utt = ss "no" ;
    --   on_Prep : Prep ;
    on_Prep = ss "on" ;
  -- ---  one_Quant : QuantSg ; DEPRECATED
    --   only_Predet : Predet ;
    only_Predet = ss "only" ;
    --   or_Conj : Conj ;
    or_Conj = ss "or" ;
    --   otherwise_PConj : PConj ;
    otherwise_PConj = ss "otherwise" ;
    --   part_Prep : Prep ;
    part_Prep = ss "of" ; -- of (part)
    --   please_Voc : Voc ;
    please_Voc = ss "please" ;
    --   possess_Prep : Prep ; -- of (possessive)
    possess_Prep = ss "of" ;
    --   quite_Adv : AdA ;
    quite_Adv = ss "quite" ;
    --   she_Pron : Pron ;
    she_Pron = ss "she" ;
    --   so_AdA : AdA ;
    so_AdA = ss "so" ;
    --   someSg_Det : Det ;
    someSg_Det = ss "some" ;
    --   somePl_Det : Det ;
    somePl_Det = ss "some" ;
    --   somebody_NP : NP ;
    somebody_NP = ss "somebody" ;
    --   something_NP : NP ;
    something_NP = ss "something" ;
    --   somewhere_Adv : Adv ;
    somewhere_Adv = ss "somewhere" ;
    --   that_Quant : Quant ;
    that_Quant = ss "that" ;
    --   that_Subj : Subj ;
    that_Subj = ss "that" ;
    --   there_Adv : Adv ;
    there_Adv = ss "there" ;
    --   there7to_Adv : Adv ; -- to there
    there7to_Adv = ss "to there" ;
    --   there7from_Adv : Adv ; -- from there
    there7from_Adv = ss "from there" ;
    --   therefore_PConj : PConj ;
    therefore_PConj = ss "therefore" ;
    --   they_Pron : Pron ;
    they_Pron = ss "they" ;
    --   this_Quant : Quant ;
    this_Quant = ss "this" ;
    --   through_Prep : Prep ;
    through_Prep = ss "through" ;
    --   to_Prep : Prep ;
    to_Prep = ss "to" ;
    --   too_AdA : AdA ;
    too_AdA = ss "toot" ;
    --  under_Prep : Prep ;
    under_Prep = ss "under" ;
    --   very_AdA : AdA ;
    very_AdA = ss "very" ;
    --   want_VV : VV ;
    want_VV = ss "want" ;
    --   we_Pron : Pron ;
    we_Pron = ss "we" ;
    --   whatPl_IP : IP ; -- what (plural)
    whatPl_IP = ss "what" ;
    --   whatSg_IP : IP ; -- what (singular)
    whatSg_IP = ss "what" ;
    --   when_IAdv : IAdv ;
    when_IAdv = ss "when" ;
    --   when_Subj : Subj ;
    when_Subj = ss "when" ;
    --   where_IAdv : IAdv ;
    where_IAdv = ss "where" ;
    --   which_IQuant : IQuant ;
    which_IQuant = ss "which" ;
    --   whoPl_IP : IP ;  -- who (plural)
    whoPl_IP = ss "who" ;
    --   whoSg_IP : IP ;  -- who (singular)
    whoSg_IP = ss "who" ;
    --   why_IAdv : IAdv ;
    why_IAdv = ss "why" ;
    --   with_Prep : Prep ;
    with_Prep = ss "with" ;
    --   without_Prep : Prep ;
    without_Prep = ss "without" ;
  -- ---b  yes_Phr : Phr ;
    --   yes_Utt : Utt ;
    yes_Utt = ss "yes" ;
    --   youSg_Pron : Pron ; -- you (singular)
    youSg_Pron = ss "you" ;
    --   youPl_Pron : Pron ; -- you (plural)
    youPl_Pron = ss "you" ;
    --   youPol_Pron : Pron ; -- you (polite)
    youPol_Pron = ss "you" ;
    
    --   no_Quant : Quant ;
    no_Quant = ss "no" ;
    --   not_Predet : Predet ;
    not_Predet = ss "not" ;
    --   if_then_Conj : Conj ;
    if_then_Conj = ss "if then" ;
    --   at_least_AdN : AdN ;
    at_least_AdN = ss "at least" ;
    --   at_most_AdN : AdN ;
    at_most_AdN = ss "at most" ;
    --   nobody_NP : NP ;
    nobody_NP = ss "nobody" ;
    --   nothing_NP : NP ;
    nothing_NP = ss "nothing" ;
    --   except_Prep : Prep ;
    except_Prep = ss "except" ;
    
    --   as_CAdv : CAdv ;
    as_CAdv = { s = "as" ; p = "" } ;
    
    --   have_V2 : V2 ;
    have_V2 = ss "have" ;
    
    --   language_title_Utt : Utt ;
    language_title_Utt = ss "XXX" ;

}

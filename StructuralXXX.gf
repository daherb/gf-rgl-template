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
    above_Prep = ss "" ;
    --   after_Prep : Prep ;
    after_Prep = ss "" ;
    --   all_Predet : Predet ;
    all_Predet = ss "" ;
    --   almost_AdA : AdA ;
    almost_AdA = ss "" ;
    --   almost_AdN : AdN ;
    almost_AdN = ss "" ;
    --   although_Subj : Subj ;
    although_Subj = ss "" ;
    --   always_AdV : AdV ;
    always_AdV = ss "" ;
    --   and_Conj : Conj ;
    and_Conj = ss "" ;
    --   because_Subj : Subj ;
    because_Subj = ss "" ;
    --   before_Prep : Prep ;
    before_Prep = ss "" ;
    --   behind_Prep : Prep ;
    behind_Prep = ss "" ; 
    --   between_Prep : Prep ;
    between_Prep = ss "" ;
    --   both7and_DConj : Conj ; -- both...and
    both7and_DConj = ss "" ;
  -- ---b  both7and_DConj : DConj ;
    --   but_PConj : PConj ;
    but_PConj = ss "" ;
    --   by8agent_Prep : Prep ; -- by (agent)
    by8agent_Prep = ss "" ;
    --   by8means_Prep : Prep ; -- by (means of)
    by8means_Prep = ss "" ;
    --   can8know_VV : VV ; -- can (capacity)
    can8know_VV = ss "" ;
    --   can_VV : VV ;      -- can (possibility)
    can_VV = ss "" ;
    --   during_Prep : Prep ;
    during_Prep = ss "" ;
    --   either7or_DConj : Conj ; -- either...or
    either7or_DConj = ss "" ;
  -- ---b  either7or_DConj : DConj ;
    --   every_Det : Det ;
    every_Det = ss "" ;
    --   everybody_NP : NP ;  -- everybody
    everybody_NP = ss "" ;
    --   everything_NP : NP ;
    everything_NP = ss "" ;
    --   everywhere_Adv : Adv ;
    everywhere_Adv = ss "" ;
  -- ---  first_Ord : Ord ; DEPRECATED
    --   few_Det : Det ;
    few_Det = ss "" ;
    --   for_Prep : Prep ;
    for_Prep = ss "" ;
    --   from_Prep : Prep ;
    from_Prep = ss "" ;
    --   he_Pron : Pron ;
    he_Pron = ss "" ;
    --   here_Adv : Adv ;
    here_Adv = ss "" ;
    --   here7to_Adv : Adv ; -- to here
    here7to_Adv = ss "" ;
    --   here7from_Adv : Adv ;  -- from here
    here7from_Adv = ss "" ;
    --   how_IAdv : IAdv ;
    how_IAdv = ss "" ;
    --   how8many_IDet : IDet ;
    how8many_IDet = ss "" ;
    --   how8much_IAdv : IAdv ;
    how8much_IAdv = ss "" ;
    --   i_Pron : Pron ;
    i_Pron = ss "" ;
    --   if_Subj : Subj ;
    if_Subj = ss "" ;
    --   in8front_Prep : Prep ; -- in front of
    in8front_Prep = ss "" ;
    --   in_Prep : Prep ;
    in_Prep = ss "" ;
    --   it_Pron : Pron ;
    it_Pron = ss "" ;
    --   less_CAdv : CAdv ;
    less_CAdv = { s = "less" ; p = "" } ; -- CAdv is defined in CommonX
    --   many_Det : Det ;
    many_Det = ss "" ;
    --   more_CAdv : CAdv ;
    more_CAdv = { s = "more" ; p = "" } ;
    --   most_Predet : Predet ;
    most_Predet = ss "" ;
    --   much_Det : Det ;
    much_Det = ss "" ;
    --   must_VV : VV ;
    must_VV = ss "" ;
  -- ---b  no_Phr : Phr ;
    --   no_Utt : Utt ;
    no_Utt = ss "" ;
    --   on_Prep : Prep ;
    on_Prep = ss "" ;
  -- ---  one_Quant : QuantSg ; DEPRECATED
    --   only_Predet : Predet ;
    only_Predet = ss "" ;
    --   or_Conj : Conj ;
    or_Conj = ss "" ;
    --   otherwise_PConj : PConj ;
    otherwise_PConj = ss "" ;
    --   part_Prep : Prep ;
    part_Prep = ss "" ; -- of (part)
    --   please_Voc : Voc ;
    please_Voc = ss "" ;
    --   possess_Prep : Prep ; -- of (possessive)
    possess_Prep = ss "" ;
    --   quite_Adv : AdA ;
    quite_Adv = ss "" ;
    --   she_Pron : Pron ;
    she_Pron = ss "" ;
    --   so_AdA : AdA ;
    so_AdA = ss "" ;
    --   someSg_Det : Det ;
    someSg_Det = ss "" ;
    --   somePl_Det : Det ;
    somePl_Det = ss "" ;
    --   somebody_NP : NP ;
    somebody_NP = ss "" ;
    --   something_NP : NP ;
    something_NP = ss "" ;
    --   somewhere_Adv : Adv ;
    somewhere_Adv = ss "" ;
    --   that_Quant : Quant ;
    that_Quant = ss "" ;
    --   that_Subj : Subj ;
    that_Subj = ss "" ;
    --   there_Adv : Adv ;
    there_Adv = ss "" ;
    --   there7to_Adv : Adv ; -- to there
    there7to_Adv = ss "" ;
    --   there7from_Adv : Adv ; -- from there
    there7from_Adv = ss "" ;
    --   therefore_PConj : PConj ;
    therefore_PConj = ss "" ;
    --   they_Pron : Pron ;
    they_Pron = ss "" ;
    --   this_Quant : Quant ;
    this_Quant = ss "" ;
    --   through_Prep : Prep ;
    through_Prep = ss "" ;
    --   to_Prep : Prep ;
    to_Prep = ss "" ;
    --   too_AdA : AdA ;
    too_AdA = ss "" ;
    --  under_Prep : Prep ;
    under_Prep = ss "" ;
    --   very_AdA : AdA ;
    very_AdA = ss "" ;
    --   want_VV : VV ;
    want_VV = ss "" ;
    --   we_Pron : Pron ;
    we_Pron = ss "" ;
    --   whatPl_IP : IP ; -- what (plural)
    whatPl_IP = ss "" ;
    --   whatSg_IP : IP ; -- what (singular)
    whatSg_IP = ss "" ;
    --   when_IAdv : IAdv ;
    when_IAdv = ss "" ;
    --   when_Subj : Subj ;
    when_Subj = ss "" ;
    --   where_IAdv : IAdv ;
    where_IAdv = ss "" ;
    --   which_IQuant : IQuant ;
    which_IQuant = ss "" ;
    --   whoPl_IP : IP ;  -- who (plural)
    whoPl_IP = ss "" ;
    --   whoSg_IP : IP ;  -- who (singular)
    whoSg_IP = ss "" ;
    --   why_IAdv : IAdv ;
    why_IAdv = ss "" ;
    --   with_Prep : Prep ;
    with_Prep = ss "" ;
    --   without_Prep : Prep ;
    without_Prep = ss "" ;
  -- ---b  yes_Phr : Phr ;
    --   yes_Utt : Utt ;
    yes_Utt = ss "" ;
    --   youSg_Pron : Pron ; -- you (singular)
    youSg_Pron = ss "" ;
    --   youPl_Pron : Pron ; -- you (plural)
    youPl_Pron = ss "" ;
    --   youPol_Pron : Pron ; -- you (polite)
    youPol_Pron = ss "" ;
    
    --   no_Quant : Quant ;
    no_Quant = ss "" ;
    --   not_Predet : Predet ;
    not_Predet = ss "" ;
    --   if_then_Conj : Conj ;
    if_then_Conj = ss "" ;
    --   at_least_AdN : AdN ;
    at_least_AdN = ss "" ;
    --   at_most_AdN : AdN ;
    at_most_AdN = ss "" ;
    --   nobody_NP : NP ;
    nobody_NP = ss "" ;
    --   nothing_NP : NP ;
    nothing_NP = ss "" ;
    --   except_Prep : Prep ;
    except_Prep = ss "" ;
    
    --   as_CAdv : CAdv ;
    as_CAdv = { s = "as" ; p = "" } ;
    
    --   have_V2 : V2 ;
    have_V2 = ss "" ;
    
    --   language_title_Utt : Utt ;
    language_title_Utt = ss "" ;

}

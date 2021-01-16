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
  above_Prep = notYet "above_Prep" ; 
    --   after_Prep : Prep ;
  after_Prep = notYet "after_Prep" ; 
    --   all_Predet : Predet ;
  all_Predet = notYet "all_Predet" ; 
    --   almost_AdA : AdA ;
  almost_AdA = notYet "almost_AdA" ; 
    --   almost_AdN : AdN ;
  almost_AdN = notYet "almost_AdN" ; 
    --   although_Subj : Subj ;
  although_Subj = notYet "although_Subj" ; 
    --   always_AdV : AdV ;
  always_AdV = notYet "always_AdV" ; 
    --   and_Conj : Conj ;
  and_Conj = notYet "and_Conj" ; 
    --   because_Subj : Subj ;
  because_Subj = notYet "because_Subj" ; 
    --   before_Prep : Prep ;
  before_Prep = notYet "before_Prep" ; 
    --   behind_Prep : Prep ;
  behind_Prep = notYet "behind_Prep" ;  
    --   between_Prep : Prep ;
  between_Prep = notYet "between_Prep" ; 
    --   both7and_DConj : Conj ; -- both...and
  both7and_DConj = notYet "both7and_DConj" ; 
  -- ---b  both7and_DConj : DConj ;
    --   but_PConj : PConj ;
  but_PConj = notYet "but_PConj" ; 
    --   by8agent_Prep : Prep ; -- by (agent)
  by8agent_Prep = notYet "by8agent_Prep" ; 
    --   by8means_Prep : Prep ; -- by (means of)
  by8means_Prep = notYet "by8means_Prep" ; 
    --   can8know_VV : VV ; -- can (capacity)
  can8know_VV = notYet "can8know_VV" ; 
    --   can_VV : VV ;      -- can (possibility)
  can_VV = notYet "can_VV" ; 
    --   during_Prep : Prep ;
  during_Prep = notYet "during_Prep" ; 
    --   either7or_DConj : Conj ; -- either...or
  either7or_DConj = notYet "either7or_DConj" ; 
  -- ---b  either7or_DConj : DConj ;
    --   every_Det : Det ;
  every_Det = notYet "every_Det" ; 
    --   everybody_NP : NP ;  -- everybody
  everybody_NP = notYet "everybody_NP" ; 
    --   everything_NP : NP ;
  everything_NP = notYet "everything_NP" ; 
    --   everywhere_Adv : Adv ;
  everywhere_Adv = notYet "everywhere_Adv" ; 
  -- ---  first_Ord : Ord ; DEPRECATED
    --   few_Det : Det ;
  few_Det = notYet "few_Det" ; 
    --   for_Prep : Prep ;
  for_Prep = notYet "for_Prep" ; 
    --   from_Prep : Prep ;
  from_Prep = notYet "from_Prep" ; 
    --   he_Pron : Pron ;
  he_Pron = notYet "he_Pron" ; 
    --   here_Adv : Adv ;
  here_Adv = notYet "here_Adv" ; 
    --   here7to_Adv : Adv ; -- to here
  here7to_Adv = notYet "here7to_Adv" ; 
    --   here7from_Adv : Adv ;  -- from here
  here7from_Adv = notYet "here7from_Adv" ; 
    --   how_IAdv : IAdv ;
  how_IAdv = notYet "how_IAdv" ; 
    --   how8many_IDet : IDet ;
  how8many_IDet = notYet "how8many_IDet" ; 
    --   how8much_IAdv : IAdv ;
  how8much_IAdv = notYet "how8much_IAdv" ; 
    --   i_Pron : Pron ;
  i_Pron = notYet "i_Pron" ; 
    --   if_Subj : Subj ;
  if_Subj = notYet "if_Subj" ; 
    --   in8front_Prep : Prep ; -- in front of
  in8front_Prep = notYet "in8front_Prep" ; 
    --   in_Prep : Prep ;
  in_Prep = notYet "in_Prep" ; 
    --   it_Pron : Pron ;
  it_Pron = notYet "it_Pron" ; 
    --   less_CAdv : CAdv ;
    less_CAdv = { s = "less" ; p = "" } ; -- CAdv is defined in CommonX
    --   many_Det : Det ;
  many_Det = notYet "many_Det" ; 
    --   more_CAdv : CAdv ;
    more_CAdv = { s = "more" ; p = "" } ;
    --   most_Predet : Predet ;
  most_Predet = notYet "most_Predet" ; 
    --   much_Det : Det ;
  much_Det = notYet "much_Det" ; 
    --   must_VV : VV ;
  must_VV = notYet "must_VV" ; 
  -- ---b  no_Phr : Phr ;
    --   no_Utt : Utt ;
  no_Utt = notYet "no_Utt" ; 
    --   on_Prep : Prep ;
  on_Prep = notYet "on_Prep" ; 
  -- ---  one_Quant : QuantSg ; DEPRECATED
    --   only_Predet : Predet ;
  only_Predet = notYet "only_Predet" ; 
    --   or_Conj : Conj ;
  or_Conj = notYet "or_Conj" ; 
    --   otherwise_PConj : PConj ;
  otherwise_PConj = notYet "otherwise_PConj" ; 
    --   part_Prep : Prep ;
  part_Prep = notYet "part_Prep" ;  -- of (part)
    --   please_Voc : Voc ;
  please_Voc = notYet "please_Voc" ; 
    --   possess_Prep : Prep ; -- of (possessive)
  possess_Prep = notYet "possess_Prep" ; 
    --   quite_Adv : AdA ;
  quite_Adv = notYet "quite_Adv" ; 
    --   she_Pron : Pron ;
  she_Pron = notYet "she_Pron" ; 
    --   so_AdA : AdA ;
  so_AdA = notYet "so_AdA" ; 
    --   someSg_Det : Det ;
  someSg_Det = notYet "someSg_Det" ; 
    --   somePl_Det : Det ;
  somePl_Det = notYet "somePl_Det" ; 
    --   somebody_NP : NP ;
  somebody_NP = notYet "somebody_NP" ; 
    --   something_NP : NP ;
  something_NP = notYet "something_NP" ; 
    --   somewhere_Adv : Adv ;
  somewhere_Adv = notYet "somewhere_Adv" ; 
    --   that_Quant : Quant ;
  that_Quant = notYet "that_Quant" ; 
    --   that_Subj : Subj ;
  that_Subj = notYet "that_Subj" ; 
    --   there_Adv : Adv ;
  there_Adv = notYet "there_Adv" ; 
    --   there7to_Adv : Adv ; -- to there
  there7to_Adv = notYet "there7to_Adv" ; 
    --   there7from_Adv : Adv ; -- from there
  there7from_Adv = notYet "there7from_Adv" ; 
    --   therefore_PConj : PConj ;
  therefore_PConj = notYet "therefore_PConj" ; 
    --   they_Pron : Pron ;
  they_Pron = notYet "they_Pron" ; 
    --   this_Quant : Quant ;
  this_Quant = notYet "this_Quant" ; 
    --   through_Prep : Prep ;
  through_Prep = notYet "through_Prep" ; 
    --   to_Prep : Prep ;
  to_Prep = notYet "to_Prep" ; 
    --   too_AdA : AdA ;
  too_AdA = notYet "too_AdA" ; 
    --  under_Prep : Prep ;
  under_Prep = notYet "under_Prep" ; 
    --   very_AdA : AdA ;
  very_AdA = notYet "very_AdA" ; 
    --   want_VV : VV ;
  want_VV = notYet "want_VV" ; 
    --   we_Pron : Pron ;
  we_Pron = notYet "we_Pron" ; 
    --   whatPl_IP : IP ; -- what (plural)
  whatPl_IP = notYet "whatPl_IP" ; 
    --   whatSg_IP : IP ; -- what (singular)
  whatSg_IP = notYet "whatSg_IP" ; 
    --   when_IAdv : IAdv ;
  when_IAdv = notYet "when_IAdv" ; 
    --   when_Subj : Subj ;
  when_Subj = notYet "when_Subj" ; 
    --   where_IAdv : IAdv ;
  where_IAdv = notYet "where_IAdv" ; 
    --   which_IQuant : IQuant ;
  which_IQuant = notYet "which_IQuant" ; 
    --   whoPl_IP : IP ;  -- who (plural)
  whoPl_IP = notYet "whoPl_IP" ; 
    --   whoSg_IP : IP ;  -- who (singular)
  whoSg_IP = notYet "whoSg_IP" ; 
    --   why_IAdv : IAdv ;
  why_IAdv = notYet "why_IAdv" ; 
    --   with_Prep : Prep ;
  with_Prep = notYet "with_Prep" ; 
    --   without_Prep : Prep ;
  without_Prep = notYet "without_Prep" ; 
  -- ---b  yes_Phr : Phr ;
    --   yes_Utt : Utt ;
  yes_Utt = notYet "yes_Utt" ; 
    --   youSg_Pron : Pron ; -- you (singular)
  youSg_Pron = notYet "youSg_Pron" ; 
    --   youPl_Pron : Pron ; -- you (plural)
  youPl_Pron = notYet "youPl_Pron" ; 
    --   youPol_Pron : Pron ; -- you (polite)
  youPol_Pron = notYet "youPol_Pron" ; 
    
    --   no_Quant : Quant ;
  no_Quant = notYet "no_Quant" ; 
    --   not_Predet : Predet ;
  not_Predet = notYet "not_Predet" ; 
    --   if_then_Conj : Conj ;
  if_then_Conj = notYet "if_then_Conj" ; 
    --   at_least_AdN : AdN ;
  at_least_AdN = notYet "at_least_AdN" ; 
    --   at_most_AdN : AdN ;
  at_most_AdN = notYet "at_most_AdN" ; 
    --   nobody_NP : NP ;
  nobody_NP = notYet "nobody_NP" ; 
    --   nothing_NP : NP ;
  nothing_NP = notYet "nothing_NP" ; 
    --   except_Prep : Prep ;
  except_Prep = notYet "except_Prep" ; 
    
    --   as_CAdv : CAdv ;
    as_CAdv = { s = "as" ; p = "" } ;
    
    --   have_V2 : V2 ;
  have_V2 = notYet "have_V2" ; 
    
    --   language_title_Utt : Utt ;
  language_title_Utt = notYet "language_title_Utt" ; 

}

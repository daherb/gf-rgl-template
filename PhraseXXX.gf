--1 Phrase: Phrases and Utterances

concrete PhraseXXX of Phrase = CatXXX ** open Prelude in {

-- When a phrase is built from an utterance it can be prefixed
-- with a phrasal conjunction (such as "but", "therefore")
-- and suffixing with a vocative (typically a noun phrase).

  lin
    
    -- PhrUtt   : PConj -> Utt -> Voc -> Phr ; -- but come here, my friend
  PhrUtt = notYet "PhrUtt" ; 
-- Utterances are formed from sentences, questions, and imperatives.

    -- UttS      : S   -> Utt ;                -- John walks
  UttS = notYet "UttS" ; 
    -- UttQS     : QS  -> Utt ;                -- is it good
  UttQS = notYet "UttQS" ; 
    -- UttImpSg  : Pol -> Imp -> Utt ;         -- (don't) love yourself
  UttImpSg = notYet "UttImpSg" ; 
    -- UttImpPl  : Pol -> Imp -> Utt ;         -- (don't) love yourselves
  UttImpPl = notYet "UttImpPl" ; 
    -- UttImpPol : Pol -> Imp -> Utt ;         -- (don't) sleep (polite)
  UttImpPol = notYet "UttImpPol" ; 

-- There are also 'one-word utterances'. A typical use of them is
-- as answers to questions.
-- *Note*. This list is incomplete. More categories could be covered.
-- Moreover, in many languages e.g. noun phrases in different cases
-- can be used.

    -- UttIP     : IP   -> Utt ;               -- who
  UttIP = notYet "UttIP" ; 
    -- UttIAdv   : IAdv -> Utt ;               -- why
  UttIAdv = notYet "UttIAdv" ; 
    -- UttNP     : NP   -> Utt ;               -- this man
  UttNP = notYet "UttNP" ; 
    -- UttAdv    : Adv  -> Utt ;               -- here
  UttAdv = notYet "UttAdv" ; 
    -- UttVP     : VP   -> Utt ;               -- to sleep
  UttVP = notYet "UttVP" ; 
    -- UttCN     : CN   -> Utt ;               -- house
  UttCN = notYet "UttCN" ; 
    -- UttCard   : Card -> Utt ;               -- five
  UttCard = notYet "UttCard" ; 
    -- UttAP     : AP   -> Utt ;               -- fine
  UttAP = notYet "UttAP" ; 
    -- UttInterj : Interj -> Utt ;             -- alas
  UttInterj = notYet "UttInterj" ; 

-- The phrasal conjunction is optional. A sentence conjunction
-- can also be used to prefix an utterance.

    -- NoPConj   : PConj ;                     -- [plain phrase without conjunction in front]
  NoPConj = notYet "NoPConj" ; 
    -- PConjConj : Conj -> PConj ;             -- and
  PConjConj = notYet "PConjConj" ; 

-- The vocative is optional. Any noun phrase can be made into vocative,
-- which may be overgenerating (e.g. "I").

    -- NoVoc   : Voc ;                         -- [plain phrase without vocative]
  NoVoc = notYet "NoVoc" ; 
    -- VocNP   : NP -> Voc ;                   -- my friend
  VocNP = notYet "VocNP" ; 
}

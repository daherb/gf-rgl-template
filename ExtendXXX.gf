--1 Extensions of core RGL syntax (the Grammar module)

-- This module defines syntax rules that are not yet implemented in all
-- languages, and perhaps never implementable either. But all rules are given
-- a default implementation in common/ExtendFunctor.gf so that they can be included
-- in the library API. The default implementations are meant to be overridden in each
-- xxxxx/ExtendXxx.gf when the work proceeds.
--
-- This module is aimed to replace the original Extra.gf, which is kept alive just
-- for backwardcommon compatibility. It will also replace translator/Extensions.gf
-- and thus eliminate the often duplicated work in those two modules.
--
-- (c) Aarne Ranta 2017-08-20 under LGPL and BSD


concrete ExtendXXX of Extend = CatXXX ** open Prelude,(P=ParamX) in {

  lin
    
    -- GenNP       : NP -> Quant ;       -- this man's
  GenNP = notYet "GenNP" ; 
    -- GenIP       : IP -> IQuant ;      -- whose
  GenIP = notYet "GenIP" ; 
    -- GenRP       : Num -> CN -> RP ;   -- whose car
  GenRP = notYet "GenRP" ; 
    
-- In case the first two are not available, the following applications should in any case be.

    -- GenModNP    : Num -> NP -> CN -> NP ; -- this man's car(s)
  GenModNP = notYet "GenModNP" ; 
    -- GenModIP    : Num -> IP -> CN -> IP ; -- whose car(s)
  GenModIP = notYet "GenModIP;
    
    -- CompBareCN  : CN -> Comp ;        -- (is) teacher
  CompBareCN = notYet "CompBareCN" ; 
    
    -- StrandQuestSlash : IP -> ClSlash -> QCl ;   -- whom does John live with
    StrandQuestSlash = notYet "StrandQuestSlash";
    -- StrandRelSlash   : RP -> ClSlash -> RCl ;   -- that he lives in
  StrandRelSlash = notYet "StrandRelSlash" ; 
    -- EmptyRelSlash    : ClSlash       -> RCl ;   -- he lives in
  EmptyRelSlash = notYet "EmptyRelSlash" ; 

-- $VP$ conjunction, separate categories for finite and infinitive forms (VPS and VPI, respectively)
-- covering both in the same category leads to spurious VPI parses because VPS depends on many more tenses

  lincat
    VPS = SS ;           -- finite VP's with tense and polarity
    [VPS] = SS ;
    VPI = SS;
    [VPI] = SS ;     -- infinitive VP's (TODO: with anteriority and polarity)

  lin
    -- BaseVPS    : VPS -> VPS -> ListVPS ;
  BaseVPS = notYet "BaseVPS" ; 
    -- ConsVPS    : VPS -> ListVPS -> ListVPS ;
  ConsVPS = notYet "ConsVPS" ; 

    -- MkVPS      : Temp -> Pol -> VP -> VPS ;  -- hasn't slept
  MkVPS = notYet "MkVPS" ; 
    -- ConjVPS    : Conj -> [VPS] -> VPS ;      -- has walked and won't sleep
  ConjVPS = notYet "ConjVPS" ; 
    -- PredVPS    : NP   -> VPS -> S ;          -- she [has walked and won't sleep]
  PredVPS = notYet "PredVPS" ; 
    -- SQuestVPS  : NP   -> VPS -> QS ;         -- has she walked
  SQuestVPS = notYet "SQuestVPS" ; 
    -- QuestVPS   : IP   -> VPS -> QS ;         -- who has walked
  QuestVPS = notYet "QuestVPS" ; 
    
-- existentials that work in the absence of Cl
    -- ExistS     : Temp -> Pol -> NP -> S ;    -- there was a party
  ExistS = notYet "ExistS" ; 
    -- ExistNPQS  : Temp -> Pol -> NP -> QS ;   -- was there a party
  ExistNPQS = notYet "ExistNPQS" ; 
    -- ExistIPQS  : Temp -> Pol -> IP -> QS ;   -- what was there
  ExistIPQS = notYet "ExistIPQS" ; 

    -- BaseVPI    : VPI -> VPI -> ListVPI ;
  BaseVPI = notYet "BaseVPI" ; 
    -- ConsVPI    : VPI -> ListVPI -> ListVPI ;
  ConsVPI = notYet "ConsVPI" ; 
    
    -- MkVPI      : VP -> VPI ;                 -- to sleep (TODO: Ant and Pol)
  MkVPI = notYet "MkVPI" ; 
    -- ConjVPI    : Conj -> [VPI] -> VPI ;      -- to sleep and to walk
  ConjVPI = notYet "ConjVPI" ; 
    -- ComplVPIVV : VV   -> VPI -> VP ;         -- must sleep and walk
  ComplVPIVV = notYet "ComplVPIVV" ; 
    
-- the same for VPSlash, taking a complement with shared V2 verbs

  lincat
    VPS2 = SS;        -- have loved (binary version of VPS)
    [VPS2] = SS ;  -- has loved, hates"
    VPI2 = SS;        -- to love (binary version of VPI)
    [VPI2] = SS ;  -- to love, to hate

  lin
    -- BaseVPS2    : VPS2 -> VPS2 -> ListVPS2 ;
  BaseVPS2 = notYet "BaseVPS2" ; 
    -- ConsVPS2    : VPS2 -> ListVPS2 -> ListVPS2 ;
  ConsVPS2 = notYet "ConsVPS2" ; 
    
    -- MkVPS2    : Temp -> Pol -> VPSlash -> VPS2 ;  -- has loved
  MkVPS2 = notYet "MkVPS2" ; 
    -- ConjVPS2  : Conj -> [VPS2] -> VPS2 ;          -- has loved and now hates
  ConjVPS2 = notYet "ConjVPS2" ; 
    -- ComplVPS2 : VPS2 -> NP -> VPS ;               -- has loved and now hates that person
  ComplVPS2 = notYet "ComplVPS2" ; 

    -- BaseVPI2  : VPI2 -> VPI2 -> ListVPI2 ;
  BaseVPI2 = notYet "BaseVPI2" ; 
    -- ConsVPI2  : VPI2 -> ListVPI2 -> ListVPI2 ;
  ConsVPI2 = notYet "ConsVPI2" ; 
    
    -- MkVPI2    : VPSlash -> VPI2 ;                 -- to love
  MkVPI2 = notYet "MkVPI2" ; 
    -- ConjVPI2  : Conj -> [VPI2] -> VPI2 ;          -- to love and hate
  ConjVPI2 = notYet "ConjVPI2" ; 
    -- ComplVPI2 : VPI2 -> NP -> VPI ;               -- to love and hate that person
  ComplVPI2 = notYet "ComplVPI2" ; 
    
    -- ProDrop : Pron -> Pron ;  -- unstressed subject pronoun becomes empty: "am tired"
  ProDrop = notYet "ProDrop" ; 
    
    -- ICompAP : AP -> IComp ;   -- "how old"
  ICompAP = notYet "ICompAP" ; 
    -- IAdvAdv : Adv -> IAdv ;   -- "how often"
  IAdvAdv = notYet "IAdvAdv" ; 
    
    -- CompIQuant : IQuant -> IComp ;   -- which (is it) [agreement to NP]
  CompIQuant = notYet "CompIQuant" ; 

    -- PrepCN     : Prep -> CN -> Adv ; -- by accident [Prep + CN without article]
  PrepCN = notYet "PrepCN" ; 

  -- fronted/focal constructions, only for main clauses

    -- FocusObj : NP  -> SSlash  -> Utt ;   -- her I love
  FocusObj = notYet "FocusObj" ; 
    -- FocusAdv : Adv -> S       -> Utt ;   -- today I will sleep
  FocusAdv = notYet "FocusAdv" ; 
    -- FocusAdV : AdV -> S       -> Utt ;   -- never will I sleep
  FocusAdV = notYet "FocusAdV" ; 
    -- FocusAP  : AP  -> NP      -> Utt ;   -- green was the tree
  FocusAP = notYet "FocusAP" ; 

  -- participle constructions
    -- PresPartAP    : VP -> AP ;   -- (the man) looking at Mary
  PresPartAP = notYet "PresPartAP" ; 
    -- EmbedPresPart : VP -> SC ;   -- looking at Mary (is fun)
  EmbedPresPart = notYet "EmbedPresPart" ; 

    -- PastPartAP      : VPSlash -> AP ;         -- lost (opportunity) ; (opportunity) lost in space
  PastPartAP = notYet "PastPartAP" ; 
    -- PastPartAgentAP : VPSlash -> NP -> AP ;   -- (opportunity) lost by the company
  PastPartAgentAP = notYet "PastPartAgentAP" ; 

-- this is a generalization of Verb.PassV2 and should replace it in the future.

    -- PassVPSlash : VPSlash -> VP ; -- be forced to sleep
  PassVPSlash = notYet "PassVPSlash" ; 
    
-- the form with an agent may result in a different linearization
-- from an adverbial modification by an agent phrase.

    -- PassAgentVPSlash : VPSlash -> NP -> VP ;  -- be begged by her to go
  PassAgentVPSlash = notYet "PassAgentVPSlash" ; 
    
-- publishing of the document

    -- NominalizeVPSlashNP : VPSlash -> NP -> NP ;
  NominalizeVPSlashNP = notYet "NominalizeVPSlashNP" ; 
    
-- counterpart to ProgrVP, for VPSlash

    -- ProgrVPSlash : VPSlash -> VPSlash;
  ProgrVPSlash = notYet "ProgrVPSlash" ; 
    
-- existential for mathematics

    -- ExistsNP : NP -> Cl ;  -- there exists a number / there exist numbers
  ExistsNP = notYet "ExistsNP" ; 
    
-- existentials with a/no variation

    -- ExistCN       : CN -> Cl ;  -- there is a car / there is no car
  ExistCN = notYet "ExistCN" ; 
    -- ExistMassCN   : CN -> Cl ;  -- there is beer / there is no beer
  ExistMassCN = notYet "ExistMassCN" ; 
    -- ExistPluralCN : CN -> Cl ;  -- there are trees / there are no trees
  ExistPluralCN = notYet "ExistPluralCN" ; 

-- generalisation of existential, with adverb as a parameter
    -- AdvIsNP : Adv -> NP -> Cl ;  -- here is the tree / here are the trees
  AdvIsNP = notYet "AdvIsNP" ; 
    -- AdvIsNPAP : Adv -> NP -> AP -> Cl ; -- here are the instructions documented
  AdvIsNPAP = notYet "AdvIsNPAP" ; 
    
-- infinitive for purpose AR 21/8/2013

    -- PurposeVP : VP -> Adv ;  -- to become happy
  PurposeVP = notYet "PurposeVP" ; 
    
-- object S without "that"

    -- ComplBareVS  : VS  -> S  -> VP ;       -- say she runs
  ComplBareVS = notYet "ComplBareVS" ; 
    -- SlashBareV2S : V2S -> S  -> VPSlash ;  -- answer (to him) it is good
  SlashBareV2S = notYet "SlashBareV2S" ; 
    
    -- ComplDirectVS : VS -> Utt -> VP ;      -- say: "today"
  ComplDirectVS = notYet "ComplDirectVS" ; 
    -- ComplDirectVQ : VQ -> Utt -> VP ;      -- ask: "when"
  ComplDirectVQ = notYet "ComplDirectVQ" ; 

-- front the extraposed part

    -- FrontComplDirectVS : NP -> VS -> Utt -> Cl ;      -- "I am here", she said
  FrontComplDirectVS = notYet "FrontComplDirectVS" ; 
    -- FrontComplDirectVQ : NP -> VQ -> Utt -> Cl ;      -- "where", she asked
  FrontComplDirectVQ = notYet "FrontComplDirectVQ" ; 

-- proper structure of "it is AP to VP"

    -- PredAPVP : AP -> VP -> Cl ;      -- it is good to walk
  PredAPVP = notYet "PredAPVP" ; 

-- to use an AP as CN or NP without CN

    -- AdjAsCN : AP -> CN ;   -- a green one ; en grön (Swe)
  AdjAsCN = notYet "AdjAsCN" ; 
    -- AdjAsNP : AP -> NP ;   -- green (is good)
  AdjAsNP = notYet "AdjAsNP" ; 
    
-- infinitive complement for IAdv

    -- PredIAdvVP : IAdv -> VP -> QCl ; -- how to walk?
  PredIAdvVP = notYet "PredIAdvVP" ; 

-- alternative to EmbedQS. For English, EmbedQS happens to work,
-- because "what" introduces question and relative. The default linearization
-- could be e.g. "the thing we did (was fun)".

    -- EmbedSSlash : SSlash -> SC  ;   -- what we did (was fun)
  EmbedSSlash = notYet "EmbedSSlash" ; 

-- reflexive noun phrases: a generalization of Verb.ReflVP, which covers just reflexive pronouns
-- This is necessary in languages like Swedish, which have special reflexive possessives.
-- However, it is also needed in application grammars that want to treat "brush one's teeth" as a one-place predicate.

  lincat
    RNP = SS;     -- reflexive noun phrase, e.g. "my family and myself"
    RNPList = SS; -- list of reflexives to be coordinated, e.g. "my family, myself, everyone"

-- Notice that it is enough for one NP in RNPList to be RNP.

  lin
    -- ReflRNP : VPSlash -> RNP -> VP ;   -- love my family and myself
  ReflRNP = notYet "ReflRNP" ; 
    
    -- ReflPron : RNP ;                   -- myself
  ReflPron = notYet "ReflPron" ; 
    
    -- ReflPoss : Num -> CN -> RNP ;      -- my car(s)
  ReflPoss = notYet "ReflPoss" ; 
    
    -- PredetRNP : Predet -> RNP -> RNP ; -- all my brothers
  PredetRNP = notYet "PredetRNP" ; 
    
    -- ConjRNP : Conj -> RNPList -> RNP ;  -- my family, John and myself
  ConjRNP = notYet "ConjRNP" ;  

    -- Base_rr_RNP : RNP -> RNP -> RNPList ;       -- my family, myself
  Base_rr_RNP = notYet "Base_rr_RNP" ; 
    -- Base_nr_RNP : NP  -> RNP -> RNPList ;       -- John, myself
  Base_nr_RNP = notYet "Base_nr_RNP" ; 
    -- Base_rn_RNP : RNP -> NP  -> RNPList ;       -- myself, John
  Base_rn_RNP = notYet "Base_rn_RNP" ; 
    -- Cons_rr_RNP : RNP -> RNPList -> RNPList ;   -- my family, myself, John
  Cons_rr_RNP = notYet "Cons_rr_RNP" ; 
    -- Cons_nr_RNP : NP  -> RNPList -> RNPList ;   -- John, my family, myself
  Cons_nr_RNP = notYet "Cons_nr_RNP" ; 
----    Cons_rn_RNP : RNP -> ListNP  -> RNPList ;   -- myself, John, Mary

-- reflexive possessive on its own right, like in Swedish, Czech, Slovak

    -- ReflPossPron : Quant ;  -- Swe sin,sitt,sina
  ReflPossPron = notYet "ReflPossPron" ; 
    
--- from Extensions

    -- ComplGenVV  : VV -> Ant -> Pol -> VP  -> VP ;         -- want not to have slept
    ComplGenVV =  notYet "ComplGenVV" ;
----  SlashV2V    : V2V -> Ant -> Pol -> VPS -> VPSlash ;   -- force (her) not to have slept

    -- CompoundN   : N -> N  -> N ;      -- control system / controls system / control-system
  CompoundN = notYet "CompoundN" ; 
    -- CompoundAP  : N -> A  -> AP ;     -- language independent / language-independent
  CompoundAP = notYet "CompoundAP" ; 

    -- GerundCN    : VP -> CN ;          -- publishing of the document (can get a determiner)
  GerundCN = notYet "GerundCN" ; 
    -- GerundNP    : VP -> NP ;          -- publishing the document (by nature definite)
  GerundNP = notYet "GerundNP" ; 
    -- GerundAdv   : VP -> Adv ;         -- publishing the document (prepositionless adverb)
  GerundAdv = notYet "GerundAdv" ; 

    -- WithoutVP   : VP -> Adv ;         -- without publishing the document
  WithoutVP = notYet "WithoutVP" ; 
    -- ByVP        : VP -> Adv ;         -- by publishing the document
  ByVP = notYet "ByVP" ; 
  -- InOrderToVP : VP -> Adv ;         -- (in order) to publish the document
  InOrderToVP = notYet "InOrderToVP" ; 
    
  -- ApposNP : NP -> NP -> NP ;        -- Mr Macron, the president of France,
  ApposNP = notYet "ApposNP" ; 
    
    -- AdAdV       : AdA -> AdV -> AdV ;           -- almost always
  AdAdV = notYet "AdAdV" ; 
    -- UttAdV      : AdV -> Utt ;                  -- always(!)
  UttAdV = notYet "UttAdV" ; 
  -- PositAdVAdj : A -> AdV ;                    -- (that she) positively (sleeps)
  PositAdVAdj = notYet "PositAdVAdj" ; 
    
    -- CompS       : S -> Comp ;                   -- (the fact is) that she sleeps
  CompS = notYet "CompS" ; 
    -- CompQS      : QS -> Comp ;                  -- (the question is) who sleeps
  CompQS = notYet "CompQS" ; 
    -- CompVP      : Ant -> Pol -> VP -> Comp ;    -- (she is) to go
  CompVP = notYet "CompVP" ; 

-- very language-specific things

-- Eng
    -- UncontractedNeg : Pol ;      -- do not, etc, as opposed to don't
    UncontractedNeg = { s = "do not" ; p = P.Neg } ;
    -- UttVPShort : VP -> Utt ;     -- have fun, as opposed to "to have fun"
  UttVPShort = notYet "UttVPShort" ; 
    -- ComplSlashPartLast : VPSlash -> NP -> VP ; -- set it apart, as opposed to "set apart it"
  ComplSlashPartLast = notYet "ComplSlashPartLast" ; 

-- Romance
    -- DetNPMasc : Det -> NP ;
  DetNPMasc = notYet "DetNPMasc" ; 
    -- DetNPFem  : Det -> NP ;
  DetNPFem = notYet "DetNPFem" ; 

    -- UseComp_estar : Comp -> VP ; -- (Cat, Spa, Por) "está cheio" instead of "é cheio"
  UseComp_estar = notYet "UseComp_estar" ; 

  -- SubjRelNP : NP -> RS -> NP ; -- Force RS in subjunctive: lo que les *resulte* mejor
  SubjRelNP = notYet "SubjRelNP" ; 
    
    -- iFem_Pron      : Pron ; -- I (Fem)
  iFem_Pron = notYet "iFem_Pron" ; 
  -- youFem_Pron    : Pron ; -- you (Fem)
  youFem_Pron = notYet "youFem_Pron" ; 
    -- weFem_Pron     : Pron ; -- we (Fem)
  weFem_Pron = notYet "weFem_Pron" ; 
    -- youPlFem_Pron  : Pron ; -- you plural (Fem)
  youPlFem_Pron = notYet "youPlFem_Pron" ; 
    -- theyFem_Pron   : Pron ; -- they (Fem)
  theyFem_Pron = notYet "theyFem_Pron" ; 
    -- youPolFem_Pron : Pron ; -- you polite (Fem)
  youPolFem_Pron = notYet "youPolFem_Pron" ; 
    -- youPolPl_Pron  : Pron ; -- you polite plural (Masc)
  youPolPl_Pron = notYet "youPolPl_Pron" ; 
    -- youPolPlFem_Pron : Pron ; -- you polite plural (Fem)
  youPolPlFem_Pron = notYet "youPolPlFem_Pron" ; 

-- German
    -- UttAccNP : NP -> Utt ; -- him (accusative)
  UttAccNP = notYet "UttAccNP" ; 
    -- UttDatNP : NP -> Utt ; -- him (dative)
  UttDatNP = notYet "UttDatNP" ; 
    -- UttAccIP : IP -> Utt ; -- whom (accusative)
  UttAccIP = notYet "UttAccIP" ; 
    -- UttDatIP : IP -> Utt ; -- whom (dative)
  UttDatIP = notYet "UttDatIP" ; 


}

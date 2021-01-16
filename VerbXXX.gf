--1 The construction of verb phrases

concrete VerbXXX of Verb = CatXXX ** open Prelude in{

  flags coding = utf8 ;

--2 Complementization rules

-- Verb phrases are constructed from verbs by providing their
-- complements. There is one rule for each verb category.

  lin
    -- UseV     : V   -> VP ;        -- sleep
  UseV = notYet "UseV" ; 
    
    -- ComplVV  : VV  -> VP -> VP ;  -- want to run
  ComplVV = notYet "ComplVV" ; 
    -- ComplVS  : VS  -> S  -> VP ;  -- say that she runs
  ComplVS = notYet "ComplVS" ; 
    -- ComplVQ  : VQ  -> QS -> VP ;  -- wonder who runs
  ComplVQ = notYet "ComplVQ" ; 
    -- ComplVA  : VA  -> AP -> VP ;  -- they become red
  ComplVA = notYet "ComplVA" ; 
    
    -- SlashV2a : V2        -> VPSlash ;  -- love (it)
  SlashV2a = notYet "SlashV2a" ; 
    -- Slash2V3 : V3  -> NP -> VPSlash ;  -- give it (to her)
  Slash2V3 = notYet "Slash2V3" ; 
    -- Slash3V3 : V3  -> NP -> VPSlash ;  -- give (it) to her
  Slash3V3 = notYet "Slash3V3" ; 
    
    -- SlashV2V : V2V -> VP -> VPSlash ;  -- beg (her) to go
  SlashV2V = notYet "SlashV2V" ; 
    -- SlashV2S : V2S -> S  -> VPSlash ;  -- answer (to him) that it is good
  SlashV2S = notYet "SlashV2S" ; 
    -- SlashV2Q : V2Q -> QS -> VPSlash ;  -- ask (him) who came
  SlashV2Q = notYet "SlashV2Q" ; 
    -- SlashV2A : V2A -> AP -> VPSlash ;  -- paint (it) red
  SlashV2A = notYet "SlashV2A" ; 
    -- ComplSlash : VPSlash -> NP -> VP ; -- love it
  ComplSlash = notYet "ComplSlash" ; 
    
    -- SlashVV    : VV  -> VPSlash -> VPSlash ;       -- want to buy
  SlashVV = notYet "SlashVV" ; 
    -- SlashV2VNP : V2V -> NP -> VPSlash -> VPSlash ; -- beg me to buy
  SlashV2VNP = notYet "SlashV2VNP" ; 
    
--2 Other ways of forming verb phrases

-- Verb phrases can also be constructed reflexively and from
-- copula-preceded complements.

    -- ReflVP   : VPSlash -> VP ;         -- love himself
  ReflVP = notYet "ReflVP" ; 
    -- UseComp  : Comp -> VP ;            -- be warm
  UseComp = notYet "UseComp" ; 
    
-- Passivization of two-place verbs is another way to use
-- them. In many languages, the result is a participle that
-- is used as complement to a copula ("is used"), but other
-- auxiliary verbs are possible (Ger. "wird angewendet", It.
-- "viene usato"), as well as special verb forms (Fin. "käytetään",
-- Swe. "används").
--
-- *Note*. the rule can be overgenerating, since the $V2$ need not
-- take a direct object.

    -- PassV2   : V2 -> VP ;               -- be loved
  PassV2 = notYet "PassV2" ; 
    
-- Adverbs can be added to verb phrases. Many languages make
-- a distinction between adverbs that are attached in the end
-- vs. next to (or before) the verb.

    -- AdvVP    : VP -> Adv -> VP ;        -- sleep here
  AdvVP = notYet "AdvVP" ; 
    -- ExtAdvVP : VP -> Adv -> VP ;        -- sleep , even though ...
  ExtAdvVP = notYet "ExtAdvVP" ; 
    -- AdVVP    : AdV -> VP -> VP ;        -- always sleep
  AdVVP = notYet "AdVVP" ; 
    
    -- AdvVPSlash : VPSlash -> Adv -> VPSlash ;  -- use (it) here
  AdvVPSlash = notYet "AdvVPSlash" ; 
    -- AdVVPSlash : AdV -> VPSlash -> VPSlash ;  -- always use (it)
  AdVVPSlash = notYet "AdVVPSlash" ; 
    
    -- VPSlashPrep : VP -> Prep -> VPSlash ;  -- live in (it)
  VPSlashPrep = notYet "VPSlashPrep" ; 

-- *Agents of passives* are constructed as adverbs with the
-- preposition [Structural Structural.html]$.8agent_Prep$.


--2 Complements to copula

-- Adjectival phrases, noun phrases, and adverbs can be used.

    -- CompAP   : AP  -> Comp ;            -- (be) small
  CompAP = notYet "CompAP" ; 
    -- CompNP   : NP  -> Comp ;            -- (be) the man
  CompNP = notYet "CompNP" ; 
    -- CompAdv  : Adv -> Comp ;            -- (be) here
  CompAdv = notYet "CompAdv" ;  
    -- CompCN   : CN  -> Comp ;            -- (be) a man/men
  CompCN = notYet "CompCN" ; 
    
-- Copula alone

    -- UseCopula : VP ;                    -- be
  UseCopula = notYet "UseCopula" ; 
}

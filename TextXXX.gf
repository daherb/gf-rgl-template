--1 Text: Texts

-- Texts are built from an empty text by adding $Phr$ases,
-- using as constructors the punctuation marks ".", "?", and "!".
-- Any punctuation mark can be attached to any kind of phrase.
-- For most languages [``TextX`` ../common/TextX.gf] can be used:
concrete TextXXX of Text = TextX ;
-- If that is not possible implement the following module:
{-
concrete TextXXX of Text = CommonX ** open Prelude in {

  lin
    
    -- TEmpty     : Text ;                 -- [empty text, no sentences]
  TEmpty = notYet "TEmpty" ; 
    -- TFullStop  : Phr -> Text -> Text ;  -- John walks. ...
  TFullStop = notYet "TFullStop" ; 
    -- TQuestMark : Phr -> Text -> Text ;  -- Are they here? ...
  TQuestMark = notYet "TQuestMark" ; 
    -- TExclMark  : Phr -> Text -> Text ;  -- Let's go! ...
  TExclMark = notYet "TExclMark" ; 
}
-}

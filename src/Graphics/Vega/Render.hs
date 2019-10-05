{-# LANGUAGE TemplateHaskell #-}

module Graphics.Vega.Render where

import Control.Lens (makeLenses)
import Data.Text (Text)
import Data.Tree (Tree)

data Group = Group

data Clip = Clip

data MarkType = MarkType

data Role = Role

data Bounds = Bounds {
    _boundsX1 :: Double
  , _boundsY1 :: Double
  , _boundsX2 :: Double
  , _boundsY2 :: Double
  }

makeLenses ''Bounds

data Item = Item {
    _itemMark :: Mark
  , _itemBounds :: Bounds
  }


data Mark = Mark {
    _markBounds      :: Bounds
  , _markClip        :: Clip
  , _markGroup       :: Group
  , _markInteractive :: Bool
  , _markItems       :: [Item]
  , _markType        :: MarkType
  , _markName        :: Text
  , _markRole        :: Role
  , _markZindex      :: Int
  }




makeLenses ''Mark

makeLenses ''Item


type SceneGraph = Tree Item



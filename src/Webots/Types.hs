{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Webots.Types where

import Foreign.Ptr
import Data.Word
import Foreign.C.Types
--import qualified Language.C.Inline as C
--import qualified Language.C.Inline.Context as C
import qualified Language.C.Types as C
import Language.Haskell.TH

data WbField
data WbNode
data WbMutex

type WbFieldRef = Ptr WbField
type WbNodeRef = Ptr WbNode
type WbMutexRef = Ptr WbMutex
type WbDeviceTag = CUShort
type WbSimulationMode = CInt
type WbNodeType = CInt
type WbFieldType = CInt
type WbUserInputEvent = CInt
type WbRobotMode = CInt

type WbuDriverIndicatorState = CInt
type WbuDriverControlMode = CInt
type WbuDriverWiperMode = CInt


typeMaps :: [(C.CIdentifier,TypeQ)]
typeMaps =
  [ ("WbFieldRef", [t|Ptr WbField|])
  , ("WbNodeRef", [t|Ptr WbNode|])
  , ("WbMutexRef", [t|Ptr WbMutex|])
  , ("WbDeviceTag", [t|CUShort|])
  , ("WbSimulationMode", [t|CInt|])
  , ("WbNodeType", [t|CInt|])
  , ("WbFieldType", [t|CInt|])
  , ("WbUserInputEvent", [t|CInt|])
  , ("WbRobotMode", [t|CInt|])
  , ("WbuDriverIndicatorState", [t|CInt|])
  , ("WbuDriverControlMode",    [t|CInt|])
  , ("WbuDriverWiperMode",      [t|CInt|])
  ]
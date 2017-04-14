module Spellcraft.Types exposing (..)

import Dict exposing (Dict)
import Material

type Realm = Albion | Hibernia | Midgard

type EffectKind
  = Stat String
  | Focus String
  | Skill String
  | Resist String
  | Hits
  | Power
  | Unused

type ItemKind = ItemKindName String

type alias Effect =
  { kind : EffectKind
  , value : Int
  }

type alias Item =
  { kind : ItemKind
  , crafted : Bool
  , quality : Int
  , level : Int
  , name : String
  , effects : Dict Int Effect
  }

type alias Race =
  { name : String
  , resists : List Effect
  }

type alias Class =
  { class : String
  , available_races : List String
  }

type alias Template =
  { realm : Realm
  , class : Class
  , race : Race
  , level : Int
  , items : Dict ItemKind Item
  }

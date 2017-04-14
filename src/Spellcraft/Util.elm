module Spellcraft.Util exposing (..)

import Dict exposing (Dict)
import Spellcraft.Types exposing
  ( Realm(..)
  , EffectKind(..)
  , Race
  , Effect
  , Class
  )

available_realms : List Realm
available_realms =
  [ Albion
  , Hibernia
  , Midgard
  ]

available_resists : List EffectKind
available_resists =
  [ Resist ""
  ]

available_skills : Realm -> List EffectKind
available_skills realm =
  case realm of
    Albion ->
      [ Skill "Body Destruction"
      , Skill "Chants"
      , Skill "Critical Strike"
      , Skill "Crossbow"
      , Skill "Crush"
      , Skill "Death Servant"
      , Skill "Deathsight"
      , Skill "Dual Wield"
      , Skill "Earth"
      , Skill "Enhancement"
      , Skill "Envenom"
      , Skill "Flexible"
      , Skill "Fire"
      , Skill "Healing"
      , Skill "Ice"
      , Skill "Instruments"
      , Skill "Longbow"
      , Skill "Matter"
      , Skill "Mind Twisting"
      , Skill "Painworking"
      , Skill "Parry"
      , Skill "Polearm"
      , Skill "Shield"
      , Skill "Slash"
      , Skill "Smite"
      , Skill "Soulrending"
      , Skill "Spirit Animation"
      , Skill "Staff"
      , Skill "Stealth"
      , Skill "Thrust"
      , Skill "Two Handed"
      , Skill "Wind"
      ]

    Hibernia ->
      [ Skill "Arboreal Path"
      , Skill "Blades"
      , Skill "Blunt"
      , Skill "Celtic Dual"
      , Skill "Celtic Spear"
      , Skill "Critical Strike"
      , Skill "Creeping Path"
      , Skill "Dementia"
      , Skill "Enchantments"
      , Skill "Envenom"
      , Skill "Ethereal Shriek"
      , Skill "Large Weaponry"
      , Skill "Light"
      , Skill "Mana"
      , Skill "Mentalism"
      , Skill "Music"
      , Skill "Nature"
      , Skill "Nurture"
      , Skill "Parry"
      , Skill "Phantasmal Wail"
      , Skill "Piercing"
      , Skill "Recurve Bow"
      , Skill "Regrowth"
      , Skill "Scythe"
      , Skill "Shield"
      , Skill "Shadow Mastery"
      , Skill "Spectral Guard"
      , Skill "Stealth"
      , Skill "Vampiiric Embrace"
      , Skill "Valor"
      , Skill "Verdant Path"
      , Skill "Void"
      ]

    Midgard ->
      [ Skill "Augmentation"
      , Skill "Axe"
      , Skill "Battlesongs"
      , Skill "Beastcraft"
      , Skill "Bonedancing"
      , Skill "Composite Bow"
      , Skill "Critical Strike"
      , Skill "Cursing"
      , Skill "Darkness"
      , Skill "Envenom"
      , Skill "Hammer"
      , Skill "Hand to Hand"
      , Skill "Hexing"
      , Skill "Left Axe"
      , Skill "Mending"
      , Skill "Pacification"
      , Skill "Odin's Will"
      , Skill "Parry"
      , Skill "Runecarving"
      , Skill "Shield"
      , Skill "Spear"
      , Skill "Stealth"
      , Skill "Stormcalling"
      , Skill "Subterranean"
      , Skill "Summoning"
      , Skill "Suppression"
      , Skill "Sword"
      , Skill "Thrown Weapons"
      ]

available_focuses : Realm -> List EffectKind
available_focuses realm =
  case realm of
    Albion ->
      [ Focus "Body"
      , Focus "Cold"
      , Focus "Death Servant"
      , Focus "Deathsight"
      , Focus "Earth"
      , Focus "Fire"
      , Focus "Matter"
      , Focus "Mind"
      , Focus "Painworking"
      , Focus "Spirit"
      , Focus "Wind"
      ]

    Hibernia ->
      [ Focus "Arboreal"
      , Focus "Creeping"
      , Focus "Enchantments"
      , Focus "Ethereal Shriek"
      , Focus "Light"
      , Focus "Mana"
      , Focus "Mentalism"
      , Focus "Phantasmal Wail"
      , Focus "Spectral Guard"
      , Focus "Verdant"
      , Focus "Void"
      ]

    Midgard ->
      [ Focus "Bonedancing"
      , Focus "Darkness"
      , Focus "Runecarving"
      , Focus "Summoning"
      , Focus "Suppression"
      ]

available_races : Dict String Race
available_races =
  [ ("Dwarf", [resist "Body" 5, resist "Thrust" 3, resist "Slash" 2])
  , ("Kobold", [resist "Crush" 5, resist "Energy" 5])
  , ("Troll", [resist "Slash" 3, resist "Thrust" 2, resist "Matter" 2])
  , ("Norseman", [resist "Crush" 2, resist "Slash" 3, resist "Cold" 5])
  , ("Valkyn", [resist "Slash" 3, resist "Thrust" 2, resist "Cold" 5, resist "Body" 5])
  , ("Celt", [resist "Crush" 2, resist "Slash" 3, resist "Spirit" 5])
  , ("Elf", [resist "Slash" 2, resist "Thrust" 3, resist "Spirit" 5])
  , ("Firbolg", [resist "Crush" 3, resist "Slash" 2, resist "Heat" 5])
  , ("Lurikeen", [resist "Crush" 5, resist "Energy" 5 ])
  , ("Sylvan", [resist "Crush" 3, resist "Thrust" 2, resist "Matter" 5, resist "Energy" 5])
  , ("Avalonian", [resist "Crush" 2, resist "Slash" 3, resist "Matter" 5])
  , ("Briton", [resist "Crush" 2, resist "Slash" 3, resist "Matter" 5])
  , ("Highlander", [resist "Crush" 3, resist "Slash" 2, resist "Cold" 5])
  , ("Saracen", [resist "Slash" 2, resist "Thrust" 3, resist "Heat" 5])
  , ("Inconnu", [resist "Crush" 2, resist "Thrust" 3, resist "Heat" 5, resist "Spirit" 5])
  ]
  |> List.map (\(name, resists) -> (name, Race name resists))
  |> Dict.fromList

available_classes : Realm -> List Class
available_classes realm =
  case realm of
    Albion ->
      [ Class "Armsmen" ["Avalonian", "Briton", "Highlander", "Saracen", "Inconnu"]
      , Class "Cabalist" ["Avalonian", "Briton", "Saracen", "Inconnu"]
      , Class "Cleric" ["Avalonian", "Briton", "Highlander"]
      , Class "Friar" ["Briton"]
      , Class "Infiltrator" ["Briton", "Saracen", "Inconnu"]
      , Class "Mercenary" ["Avalonian", "Briton", "Highlander", "Saracen", "Inconnu"]
      , Class "Minstrel" ["Briton", "Highlander", "Saracen"]
      , Class "Paladin" ["Avalonian", "Briton", "Highlander", "Saracen"]
      , Class "Scout" ["Briton", "Highlander", "Saracen", "Inconnu"]
      , Class "Sorceror" ["Avalonian", "Briton", "Saracen", "Inconnu"]
      , Class "Theurgist" ["Avalonian", "Briton"]
      , Class "Wizard" ["Avalonian", "Briton"]
      , Class "Reaver" ["Briton", "Saracen", "Inconnu"]
      , Class "Necromancer" ["Briton", "Saracen", "Inconnu"]
      ]

    Hibernia ->
      [ Class "Animist" ["Celt", "Firbolg", "Sylvan"]
      , Class "Bainshee" ["Celt", "Elf", "Lurikeen"]
      , Class "Bard" ["Celt", "Firbolg"]
      , Class "Blademaster" ["Celt", "Elf", "Firbolg"]
      , Class "Champion" ["Celt", "Elf", "Lurikeen"]
      , Class "Druid" ["Celt", "Firbolg", "Sylvan"]
      , Class "Eldritch" ["Elf", "Lurikeen"]
      , Class "Enchanter" ["Elf", "Lurikeen"]
      , Class "Hero" ["Celt", "Firbolg", "Lurikeen", "Sylvan"]
      , Class "Mentalist" ["Celt", "Elf", "Lurikeen"]
      , Class "Nightshade" ["Elf", "Lurikeen"]
      , Class "Ranger" ["Celt", "Elf", "Lurikeen"]
      , Class "Warden" ["Celt", "Firbolg", "Sylvan"]
      , Class "Valewalker" ["Celt", "Firbolg", "Sylvan"]
      ]

    Midgard ->
      [ Class "Berserker" ["Dwarf", "Troll", "Norseman", "Valkyn"]
      , Class "Bonedancer" ["Kobold", "Troll", "Valkyn"]
      , Class "Healer" ["Dwarf", "Norseman"]
      , Class "Hunter" ["Dwarf", "Kobold", "Norseman", "Valkyn"]
      , Class "Runemaster" ["Dwarf", "Kobold", "Norseman"]
      , Class "Shadowblade" ["Kobold", "Norseman", "Valkyn"]
      , Class "Shaman" ["Kobold", "Troll"]
      , Class "Spiritmaster" ["Kobold", "Norseman"]
      , Class "Thane" ["Dwarf", "Troll", "Norseman"]
      , Class "Warrior" ["Dwarf", "Kobold", "Troll", "Norseman", "Valkyn"]
      , Class "Savage" ["Dwarf", "Kobold", "Troll", "Norseman", "Valkyn"]
      ]

resist : String -> Int -> Effect
resist name value =
  Effect (Resist name) value

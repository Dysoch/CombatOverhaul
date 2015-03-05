require "config"

require("prototypes.projectiles")

-- Light from firing weapon!
data.raw["explosion"]["explosion-gunshot"].light = {intensity = (1*GunshotLightIntensity), size = (10*GunshotLightSize)}
data.raw["ammo"]["basic-bullet-magazine"].ammo_type =
    {
      category = "bullet",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "basic-bullet-pellet",
          starting_speed = 2,
          direction_deviation = 0.1,
          range_deviation = 0.6,
          max_range = 25,
        }
      }
    }
data.raw["ammo"]["basic-bullet-magazine"].ammo_type =
    {
      category = "bullet",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "piercing-bullet-pellet",
          starting_speed = 1.75,
          direction_deviation = 0.2,
          range_deviation = 0.8,
          max_range = 40,
        }
      }
    }
data.raw["ammo"]["shotgun-shell"].ammo_type.action.action_delivery.starting_speed = 3
data.raw["ammo"]["shotgun-shell"].ammo_type.action.action_delivery.direction_deviation = 0.5
data.raw["ammo"]["shotgun-shell"].ammo_type.action.action_delivery.range_deviation = 1.2
data.raw["ammo"]["shotgun-shell"].ammo_type.action.action_delivery.max_range = 30
data.raw["ammo"]["shotgun-shell"].magazine_size = 8
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action.action_delivery.starting_speed = 3
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action.action_delivery.direction_deviation = 0.5
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action.action_delivery.range_deviation = 1.2
data.raw["ammo"]["piercing-shotgun-shell"].ammo_type.action.action_delivery.max_range = 30
data.raw["ammo"]["piercing-shotgun-shell"].magazine_size = 5

data.raw["turret"]["small-worm-turret"].attack_parameters.ammo_type.action.action_delivery.starting_speed = 1
data.raw["turret"]["medium-worm-turret"].attack_parameters.ammo_type.action.action_delivery.starting_speed = 1
data.raw["turret"]["big-worm-turret"].attack_parameters.ammo_type.action.action_delivery.starting_speed = 1
data.raw["projectile"]["acid-projectile-purple"].collision_box = {{-0.05, -1}, {0.05, 1}}
data.raw["projectile"]["acid-projectile-purple"].acceleration = -0.05
data.raw["projectile"]["acid-projectile-purple"].direction_only = true
data.raw["projectile"]["laser"].collision_box = {{-0.05, -1}, {0.05, 1}}
data.raw["projectile"]["laser"].direction_only = true
data.raw["projectile"]["blue-laser"].collision_box = {{-0.05, -1}, {0.05, 1}}
data.raw["projectile"]["blue-laser"].direction_only = true
data.raw["projectile"]["rocket"].collision_box = {{-0.05, -1}, {0.05, 1}}
data.raw["projectile"]["rocket"].acceleration = 0.05
data.raw["projectile"]["rocket"].direction_only = true
data.raw["projectile"]["explosive-rocket"].collision_box = {{-0.05, -1}, {0.05, 1}}
data.raw["projectile"]["explosive-rocket"].acceleration = 0.05
data.raw["projectile"]["explosive-rocket"].direction_only = true

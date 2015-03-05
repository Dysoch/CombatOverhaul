data:extend(
{
  {
    type = "projectile",
    name = "basic-bullet-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = -0.008,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 4, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
  {
    type = "projectile",
    name = "piercing-bullet-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = -0.003,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 8, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
}
)

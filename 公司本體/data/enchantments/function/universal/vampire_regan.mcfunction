execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.3f,Duration:6,Age:4,ReapplicationDelay:1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:instant_health",amplifier:0b,duration:1,show_icon:0b,show_particles:0b}]}}
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~10 ~ 1 0.5 0

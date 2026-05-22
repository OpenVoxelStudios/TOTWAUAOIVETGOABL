#! unlock {
#!   phase: number,
#! }

$scoreboard players set unlock_input phase $(phase)

scoreboard players operation phase_plus1 phase = phase phase
scoreboard players add phase_plus1 phase 1

execute unless score unlock_input phase = phase_plus1 phase run return fail

scoreboard players operation phase phase = phase_plus1 phase
$scoreboard players set phase_unlocked_$(phase) phase 1

$function phase:unlock_triggers/$(phase)

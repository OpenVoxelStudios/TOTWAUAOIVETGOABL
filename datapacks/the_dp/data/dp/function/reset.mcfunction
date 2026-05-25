function phase:reset

scoreboard players set @a music 0

tag @a remove dead

function steve:fake_player/kill_all

function entity:reset
function dp:keycard/reset
function dp:itempicker/reset
function dp:generator/reset

function dp:story/reset

effect give @a instant_health 1 200 true

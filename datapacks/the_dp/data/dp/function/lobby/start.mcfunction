advancement revoke @s only dp:start_interact
title @a times 0 10 50
title @a title {font:"shader",text:"\uFF00",color:"#0000FF",shadow_color:0}
stopsound @a ambient
function dp:reset
gamemode adventure @a
tp @a 26.0 -60.0 46.0 -180 0
clear @a

function dp:dialogue/start
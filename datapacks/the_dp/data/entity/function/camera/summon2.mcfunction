function aj:entity_camera/summon {args:{animation:'grow',start_animation:true}}
execute store result score @n[tag=aj.entity_camera.root,distance=0..1] camera_timer run random value 0..60
// Inherit the parent event
event_inherited();

if (instance_exists(obj_controls))
{
	instance_destroy(obj_controls)
}

else
{
	instance_create_layer(670, 760, "Instances", obj_controls)
}
//Reduce HP by one
hitpoints -= 1;

//Destroy the bullets
instance_destroy(other)

if hitpoints <= 0 
{
	instance_destroy()
}
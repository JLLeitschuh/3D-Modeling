
use <../external-resources/thumbnails/thumbnails-by-name.scad>
use <../shapes/thumbnails/thumbnails-by-name.scad>

module thumbnailByName(iconName)
{
	if(iconName == "dialog-bubble")
	{
		shapes_thumbnailByName(iconName);
	}
	else if(iconName == "heart")
	{
		shapes_thumbnailByName(iconName);
	}
	else if(iconName == "bat")
	{
		externalResources_thumbnailByName(iconName);
	}
	else if(iconName == "spur")
	{
		shapes_thumbnailByName(iconName);
	}
	else
	{
		echo("No thumbnail was found.");
	}
}

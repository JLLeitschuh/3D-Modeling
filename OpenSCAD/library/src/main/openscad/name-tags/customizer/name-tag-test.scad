        
/* [Base] */

// This parameter is all about that base color.
baseColor = "black"; // [pink, red, black, white, yellow, blue, green]

baseThickness = 2; // [1 : 5]

// This determines how wide the name tag is.
baseWidth = 228;	// [228:600]

// This determines the height of the name tag.
baseHeight = 15; // [54:150]


/* [Border] */
borderColor = "yellow"; // [pink, red, black, white, yellow, blue, green]
showBorder = "No"; // [Yes, No]        


/* [Bottom Text] */
bottomText = "Fun Enthusiast";
bottomTextOffsetX = 0; // [-315 : 315]
bottomTextOffsetY = -20; // [-315 : 315]


/* [Chain Loop]*/
chainLoop = true;
chainLoopLengthZ = 6;
chainLoopPosition = "bottom"; // [bottom, top]

/* [General] */
letterThickness = 3; // [1 : 15]


/* [Icons] */
iconColor = "white"; // [pink, red, black, white, yellow, blue, green]        
//TODO: Where is the heart icon, man?  "Put your heart into it."
leftIconType = "Bass Clef";   // [Creeper, Light Bulb, Rebel, Trooper, Aqua Dude, Cat, Fan, Spur, Mario, Luigi, Thundercat, Bass Clef, Treble Clef]        
rightIconType = "Light Bulb"; // [Creeper, Light Bulb, Rebel, Trooper, Aqua Dude, Cat, Fan, Spur, Mario, Luigi, Thundercat, Bass Clef, Treble Clef]

// This is the x off set of the icons
xIconOffset = -100; // [10:200]

// This is the y off set of the icons
yIconOffset = 3;  // [1:200]
        
// This is the X,Y scale of the icons.
leftIconXyScale = 0.5;  // [0.1 : 0.05 : 5]

rightIconXyScale = 0.25; // [0.1 : 0.05 : 5]

leftIconHeight = 1.5; // [0.1: 0.1 :5]
rightIconHeight = 4.0; // [0.1: 0.1 :5]


/* [Top Text] */
topText = "Firstnesto Lastquez";
topTextColor = "white"; // [pink, red, black, white, yellow, blue, green]

/* [Hidden] */

use <../name-tag.scad>

nametag(baseColor = baseColor,
        baseThickness = baseThickness,
        borderColor = borderColor,
        chainLoop = chainLoop,
        chainLoopLengthZ = chainLoopLengthZ,
        chainLoopPosition = chainLoopPosition,
        iconColor = iconColor,
        letterThickness = letterThickness,
        roundedCorners = true,
        topText = topText,
        topTextSize = 13,
        topTextColor = topTextColor,
        bottomText = bottomText,
        bottomTextOffsetX = bottomTextOffsetX,
        bottomTextOffsetY = bottomTextOffsetY,
        font=font,
        leftIconType = leftIconType,
        leftIconHeight = leftIconHeight,
        rightIconHeight = rightIconHeight,
//        rightIconOffsetY = 0,
        rightIconType = rightIconType,
        xIconOffset = xIconOffset,
        yIconOffset = yIconOffset,
        baseWidth = baseWidth,
        showBorder = showBorder);
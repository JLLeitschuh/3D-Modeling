
use <../../rounded-cube.scad>

boardLength = 150;
boardWidth = 100;
size = [boardLength, boardWidth, 1];

// TODO: Fix theree being two 'sides' paramters, it looks like one shold be 'size'.
roundedCube(size=[boardLength, boardWidth, 1],
            sides=5,
            sides=20);

color("green")
translate([0, 130, 0])
roundedCube(cornerRadius = 5,
            sides=20,
            sidesOnly=true,
            size=size);

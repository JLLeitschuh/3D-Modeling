#!OpenJSCAD


function main() {
		return CSG.sphere({
   center: [0, 0, 0],
   radius: 2,                      // must be scalar
   resolution: 128
 });
   
}
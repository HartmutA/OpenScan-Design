// Raspberry pi Camera Focus ring
// Designed by Richard Garsthagen - the.anykey@gmail.com
// use freely in any shape you like :-)

$fn = 80;

outerradius = 10;
wallthickness = 0.8;

difference() {
 base();
 translate([0,0,10])
   cube(size=30,center=true);
 translate([0,0,0])
  sphere(r=outerradius-wallthickness);
 translate([0,0,0])
  cylinder(h=60,r=1.6,center=true);
translate([0,0,-outerradius])
 cylinder(h=1,r=3.3,center=true);

}



module base(){
 translate([0,0,0])
  sphere(r=outerradius);

 translate([0,0,-outerradius+0.9])
 cylinder(h=wallthickness,r=3.3,center=true);

 translate([-1,4,-8])
  cube(size=[2,8,8],center=false);
}

 


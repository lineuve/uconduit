include <ucon_config.scad>
use <ucon_functions.scad>
use <MCAD/motors.scad>
use <MCAD/nuts_and_bolts.scad>
$fn=100;

//mid_mount();
//lower_mount();
cable_mount();

module cable_mount(){
difference(){

union(){

cylinder(r=tubeOD/2+3,h=10);
translate([0,0,10/2]) cube([9,45,10],center=true);
translate([18/2,0,10/2]) cube([20,12,10],center=true);
}

translate([0,0,-0.5]) cylinder(r=tubeOD/2,h=21);

translate([-10,-18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=40);
translate([-10,18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([16,0,10/2]) cube([1.75,4,20],center=true);
cube([1,100,100],center=true);

}}

module lower_mount(){
difference(){

union(){

cylinder(r=tubeOD/2+3,h=20);
translate([0,0,20/2]) cube([9,45,20],center=true);
translate([14/2,-tubeOD/2,20/2]) cube([14,22,20],center=true);
}

translate([0,0,-0.5]) cylinder(r=tubeOD/2,h=21);

translate([-10,-18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=40);
translate([-10,-18,20/2+5]) rotate([0,90,0]) cylinder(r=2.1,h=40);
translate([-10,18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([-10,18,20/2+5]) rotate([0,90,0]) cylinder(r=2.1,h=20);

cube([1,100,100],center=true);

}}

module mid_mount(){
difference(){

union(){
hull(){
cylinder(r=tubeOD/2+3,h=20);
translate([tubeOD/2+3+2,0,20/2]) cube([4,8,20],center=true);}
translate([0,0,20/2]) cube([9,45,20],center=true);
}

translate([0,0,-0.5]) cylinder(r=tubeOD/2,h=21);
translate([0,0,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([0,0,20/2+5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([14,0,20/2+5]) rotate([0,90,0]) boltHole(4,20,tolerance=0.2);
translate([15.5,0,20/2+5]) rotate([0,90,0]) boltHole(4,20,tolerance=0.2);
translate([14,0,20/2-5]) rotate([0,90,0]) boltHole(4,20,tolerance=0.2);
translate([15.5,0,20/2-5]) rotate([0,90,0]) boltHole(4,20,tolerance=0.2);

translate([-10,-18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([-10,-18,20/2+5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([-10,18,20/2-5]) rotate([0,90,0]) cylinder(r=2.1,h=20);
translate([-10,18,20/2+5]) rotate([0,90,0]) cylinder(r=2.1,h=20);

cube([1,100,100],center=true);

}}
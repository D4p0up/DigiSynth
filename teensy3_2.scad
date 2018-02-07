t_w=17.78;
t_l=35.56;
t_h=1.57;

//Board
color([0.1,0.5,0.1]) cube([t_w,t_l,t_h]);
//USB Port
translate ([t_w/2,1.2,t_h+1.25]) color([0.5,0.5,0.5]) cube([7.5,5,2.5],center=true);
//Reset Button
translate ([t_w/2,31,t_h+0.6]) color([0.7,0.7,0.7]) cube([3,2,1.2],center=true);
translate ([t_w/2,31,t_h+0.4]) color([0.4,0.4,0.4]) cube([4,3.5,0.8],center=true);
//UP
translate ([t_w/2,22,t_h]) color([0.2,0.2,0.2]) cube([9.8,9.8,0.6],center=true);
//Chips
translate ([6.5,6.5,t_h]) color([0.2,0.2,0.2]) cube([3.1,3.1,0.6],center=true);
translate ([12.5,8.5,t_h]) color([0.2,0.2,0.2]) cube([3.1,3.1,0.6],center=true);
//Passives
//resistor(10,10,10);

// Pins
for(i = [0 : 1 : 13]) { pin(1.27,1.27+i*2.54,0); }
for(i = [1 : 1 : 5]) { pin(1.27+i*2.54,1.27+13*2.54,0); }
for(i = [0 : 1 : 13]) { pin(1.27+6*2.54,1.27+i*2.54,0); }
pin(1.27+2.54,1.27+2.54,0);
pin(1.27+2.54,1.27+3*2.54,0);
pin(1.27+2.54,1.27+4*2.54,0);
pin(1.27+2.54,1.27+5*2.54,0);


module pin(x,y,z) {
    translate([x,y,z]) {
    color([0.5,0.5,0]) cylinder(1.66,1,1,$fn=10);
    color([0.6,0.5,0.5])translate([-0.3,-0.3,-4])cube([0.6,0.6,6]);
    color([0.2,0.2,0.2])translate([-0.75,-0.75,-1.2])cube([1.5,1.5,1.2]);
    }    
}

module resistor(x,y,z) {
    translate([x,y,z]) {
    color([0.8,0.8,0.8]) cube([0.4,0.22,0.2]);
    translate([0,0.22,0]) color([0.6,0.2,0.2]) cube([0.4,0.27,0.2]);
    translate([0,0.22+0.27,0]) color([0.8,0.8,0.8]) cube([0.4,0.22,0.2]);
    }    
    }    

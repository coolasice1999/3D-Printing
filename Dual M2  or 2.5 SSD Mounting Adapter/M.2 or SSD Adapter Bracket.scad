/*
    Parametric Dual M.2 / SSD to 3.5" Adapter
        * You need to export one bracket per side
    
    Source: https://github.com/KaiserSoft/3D-Printing/tree/master/Dual%20M2%20%20or%202.5%20SSD%20Mounting%20Adapter
    
    License: CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
    Designed: 2019 by Mirko Kaiser in Stuttgart, Germany
*/

/* [User Config Options] */
// You need one bracket for each side
Bracket_Side = "left"; // [ left, right ]

// Thickness of the PCB or SSD
Slot1_Height = 7; // [ 1.25:1.25mm Bare PCB, 2:2mm Bare PCB, 5:5mm, 6:6mm, 7:7mm, 8:8mm, 9:9mm, 10:10mm, 11:11mm ]
// Length of PCB or SSD
Slot1_Length = 98; // [ 98:98mm Bare PCB, 101:101mm SSD ]
// Adjust the depth if your PCB has components close to the edge
Slot1_Depth = 3; // [ 1:1mm, 2:2mm, 3:3mm, 4:4mm ]

// Thickness of the PCB or SSD
Slot2_Height = 7; // [ 1.25:1.25mm Bare PCB, 2:2mm Bare PCB, 5:5mm, 6:6mm, 7:7mm, 8:8mm, 9:9mm, 10:10mm, 11:11mm ]
// Length of PCB or SSD
Slot2_Length = 98; // [ 98:98mm Bare PCB, 101:101mm SSD ]
// Adjust the depth if your PCB has components close to the edge
Slot2_Depth = 3; // [ 1:1mm, 2:2mm, 3:3mm, 4:4mm ]
// Ad mounting holes for the locking plate
Lock_Plate = 1; // [0:no, 1:yes]



include <variables.scad>;
/* variables end */





/* needs one for each side */
if( Bracket_Side == "left" ) {
    mirror( [1, 0 ,0] ) mountingBlock();
}else{
    mountingBlock();
}



/* the entire mounting block */
module mountingBlock(){
    rotate( [0, 90, 0 ] ){ //proper rotation for printing
        difference(){
            /* main Bracket */
            cube( [ BracketWidth, BracketLength, BracketHeight] , false);


            /* bottom slot */
            if( Slot1_Height < 10 ){
                makeSlot( 3, Slot1_Height, Slot1_Depth, Slot1_Length );
            }else if( Slot1_Height == 10 ){
                makeSlot( 2, Slot1_Height, Slot1_Depth, Slot1_Length );
            }else{
                makeSlot( 1, Slot1_Height, Slot1_Depth, Slot1_Length );
            }


            /* top slot */
            if( Slot2_Height < 5 ){
                distance = BracketHeight-7-3;
                makeSlot( distance, Slot2_Height, Slot2_Depth, Slot2_Length );
            }else if( Slot2_Height < 10 ){
                distance = BracketHeight-Slot2_Height-3;
                makeSlot( distance, Slot2_Height, Slot2_Depth, Slot2_Length );
            }else if( Slot2_Height == 10 ){
                distance = BracketHeight-Slot2_Height-2;
                makeSlot( distance, Slot2_Height, Slot2_Depth, Slot2_Length );
            }else{
                distance = BracketHeight-Slot2_Height-1;
                makeSlot( distance, Slot2_Height, Slot2_Depth, Slot2_Length );
            }
            

            /* 3.5" mounting holes */
            m3Holes();

            /* lock slider mounting holes */
           if( Lock_Plate == 1 ){
            lockSlider();
           }
        }
    }
}



/* lock slider mount */
module lockSlider(){
    for( x=[0:1] ){
       translate([ BracketWidth/2.2, -1, LockHolesDistance + LockHolesDistance * x]) { 
            rotate( [-90, 0, 0] ){
        color ("red") cylinder( $fn=25, 1+LockHolesDepth, d1=LockHolesDiameter, d2=LockHolesDiameter-LockHolesDiameter*(LockHolesTaper/100),false);
            }
        }
    }
}


/* 3.5" mounting holes */
module m3Holes(){
    for( x=[0:1] ){
        translate( [BracketWidth+1,((BracketLength-MountingHolesDistance)/2)+(x*MountingHolesDistance),MountingHolesDistanceBottom]){
            rotate( [0, -90, 0] ){
                color ("blue") cylinder($fn=25, 1+MountingHolesDepth, d1=MountingHolesDiameter, d2=MountingHolesDiameter-MountingHolesDiameter*(MountingHolesTaper/100),false);
            }
        }
    }
}


/* creates a single slot */
module makeSlot( Distance2Bottom, SlotHeight, SlotDepth, SlotLength ){
    translate([ -1, -1, Distance2Bottom]) {
        color ("purple") cube( [ 1+SlotDepth, 1+SlotLength, SlotHeight], false);
    }
}

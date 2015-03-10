Enclosure for Digital Temperature Controller
============================================

This is an enclosure for one of those cheap Chinese digital temperature control units sold on Amazon and eBay. These devices sell for about 20 Euro and are really good for controlling a heating or cooling unit.
![example image of unit without cover](https://github.com/KaiserSoft/3D-Printing/blob/master/Temperature%20Controller%20Box/grfx/installed%20without%20cover.png?raw=true?raw=true)

**WARNING**: Main voltage is deadly! Don't attempt this unless you know what you are doing!
I am not a trained electrician. The instructions below may be wrong or even dangerous.


Required Parts
--------------
+ 1x cheap Chinese temperature controller
+ 1x 2,5mm² terminal block strip with 6 terminals
+ 220V cable
+ 1x fuse according to load. I used a 3A fuse here
+ 5x M3x20mm screws to secure the lid
+ 3x 2mm self tapping screw to secure terminal strip
+ 2x 3mm or larger zip ties to secure mains lines
+ 1x 2mm zip tie to secure temperature wire

The enclosure has mounting holes for these kind terminal blocks (2,5mm²). ![terminal block strip](https://github.com/KaiserSoft/3D-Printing/blob/master/Temperature%20Controller%20Box/grfx/640px-MFrey_Screw_terminal.jpg?raw=true)


Build Instructions
------------------
**Warning** There are different versions of the temperature controller. Some have different outputs and some require 12V to run. **Always** check the manual that came with your unit for the correct wiring diagram!!!

I am using model MH1230A in this example. It connects directly to mains and can switch loads of up to 30 amps.

+ Print enclosure with PLA using 0,25mm layers, 20% 3D honeycomb infill, 1 outside shell, 2 top/bottom layers and a heated bed.
+ Wire unit according to the wiring diagram that is included with your unit
![wiring example](https://github.com/KaiserSoft/3D-Printing/blob/master/Temperature%20Controller%20Box/grfx/plenty%20of%20room%20for%20wiring.png?raw=true)
+ Secure incoming cables with zip ties on the inside. This prevents any cables from being ripped out of the unit.


**Warning** This unit will disconnect whatever is connected to terminal 1. The output pin of your connected load may be hot if your country does not use keyed outlets. Germany does not, so I marked the location of the phase on my plug and check the outlet with a phase detector before connecting the unit.





Bench Power Supply / Voltage Regulator
======================================
Adjustable bench supply / linear voltage regulator based on the LM317T IC. Circuit design is based on the  datasheet example. 


The supply is intended to be used with low power projects but is capable of supplying a bit more current when required. I use one rail to power the microcontroller circuit and the other to supply 9V to the h-bridge of two small gear motors. I can pull upto 600mA @ 12V without the need for a fan but things get a bit hot after that.



The maximum output voltage of the LM317 is about 1.5V below the supplied input voltage. Try to keep your input voltage close to your required output voltage since the extra is wasted as heat.
 
* Input: 6VDC  Output (100mA load): 1,2V - 4,5V
* Input: 9VDC  Output (100mA load): 1,2V - 7,5V
* Input: 12VDC Output (100mA load): 1,2V - 10,4V

A 9V supply can deliver 5V to the micro controller circuit and up to 7,5V to other devices. Not having a large overhead on the input allows you to draw quite a bit of current without getting your heatsink hot.
So pulling 1A@5V from a 9V input is more efficient then drawing the same from a 12V input.





Parts per Power Rail
--------------------
The following parts are required to build one power rail. Simply double every part for a dual rail supply.
![example was not build with this image in mind....](https://github.com/KaiserSoft/3D-Printing/blob/master/Power%20Supply%20v1/grfx/board%20in%20case%20-%20assembled%20-%20small.png?raw=true)


* 1x LM317T
* 1x 35V 100uF electrolytic capacitor
* 1x 35V 1uF electrolytic capacitor
* 1x 50V 100nF (1uF) ceramic capacitor
* 1x 220 Ohm 1/4W resistor
* 3x 1N4004 diode (two should be enough, keep across  Vin and output pins)
* 1x 10K Ohm pot (adjustment very sensitive... 5K might be better)
* 1x 1K Ohm 1/4W resistor (LED)
* 1x 3mm LED
* 1x Heatsink
* 1x Silpad (between LM317T and heatsink)
* 2x female banana connectors with 4mm shaft (http://www.reichelt.de/Bananenstecker-Zwergstecker/BB-4-RT/3/index.html?ARTICLE=4896)


Case Assembly
-------------
Print and use 4 x 3mm self tapping screws to secure the lid.

* Box Lower v1.STL
* Top Cover v1.STL
Small Voltage Regulator / Bench Power Supply
============================================

An adjustable voltage regulator based on the LM317T. This is intendet to be used as a small bench supply
when working with an arduino or similar low power projects.

The LM317T may supply ~1.5A but pulling that much current for long requires a large heatsink.





Parts per Power Rail
------------------------
The following parts are required to build one power rail. Simply double every part for a dual rail supply.
![example was not build with this image in mind....](https://github.com/KaiserSoft/3D-Printing/blob/master/Power%20Supply%20v1/grfx/board%20without%20case%202015-03-06.jpg?raw=true)


* 1x LM317T
* 1x 35V 100uF electrolytic capacitor
* 1x 35V 1uf El electrolytic
* 1x 50V 100nF (1uF) ceramic capacitor
* 1x 220 Ohm 1/4W resistor
* 3x 1N4004 diode (two should be enough, keep across  Vin and output pins)
* 1x 10K Ohm pot (adjustment very sensitive... 5K might be better)
* 1x 1K Ohm 1/4W resistor (LED)
* 1x 3mm LED
* 1x Heatsink
* 1x Silpad (between LM317T and heatsink)


Case Assembly
-------------
The case is not done yet
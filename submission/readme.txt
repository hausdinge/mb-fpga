Team number: AOHW-311
Project name: Deep zoom Mandelbulb on FPGAs
Link to YouTube Video(s): https://youtu.be/cijEOWLiD6s
Link to project repository: https://github.com/hausdinge/mb-fpga

University name: Heidelberg University
Participant(s): Kevin Klein
Email: Kevin.Klein@stud.uni-heidelberg.de
Supervisor name: Prof. Dirk Koch
Supervisor e-mail: dirk.koch@ziti.uni-heidelberg.de

Board used: Digilent Nexys Video
Software Version: Vivado 2022.2
Brief description of project: 
This project presents the first implementation of the Mandelbulb 3D fractal on FPGAs. 
Our goal is to achieve very high zoom levels similar to the Mandelbrot set. The Mandelbulb 
is rendered using ray marching, and very high computational precision is required, 
for which we have chosen special algorithms like CORDIC.

Description of archive (explain directory structure, documents and source files):
The archive contains only the report and the readme.txt file.
Our preject is located on github.
In the repo we have the bin_bit_files folder to load the design on the nexys video board.
We also have two vivado project folders containing a Mandelbulb fpga implementation for the
nexys video and nexys 4 DDR board.

Instructions to build and test project
To test the project on the nexys video board just load the bin or bit file
located in the bin_bit_files folder on the fpga. Than the Mandelbulb can be viewed
over the HDMI port in HD. To zoom into the Mandelbulb the five push buttons are used.
To build the project from the source code the project can be direcly opened in Vivado.
# mb-fpga

This project implements the Mandelbulb on an FPGA (tested on Nexys 4 DDR and Nexys Video). This demo makes it possible to render the Mandelbulb in more or less real-time (0.5-5 FPS depending on the zoom level).

## How to use this demo

1. Simply load the bit or bin file onto the FPGA (Board: Nexys Video).
2. The output is in HD via HDMI

In order for the user to explore the Mandelbulb, the following buttons and switches on the board are used: `BTNC`, `BTNU`, `BTND`, `BTNL`, `BTNR`, `SW0`, `SW1` 

In general (this also applies to the GPU versions), aliasing problems occur at deep zoom levels. To minimize aliasing problems, `SW0` should be set to `1` at **deep zoom levels**. You can recognize aliasing by the appearance of many black dots.

## Zooming

To be able to zoom into the Mandelbulb, `SW1` must be set to `0`. The push buttons are used for zooming:

- `BTNC`: Zoom step size: 0.1 -> in
- `BTNU`: Zoom step size: 0.0001 -> in
- `BTND`: Zoom step size: 0.001 -> in
- `BTNL`: Zoom step size: 0.01 -> in
- `BTNR`: Zoom step size: 0.1 -> out
  
The closer you get to the Mandelbulb surface, the smaller you should choose the zoom step size to avoid ending up inside the Mandelbulb. However, it can still be interesting to land inside the Mandelbulb if you're lucky - though often, you might just get a black screen.

## Exploration

To explore the Mandelbulb, i.e., to move around in space, you need to exit the zoom mode. You can exit the zoom mode by setting `SW1` to `1`:

- `BTNC`: Zoom step size: 0.0333 -> in
- `BTNU`: Move up: 0.0333
- `BTND`: Move down: 0.0333
- `BTNL`: Move left: 0.0333
- `BTNR`: Move right: 0.0333

## Warning

The FPGA can get very hot as it operates close to the power limit. It is recommended to use a heat sink and a fan.
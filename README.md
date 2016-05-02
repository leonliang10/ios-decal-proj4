# PlotMe

## Author
* Leon Liang

## Purpose
PlotMe is a graphing application that helps users plot graphs with precision. 
PlotMe utilizes the camera on iOS devices to allow users to trace their desire plots on paper.

## Features
* Displays a variety of math functions for users to use
* Displays an overlay view of the selected function on the camera interface for users to 
trace on paper in real-time

## Control Flow
* Users are initially presented with an interface that contains the list of supported
functions 
* Tapping one of the functions will bring up the camera interface as well as an overlay
of the function that the user chose
* Once the user is done tracing, tapping the done button will go back to the main menu
of list of functions

## Implementation

### View
* CustomOverlayView

### Controller
* CustomOverlayViewController
* ViewController

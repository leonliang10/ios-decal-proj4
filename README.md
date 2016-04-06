# PlotMe

## Author
* Leon Liang

## Purpose
PlotMe is a graphing application that helps users plot graphs with precision. 
PlotMe utilizes the camera on iOS devices to allow users to trace their desire plots on paper.
PlotMe can also be used to convert plots into functions through image processing.

## Features
* Displays a plot of user inputted functions on top of the camera display for users to trace 
on paper in real-time
* Functions as a graphing calculator
* Takes a picture of a plot, and the application will identify and convert it into functions

## Control Flow
* Users are initially presented with a graphing calculate interface, where they can input any 
commonly used functions and it'll be plotted
* Tapping the trace button will activate the camera with the plot displayed on the camera
interface. This is where users can proceed to trace the plot on paper.
* Tapping the camera button will activate the camera where users can take a picture of an
existing plot on paper, and it will be converted to a function where it will be displayed
on the graphing calculating interface.

## Implementation

### Model
* Functions.swift
* Plots.swift

### View
* PlotView
* CameraView
* CalculatorView

### Controller
* PlotViewController
* CameraViewController
* CalculatorViewController

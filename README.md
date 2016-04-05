# PlotMe

## Author
* Leon Liang

## Purpose
PlotMe is a graphing application that helps users plot graphs with precision. 
PlotMe utilizes the camera on iOS devices to allow users to trace their desire plots on paper.
PlotMe can also be used to convert plots into functions through image processing.

## Features
Bullet Points: [List each feature you will implement. e.g. Ability to view outfit pages with photos. Filter by cat size. Users can share outfit page listings with friends.]
* Displays a plot of an input function on the display of the camera for users to trace on paper
* Functions as a graphing calculator
* Take a picture of a plot converts it into a function

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

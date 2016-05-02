//
//  ViewController.swift
//  PlotMe
//
//  Created by Leon Liang on 5/1/16.
//  Copyright © 2016 Leon Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate, CustomOverlayDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    @IBAction func yEqualx(sender: UIButton) {
        goToCameraMode("x")
    }
    
    @IBAction func yEqualAbsx(sender: UIButton) {
        goToCameraMode("abs_x")
    }
    
    @IBAction func yEqualxSQ(sender: UIButton) {
        goToCameraMode("x_squared")
    }
    
    @IBAction func yEqualxCube(sender: UIButton) {
        goToCameraMode("x_cubed")
    }
    
    @IBAction func yEqualSqrtx(sender: UIButton) {
        goToCameraMode("sqrt_x")
    }
    
    @IBAction func yEqualExpx(sender: UIButton) {
        goToCameraMode("e_x")
    }
    
    @IBAction func yEqualLogx(sender: UIButton) {
        goToCameraMode("log_x")
    }
    
    @IBAction func yEqualTanx(sender: UIButton) {
        goToCameraMode("tan_x")
    }
    
    @IBAction func yEqualCosx(sender: UIButton) {
        goToCameraMode("cos_x")
    }
    
    @IBAction func yEqualSinx(sender: UIButton) {
        goToCameraMode("sin_x")
    }
    
    var picker = UIImagePickerController()

    func goToCameraMode(function : String) {
        
        if UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil {
            picker = UIImagePickerController() //make a clean controller
            picker.allowsEditing = false
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            picker.cameraCaptureMode = .Photo
            picker.showsCameraControls = false
            picker.delegate = self
            picker.modalPresentationStyle = .FullScreen
            
            //customView stuff
            let customViewController = CustomOverlayViewController(
                nibName:"CustomOverlayViewController",
                bundle: nil
            )
            let customView:CustomOverlayView = customViewController.view as! CustomOverlayView
            customView.frame = self.picker.view.frame
            customView.delegate = self
            customViewController.graphOverlayImageView.image = UIImage(named: function)
            
            presentViewController(picker,
                                  animated: true,
                                  completion: {
                                    self.picker.cameraOverlayView = customView
                }
            )
            
        } else { //no camera found -- alert the user.
            let alertVC = UIAlertController(
                title: "No Camera",
                message: "Sorry, this device has no camera",
                preferredStyle: .Alert)
            let okAction = UIAlertAction(
                title: "OK",
                style:.Default,
                handler: nil)
            alertVC.addAction(okAction)
            presentViewController(
                alertVC,
                animated: true,
                completion: nil)
        }
    }
    
    //MARK: Picker Delegates
    func imagePickerController(
        picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        UIImageWriteToSavedPhotosAlbum(chosenImage, self,nil, nil)
    }
    //What to do if the image picker cancels.
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true,
                                      completion: nil)
    }
    
    func didCancel(overlayView:CustomOverlayView) {
        picker.dismissViewControllerAnimated(true,
                                             completion: nil)
    }
}


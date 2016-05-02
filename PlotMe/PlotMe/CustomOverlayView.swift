//
//  CustomOverlayView.swift
//  PlotMe
//
//  Created by Leon Liang on 5/1/16.
//  Copyright © 2016 Leon Liang. All rights reserved.
//

import UIKit

protocol CustomOverlayDelegate{
    func didCancel(overlayView:CustomOverlayView)
}

class CustomOverlayView: UIView {

    var delegate:CustomOverlayDelegate! = nil
    
    @IBAction func cancelButton(sender: UIButton) {
        delegate.didCancel(self)
    }


}

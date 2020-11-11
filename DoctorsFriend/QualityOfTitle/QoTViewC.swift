//
//  QoTViewC.swift
//  DoctorsFriend
//
//  Created by Goutham Mac Mini on 21/05/20.
//  Copyright © 2020 Doctors Friend. All rights reserved.
//

import UIKit

class QoTViewC: UIViewController {

    @IBOutlet weak var LabelbestEverValue: UILabel!
    @IBOutlet weak var lableFeelCurrently: UILabel!
    
    var sliderOutlet: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //sliderOutlet.transform = CGAffineTransform(rotationAngle:CGFloat(Double.pi*1.5))

        //        UIView.animate(withDuration: 2, animations: {
//            self.sliderOutlet.transform = CGAffineTransform(rotationAngle:CGFloat(Double.pi*1.5))
//
//        })
        
        
        addSliderToView()
    

    }
    
    func addSliderToView(){
        let height_ = 50.0
        let width_ = view.frame.height - 300
        let xAxis = (view.frame.width) -  width_/2 - 50
        let yAxis = (view.frame.height/2) - 50/2
//        let viewProgram = UIView(frame: CGRect(x: Double(xAxis), y: yAxis, width: width_, height: Double(height)))
//        viewProgram.backgroundColor = UIColor.black
//        view.addSubview(viewProgram)
        
        let sliderView = UISlider(frame: CGRect(x: Double(xAxis), y: Double(yAxis), width: Double(width_), height: Double(height_)))
  
        sliderView.transform = CGAffineTransform(rotationAngle: .pi*1.5)
        
        view.addSubview(sliderView)
    }


}

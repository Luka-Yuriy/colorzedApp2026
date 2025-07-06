//
//  ViewController.swift
//  colorzedApp2026
//
//  Created by Yurii Luka on 06.07.2025.
//

import UIKit

class ViewController: UIViewController {
    //MARK: IBOutlets
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColor()
        rgbSlidersAction()
        colorizedView.layer.cornerRadius = 12
    }
    
    //MARK: IBActions
    @IBAction func redSliderAction() {
        setBackgroundColor()
    }
    
    @IBAction func greenSliderAction() {
        setBackgroundColor()
    }
    
    @IBAction func blueSliderAction() {
        setBackgroundColor()
    }
    
    @IBAction func rgbSlidersAction() {
        redValueLabel.text = (String(format: "%.2f", redSlider.value))
        greenValueLabel.text = (String(format: "%.2f", greenSlider.value))
        blueValueLabel.text = (String(format: "%.2f", blueSlider.value))
    }
    
    //MARK: Private Methods
    private func setBackgroundColor() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}




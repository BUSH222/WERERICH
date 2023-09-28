//
//  ViewController.swift
//  WERERICH
//
//  Created by Ted Vtorov on 28.09.2023.
//

import UIKit

class ViewController: UIViewController {

    
    var ImageAlpha = 0.0
    var PoorMode = 1
    
    @IBOutlet weak var DiamondImage: UIImageView!
    
    @IBOutlet weak var ButtonVar: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DiamondImage.alpha = 0.0
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        ImageAlpha += Double(PoorMode) * 0.1
        if ImageAlpha >= 1 || ImageAlpha <= 0 {
            PoorMode *= -1
            if PoorMode == -1 {
                ButtonVar.setTitle("we're poor!", for: .normal)
            } else {
                ButtonVar.setTitle("WE'RE RICH!", for: .normal)
            }
        }
        DiamondImage.alpha = ImageAlpha
        
    }
    


}


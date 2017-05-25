//
//  TutorialViewController.swift
//  test2
//
//  Created by John Mathew Escobal on 5/22/17.
//  Copyright © 2017 SOU. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {


    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var b1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ViewController Background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background1.jpg")!)
        
        // Button Styles
        b1.layer.cornerRadius = 20
        b1.layer.borderColor = UIColor.black.cgColor
        b1.layer.borderWidth = 3
        
        // View
        v1.layer.cornerRadius = 20
        v1.layer.borderColor = UIColor.black.cgColor
        v1.layer.borderWidth = 3
        v1.layer.opacity = 0.5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

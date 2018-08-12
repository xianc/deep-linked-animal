//
//  AnimalViewController.swift
//  Deep Linked Animals xchen
//
//  Created by Xian Chen on 7/9/18.
//  Copyright © 2018 Branch Metrics. All rights reserved.
//

import UIKit
import Branch

enum AnimalType {
    case dog
    case cat
}

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    var animal: AnimalType = AnimalType.dog

    @IBAction func shareBranchLink() {
        let lp: BranchLinkProperties = BranchLinkProperties()
        lp.channel = "facebook"
        lp.feature = "sharing"
        
        var animalName = "dog"
        
        if animal == AnimalType.cat {
            animalName = "cat"
        }
        
        lp.addControlParam("animal", withValue: animalName)
        
        let buo = BranchUniversalObject(title: "Branch Link")
        buo.showShareSheet(with: lp, andShareText: "Check this out", from: self, completion: nil)
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if animal == AnimalType.dog {
            animalLabel.text = "Woof"
            animalImage.image = #imageLiteral(resourceName: "dog")
        }
        else if animal == AnimalType.cat {
            animalLabel.text = "Meow"
            animalImage.image = #imageLiteral(resourceName: "cat")
        }
        
        animalLabel.sizeToFit()
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

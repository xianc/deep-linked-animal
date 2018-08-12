//
//  MainViewController.swift
//  Deep Linked Animals xchen
//
//  Created by Xian Chen on 7/9/18.
//  Copyright © 2018 Branch Metrics. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "dog segue" {
            let vc = segue.destination as! AnimalViewController
            vc.animal = AnimalType.dog
        }
        else if (segue.identifier == "cat segue"){
            let vc = segue.destination as! AnimalViewController
            vc.animal = AnimalType.cat
        }
    }

}

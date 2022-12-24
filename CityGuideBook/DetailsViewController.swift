//
//  DetailsViewController.swift
//  CityGuideBook
//
//  Created by Bedirhan Köse on 24.12.22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var CityNameLabel: UILabel!
    @IBOutlet weak var CityRegionLabel: UILabel!
    
    var chosenCity : City?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        CityNameLabel.text = chosenCity?.name
        CityRegionLabel.text = chosenCity?.region
        imageView.image = chosenCity?.image

    }
    

    

}

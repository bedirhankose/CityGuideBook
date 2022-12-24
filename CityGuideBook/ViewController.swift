//
//  ViewController.swift
//  CityGuideBook
//
//  Created by Bedirhan Köse on 24.12.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var cityArray = [City]()
    var userChoice : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        tableView.delegate = self
        tableView.dataSource = self
        
        //Cities
        let ankara = City(name: "Ankara", region: "Central Anatolia", image: UIImage(named: "Ankara")!)
        let antalya = City(name: "Antalya", region: "Mediterrean", image: UIImage(named: "antalya")!)
        let diyarbakir = City(name: "Diyarbakir", region: "Southeastern Anatolia", image: UIImage(named: "diyarbakir")!)
        let istanbul = City(name: "Istanbul", region: "Marmara", image: UIImage(named: "istanbul")!)
        let izmir = City(name: "Izmir", region: "West Anatolia", image: UIImage(named: "izmir")!)
        
        cityArray = [ankara, antalya, diyarbakir, istanbul, izmir]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userChoice = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chosenCity = userChoice
        }
    }

}


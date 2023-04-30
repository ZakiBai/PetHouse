//
//  WelcomeViewController.swift
//  PetHouse
//
//  Created by 65 on 29.04.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var petTableView: UITableView!
    
    private var petList = Pet.getPetList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petTableView.dataSource = self
        petTableView.rowHeight = 80
        
        
    }
    
//    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let detailsVC = segue.destination as? PetTableViewController
//        detailsVC?.pet = sender as? Pet
//
//    }
    
}
// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        petList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pet", for: indexPath)
        let pet = petList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = pet.nickname
        content.secondaryText = pet.breed
        content.image = UIImage(named: pet.photo)
        content.imageProperties.cornerRadius = petTableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
        
    }
    
}


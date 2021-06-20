//
//  CoffeeViewController.swift
//  CoffeeCatalog
//
//  Created by Elena Kolesova on 20.06.2021.
//

import UIKit

class CoffeeViewController: UIViewController {
    
    @IBOutlet weak var coffeeTableView: UITableView!
    
    private let coffeeList = CoffeeType.getCoffeeList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coffeeTableView.delegate = self
        coffeeTableView.dataSource = self
        coffeeTableView.rowHeight = 55
        
        title = "Coffee List"
    }
    
}

extension CoffeeViewController: UITableViewDelegate {
}

extension CoffeeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coffeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = coffeeTableView.dequeueReusableCell(withIdentifier: "coffeeCell", for: indexPath)
        
        let coffee = coffeeList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = coffee.coffeeName
        content.secondaryText = coffee.shortDescription
        content.image = UIImage(named: coffee.coffeeName)
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}

extension CoffeeViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? CoffeeDetailsViewController,
              let indexPath = coffeeTableView.indexPathForSelectedRow
              else { return }
        
        let coffeeType = coffeeList[indexPath.row]
        detailViewController.coffee = coffeeType
        
    }
    
}

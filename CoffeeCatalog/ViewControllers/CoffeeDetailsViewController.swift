//
//  ViewController.swift
//  CoffeeCatalog
//
//  Created by Алексей on 19.06.2021.
//

import UIKit

class CoffeeDetailsViewController: UIViewController {

    @IBOutlet weak var coffeeImageView: UIImageView!
    @IBOutlet weak var coffeeDescriptionLabel: UILabel!

    
    var coffee: CoffeeType?
    
    let testText = "Важно отметить, что если преобразовать view, то frame становится неопределенным. На самом деле, желтая рамка, которую я нарисовал вокруг зеленых границ на изображении выше, на самом деле никогда не существует. Это означает, что если поворачивать, масштабировать или делать какое-то другое преобразование, то не стоит использовать значение frame. Но можно использовать значения bounds. Документация Apple предупреждает:"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTableView()
    }


}

extension CoffeeDetailsViewController {
    
    private func updateTableView() {
        coffeeImageView.image = UIImage(named: coffee?.coffeeName ?? "")
        
        coffeeDescriptionLabel.text = coffee?.shortDescription
        coffeeDescriptionLabel.numberOfLines = 0
        //coffeeDescriptionLabel.font
        //Noteworthy Bold 75.0
        title = coffee?.coffeeName
    }

    
}


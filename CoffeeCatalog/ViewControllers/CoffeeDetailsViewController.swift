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
    
    //var coffee: CoffeeType?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTableView()
    }


}

extension CoffeeDetailsViewController {
    
    private func updateTableView() {
        navigationController?.title = "1"//coffee.coffeeName
        coffeeImageView.image = UIImage(systemName: "person.fill") // UIImage(named: coffee.coffeeName)
        //coffeeDescriptionLabel.text = "New Coffee" // coffee.fullDescription
        updateLabelFrame()
    }
    
    private func updateLabelFrame() {
        coffeeDescriptionLabel.text = "Важно отметить, что если преобразовать view, то frame становится неопределенным. На самом деле, желтая рамка, которую я нарисовал вокруг зеленых границ на изображении выше, на самом деле никогда не существует. Это означает, что если поворачивать, масштабировать или делать какое-то другое преобразование, то не стоит использовать значение frame. Но можно использовать значения bounds. Документация Apple предупреждает:" // coffee.fullDescription
        coffeeDescriptionLabel.numberOfLines = 0
        
        var maximumLabelSize: CGSize = CGSize(width: view.layer.frame.width - 20, height: 40)
        var expectedLabelSize: CGSize = coffeeDescriptionLabel.sizeThatFits(maximumLabelSize)
        
        // create a frame that is filled with the UILabel frame data
        var newFrame: CGRect = coffeeDescriptionLabel.frame
        // resizing the frame to calculated size
        newFrame.size.height = expectedLabelSize.height
        // put calculated frame into UILabel frame
        coffeeDescriptionLabel.frame = newFrame
    }
    
}


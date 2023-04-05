//
//  TestViewController.swift
//  LoginApp
//
//  Created by Khusain on 04.04.2023.
//

import UIKit

final class HobbiesViewController: UIViewController {
        
    @IBOutlet var hobbiesCollection: [UILabel]!
    
    var user: User!
    private var indexOfLabel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setupGradientBackground()
        
        // Конечно, не лучший способ, чтобы перебирать массив и выводить на экран элементы, но так как не проходили концепции типа таблиц, решил костыль написать))
        for hobby in user.person.hobbies {
            hobbiesCollection[indexOfLabel].text = hobby.title
            indexOfLabel += 1
            hobbiesCollection[indexOfLabel].text = hobby.duration
            indexOfLabel += 1
        }
    }
}

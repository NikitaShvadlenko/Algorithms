//
//  ViewController.swift
//  Algorithms
//
//  Created by Nikita Shvad on 17.01.2023.
//  Copyright © 2023 Nikita Shvadlenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let algorithms = Algorithms<Int>()
    let unsortedArray = [100, 53, 2, 1, 60, 32, 10, 4, 39, 3234, 32, 1111, 8876, 7, 13]
    override func viewDidLoad() {
        print(algorithms.gnomeSort(unsortedArray))
    }
}

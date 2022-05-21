//
//  CardsVC.swift
//  ImagineThis
//
//  Created by Aleksey on 5/20/22.
//

import UIKit

class CardsVC: UIViewController {
	
	private let category: String
	private let level: String
	
	init(category: String, level: String) {
		self.category = category
		self.level = level
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) { fatalError() }
	
    override func viewDidLoad() {
        super.viewDidLoad()

		view.backgroundColor = .systemBlue
    }
	
	
	deinit { print(#function) }
}

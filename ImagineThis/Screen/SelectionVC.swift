//
//  ViewController.swift
//  ImagineThis
//
//  Created by Aleksey on 5/6/22.
//

import UIKit

class SelectionVC: UIViewController {
	
	let backgroundImageView = BGImageView(frame: .zero)

	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .systemPink
		layoutUI()
	}
	
	
	//MARK: - Private
	
	private func layoutUI() {
		
		view.addSubview(backgroundImageView)
		
		NSLayoutConstraint.activate([
			backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
			backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
		
		])
	}
}


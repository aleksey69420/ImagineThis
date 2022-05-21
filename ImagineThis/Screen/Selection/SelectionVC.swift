//
//  ViewController.swift
//  ImagineThis
//
//  Created by Aleksey on 5/6/22.
//

import UIKit

class SelectionVC: UIViewController {
	
	let backgroundImageView = BGImageView(frame: .zero)
	let startButton = StartButton()

	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .systemBackground
		layoutUI()
		startButton.addTarget(self, action: #selector(startButtonTapped(_:)), for: .touchUpInside)
	}
	
	
	//MARK: - Private
	
	@objc private func startButtonTapped(_ sender: UIButton) {
		print(#function)
		//TODO: - identify the current selections
		//TODO: - init CardsVC and push it into the navigation stack
		let cardsVC = CardsVC(category: "Horror", level: "Easy")
		
		
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			self.navigationController?.pushViewController(cardsVC, animated: false)
		}
	}
	
	
	private func layoutUI() {
		
		view.addSubview(backgroundImageView)
		view.addSubview(startButton)
		
		let padding: CGFloat = 20
		
		NSLayoutConstraint.activate([
			backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
			backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
		
			startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding * 3),
			startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding * 3),
			startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding * 2),
			startButton.heightAnchor.constraint(equalToConstant: 80)
		])
	}
}


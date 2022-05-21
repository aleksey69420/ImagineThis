//
//  CardsVC.swift
//  ImagineThis
//
//  Created by Aleksey on 5/20/22.
//

import UIKit

class CardsVC: UIViewController {
	
	let backgroundImageView = BGImageView(frame: .zero)
	let backButton = BackButton()
	
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

		layoutUI()
		backButton.addTarget(self, action: #selector(backButtonTapped(_:)), for: .touchUpInside)
    }
	
	
	deinit { print(#function) }
	
	
	@objc private func backButtonTapped(_ sender: UIButton) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			self.navigationController?.popViewController(animated: false)
		}
	}
	
	
	private func layoutUI() {
		view.backgroundColor = .systemBackground
		view.addSubview(backgroundImageView)
		view.addSubview(backButton)
		
		NSLayoutConstraint.activate([
			backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
			backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			
			//TODO: - test button width logic on other devices
			backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
			backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
			backButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
			backButton.heightAnchor.constraint(equalToConstant: 50)
		])
	}
}

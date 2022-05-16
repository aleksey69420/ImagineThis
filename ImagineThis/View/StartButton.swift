//
//  StartButton.swift
//  ImagineThis
//
//  Created by Aleksey on 5/15/22.
//


import UIKit

class StartButton: UIButton {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	private func configure() {
		translatesAutoresizingMaskIntoConstraints = false
		adjustsImageWhenHighlighted = false
		setImage(UIImage(named: "start"), for: .normal)
	}
}

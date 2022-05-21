//
//  BackButton.swift
//  ImagineThis
//
//  Created by Aleksey on 5/21/22.
//

import UIKit

class BackButton: UIButton {
	
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		configure()
	}
	
	required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
	
	
	private func configure() {
		translatesAutoresizingMaskIntoConstraints = false
		adjustsImageWhenHighlighted = false
		setImage(UIImage(named: "back"), for: .normal)
	}
}

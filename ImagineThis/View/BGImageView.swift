//
//  BGImageView.swift
//  ImagineThis
//
//  Created by Aleksey on 5/11/22.
//

import UIKit

class BGImageView: UIImageView {
	
	private let bgImage = UIImage(named: "background")
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	private func configure() {
		translatesAutoresizingMaskIntoConstraints = false
		contentMode = .scaleAspectFill
		image = bgImage
	}
}

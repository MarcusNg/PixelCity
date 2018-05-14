//
//  PopVC.swift
//  PixelCity
//
//  Created by Marcus Ng on 5/14/18.
//  Copyright © 2018 Marcus Ng. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popImageView.image = passedImage
        addDoubleTap()
    }

    func initDate(forImage image: UIImage) {
        self.passedImage = image
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}

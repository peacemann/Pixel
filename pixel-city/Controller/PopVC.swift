//
//  PopVC.swift
//  pixel-city
//
//  Created by My Macbook Pro on 05/08/2018.
//  Copyright © 2018 My Macbook Pro. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var PassedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.PassedImage = image
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popImageView.image = PassedImage
        
        addDoubleTap()

        // Do any additional setup after loading the view.
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

//
//  RestaurantDetailViewController.swift
//  Yelpy
//
//  Created by Kweku Aboagye on 10/26/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import AlamofireImage

class RestaurantDetailViewController: UIViewController {

    @IBOutlet weak var restaurantImage: UIImageView!
    
    @IBOutlet weak var detailNameLabel: UILabel!
    
    @IBOutlet weak var starDetail: UIImageView!
    
    @IBOutlet weak var reviewDetail: UILabel!
    
    var r: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        restaurantImage.af.setImage(withURL: r.imageURL!)
        detailNameLabel.text = r.name
        starDetail.image = Stars.dict[r.rating]!
        reviewDetail.text = String(r.reviews) + " reviews"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

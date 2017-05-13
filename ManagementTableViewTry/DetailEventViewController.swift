//
//  DetailEventViewController.swift
//  ManagementTableViewTry
//
//  Created by miceli on 5/14/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    //
    @IBOutlet weak var titleEvent: UILabel!
    @IBOutlet weak var dayEvent: UILabel!
    @IBOutlet weak var descriptionEvent: UILabel!
    //
    var event: Event?
    var day: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureEvent()
        title = "Detail Event!!!"
        // Do any additional setup after loading the view.
    }
    //
    func configureEvent() {
        self.dayEvent.text = day
        self.titleEvent.text = event?.title
        self.descriptionEvent.text = event?.title
    }
    
    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

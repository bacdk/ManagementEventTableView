//
//  EventTableViewController.swift
//  ManagementTableViewTry
//
//  Created by miceli on 5/14/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    //
    @IBOutlet var MyTableView: UITableView!
    //
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        //Tieu de
        title = "Management Events Table Cell"
        //Goi button Edit
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let eventLine = eventLines[section]
        return eventLine.events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Event Cell", for: indexPath) as! EventTableViewCell
        
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        //
        cell.title.text = event.title
        cell.descrip.text = event.description
        
        return cell
    }
    
    //
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.day
    }
    
    //
    // Xoa su kien
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    // Di chuyen
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        let eventLine1 = eventLines[fromIndexPath.section]
        let eventLine2 = eventLines[toIndexPath.section]
        //
        let event = eventLine1.events[fromIndexPath.row]
        //
        eventLine1.events.remove(at: fromIndexPath.row)
        eventLine2.events.insert(event, at: toIndexPath.row)
    }

    // Hàm chuẩn bị trước khi điều hướng sang View Chi tiết sự kiện: xác định là sự kiện nào và thuộc ngày nào
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //var identifier = segue.identifier
        if segue.identifier == "Show Detail" {
                let eventDetailVC = segue.destination as! DetailEventViewController
                if let indexPath = self.tableView.indexPathForSelectedRow {
                    eventDetailVC.event = getEvent(indexPath: indexPath as NSIndexPath)
                    eventDetailVC.day = getDay(indexPath: indexPath as NSIndexPath)
                }
        }
    }
    
    // MARK: - Helper Method
    //Get event by indexpath
    func getEvent(indexPath: NSIndexPath) -> Event
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    //Get day by indexpath
    func getDay(indexPath: NSIndexPath) -> String
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.day
    }


    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

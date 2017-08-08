//
//  FirstViewController.swift
//  JarvisSwift
//
//  Created by Colton Neifert on 6/29/17.
//  Copyright © 2017 Colton Neifert. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // Define Available Buttons
    let buttons = ["Start", "Kill Engine", "Lock", "Unlock", "Windows Up", "Windows Down", "Chirp Horn"]
    
    // Define the number of rows in the table
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the number of rows for the table based on number of buttons in list
        return(buttons.count)
    }
    
    // Define attributes of Cell
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Define the cell object
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        // Modify the textLable of the cell
        cell.textLabel?.text = buttons[indexPath.row]
        // Center the Text in each cell
        cell.textLabel?.textAlignment = .center
        
        // Return the modified cell
        return(cell)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // This will remove extra separators from tableview
        tableView.tableFooterView = UIView()
        // Set Row Height to be Taller
        tableView.rowHeight = 60.0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


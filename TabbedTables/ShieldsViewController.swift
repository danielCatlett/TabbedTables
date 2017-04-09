//  ShieldsViewController.swift
//  TabbedTables
//
//  Created by Daniel Catlett on 4/9/17.
//  Copyright © 2017 Daniel Catlett. All rights reserved.

import UIKit

class ShieldsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    private let shields = ["Ancient Shield", "Daybreaker Shield", "The Hylian Shield", "Royal Guard's Shield", "Savage Lynel Shield"]
    let simpleTableIdentifier = "SimpleTableIdentifier"

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Table View Data Source Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return shields.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if(cell == nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        cell?.textLabel?.text = shields[indexPath.row]
        return cell!
    }

}

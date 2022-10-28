//
//  ListTrackTableViewController.swift
//  appListTack
//
//  Created by Anton Kaznacheev on 28.10.2022.
//

import UIKit

class ListTrackTableViewController: UITableViewController {

    var track = DataManager.detDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        track.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let trackIndex = track[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = trackIndex.descriptor
        
        cell.contentConfiguration = content
        
        

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    

}

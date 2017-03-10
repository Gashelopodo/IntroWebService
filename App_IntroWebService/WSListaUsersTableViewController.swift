//
//  WSListaUsersTableViewController.swift
//  App_IntroWebService
//
//  Created by cice on 3/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSListaUsersTableViewController: UITableViewController {
    
    var urlString : String = ""
    var latData : String = ""
    var lngData : String = ""
    
    
    //MARK: - variables locales
    var arrayUsers : [WSPostUser] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayUsers = ApiManagerWS.shared.getUsers()

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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayUsers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersCustomCell", for: indexPath) as! WSUsersCustomCell
        
        let model = arrayUsers[indexPath.row]
        
        cell.myIdLabel.text = "\(model.id!)"
        cell.myNameLabel.text = model.name
        cell.myUserNameLabel.text = model.username
        cell.myPhoneLabel.text = model.phone
        cell.myEmailLabel.text = model.email
        cell.myNameCompanyLabel.text = model.company.name
        cell.myCatchCompanyLabel.text = model.company.catchPhrase
        cell.myBsCompanyLabel.text = model.company.bs
        cell.myUrlLabel.text = model.website
        cell.myButtonWeb.tag = indexPath.row
        cell.myButtonWeb.addTarget(self, action: #selector(self.muestraWeb(_:)), for: UIControlEvents.touchUpInside)
        cell.myButtonMap.tag = indexPath.row
        cell.myButtonMap.addTarget(self, action: #selector(self.muestraMapa(_:)), for: UIControlEvents.touchUpInside)
        
        
        // Configure the cell...

        return cell
    }
    
    
    func muestraWeb(_ sender: UIButton){
        
        let model = arrayUsers[sender.tag]
        
        let webVC = self.storyboard?.instantiateViewController(withIdentifier: "Web") as! WebViewController
        webVC.urlString = model.website!
        
        present(webVC, animated: true, completion: nil)

    }
    
    func muestraMapa(_ sender: UIButton){
        
        let model = arrayUsers[sender.tag]
        
        let mapVC = self.storyboard?.instantiateViewController(withIdentifier: "Mapa") as! WSMapViewController
        mapVC.lat = model.address.geo.lat
        mapVC.lng = model.address.geo.lng
        mapVC.nameLocation = "\(model.address.street!) \(model.address.zipcode!) \(model.address.city!)"
        
        present(mapVC, animated: true, completion: nil)
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "muestraWebVC"{
            let webVC = segue.destination as! WebViewController
            webVC.urlString = urlData
            
        }else if segue.identifier == "mostrarMapa"{
            let mapaVC = segue.destination as! WSMapViewController
            mapaVC.lat = latData
            mapaVC.lng = lngData
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

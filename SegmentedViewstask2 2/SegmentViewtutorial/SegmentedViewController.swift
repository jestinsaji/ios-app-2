//
//  ViewController.swift
//
//  Created by Apps Team Mac book Air on 04/09/21.
//

import UIKit

class SegmentedViewController: UIViewController {
    
    @IBOutlet weak var page1View: UIView!
    @IBOutlet weak var page2View: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    let myData = ["First","Second","Third","Fourth","Fifth"]
    let myData1 = ["one","Two","Three","Four","Five"]

    let myImage = ["image1","image2","image3","image4","image5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        collectionView.register(UINib(nibName:"CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
        segmentView.addTarget(self, action: #selector(didSwitchTab(_:)), for: .valueChanged)
        showFirstPage()
    }

    @objc func didSwitchTab(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            showFirstPage()
        case 1:
            showSecondPage()
        default: break
        }
    }
    
    private func showFirstPage() {
        page1View.isHidden = true
        page2View.isHidden = false
    }
    
    private func showSecondPage() {
        page1View.isHidden = false
        page2View.isHidden = true
    }
}







//table View
extension SegmentedViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count 
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as! TableViewCell
        cell.mylabel1.text = myData[indexPath.row]
        cell.mylabel2.text = myData1[indexPath.row]
        cell.myImageView.image = UIImage(named: myImage[indexPath.row] )
        //cell.textLabel?.text = myData[indexPath.row]
        cell.backgroundColor = UIColor.systemTeal
        return cell
    }
}








// Collection View
extension SegmentedViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)as! CollectionViewCell
//        let title = UILabel(frame: CGRect(x: 0, y: 0, width: cell.self.bounds.size.width, height: 40))
//        title.text = String(indexPath.row)
//        cell.contentView.addSubview(title)
        cell.backgroundColor = UIColor.systemPink
        collectionView.backgroundColor = UIColor.systemYellow
        return cell
    }
    
}

//
//  ProductVC.swift
//  mahavirmetals
//
//  Created by AVINASH on 29/03/22.
//

import UIKit

class ProductVC: UIViewController {
    
    
    @IBOutlet weak var aluminiumProductTableView: UITableView!
    
    var imgArr = [UIImage(named: "folio1"),UIImage(named: ""),UIImage(named: "folio1"),UIImage(named: "")]
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    
    @IBOutlet weak var pageView: UIPageControl!
    
    let leftImageArray = ["aluminium1", "aluminium2","aluminium3", "aluminium4","aluminium5"]
    
   
    let aluminProdTitleArr = ["Aluminum Alloy Bar","Aluminium Chequered Plate","Aluminum Alloy 2014 Grade","Aluminum Sheet","Marine Grade Aluminum Alloy"]
    
    let pricePerKilogramArr = ["200","200","145","180","200"]
    
    let specification1Arr = ["Grade","Bar Pattern","Alloy Or Not    ","Alloy Or Not","Alloy Or Not    "]
    
    let specification2Arr = ["Anodised","Pattern","Alloy Or Not    ","Alloy Or Not","Alloy Or Not"]
    
    let specification3Arr = ["Color","Surface Treatment","Alloy Or Not    ","Alloy Or Not","Alloy Or Not"]
    
    let specification4Arr = ["Brand","Grade","Alloy Or Not ","Alloy Or Not","Alloy Or Not"]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        DispatchQueue.main.async {
            self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @objc func changeImage() {
    
    if counter < imgArr.count {
        let index = IndexPath.init(item: counter, section: 0)
        self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
        pageView.currentPage = counter
        counter += 1
    } else {
        counter = 0
        let index = IndexPath.init(item: counter, section: 0)
        self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
        pageView.currentPage = counter
        counter = 1
    }
        
    }

}

extension ProductVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let vc = cell.viewWithTag(111) as? UIImageView {
            vc.image = imgArr[indexPath.row]
        }
        return cell
    }
}

extension ProductVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = sliderCollectionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

extension ProductVC : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return leftImageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aluminiumProductCustomCellTableViewCell") as! aluminiumProductCustomCellTableViewCell
        
        let leftImage = leftImageArray[indexPath.row]
        
        cell.alumnProductImageView.image =  UIImage(named: leftImage)
        
        cell.aluminiumProductTitle.text = aluminProdTitleArr[indexPath.row]
        
        cell.Price.text = "Rs" + pricePerKilogramArr[indexPath.row] + "/Kg"
        
        cell.aluminProductSpec1.text = specification1Arr[indexPath.row]
        cell.aluminProductSpec2.text = specification2Arr[indexPath.row]
        cell.aluminProductSpec3.text = specification3Arr[indexPath.row]
        cell.aluminProductSpec4.text = specification4Arr[indexPath.row]
        
        return cell
    }
    
    
}

//
//  NewsViewController.swift
//  UIComponents
//
//  Created by Kerim Caglar on 25.04.2021.
//

import UIKit

class NewsViewController: UIViewController {

    var news = [NewsModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let news1 = NewsModel(image: #imageLiteral(resourceName: "photo-1"), title: "Kodluyoruz iOS Bootcamp", detail: "iOS Bootcamp Detay")
        let news2 = NewsModel(image: #imageLiteral(resourceName: "photo-3"), title: "Kodluyoruz & Patika", detail: "Patika")
        let news3 = NewsModel(image: #imageLiteral(resourceName: "photo-4"), title: "Trendyol Mezunları", detail: "Mezunlar işe Başlasın")
        let news4 = NewsModel(image: #imageLiteral(resourceName: "photo-2"), title: "İş Alım İlanı", detail: "Bizimle Çalışın")
        
        news = [news1, news2, news3, news4]
        
        print(news)
    }

}

extension NewsViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return news.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! NewsCollectionViewCell
        
        cell.newsImage.image = news[indexPath.row].image
        cell.newsTitle.text = news[indexPath.row].title
        cell.newsDetail.text = news[indexPath.row].detail
        
        return cell
        
    }
    
    
}

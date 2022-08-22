//
//  GuideViewController_Banner.swift
//  MyCloudMusic
//
//  Created by xuqingqing on 2022/8/22.
//

import Foundation

extension GuideViewController {
    func initBannerView() {
        bannerView.dataSource = self
        bannerView.delegate = self

        bannerView.emptyImage = UIImage(named: IMAGE_PLACE_HOLDER)
        bannerView.placeholderImage = UIImage(named: IMAGE_PLACE_HOLDER)
        
        bannerView.bannerViewSelectorString = "sd_setImageWithURL:placeholderImage:"
        
        bannerView.pageControlNormalColor = UIColor(named: COLOR_LIGHT_GRAY)
        bannerView.pageControlHighlightColor = UIColor(named: COLOR_PRIMARY)
        
        bannerView.autoScroll = false
        
        bannerView.reloadData()
    }
}

extension GuideViewController: YJBannerViewDelegate, YJBannerViewDataSource {
    func bannerViewImages(_ bannerView: YJBannerView!) -> [Any]! {
        return ["Guide1", "Guide2", "Guide3", "Guide4", "Guide5"]
    }
    
    func bannerView(_ bannerView: YJBannerView!, customCell: UICollectionViewCell!, index: Int) -> UICollectionViewCell! {
        let cell = customCell as! YJBannerViewCell
        cell.showImageViewContentMode = .scaleAspectFit
        return cell
    }
    
    func bannerView(_ bannerView: YJBannerView!, didSelectItemAt index: Int) {
        print("bannerView select at index: \(index)")
    }
}

//
//  MyPageViewContoller.swift
//  HaasApplication
//
//  Created by 松下航平 on 2017/03/30.
//  Copyright © 2017年 TRICK RING. All rights reserved.
//

import UIKit
import SafariServices

class MyPageViewController: UITableViewController {
    
    @IBOutlet var myPageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("セルがタップされました:", indexPath)
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                openSafari(urlStr: "http://haasandhaas.sakura.ne.jp/ec/mypage/change.php")
            case 1:
                openSafari(urlStr: "http://haasandhaas.sakura.ne.jp/ec/mypage/delivery.php")
            case 2:
                openSafari(urlStr: "http://haas.co.jp/wp/?page_id=1977")
            default:
                print("インデックスエラー")
            }
        case 1:
            switch indexPath.row {
            case 0:
                openSafari(urlStr: "http://haas.co.jp/wp/?p=2834")
            case 1:
                openSafari(urlStr: "http://haas.co.jp/wp/?page_id=1984")
            case 2:
                openSafari(urlStr: "https://haasandhaas.sakura.ne.jp/ec/contact/")
            default:
                print("インデックスエラー")
            }
        case 2:
            switch indexPath.row {
            case 0:
                openSafari(urlStr: "https://haasandhaas.sakura.ne.jp/ec/contact/")
            case 1:
                openSafari(urlStr: "https://haasandhaas.sakura.ne.jp/ec/contact/")
            default:
                print("インデックスエラー")
            }
        case 3:
            switch indexPath.row {
            case 0:
                openSafari(urlStr: "https://haasandhaas.sakura.ne.jp/ec/order/")
            case 1:
                openSafari(urlStr: "https://haasandhaas.sakura.ne.jp/ec/guide/privacy.php")
            default:
                print("インデックスエラー")
            }
        case 4:
            switch indexPath.row {
            case 0:
                openSafari(urlStr: "http://haasandhaas.sakura.ne.jp/ec/mypage/refusal.php")
            default:
                print("インデックスエラー")
            }
        default:
            print("インデックスエラー")
        }
    }
    
    func openSafari(urlStr: String) {
        let url = NSURL(string: urlStr)
        let safariViewController = SFSafariViewController(url: url as! URL)
        present(safariViewController, animated: true, completion: nil)
    }
}

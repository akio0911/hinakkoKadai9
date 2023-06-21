//
//  ViewController.swift
//  HinakkoKadai9
//
//  Created by Hina on 2023/06/18.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    //都道府県を取得するメソッドの定義
    func select(info: String)

    func didCancel()
}

class ViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet weak var prefectureLabel: UILabel!
    //都道府県を取得し、ラベルに反映した後に、モーダルを閉じる
    func select(info: String) {
        prefectureLabel.text = info
        dismiss(animated: true, completion: nil)
    }

    func didCancel() {
        dismiss(animated: true, completion: nil)
    }

    // 遷移先からデータを受け取るための準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のセグエの名前をチェックし、セグエが一致していたら次の処理へ
        if segue.identifier == "toSecondViewController" {
            // セグエの型をUINavigationController型に変換して取得
            if let navigation = segue.destination as? UINavigationController,
               // UINavigationControllerの最初のビューコントローラーをSecondViewController型に変換して取得
               let city = navigation.viewControllers.first as? SecondViewController {
                city.delegate = self
            }
        }
    }
}

//
//  SecondViewController.swift
//  HinakkoKadai9
//
//  Created by Hina on 2023/06/18.
//

import UIKit

class SecondViewController: UIViewController {
    //プロトコルに準拠したdelegate変数を作成
    var delegate: SecondViewControllerDelegate? = nil

    @IBAction func tokyoTap(_ sender: Any) {
        delegate?.select(info: "東京都")
    }

    @IBAction func kanagawaTap(_ sender: Any) {
        delegate?.select(info: "神奈川県")
    }

    @IBAction func saitamaTap(_ sender: Any) {
        delegate?.select(info: "埼玉県")
    }

    @IBAction func chibaTap(_ sender: Any) {
        delegate?.select(info: "千葉県")
    }

    @IBAction func cancelTap(_ sender: Any) {
        dismiss(animated: true)
    }
}

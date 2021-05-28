//
//  ViewController.swift
//  Delegate_Practice
//
//  Created by daiki umehara on 2021/05/28.
//

import UIKit

enum Country {
    case usa, japan, china
    var hello: String {
        switch self {
        case .usa: return "hello"
        case .japan: return "こんにちは"
        case .china: return "ニーハオ"
        }
    }
    
    var bye: String {
        switch self {
        case .usa: return "bye"
        case .japan: return "バイバイ"
        case .china: return "ザイジィェン"
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet var helloAndByeView: HelloAndByeView!
    let myCountry = Country.japan
    override func viewDidLoad() {
        super.viewDidLoad()
        helloAndByeView.delegate = self
    }
}

extension ViewController: DidTapButtonDelegate {
    func didTapHelloButton() {
        helloAndByeView.label.text = myCountry.hello
    }
    
    func didTapByeButton() {
        helloAndByeView.label.text = myCountry.bye
    }
}

//
//  HelloAndBayView.swift
//  Delegate_Practice
//
//  Created by daiki umehara on 2021/05/28.
//

import UIKit

protocol DidTapButtonDelegate: AnyObject {
    func didTapHelloButton()
    func didTapByeButton()
}

class HelloAndByeView: UIView {
    weak var delegate: DidTapButtonDelegate?
    @IBOutlet var label: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    @IBAction private func didTapHelloButton(_ sender: Any) {
        delegate?.didTapHelloButton()
        
    }
    @IBAction func didTapBayButton(_ sender: Any) {
        delegate?.didTapByeButton()
        
    }
}

//: Playground - noun: a place where people can play

import UIKit

protocol RatingPickerDelegate {
    func preferredRatingSymbol(picker: RatingPicker) -> UIImage?
    func didSelectRating(picker: RatingPicker, rating: Int)
    func didCancel(picker: RatingPicker)
}

class RatingPicker {
    var delegate: RatingPickerDelegate?
    
    init(withDelegate delegate: RatingPickerDelegate?) {
        self.delegate = delegate
    }
    
    func setup() {
        let preferredRatingSymbol = delegate?.preferredRatingSymbol(picker: self)
        
        // Set up the picker with the preferred rating symbol if it was specified
    }
    
    func selectRating(selectedRating: Int) {
        delegate?.didSelectRating(picker: self, rating: selectedRating)
        // Other logic related to selecting a rating
    }
    
    func cancel() {
        delegate?.didCancel(picker: self)
        // Other logic related to canceling
    }
}

class RatingPickerHandler: RatingPickerDelegate {
    
    func preferredRatingSymbol(picker: RatingPicker) -> UIImage? {
        return UIImage(contentsOfFile: "Star.png")
    }
    
    func didSelectRating(picker: RatingPicker, rating: Int) {
        // do something in response to a rating being selected
    }
    
    func didCancel(picker: RatingPicker) {
        // do something in response to the rating picker canceling
    }
}
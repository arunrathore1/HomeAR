//
//  HomeStorePresenter.swift
//  HomeMax
//
//  Created by Arun Rathore on 08/08/2023.
//

import Foundation

protocol HomeStorePresenterDelegate : AnyObject {
    func presentActionDidSelectCell(_ HomeStorePresenter : HomeStorePresenter , index : Int)
    func presentProductDataSource(_ HomeStorePresenter : HomeStorePresenter , data : [Product])
}

final class HomeStorePresenter {
    
    weak private var delegate : HomeStorePresenterDelegate?
    private let productDataSource = ProductDataSource()
    
    func setViewDelegate(delegate : HomeStorePresenterDelegate) {
        self.delegate = delegate
    }
    
    func didTapProductList(atIndex index : Int) {
        delegate?.presentActionDidSelectCell(self, index: index)
    }
    
    func getProductList() {
        delegate?.presentProductDataSource(self, data: productDataSource.data)
    }
}

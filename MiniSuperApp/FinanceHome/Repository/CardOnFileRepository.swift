//
//  CardOnFileRepository.swift
//  MiniSuperApp
//
//  Created by korit on 2021/11/29.
//

import Foundation

protocol CardOnFileRepository {
    var cardOnFile: ReadOnlyCurrentValuePublisher<[PaymentMethod]> { get }
}

final class CardOnFileRepositoryImp: CardOnFileRepository {
    var cardOnFile: ReadOnlyCurrentValuePublisher<[PaymentMethod]> { paymentMethodsSubject }
    
    private let paymentMethodsSubject = CurrentValuePublisher<[PaymentMethod]>([
        PaymentMethod(id: "0", name: "우리은행", digits: "0123", color: "#f19a38ff", isPrimary: false),
        PaymentMethod(id: "1", name: "신한카드", digits: "0987", color: "#f19a38ff", isPrimary: false),
        PaymentMethod(id: "2", name: "현대카드", digits: "8121", color: "#f19a38ff", isPrimary: false),
        PaymentMethod(id: "3", name: "국민은행", digits: "2812", color: "#f19a38ff", isPrimary: false),
        PaymentMethod(id: "4", name: "카카오뱅크", digits: "0123", color: "#ffcc00ff", isPrimary: false)
    ])
}

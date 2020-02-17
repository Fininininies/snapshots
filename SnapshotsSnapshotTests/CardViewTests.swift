//
//  CardViewTests.swift
//  SnapshotsSnapshotTests
//
//  Created by Erik Poort on 17/02/2020.
//  Copyright © 2020 Erik Poort. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import Snapshots

class CardViewTests: FBSnapshotTestCase {
    
    func testSingleLineCardView() {
        // Given
        let sut = CardView()

        // When
        sut.label.text = "Single line"

        // Then
        FBSnapshotVerifyView(sut)
    }
    
    func testMultiLineCardView() {
        // Given
        let sut = CardView()

        // When
        sut.label.text = "Single line\nAnother single line"

        // Then
        FBSnapshotVerifyView(sut)
    }
    
    func testCardViewWithSize() {
        // Given
        let sut = CardView()

        // When
        sut.label.text = "Single line\nAnother single line"
        sut.addConstraints([
            sut.widthAnchor.constraint(equalToConstant: 200),
            sut.heightAnchor.constraint(equalToConstant: 200),
        ])

        // Then
        FBSnapshotVerifyView(sut)
    }
    
    func testCardViewWithSmallSize() {
        // Given
        let sut = CardView()

        // When
        sut.label.text = "Single line\nAnother single line"
        sut.addConstraints([
            sut.widthAnchor.constraint(equalToConstant: 50),
            sut.heightAnchor.constraint(equalToConstant: 50),
        ])

        // Then
        FBSnapshotVerifyView(sut)
    }
}

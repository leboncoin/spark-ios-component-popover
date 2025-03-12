//
//  PopoverGetSpacesUseCase.swift
//  SparkCore
//
//  Created by louis.borlee on 25/06/2024.
//  Copyright © 2024 Leboncoin. All rights reserved.
//

import Foundation
import SparkTheming

// sourcery: AutoMockable
protocol PopoverGetSpacesUseCasable {
    func execute(layoutSpacing: LayoutSpacing) -> PopoverSpaces
}

final class PopoverGetSpacesUseCase: PopoverGetSpacesUseCasable {
    func execute(layoutSpacing: any LayoutSpacing) -> PopoverSpaces {
        return .init(horizontal: layoutSpacing.large, vertical: layoutSpacing.large)
    }
}

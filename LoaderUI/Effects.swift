//
//  Effects.swift
//  LoaderUI
//
//  Created by Vinh Nguyen on 5/17/20.
//  Copyright © 2020 Vinh Nguyen. All rights reserved.
//

import SwiftUI

struct ScaleEffect: AnimatableModifier {
    var scale: CGFloat

    init(values: [CGFloat], keyframe: Int) {
        self.scale = values[keyframe]
    }

    var animatableData: CGFloat {
        get { scale }
        set { scale = newValue }
    }

    func body(content: Content) -> some View {
        content.scaleEffect(scale)
    }
}

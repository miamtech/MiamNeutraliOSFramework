//
//  MealPlannerCounter.swift
//  MiamIOSFramework
//
//  Created by didi on 5/9/23.
//  Copyright © 2023 Miam. All rights reserved.
//

import SwiftUI

@available(iOS 14, *)
internal struct MiamNeutralStepper: View {
    @Binding public var value: Int
    let caption: String?
    let minValue: Int
    let maxValue: Int
    let dimension = Dimension.sharedInstance
    init(value: Binding<Int>, caption: String? = nil, minValue: Int = 1, maxValue: Int = 10) {
        _value = value
        self.caption = caption
        self.minValue = minValue
        self.maxValue = maxValue
    }
    var body: some View {
        VStack(spacing: dimension.sPadding) {
            if let caption = caption {
                MandatoryTextField(caption: caption)
            }
            HStack {
                Button(action: {
                    if value > minValue {
                        value -= 1
                    }
                }, label: {
                    Image.miamNeutralImage(icon: .minus)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: dimension.lButtonHeight, height: dimension.lButtonHeight)
                        .foregroundColor(Color.miamNeutralColor(.primary))
                })
                Spacer()
                Text("\(value)")
                    .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                Spacer()
                Button(action: {
                    if value < maxValue {
                        value += 1
                    }
                }, label: {
                    Image.miamNeutralImage(icon: .plus)
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color.miamNeutralColor(.primary))
                        .frame(width: dimension.lButtonHeight, height: dimension.lButtonHeight)
                })
            }
            .padding(dimension.mPadding)
            .overlay(
                RoundedRectangle(cornerRadius: dimension.sCornerRadius)
                    .stroke(Color.miamNeutralColor(.primary), lineWidth: 1)
            )
        }
    }
}

@available(iOS 14, *)
internal struct MandatoryTextField: View {
    var caption: String
    var body: some View {
        HStack(spacing: Dimension.sharedInstance.sPadding) {
            Text(caption)
                .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyMediumStyle)
            Text("*")
                .foregroundColor(Color.miamColor(.danger))
            Spacer()
        }
    }
}

@available(iOS 14, *)
internal struct MiamNeutralStepperCollapsed: View {
    @Binding public var value: Int
    let icon: Image
    let minValue: Int = 1
    let maxValue: Int = 10
    init(value: Binding<Int>, icon: Image, minValue: Int = 1, maxValue: Int = 10) {
        _value = value
        self.icon = icon
    }
    @State var showBackground = false
    let dimension = Dimension.sharedInstance
    var body: some View {
        VStack(spacing: dimension.sPadding) {
            Menu {
                ForEach(minValue..<maxValue) { number in
                    Button(action: {
                        value = number
                        showBackground = false
                    }, label: { Text(String(number))
                    })
                }
            } label: {
                HStack(spacing: 0) {
                    icon
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: dimension.lButtonHeight, height: dimension.lButtonHeight)
                        .padding(.horizontal, dimension.sPadding)
                        .foregroundColor(Color.miamColor(.black))
                    Divider()
                        .background(Color.miamColor(.grey))
                    Text(String(Int(value)))
                        .foregroundColor(Color.miamColor(.black))
                        .miamFontStyle(style: MiamFontStyleProvider.sharedInstance.bodyBigBoldStyle)
                        .padding(.leading, dimension.mPadding)
                    Spacer()
                }
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .overlay(RoundedRectangle(cornerRadius: Dimension.sharedInstance.sCornerRadius)
            .stroke(Color.miamColor(showBackground ? .primary : .grey), lineWidth: (showBackground ? 1.0 : 0.5)))
        .onTapGesture {
            showBackground = true
        }
    }
}

@available(iOS 14, *)
struct MiamNeutralStepper_Previews: PreviewProvider {
    static var previews: some View {
            StepperPreviewWrapper()
        }

        struct StepperPreviewWrapper: View {
            @State private var value = 4

            var body: some View {
                VStack {
                    MiamNeutralStepper(value: $value, caption: "Number of meals")
                    MiamNeutralStepperCollapsed(value: $value, icon: Image.miamNeutralImage(icon: .guests))
                }
            }
    }
}

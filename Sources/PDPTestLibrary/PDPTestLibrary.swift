import Foundation
import SwiftUI

public struct ForceCenterModifier: ViewModifier {
    public func body(content: Content) -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                content
                Spacer()
            }
            Spacer()
        }
    }
}

public struct ForceHCenterModifier: ViewModifier {
    public func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

public struct ForceVCenterModifier: ViewModifier {
    public func body(content: Content) -> some View {
        VStack {
            Spacer()
            content
            Spacer()
        }
    }
}

public extension View {
    func forceCenter() -> some View {
        self
            .modifier(ForceCenterModifier())
    }
    
    func forceHCenter() -> some View {
        self
            .modifier(ForceHCenterModifier())
    }
    
    func forceVCenter() -> some View {
        self
            .modifier(ForceVCenterModifier())
    }
}

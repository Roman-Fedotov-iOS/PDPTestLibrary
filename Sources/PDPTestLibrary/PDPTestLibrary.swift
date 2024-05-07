import Foundation
import SwiftUI

struct ForceCenterModifier: ViewModifier {
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

struct ForceHCenterModifier: ViewModifier {
    public func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

struct ForceVCenterModifier: ViewModifier {
    public func body(content: Content) -> some View {
        VStack {
            Spacer()
            content
            Spacer()
        }
    }
}

extension View {
    public func forceCenter() -> some View {
        self
            .modifier(ForceCenterModifier())
    }
    
    public func forceHCenter() -> some View {
        self
            .modifier(ForceHCenterModifier())
    }
    
    public func forceVCenter() -> some View {
        self
            .modifier(ForceVCenterModifier())
    }
}

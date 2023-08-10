//
//  NestedTypesView.swift
//  Aula
//
//  Created by Juliano Vaz on 09/08/23.
//

import SwiftUI

// MARK: - NESTEDTYPES EXAMPLE

struct Car {
    struct Engine {
        enum State {
            case started, stopped
        }
        enum FuelType {
            case gasoline, diesel, electric
        }
        var state: State = .stopped
        var fuelType: FuelType = .gasoline
    }
    
    struct Wheels {
        enum WheelSize {
            case small, medium, large
        }
        var size: WheelSize = .medium
    }
    
    var engine: Engine
    var wheels: Wheels
}

struct NestedTypesView: View {
    var body: some View {
//        let myCar = Car(engine: Car.Engine(state: .started, fuelType: .diesel), wheels: Car.Wheels())
        VStack {}
            .padding()
    }
}






// MARK: - NESTED TYPES

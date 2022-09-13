//
//  DatePickerCalendar.swift
//  WorkingWIthCalendars
//
//  Created by Rupesh Chaudhari on 12/09/22.
//

import SwiftUI

struct DatePickerCalendar: View {
    @State var selectedDate = Date()
    var body: some View {
        VStack {
            FormattedDate(selectedDate: selectedDate)
            
            Divider().frame(height: 1).background(.gray.opacity(0.4))
            
            DatePicker("Select Date", selection: $selectedDate,
                       in: ...Date(), displayedComponents: .date)
                .datePickerStyle(.graphical)
//             Also demo one with time component
            
            Divider().frame(height: 1).background(.gray.opacity(0.4))
        }
    }
}

struct DatePickerCalendar_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerCalendar()
    }
}

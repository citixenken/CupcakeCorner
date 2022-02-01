//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Ken Muyesu on 29/01/2022.
//

import SwiftUI

//class User: ObservableObject, Codable {
//
//    enum CodingKeys: CodingKey {
//        case name
//    }
//
//    @Published var name = "citizen ken"
//
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
//}

//struct Response: Codable {
//    var results: [Result]
//}
//
//struct Result: Codable {
//    var trackId: Int
//    var trackName: String
//    var collectionName: String
//}


struct ContentView: View {
//    @State private var results = [Result]()
//
//    func loadData() async {
//        guard let url = URL(string: "https://itunes.apple.com/search?term=kendrick+lamar&entity=song") else {
//            print("Invalid URL")
//            return
//        }
//
//        do {
//            //data object
//            let (data, _) = try await URLSession.shared.data(from: url)
//
//            //convert to Response object
//            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                results = decodedResponse.results
//            }
//        } catch {
//            print("Invalid data")
//        }
//    }
    
    var body: some View {
        
//        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
//            image
//                .resizable()
//                .scaledToFit()
//        } placeholder: {
//            //Color.mint
//            ProgressView()
//        }
//        .frame(width: 400, height: 400)
        
        AsyncImage(url: URL(string: "https://hws.dev/img/bad.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 300, height: 300)
        
        
//        List(results, id: \.trackId) { item in
//            VStack(alignment: .leading) {
//                Text(item.trackName)
//                    .font(.headline)
//                Text(item.collectionName)
//            }
//        }
//        .task {
//            await loadData()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

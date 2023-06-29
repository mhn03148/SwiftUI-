//
//  ContentView.swift
//  WeatherCloneApp
//
//  Created by 주진형 on 2023/06/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GeometryReader { geometre in
                Image("cloud")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            .ignoresSafeArea()
            
            
            ScrollView {
                VStack {
                    Text("용인시")
                        .font(.title)
                    Text("20°")
                        .font(.system(size:80, weight: .thin))
                    Text("한때 흐림")
                        .font(.title3)
                    HStack {
                        Text("최고: 23°")
                            .font(.title3)
                        Text("최저: 11°")
                            .font(.title3)
                    }
                }
                
                BlurStackView {
                    Text("오전 12쯤 청명한 상태가 예상됩니다.")
                } contentView: {
                    HStack {
                        VStack {
                            Text("지금")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack {
                            Text("오후 10시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack {
                            Text("오후 11시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                        VStack {
                            Text("오전 12시")
                            Image(systemName: "cloud.fill")
                            Text("13°")
                        }
                    }
                }
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                } contentView: {
                    VStack {
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("11°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("11°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("11°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("11°")
                            Text("11°")
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

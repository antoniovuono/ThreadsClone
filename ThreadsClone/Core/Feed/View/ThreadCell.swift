//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Antonio Vuono on 10/10/23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("harry-potter-profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("harrypotter")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    
                    Text("Hey magic world!")
                        .multilineTextAlignment(.leading)
                    
                    
                    HStack(spacing: 16) {
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            // Action
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                }
                
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}

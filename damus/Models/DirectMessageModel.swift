//
//  DirectMessageModel.swift
//  damus
//
//  Created by William Casarin on 2022-07-03.
//

import Foundation

class DirectMessageModel: ObservableObject {
    @Published var events: [NostrEvent] {
        didSet {
            is_request = determine_is_request()
        }
    }

    @Published var draft: String
    
    let pubkey: String
    
    var is_request: Bool
    var our_pubkey: String
    
    func determine_is_request() -> Bool {
        for event in events {
            if event.pubkey == our_pubkey {
                return false
            }
        }
        
        return true
    }
    
    init(events: [NostrEvent], our_pubkey: String, pubkey: String) {
        self.events = events
        self.is_request = false
        self.our_pubkey = our_pubkey
        self.draft = ""
        self.pubkey = pubkey
    }
    
    init(our_pubkey: String, pubkey: String) {
        self.events = []
        self.is_request = false
        self.our_pubkey = our_pubkey
        self.draft = ""
        self.pubkey = pubkey
    }
}

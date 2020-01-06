//
//  MMPlayerDefine.swift
//  MMPlayerView
//
//  Created by Millman on 2020/1/6.
//

import Foundation
import AVFoundation
public enum PlayStatus {
    case ready
    case unknown
    case failed(err: String)
    case playing
    case pause
    case end
    
    static func == (lhs: PlayStatus, rhs: PlayStatus) -> Bool {
        switch (lhs, rhs) {
        case (.ready, .ready), (.unknown, .unknown), (.playing, .playing), (.pause, .pause), (.end, .end):
            return true
        case (.failed(let l), .failed(let r)):
            return l == r
        default:
            return false
        }
    }
}
public enum PlayerCacheType {
    case none
    case memory(count: Int)
}
let VideoBasePath = NSTemporaryDirectory()
let sharedPlayr = AVPlayer()
let assetKeysRequiredToPlay = [
  "duration",
  "playable",
  "hasProtectedContent",
  ]

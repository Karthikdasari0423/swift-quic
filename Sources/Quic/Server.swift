//
//  Server.swift
//
//
//  Created by Kenneth Laskoski on 04/06/22.
//

import NIOCore
import NIOPosix
import SwiftQuiche

private final class ServerHandler: ChannelInboundHandler {
  public typealias InboundIn = ByteBuffer

  private let bufferSize = 0xFFFF
  private let datagramSize = 1350
  private let config = quiche_config_new(UInt32(QUICHE_PROTOCOL_VERSION))

  private var buffer: [UInt8]
  private var out: [UInt8]

  init() {
    buffer = [UInt8](repeating: 0, count: bufferSize)
    out = [UInt8](repeating: 0, count: datagramSize)
  }
}


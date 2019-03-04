//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: notes.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

internal protocol NoteServiceListCall: ClientCallUnary {}

fileprivate final class NoteServiceListCallBase: ClientCallUnaryBase<Empty, NoteList>, NoteServiceListCall {
  override class var method: String { return "/NoteService/List" }
}

internal protocol NoteServiceGetCall: ClientCallUnary {}

fileprivate final class NoteServiceGetCallBase: ClientCallUnaryBase<NoteRequestId, Note>, NoteServiceGetCall {
  override class var method: String { return "/NoteService/Get" }
}

internal protocol NoteServiceInsertCall: ClientCallUnary {}

fileprivate final class NoteServiceInsertCallBase: ClientCallUnaryBase<Note, Note>, NoteServiceInsertCall {
  override class var method: String { return "/NoteService/Insert" }
}

internal protocol NoteServiceUpdateCall: ClientCallUnary {}

fileprivate final class NoteServiceUpdateCallBase: ClientCallUnaryBase<Note, Note>, NoteServiceUpdateCall {
  override class var method: String { return "/NoteService/Update" }
}

internal protocol NoteServiceDeleteCall: ClientCallUnary {}

fileprivate final class NoteServiceDeleteCallBase: ClientCallUnaryBase<NoteRequestId, Empty>, NoteServiceDeleteCall {
  override class var method: String { return "/NoteService/Delete" }
}


/// Instantiate NoteServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol NoteServiceService: ServiceClient {
  /// Synchronous. Unary.
  func list(_ request: Empty, metadata customMetadata: Metadata) throws -> NoteList
  /// Asynchronous. Unary.
  func list(_ request: Empty, metadata customMetadata: Metadata, completion: @escaping (NoteList?, CallResult) -> Void) throws -> NoteServiceListCall

  /// Synchronous. Unary.
  func get(_ request: NoteRequestId, metadata customMetadata: Metadata) throws -> Note
  /// Asynchronous. Unary.
  func get(_ request: NoteRequestId, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceGetCall

  /// Synchronous. Unary.
  func insert(_ request: Note, metadata customMetadata: Metadata) throws -> Note
  /// Asynchronous. Unary.
  func insert(_ request: Note, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceInsertCall

  /// Synchronous. Unary.
  func update(_ request: Note, metadata customMetadata: Metadata) throws -> Note
  /// Asynchronous. Unary.
  func update(_ request: Note, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceUpdateCall

  /// Synchronous. Unary.
  func delete(_ request: NoteRequestId, metadata customMetadata: Metadata) throws -> Empty
  /// Asynchronous. Unary.
  func delete(_ request: NoteRequestId, metadata customMetadata: Metadata, completion: @escaping (Empty?, CallResult) -> Void) throws -> NoteServiceDeleteCall

}

internal extension NoteServiceService {
  /// Synchronous. Unary.
  func list(_ request: Empty) throws -> NoteList {
    return try self.list(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func list(_ request: Empty, completion: @escaping (NoteList?, CallResult) -> Void) throws -> NoteServiceListCall {
    return try self.list(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func get(_ request: NoteRequestId) throws -> Note {
    return try self.get(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func get(_ request: NoteRequestId, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceGetCall {
    return try self.get(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func insert(_ request: Note) throws -> Note {
    return try self.insert(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func insert(_ request: Note, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceInsertCall {
    return try self.insert(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func update(_ request: Note) throws -> Note {
    return try self.update(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func update(_ request: Note, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceUpdateCall {
    return try self.update(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func delete(_ request: NoteRequestId) throws -> Empty {
    return try self.delete(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func delete(_ request: NoteRequestId, completion: @escaping (Empty?, CallResult) -> Void) throws -> NoteServiceDeleteCall {
    return try self.delete(request, metadata: self.metadata, completion: completion)
  }

}

internal final class NoteServiceServiceClient: ServiceClientBase, NoteServiceService {
  /// Synchronous. Unary.
  internal func list(_ request: Empty, metadata customMetadata: Metadata) throws -> NoteList {
    return try NoteServiceListCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func list(_ request: Empty, metadata customMetadata: Metadata, completion: @escaping (NoteList?, CallResult) -> Void) throws -> NoteServiceListCall {
    return try NoteServiceListCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func get(_ request: NoteRequestId, metadata customMetadata: Metadata) throws -> Note {
    return try NoteServiceGetCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func get(_ request: NoteRequestId, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceGetCall {
    return try NoteServiceGetCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func insert(_ request: Note, metadata customMetadata: Metadata) throws -> Note {
    return try NoteServiceInsertCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func insert(_ request: Note, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceInsertCall {
    return try NoteServiceInsertCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func update(_ request: Note, metadata customMetadata: Metadata) throws -> Note {
    return try NoteServiceUpdateCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func update(_ request: Note, metadata customMetadata: Metadata, completion: @escaping (Note?, CallResult) -> Void) throws -> NoteServiceUpdateCall {
    return try NoteServiceUpdateCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func delete(_ request: NoteRequestId, metadata customMetadata: Metadata) throws -> Empty {
    return try NoteServiceDeleteCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func delete(_ request: NoteRequestId, metadata customMetadata: Metadata, completion: @escaping (Empty?, CallResult) -> Void) throws -> NoteServiceDeleteCall {
    return try NoteServiceDeleteCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}


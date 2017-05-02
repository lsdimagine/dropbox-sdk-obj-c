///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBPAPERListUsersCursorError;
@class DBPAPERPaperApiCursorError;

#pragma mark - API Object

///
/// The `ListUsersCursorError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBPAPERListUsersCursorError : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The `DBPAPERListUsersCursorErrorTag` enum type represents the possible tag
/// states with which the `DBPAPERListUsersCursorError` union can exist.
typedef NS_ENUM(NSInteger, DBPAPERListUsersCursorErrorTag) {
  /// Your account does not have permissions to perform this action.
  DBPAPERListUsersCursorErrorInsufficientPermissions,

  /// (no description).
  DBPAPERListUsersCursorErrorOther,

  /// The required doc was not found.
  DBPAPERListUsersCursorErrorDocNotFound,

  /// (no description).
  DBPAPERListUsersCursorErrorCursorError,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBPAPERListUsersCursorErrorTag tag;

/// (no description). @note Ensure the `isCursorError` method returns true
/// before accessing, otherwise a runtime exception will be raised.
@property (nonatomic, readonly) DBPAPERPaperApiCursorError * _Nonnull cursorError;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "insufficient_permissions".
///
/// Description of the "insufficient_permissions" tag state: Your account does
/// not have permissions to perform this action.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithInsufficientPermissions;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

///
/// Initializes union class with tag state of "doc_not_found".
///
/// Description of the "doc_not_found" tag state: The required doc was not
/// found.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithDocNotFound;

///
/// Initializes union class with tag state of "cursor_error".
///
/// @param cursorError (no description).
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithCursorError:(DBPAPERPaperApiCursorError * _Nonnull)cursorError;

- (nonnull instancetype)init NS_UNAVAILABLE;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value
/// "insufficient_permissions".
///
/// @return Whether the union's current tag state has value
/// "insufficient_permissions".
///
- (BOOL)isInsufficientPermissions;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves whether the union's current tag state has value "doc_not_found".
///
/// @return Whether the union's current tag state has value "doc_not_found".
///
- (BOOL)isDocNotFound;

///
/// Retrieves whether the union's current tag state has value "cursor_error".
///
/// @note Call this method and ensure it returns true before accessing the
/// `cursorError` property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "cursor_error".
///
- (BOOL)isCursorError;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBPAPERListUsersCursorError` union.
///
@interface DBPAPERListUsersCursorErrorSerializer : NSObject

///
/// Serializes `DBPAPERListUsersCursorError` instances.
///
/// @param instance An instance of the `DBPAPERListUsersCursorError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBPAPERListUsersCursorError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBPAPERListUsersCursorError * _Nonnull)instance;

///
/// Deserializes `DBPAPERListUsersCursorError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBPAPERListUsersCursorError` API object.
///
/// @return An instantiation of the `DBPAPERListUsersCursorError` object.
///
+ (DBPAPERListUsersCursorError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
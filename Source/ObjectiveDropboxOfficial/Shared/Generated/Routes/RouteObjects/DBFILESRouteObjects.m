///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCLaunchEmptyResult.h"
#import "DBASYNCLaunchResultBase.h"
#import "DBASYNCPollError.h"
#import "DBASYNCPollResultBase.h"
#import "DBFILESAddPropertiesError.h"
#import "DBFILESAlphaGetMetadataError.h"
#import "DBFILESCreateFolderError.h"
#import "DBFILESDeleteBatchError.h"
#import "DBFILESDeleteBatchJobStatus.h"
#import "DBFILESDeleteBatchResult.h"
#import "DBFILESDeleteError.h"
#import "DBFILESDeletedMetadata.h"
#import "DBFILESDownloadError.h"
#import "DBFILESFileMetadata.h"
#import "DBFILESFileSharingInfo.h"
#import "DBFILESFolderMetadata.h"
#import "DBFILESFolderSharingInfo.h"
#import "DBFILESGetCopyReferenceError.h"
#import "DBFILESGetCopyReferenceResult.h"
#import "DBFILESGetMetadataError.h"
#import "DBFILESGetTemporaryLinkError.h"
#import "DBFILESGetTemporaryLinkResult.h"
#import "DBFILESInvalidPropertyGroupError.h"
#import "DBFILESListFolderContinueError.h"
#import "DBFILESListFolderError.h"
#import "DBFILESListFolderGetLatestCursorResult.h"
#import "DBFILESListFolderLongpollError.h"
#import "DBFILESListFolderLongpollResult.h"
#import "DBFILESListFolderResult.h"
#import "DBFILESListRevisionsError.h"
#import "DBFILESListRevisionsResult.h"
#import "DBFILESLookUpPropertiesError.h"
#import "DBFILESLookupError.h"
#import "DBFILESMediaInfo.h"
#import "DBFILESMetadata.h"
#import "DBFILESPreviewError.h"
#import "DBFILESPropertiesError.h"
#import "DBFILESRelocationBatchError.h"
#import "DBFILESRelocationBatchJobStatus.h"
#import "DBFILESRelocationBatchResult.h"
#import "DBFILESRelocationError.h"
#import "DBFILESRemovePropertiesError.h"
#import "DBFILESRestoreError.h"
#import "DBFILESRouteObjects.h"
#import "DBFILESRoutes.h"
#import "DBFILESSaveCopyReferenceError.h"
#import "DBFILESSaveCopyReferenceResult.h"
#import "DBFILESSaveUrlError.h"
#import "DBFILESSaveUrlJobStatus.h"
#import "DBFILESSaveUrlResult.h"
#import "DBFILESSearchError.h"
#import "DBFILESSearchMatch.h"
#import "DBFILESSearchResult.h"
#import "DBFILESThumbnailError.h"
#import "DBFILESUpdatePropertiesError.h"
#import "DBFILESUploadError.h"
#import "DBFILESUploadErrorWithProperties.h"
#import "DBFILESUploadSessionFinishBatchJobStatus.h"
#import "DBFILESUploadSessionFinishBatchResult.h"
#import "DBFILESUploadSessionFinishError.h"
#import "DBFILESUploadSessionLookupError.h"
#import "DBFILESUploadSessionOffsetError.h"
#import "DBFILESUploadSessionStartResult.h"
#import "DBFILESUploadWriteFailed.h"
#import "DBFILESWriteError.h"
#import "DBPROPERTIESGetPropertyTemplateResult.h"
#import "DBPROPERTIESListPropertyTemplateIds.h"
#import "DBPROPERTIESPropertyFieldTemplate.h"
#import "DBPROPERTIESPropertyGroup.h"
#import "DBPROPERTIESPropertyGroupTemplate.h"
#import "DBPROPERTIESPropertyTemplateError.h"
#import "DBRequestErrors.h"
#import "DBStoneBase.h"
#import "DBTransportClient.h"

@implementation DBFILESRouteObjects

static DBRoute *DBFILESAlphaGetMetadata;
static DBRoute *DBFILESAlphaUpload;
static DBRoute *DBFILESDCopy;
static DBRoute *DBFILESDCopyBatch;
static DBRoute *DBFILESDCopyBatchCheck;
static DBRoute *DBFILESDCopyReferenceGet;
static DBRoute *DBFILESDCopyReferenceSave;
static DBRoute *DBFILESCreateFolder;
static DBRoute *DBFILESDelete_;
static DBRoute *DBFILESDeleteBatch;
static DBRoute *DBFILESDeleteBatchCheck;
static DBRoute *DBFILESDownload;
static DBRoute *DBFILESGetMetadata;
static DBRoute *DBFILESGetPreview;
static DBRoute *DBFILESGetTemporaryLink;
static DBRoute *DBFILESGetThumbnail;
static DBRoute *DBFILESListFolder;
static DBRoute *DBFILESListFolderContinue;
static DBRoute *DBFILESListFolderGetLatestCursor;
static DBRoute *DBFILESListFolderLongpoll;
static DBRoute *DBFILESListRevisions;
static DBRoute *DBFILESMove;
static DBRoute *DBFILESMoveBatch;
static DBRoute *DBFILESMoveBatchCheck;
static DBRoute *DBFILESPermanentlyDelete;
static DBRoute *DBFILESPropertiesAdd;
static DBRoute *DBFILESPropertiesOverwrite;
static DBRoute *DBFILESPropertiesRemove;
static DBRoute *DBFILESPropertiesTemplateGet;
static DBRoute *DBFILESPropertiesTemplateList;
static DBRoute *DBFILESPropertiesUpdate;
static DBRoute *DBFILESRestore;
static DBRoute *DBFILESSaveUrl;
static DBRoute *DBFILESSaveUrlCheckJobStatus;
static DBRoute *DBFILESSearch;
static DBRoute *DBFILESUpload;
static DBRoute *DBFILESUploadSessionAppend;
static DBRoute *DBFILESUploadSessionAppendV2;
static DBRoute *DBFILESUploadSessionFinish;
static DBRoute *DBFILESUploadSessionFinishBatch;
static DBRoute *DBFILESUploadSessionFinishBatchCheck;
static DBRoute *DBFILESUploadSessionStart;

+ (DBRoute *)DBFILESAlphaGetMetadata {
  if (!DBFILESAlphaGetMetadata) {
    DBFILESAlphaGetMetadata = [[DBRoute alloc] init:@"alpha/get_metadata"
                                         namespace_:@"files"
                                         deprecated:@NO
                                         resultType:[DBFILESMetadata class]
                                          errorType:[DBFILESAlphaGetMetadataError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBFILESAlphaGetMetadata;
}

+ (DBRoute *)DBFILESAlphaUpload {
  if (!DBFILESAlphaUpload) {
    DBFILESAlphaUpload = [[DBRoute alloc] init:@"alpha/upload"
                                    namespace_:@"files"
                                    deprecated:@NO
                                    resultType:[DBFILESFileMetadata class]
                                     errorType:[DBFILESUploadErrorWithProperties class]
                                         attrs:@{
                                           @"host" : @"content",
                                           @"style" : @"upload"
                                         }
                              arraySerialBlock:nil
                            arrayDeserialBlock:nil];
  }
  return DBFILESAlphaUpload;
}

+ (DBRoute *)DBFILESDCopy {
  if (!DBFILESDCopy) {
    DBFILESDCopy = [[DBRoute alloc] init:@"copy"
                              namespace_:@"files"
                              deprecated:@NO
                              resultType:[DBFILESMetadata class]
                               errorType:[DBFILESRelocationError class]
                                   attrs:@{
                                     @"host" : @"api",
                                     @"style" : @"rpc"
                                   }
                        arraySerialBlock:nil
                      arrayDeserialBlock:nil];
  }
  return DBFILESDCopy;
}

+ (DBRoute *)DBFILESDCopyBatch {
  if (!DBFILESDCopyBatch) {
    DBFILESDCopyBatch = [[DBRoute alloc] init:@"copy_batch"
                                   namespace_:@"files"
                                   deprecated:@NO
                                   resultType:[DBASYNCLaunchEmptyResult class]
                                    errorType:nil
                                        attrs:@{
                                          @"host" : @"api",
                                          @"style" : @"rpc"
                                        }
                             arraySerialBlock:nil
                           arrayDeserialBlock:nil];
  }
  return DBFILESDCopyBatch;
}

+ (DBRoute *)DBFILESDCopyBatchCheck {
  if (!DBFILESDCopyBatchCheck) {
    DBFILESDCopyBatchCheck = [[DBRoute alloc] init:@"copy_batch/check"
                                        namespace_:@"files"
                                        deprecated:@NO
                                        resultType:[DBFILESRelocationBatchJobStatus class]
                                         errorType:[DBASYNCPollError class]
                                             attrs:@{
                                               @"host" : @"api",
                                               @"style" : @"rpc"
                                             }
                                  arraySerialBlock:nil
                                arrayDeserialBlock:nil];
  }
  return DBFILESDCopyBatchCheck;
}

+ (DBRoute *)DBFILESDCopyReferenceGet {
  if (!DBFILESDCopyReferenceGet) {
    DBFILESDCopyReferenceGet = [[DBRoute alloc] init:@"copy_reference/get"
                                          namespace_:@"files"
                                          deprecated:@NO
                                          resultType:[DBFILESGetCopyReferenceResult class]
                                           errorType:[DBFILESGetCopyReferenceError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBFILESDCopyReferenceGet;
}

+ (DBRoute *)DBFILESDCopyReferenceSave {
  if (!DBFILESDCopyReferenceSave) {
    DBFILESDCopyReferenceSave = [[DBRoute alloc] init:@"copy_reference/save"
                                           namespace_:@"files"
                                           deprecated:@NO
                                           resultType:[DBFILESSaveCopyReferenceResult class]
                                            errorType:[DBFILESSaveCopyReferenceError class]
                                                attrs:@{
                                                  @"host" : @"api",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBFILESDCopyReferenceSave;
}

+ (DBRoute *)DBFILESCreateFolder {
  if (!DBFILESCreateFolder) {
    DBFILESCreateFolder = [[DBRoute alloc] init:@"create_folder"
                                     namespace_:@"files"
                                     deprecated:@NO
                                     resultType:[DBFILESFolderMetadata class]
                                      errorType:[DBFILESCreateFolderError class]
                                          attrs:@{
                                            @"host" : @"api",
                                            @"style" : @"rpc"
                                          }
                               arraySerialBlock:nil
                             arrayDeserialBlock:nil];
  }
  return DBFILESCreateFolder;
}

+ (DBRoute *)DBFILESDelete_ {
  if (!DBFILESDelete_) {
    DBFILESDelete_ = [[DBRoute alloc] init:@"delete"
                                namespace_:@"files"
                                deprecated:@NO
                                resultType:[DBFILESMetadata class]
                                 errorType:[DBFILESDeleteError class]
                                     attrs:@{
                                       @"host" : @"api",
                                       @"style" : @"rpc"
                                     }
                          arraySerialBlock:nil
                        arrayDeserialBlock:nil];
  }
  return DBFILESDelete_;
}

+ (DBRoute *)DBFILESDeleteBatch {
  if (!DBFILESDeleteBatch) {
    DBFILESDeleteBatch = [[DBRoute alloc] init:@"delete_batch"
                                    namespace_:@"files"
                                    deprecated:@NO
                                    resultType:[DBASYNCLaunchEmptyResult class]
                                     errorType:nil
                                         attrs:@{
                                           @"host" : @"api",
                                           @"style" : @"rpc"
                                         }
                              arraySerialBlock:nil
                            arrayDeserialBlock:nil];
  }
  return DBFILESDeleteBatch;
}

+ (DBRoute *)DBFILESDeleteBatchCheck {
  if (!DBFILESDeleteBatchCheck) {
    DBFILESDeleteBatchCheck = [[DBRoute alloc] init:@"delete_batch/check"
                                         namespace_:@"files"
                                         deprecated:@NO
                                         resultType:[DBFILESDeleteBatchJobStatus class]
                                          errorType:[DBASYNCPollError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBFILESDeleteBatchCheck;
}

+ (DBRoute *)DBFILESDownload {
  if (!DBFILESDownload) {
    DBFILESDownload = [[DBRoute alloc] init:@"download"
                                 namespace_:@"files"
                                 deprecated:@NO
                                 resultType:[DBFILESFileMetadata class]
                                  errorType:[DBFILESDownloadError class]
                                      attrs:@{
                                        @"host" : @"content",
                                        @"style" : @"download"
                                      }
                           arraySerialBlock:nil
                         arrayDeserialBlock:nil];
  }
  return DBFILESDownload;
}

+ (DBRoute *)DBFILESGetMetadata {
  if (!DBFILESGetMetadata) {
    DBFILESGetMetadata = [[DBRoute alloc] init:@"get_metadata"
                                    namespace_:@"files"
                                    deprecated:@NO
                                    resultType:[DBFILESMetadata class]
                                     errorType:[DBFILESGetMetadataError class]
                                         attrs:@{
                                           @"host" : @"api",
                                           @"style" : @"rpc"
                                         }
                              arraySerialBlock:nil
                            arrayDeserialBlock:nil];
  }
  return DBFILESGetMetadata;
}

+ (DBRoute *)DBFILESGetPreview {
  if (!DBFILESGetPreview) {
    DBFILESGetPreview = [[DBRoute alloc] init:@"get_preview"
                                   namespace_:@"files"
                                   deprecated:@NO
                                   resultType:[DBFILESFileMetadata class]
                                    errorType:[DBFILESPreviewError class]
                                        attrs:@{
                                          @"host" : @"content",
                                          @"style" : @"download"
                                        }
                             arraySerialBlock:nil
                           arrayDeserialBlock:nil];
  }
  return DBFILESGetPreview;
}

+ (DBRoute *)DBFILESGetTemporaryLink {
  if (!DBFILESGetTemporaryLink) {
    DBFILESGetTemporaryLink = [[DBRoute alloc] init:@"get_temporary_link"
                                         namespace_:@"files"
                                         deprecated:@NO
                                         resultType:[DBFILESGetTemporaryLinkResult class]
                                          errorType:[DBFILESGetTemporaryLinkError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBFILESGetTemporaryLink;
}

+ (DBRoute *)DBFILESGetThumbnail {
  if (!DBFILESGetThumbnail) {
    DBFILESGetThumbnail = [[DBRoute alloc] init:@"get_thumbnail"
                                     namespace_:@"files"
                                     deprecated:@NO
                                     resultType:[DBFILESFileMetadata class]
                                      errorType:[DBFILESThumbnailError class]
                                          attrs:@{
                                            @"host" : @"content",
                                            @"style" : @"download"
                                          }
                               arraySerialBlock:nil
                             arrayDeserialBlock:nil];
  }
  return DBFILESGetThumbnail;
}

+ (DBRoute *)DBFILESListFolder {
  if (!DBFILESListFolder) {
    DBFILESListFolder = [[DBRoute alloc] init:@"list_folder"
                                   namespace_:@"files"
                                   deprecated:@NO
                                   resultType:[DBFILESListFolderResult class]
                                    errorType:[DBFILESListFolderError class]
                                        attrs:@{
                                          @"host" : @"api",
                                          @"style" : @"rpc"
                                        }
                             arraySerialBlock:nil
                           arrayDeserialBlock:nil];
  }
  return DBFILESListFolder;
}

+ (DBRoute *)DBFILESListFolderContinue {
  if (!DBFILESListFolderContinue) {
    DBFILESListFolderContinue = [[DBRoute alloc] init:@"list_folder/continue"
                                           namespace_:@"files"
                                           deprecated:@NO
                                           resultType:[DBFILESListFolderResult class]
                                            errorType:[DBFILESListFolderContinueError class]
                                                attrs:@{
                                                  @"host" : @"api",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBFILESListFolderContinue;
}

+ (DBRoute *)DBFILESListFolderGetLatestCursor {
  if (!DBFILESListFolderGetLatestCursor) {
    DBFILESListFolderGetLatestCursor = [[DBRoute alloc] init:@"list_folder/get_latest_cursor"
                                                  namespace_:@"files"
                                                  deprecated:@NO
                                                  resultType:[DBFILESListFolderGetLatestCursorResult class]
                                                   errorType:[DBFILESListFolderError class]
                                                       attrs:@{
                                                         @"host" : @"api",
                                                         @"style" : @"rpc"
                                                       }
                                            arraySerialBlock:nil
                                          arrayDeserialBlock:nil];
  }
  return DBFILESListFolderGetLatestCursor;
}

+ (DBRoute *)DBFILESListFolderLongpoll {
  if (!DBFILESListFolderLongpoll) {
    DBFILESListFolderLongpoll = [[DBRoute alloc] init:@"list_folder/longpoll"
                                           namespace_:@"files"
                                           deprecated:@NO
                                           resultType:[DBFILESListFolderLongpollResult class]
                                            errorType:[DBFILESListFolderLongpollError class]
                                                attrs:@{
                                                  @"host" : @"notify",
                                                  @"style" : @"rpc"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBFILESListFolderLongpoll;
}

+ (DBRoute *)DBFILESListRevisions {
  if (!DBFILESListRevisions) {
    DBFILESListRevisions = [[DBRoute alloc] init:@"list_revisions"
                                      namespace_:@"files"
                                      deprecated:@NO
                                      resultType:[DBFILESListRevisionsResult class]
                                       errorType:[DBFILESListRevisionsError class]
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBFILESListRevisions;
}

+ (DBRoute *)DBFILESMove {
  if (!DBFILESMove) {
    DBFILESMove = [[DBRoute alloc] init:@"move"
                             namespace_:@"files"
                             deprecated:@NO
                             resultType:[DBFILESMetadata class]
                              errorType:[DBFILESRelocationError class]
                                  attrs:@{
                                    @"host" : @"api",
                                    @"style" : @"rpc"
                                  }
                       arraySerialBlock:nil
                     arrayDeserialBlock:nil];
  }
  return DBFILESMove;
}

+ (DBRoute *)DBFILESMoveBatch {
  if (!DBFILESMoveBatch) {
    DBFILESMoveBatch = [[DBRoute alloc] init:@"move_batch"
                                  namespace_:@"files"
                                  deprecated:@NO
                                  resultType:[DBASYNCLaunchEmptyResult class]
                                   errorType:nil
                                       attrs:@{
                                         @"host" : @"api",
                                         @"style" : @"rpc"
                                       }
                            arraySerialBlock:nil
                          arrayDeserialBlock:nil];
  }
  return DBFILESMoveBatch;
}

+ (DBRoute *)DBFILESMoveBatchCheck {
  if (!DBFILESMoveBatchCheck) {
    DBFILESMoveBatchCheck = [[DBRoute alloc] init:@"move_batch/check"
                                       namespace_:@"files"
                                       deprecated:@NO
                                       resultType:[DBFILESRelocationBatchJobStatus class]
                                        errorType:[DBASYNCPollError class]
                                            attrs:@{
                                              @"host" : @"api",
                                              @"style" : @"rpc"
                                            }
                                 arraySerialBlock:nil
                               arrayDeserialBlock:nil];
  }
  return DBFILESMoveBatchCheck;
}

+ (DBRoute *)DBFILESPermanentlyDelete {
  if (!DBFILESPermanentlyDelete) {
    DBFILESPermanentlyDelete = [[DBRoute alloc] init:@"permanently_delete"
                                          namespace_:@"files"
                                          deprecated:@NO
                                          resultType:nil
                                           errorType:[DBFILESDeleteError class]
                                               attrs:@{
                                                 @"host" : @"api",
                                                 @"style" : @"rpc"
                                               }
                                    arraySerialBlock:nil
                                  arrayDeserialBlock:nil];
  }
  return DBFILESPermanentlyDelete;
}

+ (DBRoute *)DBFILESPropertiesAdd {
  if (!DBFILESPropertiesAdd) {
    DBFILESPropertiesAdd = [[DBRoute alloc] init:@"properties/add"
                                      namespace_:@"files"
                                      deprecated:@NO
                                      resultType:nil
                                       errorType:[DBFILESAddPropertiesError class]
                                           attrs:@{
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                                arraySerialBlock:nil
                              arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesAdd;
}

+ (DBRoute *)DBFILESPropertiesOverwrite {
  if (!DBFILESPropertiesOverwrite) {
    DBFILESPropertiesOverwrite = [[DBRoute alloc] init:@"properties/overwrite"
                                            namespace_:@"files"
                                            deprecated:@NO
                                            resultType:nil
                                             errorType:[DBFILESInvalidPropertyGroupError class]
                                                 attrs:@{
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesOverwrite;
}

+ (DBRoute *)DBFILESPropertiesRemove {
  if (!DBFILESPropertiesRemove) {
    DBFILESPropertiesRemove = [[DBRoute alloc] init:@"properties/remove"
                                         namespace_:@"files"
                                         deprecated:@NO
                                         resultType:nil
                                          errorType:[DBFILESRemovePropertiesError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesRemove;
}

+ (DBRoute *)DBFILESPropertiesTemplateGet {
  if (!DBFILESPropertiesTemplateGet) {
    DBFILESPropertiesTemplateGet = [[DBRoute alloc] init:@"properties/template/get"
                                              namespace_:@"files"
                                              deprecated:@NO
                                              resultType:[DBPROPERTIESGetPropertyTemplateResult class]
                                               errorType:[DBPROPERTIESPropertyTemplateError class]
                                                   attrs:@{
                                                     @"host" : @"api",
                                                     @"style" : @"rpc"
                                                   }
                                        arraySerialBlock:nil
                                      arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesTemplateGet;
}

+ (DBRoute *)DBFILESPropertiesTemplateList {
  if (!DBFILESPropertiesTemplateList) {
    DBFILESPropertiesTemplateList = [[DBRoute alloc] init:@"properties/template/list"
                                               namespace_:@"files"
                                               deprecated:@NO
                                               resultType:[DBPROPERTIESListPropertyTemplateIds class]
                                                errorType:[DBPROPERTIESPropertyTemplateError class]
                                                    attrs:@{
                                                      @"host" : @"api",
                                                      @"style" : @"rpc"
                                                    }
                                         arraySerialBlock:nil
                                       arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesTemplateList;
}

+ (DBRoute *)DBFILESPropertiesUpdate {
  if (!DBFILESPropertiesUpdate) {
    DBFILESPropertiesUpdate = [[DBRoute alloc] init:@"properties/update"
                                         namespace_:@"files"
                                         deprecated:@NO
                                         resultType:nil
                                          errorType:[DBFILESUpdatePropertiesError class]
                                              attrs:@{
                                                @"host" : @"api",
                                                @"style" : @"rpc"
                                              }
                                   arraySerialBlock:nil
                                 arrayDeserialBlock:nil];
  }
  return DBFILESPropertiesUpdate;
}

+ (DBRoute *)DBFILESRestore {
  if (!DBFILESRestore) {
    DBFILESRestore = [[DBRoute alloc] init:@"restore"
                                namespace_:@"files"
                                deprecated:@NO
                                resultType:[DBFILESFileMetadata class]
                                 errorType:[DBFILESRestoreError class]
                                     attrs:@{
                                       @"host" : @"api",
                                       @"style" : @"rpc"
                                     }
                          arraySerialBlock:nil
                        arrayDeserialBlock:nil];
  }
  return DBFILESRestore;
}

+ (DBRoute *)DBFILESSaveUrl {
  if (!DBFILESSaveUrl) {
    DBFILESSaveUrl = [[DBRoute alloc] init:@"save_url"
                                namespace_:@"files"
                                deprecated:@NO
                                resultType:[DBFILESSaveUrlResult class]
                                 errorType:[DBFILESSaveUrlError class]
                                     attrs:@{
                                       @"host" : @"api",
                                       @"style" : @"rpc"
                                     }
                          arraySerialBlock:nil
                        arrayDeserialBlock:nil];
  }
  return DBFILESSaveUrl;
}

+ (DBRoute *)DBFILESSaveUrlCheckJobStatus {
  if (!DBFILESSaveUrlCheckJobStatus) {
    DBFILESSaveUrlCheckJobStatus = [[DBRoute alloc] init:@"save_url/check_job_status"
                                              namespace_:@"files"
                                              deprecated:@NO
                                              resultType:[DBFILESSaveUrlJobStatus class]
                                               errorType:[DBASYNCPollError class]
                                                   attrs:@{
                                                     @"host" : @"api",
                                                     @"style" : @"rpc"
                                                   }
                                        arraySerialBlock:nil
                                      arrayDeserialBlock:nil];
  }
  return DBFILESSaveUrlCheckJobStatus;
}

+ (DBRoute *)DBFILESSearch {
  if (!DBFILESSearch) {
    DBFILESSearch = [[DBRoute alloc] init:@"search"
                               namespace_:@"files"
                               deprecated:@NO
                               resultType:[DBFILESSearchResult class]
                                errorType:[DBFILESSearchError class]
                                    attrs:@{
                                      @"host" : @"api",
                                      @"style" : @"rpc"
                                    }
                         arraySerialBlock:nil
                       arrayDeserialBlock:nil];
  }
  return DBFILESSearch;
}

+ (DBRoute *)DBFILESUpload {
  if (!DBFILESUpload) {
    DBFILESUpload = [[DBRoute alloc] init:@"upload"
                               namespace_:@"files"
                               deprecated:@NO
                               resultType:[DBFILESFileMetadata class]
                                errorType:[DBFILESUploadError class]
                                    attrs:@{
                                      @"host" : @"content",
                                      @"style" : @"upload"
                                    }
                         arraySerialBlock:nil
                       arrayDeserialBlock:nil];
  }
  return DBFILESUpload;
}

+ (DBRoute *)DBFILESUploadSessionAppend {
  if (!DBFILESUploadSessionAppend) {
    DBFILESUploadSessionAppend = [[DBRoute alloc] init:@"upload_session/append"
                                            namespace_:@"files"
                                            deprecated:@YES
                                            resultType:nil
                                             errorType:[DBFILESUploadSessionLookupError class]
                                                 attrs:@{
                                                   @"host" : @"content",
                                                   @"style" : @"upload"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionAppend;
}

+ (DBRoute *)DBFILESUploadSessionAppendV2 {
  if (!DBFILESUploadSessionAppendV2) {
    DBFILESUploadSessionAppendV2 = [[DBRoute alloc] init:@"upload_session/append_v2"
                                              namespace_:@"files"
                                              deprecated:@NO
                                              resultType:nil
                                               errorType:[DBFILESUploadSessionLookupError class]
                                                   attrs:@{
                                                     @"host" : @"content",
                                                     @"style" : @"upload"
                                                   }
                                        arraySerialBlock:nil
                                      arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionAppendV2;
}

+ (DBRoute *)DBFILESUploadSessionFinish {
  if (!DBFILESUploadSessionFinish) {
    DBFILESUploadSessionFinish = [[DBRoute alloc] init:@"upload_session/finish"
                                            namespace_:@"files"
                                            deprecated:@NO
                                            resultType:[DBFILESFileMetadata class]
                                             errorType:[DBFILESUploadSessionFinishError class]
                                                 attrs:@{
                                                   @"host" : @"content",
                                                   @"style" : @"upload"
                                                 }
                                      arraySerialBlock:nil
                                    arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionFinish;
}

+ (DBRoute *)DBFILESUploadSessionFinishBatch {
  if (!DBFILESUploadSessionFinishBatch) {
    DBFILESUploadSessionFinishBatch = [[DBRoute alloc] init:@"upload_session/finish_batch"
                                                 namespace_:@"files"
                                                 deprecated:@NO
                                                 resultType:[DBASYNCLaunchEmptyResult class]
                                                  errorType:nil
                                                      attrs:@{
                                                        @"host" : @"api",
                                                        @"style" : @"rpc"
                                                      }
                                           arraySerialBlock:nil
                                         arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionFinishBatch;
}

+ (DBRoute *)DBFILESUploadSessionFinishBatchCheck {
  if (!DBFILESUploadSessionFinishBatchCheck) {
    DBFILESUploadSessionFinishBatchCheck = [[DBRoute alloc] init:@"upload_session/finish_batch/check"
                                                      namespace_:@"files"
                                                      deprecated:@NO
                                                      resultType:[DBFILESUploadSessionFinishBatchJobStatus class]
                                                       errorType:[DBASYNCPollError class]
                                                           attrs:@{
                                                             @"host" : @"api",
                                                             @"style" : @"rpc"
                                                           }
                                                arraySerialBlock:nil
                                              arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionFinishBatchCheck;
}

+ (DBRoute *)DBFILESUploadSessionStart {
  if (!DBFILESUploadSessionStart) {
    DBFILESUploadSessionStart = [[DBRoute alloc] init:@"upload_session/start"
                                           namespace_:@"files"
                                           deprecated:@NO
                                           resultType:[DBFILESUploadSessionStartResult class]
                                            errorType:nil
                                                attrs:@{
                                                  @"host" : @"content",
                                                  @"style" : @"upload"
                                                }
                                     arraySerialBlock:nil
                                   arrayDeserialBlock:nil];
  }
  return DBFILESUploadSessionStart;
}

@end

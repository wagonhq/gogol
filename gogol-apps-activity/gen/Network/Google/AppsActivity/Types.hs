{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AppsActivity.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AppsActivity.Types
    (
    -- * Service Configuration
      appsActivityService

    -- * OAuth Scopes
    , driveMetadataReadonlyScope
    , activityScope
    , driveReadonlyScope
    , driveScope
    , driveMetadataScope

    -- * Parent
    , Parent
    , parent
    , pIsRoot
    , pId
    , pTitle

    -- * Photo
    , Photo
    , photo
    , pURL

    -- * EventPrimaryEventType
    , EventPrimaryEventType (..)

    -- * Event
    , Event
    , event
    , ePrimaryEventType
    , eUser
    , eEventTimeMillis
    , eRename
    , eFromUserDeletion
    , eAdditionalEventTypes
    , ePermissionChanges
    , eTarget
    , eMove

    -- * PermissionRole
    , PermissionRole (..)

    -- * ListActivitiesResponse
    , ListActivitiesResponse
    , listActivitiesResponse
    , larNextPageToken
    , larActivities

    -- * PermissionChange
    , PermissionChange
    , permissionChange
    , pcAddedPermissions
    , pcRemovedPermissions

    -- * PermissionType
    , PermissionType (..)

    -- * User
    , User
    , user
    , uPhoto
    , uName

    -- * EventAdditionalEventTypesItem
    , EventAdditionalEventTypesItem (..)

    -- * Activity
    , Activity
    , activity
    , aSingleEvents
    , aCombinedEvent

    -- * ActivitiesListGroupingStrategy
    , ActivitiesListGroupingStrategy (..)

    -- * Rename
    , Rename
    , rename
    , rNewTitle
    , rOldTitle

    -- * Permission
    , Permission
    , permission
    , pWithLink
    , pUser
    , pRole
    , pName
    , pType
    , pPermissionId

    -- * Target
    , Target
    , target
    , tMimeType
    , tName
    , tId

    -- * Move
    , Move
    , move
    , mAddedParents
    , mRemovedParents
    ) where

import           Network.Google.AppsActivity.Types.Product
import           Network.Google.AppsActivity.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Apps Activity API. This contains the host and root path used as a starting point for constructing service requests.
appsActivityService :: Service
appsActivityService
  = defaultService (ServiceId "appsactivity:v1")
      "www.googleapis.com"

-- | View metadata for files in your Google Drive
driveMetadataReadonlyScope :: Proxy '["https://www.googleapis.com/auth/drive.metadata.readonly"]
driveMetadataReadonlyScope = Proxy;

-- | View the activity history of your Google Apps
activityScope :: Proxy '["https://www.googleapis.com/auth/activity"]
activityScope = Proxy;

-- | View the files in your Google Drive
driveReadonlyScope :: Proxy '["https://www.googleapis.com/auth/drive.readonly"]
driveReadonlyScope = Proxy;

-- | View and manage the files in your Google Drive
driveScope :: Proxy '["https://www.googleapis.com/auth/drive"]
driveScope = Proxy;

-- | View and manage metadata of files in your Google Drive
driveMetadataScope :: Proxy '["https://www.googleapis.com/auth/drive.metadata"]
driveMetadataScope = Proxy;

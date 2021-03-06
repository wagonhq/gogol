{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Services.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified service.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.services.patch@.
module Network.Google.Resource.AppEngine.Apps.Services.Patch
    (
    -- * REST Resource
      AppsServicesPatchResource

    -- * Creating a Request
    , appsServicesPatch
    , AppsServicesPatch

    -- * Request Lenses
    , aspXgafv
    , aspUploadProtocol
    , aspPp
    , aspAccessToken
    , aspUploadType
    , aspPayload
    , aspMigrateTraffic
    , aspMask
    , aspBearerToken
    , aspAppsId
    , aspServicesId
    , aspCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.services.patch@ method which the
-- 'AppsServicesPatch' request conforms to.
type AppsServicesPatchResource =
     "v1beta5" :>
       "apps" :>
         Capture "appsId" Text :>
           "services" :>
             Capture "servicesId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "migrateTraffic" Bool :>
                           QueryParam "mask" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Service :>
                                     Patch '[JSON] Operation

-- | Updates the configuration of the specified service.
--
-- /See:/ 'appsServicesPatch' smart constructor.
data AppsServicesPatch = AppsServicesPatch'
    { _aspXgafv          :: !(Maybe Text)
    , _aspUploadProtocol :: !(Maybe Text)
    , _aspPp             :: !Bool
    , _aspAccessToken    :: !(Maybe Text)
    , _aspUploadType     :: !(Maybe Text)
    , _aspPayload        :: !Service
    , _aspMigrateTraffic :: !(Maybe Bool)
    , _aspMask           :: !(Maybe Text)
    , _aspBearerToken    :: !(Maybe Text)
    , _aspAppsId         :: !Text
    , _aspServicesId     :: !Text
    , _aspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspXgafv'
--
-- * 'aspUploadProtocol'
--
-- * 'aspPp'
--
-- * 'aspAccessToken'
--
-- * 'aspUploadType'
--
-- * 'aspPayload'
--
-- * 'aspMigrateTraffic'
--
-- * 'aspMask'
--
-- * 'aspBearerToken'
--
-- * 'aspAppsId'
--
-- * 'aspServicesId'
--
-- * 'aspCallback'
appsServicesPatch
    :: Service -- ^ 'aspPayload'
    -> Text -- ^ 'aspAppsId'
    -> Text -- ^ 'aspServicesId'
    -> AppsServicesPatch
appsServicesPatch pAspPayload_ pAspAppsId_ pAspServicesId_ =
    AppsServicesPatch'
    { _aspXgafv = Nothing
    , _aspUploadProtocol = Nothing
    , _aspPp = True
    , _aspAccessToken = Nothing
    , _aspUploadType = Nothing
    , _aspPayload = pAspPayload_
    , _aspMigrateTraffic = Nothing
    , _aspMask = Nothing
    , _aspBearerToken = Nothing
    , _aspAppsId = pAspAppsId_
    , _aspServicesId = pAspServicesId_
    , _aspCallback = Nothing
    }

-- | V1 error format.
aspXgafv :: Lens' AppsServicesPatch (Maybe Text)
aspXgafv = lens _aspXgafv (\ s a -> s{_aspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aspUploadProtocol :: Lens' AppsServicesPatch (Maybe Text)
aspUploadProtocol
  = lens _aspUploadProtocol
      (\ s a -> s{_aspUploadProtocol = a})

-- | Pretty-print response.
aspPp :: Lens' AppsServicesPatch Bool
aspPp = lens _aspPp (\ s a -> s{_aspPp = a})

-- | OAuth access token.
aspAccessToken :: Lens' AppsServicesPatch (Maybe Text)
aspAccessToken
  = lens _aspAccessToken
      (\ s a -> s{_aspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aspUploadType :: Lens' AppsServicesPatch (Maybe Text)
aspUploadType
  = lens _aspUploadType
      (\ s a -> s{_aspUploadType = a})

-- | Multipart request metadata.
aspPayload :: Lens' AppsServicesPatch Service
aspPayload
  = lens _aspPayload (\ s a -> s{_aspPayload = a})

-- | Whether to use Traffic Migration to shift traffic gradually. Traffic can
-- only be migrated from a single version to another single version.
aspMigrateTraffic :: Lens' AppsServicesPatch (Maybe Bool)
aspMigrateTraffic
  = lens _aspMigrateTraffic
      (\ s a -> s{_aspMigrateTraffic = a})

-- | Standard field mask for the set of fields to be updated.
aspMask :: Lens' AppsServicesPatch (Maybe Text)
aspMask = lens _aspMask (\ s a -> s{_aspMask = a})

-- | OAuth bearer token.
aspBearerToken :: Lens' AppsServicesPatch (Maybe Text)
aspBearerToken
  = lens _aspBearerToken
      (\ s a -> s{_aspBearerToken = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/services\/default\".
aspAppsId :: Lens' AppsServicesPatch Text
aspAppsId
  = lens _aspAppsId (\ s a -> s{_aspAppsId = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
aspServicesId :: Lens' AppsServicesPatch Text
aspServicesId
  = lens _aspServicesId
      (\ s a -> s{_aspServicesId = a})

-- | JSONP
aspCallback :: Lens' AppsServicesPatch (Maybe Text)
aspCallback
  = lens _aspCallback (\ s a -> s{_aspCallback = a})

instance GoogleRequest AppsServicesPatch where
        type Rs AppsServicesPatch = Operation
        type Scopes AppsServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsServicesPatch'{..}
          = go _aspAppsId _aspServicesId _aspXgafv
              _aspUploadProtocol
              (Just _aspPp)
              _aspAccessToken
              _aspUploadType
              _aspMigrateTraffic
              _aspMask
              _aspBearerToken
              _aspCallback
              (Just AltJSON)
              _aspPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsServicesPatchResource)
                      mempty

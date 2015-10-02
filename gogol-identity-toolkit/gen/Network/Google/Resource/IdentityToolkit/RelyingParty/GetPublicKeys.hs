{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get token signing public key.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyGetPublicKeys@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetPublicKeys
    (
    -- * REST Resource
      RelyingPartyGetPublicKeysResource

    -- * Creating a Request
    , relyingPartyGetPublicKeys'
    , RelyingPartyGetPublicKeys'

    -- * Request Lenses
    , rpgpkQuotaUser
    , rpgpkPrettyPrint
    , rpgpkUserIP
    , rpgpkKey
    , rpgpkOAuthToken
    , rpgpkFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyGetPublicKeys@ which the
-- 'RelyingPartyGetPublicKeys'' request conforms to.
type RelyingPartyGetPublicKeysResource =
     "publicKeys" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON]
                       IdentitytoolkitRelyingPartyGetPublicKeysResponse

-- | Get token signing public key.
--
-- /See:/ 'relyingPartyGetPublicKeys'' smart constructor.
data RelyingPartyGetPublicKeys' = RelyingPartyGetPublicKeys'
    { _rpgpkQuotaUser   :: !(Maybe Text)
    , _rpgpkPrettyPrint :: !Bool
    , _rpgpkUserIP      :: !(Maybe Text)
    , _rpgpkKey         :: !(Maybe Key)
    , _rpgpkOAuthToken  :: !(Maybe OAuthToken)
    , _rpgpkFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetPublicKeys'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgpkQuotaUser'
--
-- * 'rpgpkPrettyPrint'
--
-- * 'rpgpkUserIP'
--
-- * 'rpgpkKey'
--
-- * 'rpgpkOAuthToken'
--
-- * 'rpgpkFields'
relyingPartyGetPublicKeys'
    :: RelyingPartyGetPublicKeys'
relyingPartyGetPublicKeys' =
    RelyingPartyGetPublicKeys'
    { _rpgpkQuotaUser = Nothing
    , _rpgpkPrettyPrint = True
    , _rpgpkUserIP = Nothing
    , _rpgpkKey = Nothing
    , _rpgpkOAuthToken = Nothing
    , _rpgpkFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgpkQuotaUser :: Lens' RelyingPartyGetPublicKeys' (Maybe Text)
rpgpkQuotaUser
  = lens _rpgpkQuotaUser
      (\ s a -> s{_rpgpkQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgpkPrettyPrint :: Lens' RelyingPartyGetPublicKeys' Bool
rpgpkPrettyPrint
  = lens _rpgpkPrettyPrint
      (\ s a -> s{_rpgpkPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgpkUserIP :: Lens' RelyingPartyGetPublicKeys' (Maybe Text)
rpgpkUserIP
  = lens _rpgpkUserIP (\ s a -> s{_rpgpkUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgpkKey :: Lens' RelyingPartyGetPublicKeys' (Maybe Key)
rpgpkKey = lens _rpgpkKey (\ s a -> s{_rpgpkKey = a})

-- | OAuth 2.0 token for the current user.
rpgpkOAuthToken :: Lens' RelyingPartyGetPublicKeys' (Maybe OAuthToken)
rpgpkOAuthToken
  = lens _rpgpkOAuthToken
      (\ s a -> s{_rpgpkOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgpkFields :: Lens' RelyingPartyGetPublicKeys' (Maybe Text)
rpgpkFields
  = lens _rpgpkFields (\ s a -> s{_rpgpkFields = a})

instance GoogleAuth RelyingPartyGetPublicKeys' where
        authKey = rpgpkKey . _Just
        authToken = rpgpkOAuthToken . _Just

instance GoogleRequest RelyingPartyGetPublicKeys'
         where
        type Rs RelyingPartyGetPublicKeys' =
             IdentitytoolkitRelyingPartyGetPublicKeysResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyGetPublicKeys'{..}
          = go _rpgpkQuotaUser (Just _rpgpkPrettyPrint)
              _rpgpkUserIP
              _rpgpkFields
              _rpgpkKey
              _rpgpkOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyGetPublicKeysResource)
                      r
                      u
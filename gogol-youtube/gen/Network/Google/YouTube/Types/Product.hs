{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTube.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTube.Types.Product where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types.Sum

--
-- /See:/ 'liveChatMessageAuthorDetails' smart constructor.
data LiveChatMessageAuthorDetails = LiveChatMessageAuthorDetails'
    { _lcmadIsVerified      :: !(Maybe Bool)
    , _lcmadIsChatOwner     :: !(Maybe Bool)
    , _lcmadChannelId       :: !(Maybe Text)
    , _lcmadProFileImageURL :: !(Maybe Text)
    , _lcmadIsChatModerator :: !(Maybe Bool)
    , _lcmadDisplayName     :: !(Maybe Text)
    , _lcmadIsChatSponsor   :: !(Maybe Bool)
    , _lcmadChannelURL      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessageAuthorDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmadIsVerified'
--
-- * 'lcmadIsChatOwner'
--
-- * 'lcmadChannelId'
--
-- * 'lcmadProFileImageURL'
--
-- * 'lcmadIsChatModerator'
--
-- * 'lcmadDisplayName'
--
-- * 'lcmadIsChatSponsor'
--
-- * 'lcmadChannelURL'
liveChatMessageAuthorDetails
    :: LiveChatMessageAuthorDetails
liveChatMessageAuthorDetails =
    LiveChatMessageAuthorDetails'
    { _lcmadIsVerified = Nothing
    , _lcmadIsChatOwner = Nothing
    , _lcmadChannelId = Nothing
    , _lcmadProFileImageURL = Nothing
    , _lcmadIsChatModerator = Nothing
    , _lcmadDisplayName = Nothing
    , _lcmadIsChatSponsor = Nothing
    , _lcmadChannelURL = Nothing
    }

-- | Whether the author\'s identity has been verified by YouTube.
lcmadIsVerified :: Lens' LiveChatMessageAuthorDetails (Maybe Bool)
lcmadIsVerified
  = lens _lcmadIsVerified
      (\ s a -> s{_lcmadIsVerified = a})

-- | Whether the author is the owner of the live chat.
lcmadIsChatOwner :: Lens' LiveChatMessageAuthorDetails (Maybe Bool)
lcmadIsChatOwner
  = lens _lcmadIsChatOwner
      (\ s a -> s{_lcmadIsChatOwner = a})

-- | The YouTube channel ID.
lcmadChannelId :: Lens' LiveChatMessageAuthorDetails (Maybe Text)
lcmadChannelId
  = lens _lcmadChannelId
      (\ s a -> s{_lcmadChannelId = a})

-- | The channels\'s avatar URL.
lcmadProFileImageURL :: Lens' LiveChatMessageAuthorDetails (Maybe Text)
lcmadProFileImageURL
  = lens _lcmadProFileImageURL
      (\ s a -> s{_lcmadProFileImageURL = a})

-- | Whether the author is a moderator of the live chat.
lcmadIsChatModerator :: Lens' LiveChatMessageAuthorDetails (Maybe Bool)
lcmadIsChatModerator
  = lens _lcmadIsChatModerator
      (\ s a -> s{_lcmadIsChatModerator = a})

-- | The channel\'s display name.
lcmadDisplayName :: Lens' LiveChatMessageAuthorDetails (Maybe Text)
lcmadDisplayName
  = lens _lcmadDisplayName
      (\ s a -> s{_lcmadDisplayName = a})

-- | Whether the author is a sponsor of the live chat.
lcmadIsChatSponsor :: Lens' LiveChatMessageAuthorDetails (Maybe Bool)
lcmadIsChatSponsor
  = lens _lcmadIsChatSponsor
      (\ s a -> s{_lcmadIsChatSponsor = a})

-- | The channel\'s URL.
lcmadChannelURL :: Lens' LiveChatMessageAuthorDetails (Maybe Text)
lcmadChannelURL
  = lens _lcmadChannelURL
      (\ s a -> s{_lcmadChannelURL = a})

instance FromJSON LiveChatMessageAuthorDetails where
        parseJSON
          = withObject "LiveChatMessageAuthorDetails"
              (\ o ->
                 LiveChatMessageAuthorDetails' <$>
                   (o .:? "isVerified") <*> (o .:? "isChatOwner") <*>
                     (o .:? "channelId")
                     <*> (o .:? "profileImageUrl")
                     <*> (o .:? "isChatModerator")
                     <*> (o .:? "displayName")
                     <*> (o .:? "isChatSponsor")
                     <*> (o .:? "channelUrl"))

instance ToJSON LiveChatMessageAuthorDetails where
        toJSON LiveChatMessageAuthorDetails'{..}
          = object
              (catMaybes
                 [("isVerified" .=) <$> _lcmadIsVerified,
                  ("isChatOwner" .=) <$> _lcmadIsChatOwner,
                  ("channelId" .=) <$> _lcmadChannelId,
                  ("profileImageUrl" .=) <$> _lcmadProFileImageURL,
                  ("isChatModerator" .=) <$> _lcmadIsChatModerator,
                  ("displayName" .=) <$> _lcmadDisplayName,
                  ("isChatSponsor" .=) <$> _lcmadIsChatSponsor,
                  ("channelUrl" .=) <$> _lcmadChannelURL])

-- | Basic details about a subscription\'s subscriber including title,
-- description, channel ID and thumbnails.
--
-- /See:/ 'subscriptionSubscriberSnippet' smart constructor.
data SubscriptionSubscriberSnippet = SubscriptionSubscriberSnippet'
    { _sssChannelId   :: !(Maybe Text)
    , _sssThumbnails  :: !(Maybe ThumbnailDetails)
    , _sssTitle       :: !(Maybe Text)
    , _sssDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionSubscriberSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssChannelId'
--
-- * 'sssThumbnails'
--
-- * 'sssTitle'
--
-- * 'sssDescription'
subscriptionSubscriberSnippet
    :: SubscriptionSubscriberSnippet
subscriptionSubscriberSnippet =
    SubscriptionSubscriberSnippet'
    { _sssChannelId = Nothing
    , _sssThumbnails = Nothing
    , _sssTitle = Nothing
    , _sssDescription = Nothing
    }

-- | The channel ID of the subscriber.
sssChannelId :: Lens' SubscriptionSubscriberSnippet (Maybe Text)
sssChannelId
  = lens _sssChannelId (\ s a -> s{_sssChannelId = a})

-- | Thumbnails for this subscriber.
sssThumbnails :: Lens' SubscriptionSubscriberSnippet (Maybe ThumbnailDetails)
sssThumbnails
  = lens _sssThumbnails
      (\ s a -> s{_sssThumbnails = a})

-- | The title of the subscriber.
sssTitle :: Lens' SubscriptionSubscriberSnippet (Maybe Text)
sssTitle = lens _sssTitle (\ s a -> s{_sssTitle = a})

-- | The description of the subscriber.
sssDescription :: Lens' SubscriptionSubscriberSnippet (Maybe Text)
sssDescription
  = lens _sssDescription
      (\ s a -> s{_sssDescription = a})

instance FromJSON SubscriptionSubscriberSnippet where
        parseJSON
          = withObject "SubscriptionSubscriberSnippet"
              (\ o ->
                 SubscriptionSubscriberSnippet' <$>
                   (o .:? "channelId") <*> (o .:? "thumbnails") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON SubscriptionSubscriberSnippet where
        toJSON SubscriptionSubscriberSnippet'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _sssChannelId,
                  ("thumbnails" .=) <$> _sssThumbnails,
                  ("title" .=) <$> _sssTitle,
                  ("description" .=) <$> _sssDescription])

-- | Describes information necessary for ingesting an RTMP or an HTTP stream.
--
-- /See:/ 'ingestionInfo' smart constructor.
data IngestionInfo = IngestionInfo'
    { _iiBackupIngestionAddress :: !(Maybe Text)
    , _iiIngestionAddress       :: !(Maybe Text)
    , _iiStreamName             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IngestionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiBackupIngestionAddress'
--
-- * 'iiIngestionAddress'
--
-- * 'iiStreamName'
ingestionInfo
    :: IngestionInfo
ingestionInfo =
    IngestionInfo'
    { _iiBackupIngestionAddress = Nothing
    , _iiIngestionAddress = Nothing
    , _iiStreamName = Nothing
    }

-- | The backup ingestion URL that you should use to stream video to YouTube.
-- You have the option of simultaneously streaming the content that you are
-- sending to the ingestionAddress to this URL.
iiBackupIngestionAddress :: Lens' IngestionInfo (Maybe Text)
iiBackupIngestionAddress
  = lens _iiBackupIngestionAddress
      (\ s a -> s{_iiBackupIngestionAddress = a})

-- | The primary ingestion URL that you should use to stream video to
-- YouTube. You must stream video to this URL. Depending on which
-- application or tool you use to encode your video stream, you may need to
-- enter the stream URL and stream name separately or you may need to
-- concatenate them in the following format: STREAM_URL\/STREAM_NAME
iiIngestionAddress :: Lens' IngestionInfo (Maybe Text)
iiIngestionAddress
  = lens _iiIngestionAddress
      (\ s a -> s{_iiIngestionAddress = a})

-- | The HTTP or RTMP stream name that YouTube assigns to the video stream.
iiStreamName :: Lens' IngestionInfo (Maybe Text)
iiStreamName
  = lens _iiStreamName (\ s a -> s{_iiStreamName = a})

instance FromJSON IngestionInfo where
        parseJSON
          = withObject "IngestionInfo"
              (\ o ->
                 IngestionInfo' <$>
                   (o .:? "backupIngestionAddress") <*>
                     (o .:? "ingestionAddress")
                     <*> (o .:? "streamName"))

instance ToJSON IngestionInfo where
        toJSON IngestionInfo'{..}
          = object
              (catMaybes
                 [("backupIngestionAddress" .=) <$>
                    _iiBackupIngestionAddress,
                  ("ingestionAddress" .=) <$> _iiIngestionAddress,
                  ("streamName" .=) <$> _iiStreamName])

-- | The auditDetails object encapsulates channel data that is relevant for
-- YouTube Partners during the audit process.
--
-- /See:/ 'channelAuditDetails' smart constructor.
data ChannelAuditDetails = ChannelAuditDetails'
    { _cadContentIdClaimsGoodStanding     :: !(Maybe Bool)
    , _cadOverallGoodStanding             :: !(Maybe Bool)
    , _cadCopyrightStrikesGoodStanding    :: !(Maybe Bool)
    , _cadCommUnityGuidelinesGoodStanding :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelAuditDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadContentIdClaimsGoodStanding'
--
-- * 'cadOverallGoodStanding'
--
-- * 'cadCopyrightStrikesGoodStanding'
--
-- * 'cadCommUnityGuidelinesGoodStanding'
channelAuditDetails
    :: ChannelAuditDetails
channelAuditDetails =
    ChannelAuditDetails'
    { _cadContentIdClaimsGoodStanding = Nothing
    , _cadOverallGoodStanding = Nothing
    , _cadCopyrightStrikesGoodStanding = Nothing
    , _cadCommUnityGuidelinesGoodStanding = Nothing
    }

-- | Whether or not the channel has any unresolved claims.
cadContentIdClaimsGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadContentIdClaimsGoodStanding
  = lens _cadContentIdClaimsGoodStanding
      (\ s a -> s{_cadContentIdClaimsGoodStanding = a})

-- | Describes the general state of the channel. This field will always show
-- if there are any issues whatsoever with the channel. Currently this
-- field represents the result of the logical and operation over the
-- community guidelines good standing, the copyright strikes good standing
-- and the content ID claims good standing, but this may change in the
-- future.
cadOverallGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadOverallGoodStanding
  = lens _cadOverallGoodStanding
      (\ s a -> s{_cadOverallGoodStanding = a})

-- | Whether or not the channel has any copyright strikes.
cadCopyrightStrikesGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadCopyrightStrikesGoodStanding
  = lens _cadCopyrightStrikesGoodStanding
      (\ s a -> s{_cadCopyrightStrikesGoodStanding = a})

-- | Whether or not the channel respects the community guidelines.
cadCommUnityGuidelinesGoodStanding :: Lens' ChannelAuditDetails (Maybe Bool)
cadCommUnityGuidelinesGoodStanding
  = lens _cadCommUnityGuidelinesGoodStanding
      (\ s a -> s{_cadCommUnityGuidelinesGoodStanding = a})

instance FromJSON ChannelAuditDetails where
        parseJSON
          = withObject "ChannelAuditDetails"
              (\ o ->
                 ChannelAuditDetails' <$>
                   (o .:? "contentIdClaimsGoodStanding") <*>
                     (o .:? "overallGoodStanding")
                     <*> (o .:? "copyrightStrikesGoodStanding")
                     <*> (o .:? "communityGuidelinesGoodStanding"))

instance ToJSON ChannelAuditDetails where
        toJSON ChannelAuditDetails'{..}
          = object
              (catMaybes
                 [("contentIdClaimsGoodStanding" .=) <$>
                    _cadContentIdClaimsGoodStanding,
                  ("overallGoodStanding" .=) <$>
                    _cadOverallGoodStanding,
                  ("copyrightStrikesGoodStanding" .=) <$>
                    _cadCopyrightStrikesGoodStanding,
                  ("communityGuidelinesGoodStanding" .=) <$>
                    _cadCommUnityGuidelinesGoodStanding])

-- | A thumbnail is an image representing a YouTube resource.
--
-- /See:/ 'thumbnail' smart constructor.
data Thumbnail = Thumbnail'
    { _tHeight :: !(Maybe (Textual Word32))
    , _tURL    :: !(Maybe Text)
    , _tWidth  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Thumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tHeight'
--
-- * 'tURL'
--
-- * 'tWidth'
thumbnail
    :: Thumbnail
thumbnail =
    Thumbnail'
    { _tHeight = Nothing
    , _tURL = Nothing
    , _tWidth = Nothing
    }

-- | (Optional) Height of the thumbnail image.
tHeight :: Lens' Thumbnail (Maybe Word32)
tHeight
  = lens _tHeight (\ s a -> s{_tHeight = a}) .
      mapping _Coerce

-- | The thumbnail image\'s URL.
tURL :: Lens' Thumbnail (Maybe Text)
tURL = lens _tURL (\ s a -> s{_tURL = a})

-- | (Optional) Width of the thumbnail image.
tWidth :: Lens' Thumbnail (Maybe Word32)
tWidth
  = lens _tWidth (\ s a -> s{_tWidth = a}) .
      mapping _Coerce

instance FromJSON Thumbnail where
        parseJSON
          = withObject "Thumbnail"
              (\ o ->
                 Thumbnail' <$>
                   (o .:? "height") <*> (o .:? "url") <*>
                     (o .:? "width"))

instance ToJSON Thumbnail where
        toJSON Thumbnail'{..}
          = object
              (catMaybes
                 [("height" .=) <$> _tHeight, ("url" .=) <$> _tURL,
                  ("width" .=) <$> _tWidth])

--
-- /See:/ 'liveChatTextMessageDetails' smart constructor.
newtype LiveChatTextMessageDetails = LiveChatTextMessageDetails'
    { _lctmdMessageText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatTextMessageDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lctmdMessageText'
liveChatTextMessageDetails
    :: LiveChatTextMessageDetails
liveChatTextMessageDetails =
    LiveChatTextMessageDetails'
    { _lctmdMessageText = Nothing
    }

-- | The user\'s message.
lctmdMessageText :: Lens' LiveChatTextMessageDetails (Maybe Text)
lctmdMessageText
  = lens _lctmdMessageText
      (\ s a -> s{_lctmdMessageText = a})

instance FromJSON LiveChatTextMessageDetails where
        parseJSON
          = withObject "LiveChatTextMessageDetails"
              (\ o ->
                 LiveChatTextMessageDetails' <$>
                   (o .:? "messageText"))

instance ToJSON LiveChatTextMessageDetails where
        toJSON LiveChatTextMessageDetails'{..}
          = object
              (catMaybes
                 [("messageText" .=) <$> _lctmdMessageText])

-- | Information that identifies the recommended resource.
--
-- /See:/ 'activityContentDetailsRecommendation' smart constructor.
data ActivityContentDetailsRecommendation = ActivityContentDetailsRecommendation'
    { _acdrResourceId     :: !(Maybe ResourceId)
    , _acdrSeedResourceId :: !(Maybe ResourceId)
    , _acdrReason         :: !(Maybe ActivityContentDetailsRecommendationReason)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdrResourceId'
--
-- * 'acdrSeedResourceId'
--
-- * 'acdrReason'
activityContentDetailsRecommendation
    :: ActivityContentDetailsRecommendation
activityContentDetailsRecommendation =
    ActivityContentDetailsRecommendation'
    { _acdrResourceId = Nothing
    , _acdrSeedResourceId = Nothing
    , _acdrReason = Nothing
    }

-- | The resourceId object contains information that identifies the
-- recommended resource.
acdrResourceId :: Lens' ActivityContentDetailsRecommendation (Maybe ResourceId)
acdrResourceId
  = lens _acdrResourceId
      (\ s a -> s{_acdrResourceId = a})

-- | The seedResourceId object contains information about the resource that
-- caused the recommendation.
acdrSeedResourceId :: Lens' ActivityContentDetailsRecommendation (Maybe ResourceId)
acdrSeedResourceId
  = lens _acdrSeedResourceId
      (\ s a -> s{_acdrSeedResourceId = a})

-- | The reason that the resource is recommended to the user.
acdrReason :: Lens' ActivityContentDetailsRecommendation (Maybe ActivityContentDetailsRecommendationReason)
acdrReason
  = lens _acdrReason (\ s a -> s{_acdrReason = a})

instance FromJSON
         ActivityContentDetailsRecommendation where
        parseJSON
          = withObject "ActivityContentDetailsRecommendation"
              (\ o ->
                 ActivityContentDetailsRecommendation' <$>
                   (o .:? "resourceId") <*> (o .:? "seedResourceId") <*>
                     (o .:? "reason"))

instance ToJSON ActivityContentDetailsRecommendation
         where
        toJSON ActivityContentDetailsRecommendation'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdrResourceId,
                  ("seedResourceId" .=) <$> _acdrSeedResourceId,
                  ("reason" .=) <$> _acdrReason])

--
-- /See:/ 'liveChatMessageRetractedDetails' smart constructor.
newtype LiveChatMessageRetractedDetails = LiveChatMessageRetractedDetails'
    { _lcmrdRetractedMessageId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessageRetractedDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmrdRetractedMessageId'
liveChatMessageRetractedDetails
    :: LiveChatMessageRetractedDetails
liveChatMessageRetractedDetails =
    LiveChatMessageRetractedDetails'
    { _lcmrdRetractedMessageId = Nothing
    }

lcmrdRetractedMessageId :: Lens' LiveChatMessageRetractedDetails (Maybe Text)
lcmrdRetractedMessageId
  = lens _lcmrdRetractedMessageId
      (\ s a -> s{_lcmrdRetractedMessageId = a})

instance FromJSON LiveChatMessageRetractedDetails
         where
        parseJSON
          = withObject "LiveChatMessageRetractedDetails"
              (\ o ->
                 LiveChatMessageRetractedDetails' <$>
                   (o .:? "retractedMessageId"))

instance ToJSON LiveChatMessageRetractedDetails where
        toJSON LiveChatMessageRetractedDetails'{..}
          = object
              (catMaybes
                 [("retractedMessageId" .=) <$>
                    _lcmrdRetractedMessageId])

--
-- /See:/ 'playListListResponse' smart constructor.
data PlayListListResponse = PlayListListResponse'
    { _pllrEtag            :: !(Maybe Text)
    , _pllrTokenPagination :: !(Maybe TokenPagination)
    , _pllrNextPageToken   :: !(Maybe Text)
    , _pllrPageInfo        :: !(Maybe PageInfo)
    , _pllrKind            :: !Text
    , _pllrItems           :: !(Maybe [PlayList])
    , _pllrVisitorId       :: !(Maybe Text)
    , _pllrEventId         :: !(Maybe Text)
    , _pllrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllrEtag'
--
-- * 'pllrTokenPagination'
--
-- * 'pllrNextPageToken'
--
-- * 'pllrPageInfo'
--
-- * 'pllrKind'
--
-- * 'pllrItems'
--
-- * 'pllrVisitorId'
--
-- * 'pllrEventId'
--
-- * 'pllrPrevPageToken'
playListListResponse
    :: PlayListListResponse
playListListResponse =
    PlayListListResponse'
    { _pllrEtag = Nothing
    , _pllrTokenPagination = Nothing
    , _pllrNextPageToken = Nothing
    , _pllrPageInfo = Nothing
    , _pllrKind = "youtube#playlistListResponse"
    , _pllrItems = Nothing
    , _pllrVisitorId = Nothing
    , _pllrEventId = Nothing
    , _pllrPrevPageToken = Nothing
    }

-- | Etag of this resource.
pllrEtag :: Lens' PlayListListResponse (Maybe Text)
pllrEtag = lens _pllrEtag (\ s a -> s{_pllrEtag = a})

pllrTokenPagination :: Lens' PlayListListResponse (Maybe TokenPagination)
pllrTokenPagination
  = lens _pllrTokenPagination
      (\ s a -> s{_pllrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
pllrNextPageToken :: Lens' PlayListListResponse (Maybe Text)
pllrNextPageToken
  = lens _pllrNextPageToken
      (\ s a -> s{_pllrNextPageToken = a})

pllrPageInfo :: Lens' PlayListListResponse (Maybe PageInfo)
pllrPageInfo
  = lens _pllrPageInfo (\ s a -> s{_pllrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistListResponse\".
pllrKind :: Lens' PlayListListResponse Text
pllrKind = lens _pllrKind (\ s a -> s{_pllrKind = a})

-- | A list of playlists that match the request criteria.
pllrItems :: Lens' PlayListListResponse [PlayList]
pllrItems
  = lens _pllrItems (\ s a -> s{_pllrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
pllrVisitorId :: Lens' PlayListListResponse (Maybe Text)
pllrVisitorId
  = lens _pllrVisitorId
      (\ s a -> s{_pllrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
pllrEventId :: Lens' PlayListListResponse (Maybe Text)
pllrEventId
  = lens _pllrEventId (\ s a -> s{_pllrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
pllrPrevPageToken :: Lens' PlayListListResponse (Maybe Text)
pllrPrevPageToken
  = lens _pllrPrevPageToken
      (\ s a -> s{_pllrPrevPageToken = a})

instance FromJSON PlayListListResponse where
        parseJSON
          = withObject "PlayListListResponse"
              (\ o ->
                 PlayListListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#playlistListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON PlayListListResponse where
        toJSON PlayListListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _pllrEtag,
                  ("tokenPagination" .=) <$> _pllrTokenPagination,
                  ("nextPageToken" .=) <$> _pllrNextPageToken,
                  ("pageInfo" .=) <$> _pllrPageInfo,
                  Just ("kind" .= _pllrKind),
                  ("items" .=) <$> _pllrItems,
                  ("visitorId" .=) <$> _pllrVisitorId,
                  ("eventId" .=) <$> _pllrEventId,
                  ("prevPageToken" .=) <$> _pllrPrevPageToken])

-- | Basic details about a channel section, including title, style and
-- position.
--
-- /See:/ 'channelSectionSnippet' smart constructor.
data ChannelSectionSnippet = ChannelSectionSnippet'
    { _cssStyle           :: !(Maybe ChannelSectionSnippetStyle)
    , _cssChannelId       :: !(Maybe Text)
    , _cssLocalized       :: !(Maybe ChannelSectionLocalization)
    , _cssTitle           :: !(Maybe Text)
    , _cssType            :: !(Maybe ChannelSectionSnippetType)
    , _cssPosition        :: !(Maybe (Textual Word32))
    , _cssDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cssStyle'
--
-- * 'cssChannelId'
--
-- * 'cssLocalized'
--
-- * 'cssTitle'
--
-- * 'cssType'
--
-- * 'cssPosition'
--
-- * 'cssDefaultLanguage'
channelSectionSnippet
    :: ChannelSectionSnippet
channelSectionSnippet =
    ChannelSectionSnippet'
    { _cssStyle = Nothing
    , _cssChannelId = Nothing
    , _cssLocalized = Nothing
    , _cssTitle = Nothing
    , _cssType = Nothing
    , _cssPosition = Nothing
    , _cssDefaultLanguage = Nothing
    }

-- | The style of the channel section.
cssStyle :: Lens' ChannelSectionSnippet (Maybe ChannelSectionSnippetStyle)
cssStyle = lens _cssStyle (\ s a -> s{_cssStyle = a})

-- | The ID that YouTube uses to uniquely identify the channel that published
-- the channel section.
cssChannelId :: Lens' ChannelSectionSnippet (Maybe Text)
cssChannelId
  = lens _cssChannelId (\ s a -> s{_cssChannelId = a})

-- | Localized title, read-only.
cssLocalized :: Lens' ChannelSectionSnippet (Maybe ChannelSectionLocalization)
cssLocalized
  = lens _cssLocalized (\ s a -> s{_cssLocalized = a})

-- | The channel section\'s title for multiple_playlists and
-- multiple_channels.
cssTitle :: Lens' ChannelSectionSnippet (Maybe Text)
cssTitle = lens _cssTitle (\ s a -> s{_cssTitle = a})

-- | The type of the channel section.
cssType :: Lens' ChannelSectionSnippet (Maybe ChannelSectionSnippetType)
cssType = lens _cssType (\ s a -> s{_cssType = a})

-- | The position of the channel section in the channel.
cssPosition :: Lens' ChannelSectionSnippet (Maybe Word32)
cssPosition
  = lens _cssPosition (\ s a -> s{_cssPosition = a}) .
      mapping _Coerce

-- | The language of the channel section\'s default title and description.
cssDefaultLanguage :: Lens' ChannelSectionSnippet (Maybe Text)
cssDefaultLanguage
  = lens _cssDefaultLanguage
      (\ s a -> s{_cssDefaultLanguage = a})

instance FromJSON ChannelSectionSnippet where
        parseJSON
          = withObject "ChannelSectionSnippet"
              (\ o ->
                 ChannelSectionSnippet' <$>
                   (o .:? "style") <*> (o .:? "channelId") <*>
                     (o .:? "localized")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "position")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSectionSnippet where
        toJSON ChannelSectionSnippet'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _cssStyle,
                  ("channelId" .=) <$> _cssChannelId,
                  ("localized" .=) <$> _cssLocalized,
                  ("title" .=) <$> _cssTitle, ("type" .=) <$> _cssType,
                  ("position" .=) <$> _cssPosition,
                  ("defaultLanguage" .=) <$> _cssDefaultLanguage])

-- | JSON template for the status part of a channel.
--
-- /See:/ 'channelStatus' smart constructor.
data ChannelStatus = ChannelStatus'
    { _csIsLinked          :: !(Maybe Bool)
    , _csLongUploadsStatus :: !(Maybe ChannelStatusLongUploadsStatus)
    , _csPrivacyStatus     :: !(Maybe ChannelStatusPrivacyStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIsLinked'
--
-- * 'csLongUploadsStatus'
--
-- * 'csPrivacyStatus'
channelStatus
    :: ChannelStatus
channelStatus =
    ChannelStatus'
    { _csIsLinked = Nothing
    , _csLongUploadsStatus = Nothing
    , _csPrivacyStatus = Nothing
    }

-- | If true, then the user is linked to either a YouTube username or G+
-- account. Otherwise, the user doesn\'t have a public YouTube identity.
csIsLinked :: Lens' ChannelStatus (Maybe Bool)
csIsLinked
  = lens _csIsLinked (\ s a -> s{_csIsLinked = a})

-- | The long uploads status of this channel. See
csLongUploadsStatus :: Lens' ChannelStatus (Maybe ChannelStatusLongUploadsStatus)
csLongUploadsStatus
  = lens _csLongUploadsStatus
      (\ s a -> s{_csLongUploadsStatus = a})

-- | Privacy status of the channel.
csPrivacyStatus :: Lens' ChannelStatus (Maybe ChannelStatusPrivacyStatus)
csPrivacyStatus
  = lens _csPrivacyStatus
      (\ s a -> s{_csPrivacyStatus = a})

instance FromJSON ChannelStatus where
        parseJSON
          = withObject "ChannelStatus"
              (\ o ->
                 ChannelStatus' <$>
                   (o .:? "isLinked") <*> (o .:? "longUploadsStatus")
                     <*> (o .:? "privacyStatus"))

instance ToJSON ChannelStatus where
        toJSON ChannelStatus'{..}
          = object
              (catMaybes
                 [("isLinked" .=) <$> _csIsLinked,
                  ("longUploadsStatus" .=) <$> _csLongUploadsStatus,
                  ("privacyStatus" .=) <$> _csPrivacyStatus])

-- | Describes a single promoted item.
--
-- /See:/ 'promotedItem' smart constructor.
data PromotedItem = PromotedItem'
    { _piCustomMessage          :: !(Maybe Text)
    , _piPromotedByContentOwner :: !(Maybe Bool)
    , _piId                     :: !(Maybe PromotedItemId)
    , _piTiming                 :: !(Maybe InvideoTiming)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piCustomMessage'
--
-- * 'piPromotedByContentOwner'
--
-- * 'piId'
--
-- * 'piTiming'
promotedItem
    :: PromotedItem
promotedItem =
    PromotedItem'
    { _piCustomMessage = Nothing
    , _piPromotedByContentOwner = Nothing
    , _piId = Nothing
    , _piTiming = Nothing
    }

-- | A custom message to display for this promotion. This field is currently
-- ignored unless the promoted item is a website.
piCustomMessage :: Lens' PromotedItem (Maybe Text)
piCustomMessage
  = lens _piCustomMessage
      (\ s a -> s{_piCustomMessage = a})

-- | If true, the content owner\'s name will be used when displaying the
-- promotion. This field can only be set when the update is made on behalf
-- of the content owner.
piPromotedByContentOwner :: Lens' PromotedItem (Maybe Bool)
piPromotedByContentOwner
  = lens _piPromotedByContentOwner
      (\ s a -> s{_piPromotedByContentOwner = a})

-- | Identifies the promoted item.
piId :: Lens' PromotedItem (Maybe PromotedItemId)
piId = lens _piId (\ s a -> s{_piId = a})

-- | The temporal position within the video where the promoted item will be
-- displayed. If present, it overrides the default timing.
piTiming :: Lens' PromotedItem (Maybe InvideoTiming)
piTiming = lens _piTiming (\ s a -> s{_piTiming = a})

instance FromJSON PromotedItem where
        parseJSON
          = withObject "PromotedItem"
              (\ o ->
                 PromotedItem' <$>
                   (o .:? "customMessage") <*>
                     (o .:? "promotedByContentOwner")
                     <*> (o .:? "id")
                     <*> (o .:? "timing"))

instance ToJSON PromotedItem where
        toJSON PromotedItem'{..}
          = object
              (catMaybes
                 [("customMessage" .=) <$> _piCustomMessage,
                  ("promotedByContentOwner" .=) <$>
                    _piPromotedByContentOwner,
                  ("id" .=) <$> _piId, ("timing" .=) <$> _piTiming])

--
-- /See:/ 'liveStreamSnippet' smart constructor.
data LiveStreamSnippet = LiveStreamSnippet'
    { _lssPublishedAt     :: !(Maybe DateTime')
    , _lssChannelId       :: !(Maybe Text)
    , _lssIsDefaultStream :: !(Maybe Bool)
    , _lssTitle           :: !(Maybe Text)
    , _lssDescription     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssPublishedAt'
--
-- * 'lssChannelId'
--
-- * 'lssIsDefaultStream'
--
-- * 'lssTitle'
--
-- * 'lssDescription'
liveStreamSnippet
    :: LiveStreamSnippet
liveStreamSnippet =
    LiveStreamSnippet'
    { _lssPublishedAt = Nothing
    , _lssChannelId = Nothing
    , _lssIsDefaultStream = Nothing
    , _lssTitle = Nothing
    , _lssDescription = Nothing
    }

-- | The date and time that the stream was created. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lssPublishedAt :: Lens' LiveStreamSnippet (Maybe UTCTime)
lssPublishedAt
  = lens _lssPublishedAt
      (\ s a -> s{_lssPublishedAt = a})
      . mapping _DateTime

-- | The ID that YouTube uses to uniquely identify the channel that is
-- transmitting the stream.
lssChannelId :: Lens' LiveStreamSnippet (Maybe Text)
lssChannelId
  = lens _lssChannelId (\ s a -> s{_lssChannelId = a})

lssIsDefaultStream :: Lens' LiveStreamSnippet (Maybe Bool)
lssIsDefaultStream
  = lens _lssIsDefaultStream
      (\ s a -> s{_lssIsDefaultStream = a})

-- | The stream\'s title. The value must be between 1 and 128 characters
-- long.
lssTitle :: Lens' LiveStreamSnippet (Maybe Text)
lssTitle = lens _lssTitle (\ s a -> s{_lssTitle = a})

-- | The stream\'s description. The value cannot be longer than 10000
-- characters.
lssDescription :: Lens' LiveStreamSnippet (Maybe Text)
lssDescription
  = lens _lssDescription
      (\ s a -> s{_lssDescription = a})

instance FromJSON LiveStreamSnippet where
        parseJSON
          = withObject "LiveStreamSnippet"
              (\ o ->
                 LiveStreamSnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "channelId") <*>
                     (o .:? "isDefaultStream")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON LiveStreamSnippet where
        toJSON LiveStreamSnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _lssPublishedAt,
                  ("channelId" .=) <$> _lssChannelId,
                  ("isDefaultStream" .=) <$> _lssIsDefaultStream,
                  ("title" .=) <$> _lssTitle,
                  ("description" .=) <$> _lssDescription])

-- | A search result contains information about a YouTube video, channel, or
-- playlist that matches the search parameters specified in an API request.
-- While a search result points to a uniquely identifiable resource, like a
-- video, it does not have its own persistent data.
--
-- /See:/ 'searchResult' smart constructor.
data SearchResult = SearchResult'
    { _srEtag    :: !(Maybe Text)
    , _srSnippet :: !(Maybe SearchResultSnippet)
    , _srKind    :: !Text
    , _srId      :: !(Maybe ResourceId)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srEtag'
--
-- * 'srSnippet'
--
-- * 'srKind'
--
-- * 'srId'
searchResult
    :: SearchResult
searchResult =
    SearchResult'
    { _srEtag = Nothing
    , _srSnippet = Nothing
    , _srKind = "youtube#searchResult"
    , _srId = Nothing
    }

-- | Etag of this resource.
srEtag :: Lens' SearchResult (Maybe Text)
srEtag = lens _srEtag (\ s a -> s{_srEtag = a})

-- | The snippet object contains basic details about a search result, such as
-- its title or description. For example, if the search result is a video,
-- then the title will be the video\'s title and the description will be
-- the video\'s description.
srSnippet :: Lens' SearchResult (Maybe SearchResultSnippet)
srSnippet
  = lens _srSnippet (\ s a -> s{_srSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#searchResult\".
srKind :: Lens' SearchResult Text
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The id object contains information that can be used to uniquely identify
-- the resource that matches the search request.
srId :: Lens' SearchResult (Maybe ResourceId)
srId = lens _srId (\ s a -> s{_srId = a})

instance FromJSON SearchResult where
        parseJSON
          = withObject "SearchResult"
              (\ o ->
                 SearchResult' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#searchResult")
                     <*> (o .:? "id"))

instance ToJSON SearchResult where
        toJSON SearchResult'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _srEtag,
                  ("snippet" .=) <$> _srSnippet,
                  Just ("kind" .= _srKind), ("id" .=) <$> _srId])

-- | Stub token pagination template to suppress results.
--
-- /See:/ 'tokenPagination' smart constructor.
data TokenPagination =
    TokenPagination'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
--
tokenPagination
    :: TokenPagination
tokenPagination = TokenPagination'

instance FromJSON TokenPagination where
        parseJSON
          = withObject "TokenPagination"
              (\ o -> pure TokenPagination')

instance ToJSON TokenPagination where
        toJSON = const emptyObject

-- | A resource id is a generic reference that points to another YouTube
-- resource.
--
-- /See:/ 'resourceId' smart constructor.
data ResourceId = ResourceId'
    { _riKind       :: !(Maybe Text)
    , _riChannelId  :: !(Maybe Text)
    , _riVideoId    :: !(Maybe Text)
    , _riPlayListId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourceId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riKind'
--
-- * 'riChannelId'
--
-- * 'riVideoId'
--
-- * 'riPlayListId'
resourceId
    :: ResourceId
resourceId =
    ResourceId'
    { _riKind = Nothing
    , _riChannelId = Nothing
    , _riVideoId = Nothing
    , _riPlayListId = Nothing
    }

-- | The type of the API resource.
riKind :: Lens' ResourceId (Maybe Text)
riKind = lens _riKind (\ s a -> s{_riKind = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a channel. This property is only present if the
-- resourceId.kind value is youtube#channel.
riChannelId :: Lens' ResourceId (Maybe Text)
riChannelId
  = lens _riChannelId (\ s a -> s{_riChannelId = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a video. This property is only present if the
-- resourceId.kind value is youtube#video.
riVideoId :: Lens' ResourceId (Maybe Text)
riVideoId
  = lens _riVideoId (\ s a -> s{_riVideoId = a})

-- | The ID that YouTube uses to uniquely identify the referred resource, if
-- that resource is a playlist. This property is only present if the
-- resourceId.kind value is youtube#playlist.
riPlayListId :: Lens' ResourceId (Maybe Text)
riPlayListId
  = lens _riPlayListId (\ s a -> s{_riPlayListId = a})

instance FromJSON ResourceId where
        parseJSON
          = withObject "ResourceId"
              (\ o ->
                 ResourceId' <$>
                   (o .:? "kind") <*> (o .:? "channelId") <*>
                     (o .:? "videoId")
                     <*> (o .:? "playlistId"))

instance ToJSON ResourceId where
        toJSON ResourceId'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _riKind,
                  ("channelId" .=) <$> _riChannelId,
                  ("videoId" .=) <$> _riVideoId,
                  ("playlistId" .=) <$> _riPlayListId])

--
-- /See:/ 'searchListResponse' smart constructor.
data SearchListResponse = SearchListResponse'
    { _slrEtag            :: !(Maybe Text)
    , _slrTokenPagination :: !(Maybe TokenPagination)
    , _slrNextPageToken   :: !(Maybe Text)
    , _slrRegionCode      :: !(Maybe Text)
    , _slrPageInfo        :: !(Maybe PageInfo)
    , _slrKind            :: !Text
    , _slrItems           :: !(Maybe [SearchResult])
    , _slrVisitorId       :: !(Maybe Text)
    , _slrEventId         :: !(Maybe Text)
    , _slrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrEtag'
--
-- * 'slrTokenPagination'
--
-- * 'slrNextPageToken'
--
-- * 'slrRegionCode'
--
-- * 'slrPageInfo'
--
-- * 'slrKind'
--
-- * 'slrItems'
--
-- * 'slrVisitorId'
--
-- * 'slrEventId'
--
-- * 'slrPrevPageToken'
searchListResponse
    :: SearchListResponse
searchListResponse =
    SearchListResponse'
    { _slrEtag = Nothing
    , _slrTokenPagination = Nothing
    , _slrNextPageToken = Nothing
    , _slrRegionCode = Nothing
    , _slrPageInfo = Nothing
    , _slrKind = "youtube#searchListResponse"
    , _slrItems = Nothing
    , _slrVisitorId = Nothing
    , _slrEventId = Nothing
    , _slrPrevPageToken = Nothing
    }

-- | Etag of this resource.
slrEtag :: Lens' SearchListResponse (Maybe Text)
slrEtag = lens _slrEtag (\ s a -> s{_slrEtag = a})

slrTokenPagination :: Lens' SearchListResponse (Maybe TokenPagination)
slrTokenPagination
  = lens _slrTokenPagination
      (\ s a -> s{_slrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
slrNextPageToken :: Lens' SearchListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

slrRegionCode :: Lens' SearchListResponse (Maybe Text)
slrRegionCode
  = lens _slrRegionCode
      (\ s a -> s{_slrRegionCode = a})

slrPageInfo :: Lens' SearchListResponse (Maybe PageInfo)
slrPageInfo
  = lens _slrPageInfo (\ s a -> s{_slrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#searchListResponse\".
slrKind :: Lens' SearchListResponse Text
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

-- | A list of results that match the search criteria.
slrItems :: Lens' SearchListResponse [SearchResult]
slrItems
  = lens _slrItems (\ s a -> s{_slrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
slrVisitorId :: Lens' SearchListResponse (Maybe Text)
slrVisitorId
  = lens _slrVisitorId (\ s a -> s{_slrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
slrEventId :: Lens' SearchListResponse (Maybe Text)
slrEventId
  = lens _slrEventId (\ s a -> s{_slrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
slrPrevPageToken :: Lens' SearchListResponse (Maybe Text)
slrPrevPageToken
  = lens _slrPrevPageToken
      (\ s a -> s{_slrPrevPageToken = a})

instance FromJSON SearchListResponse where
        parseJSON
          = withObject "SearchListResponse"
              (\ o ->
                 SearchListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "regionCode")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#searchListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON SearchListResponse where
        toJSON SearchListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _slrEtag,
                  ("tokenPagination" .=) <$> _slrTokenPagination,
                  ("nextPageToken" .=) <$> _slrNextPageToken,
                  ("regionCode" .=) <$> _slrRegionCode,
                  ("pageInfo" .=) <$> _slrPageInfo,
                  Just ("kind" .= _slrKind),
                  ("items" .=) <$> _slrItems,
                  ("visitorId" .=) <$> _slrVisitorId,
                  ("eventId" .=) <$> _slrEventId,
                  ("prevPageToken" .=) <$> _slrPrevPageToken])

--
-- /See:/ 'liveBroadcastTopicDetails' smart constructor.
newtype LiveBroadcastTopicDetails = LiveBroadcastTopicDetails'
    { _lbtdTopics :: Maybe [LiveBroadcastTopic]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtdTopics'
liveBroadcastTopicDetails
    :: LiveBroadcastTopicDetails
liveBroadcastTopicDetails =
    LiveBroadcastTopicDetails'
    { _lbtdTopics = Nothing
    }

lbtdTopics :: Lens' LiveBroadcastTopicDetails [LiveBroadcastTopic]
lbtdTopics
  = lens _lbtdTopics (\ s a -> s{_lbtdTopics = a}) .
      _Default
      . _Coerce

instance FromJSON LiveBroadcastTopicDetails where
        parseJSON
          = withObject "LiveBroadcastTopicDetails"
              (\ o ->
                 LiveBroadcastTopicDetails' <$>
                   (o .:? "topics" .!= mempty))

instance ToJSON LiveBroadcastTopicDetails where
        toJSON LiveBroadcastTopicDetails'{..}
          = object (catMaybes [("topics" .=) <$> _lbtdTopics])

--
-- /See:/ 'playListStatus' smart constructor.
newtype PlayListStatus = PlayListStatus'
    { _plsPrivacyStatus :: Maybe PlayListStatusPrivacyStatus
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsPrivacyStatus'
playListStatus
    :: PlayListStatus
playListStatus =
    PlayListStatus'
    { _plsPrivacyStatus = Nothing
    }

-- | The playlist\'s privacy status.
plsPrivacyStatus :: Lens' PlayListStatus (Maybe PlayListStatusPrivacyStatus)
plsPrivacyStatus
  = lens _plsPrivacyStatus
      (\ s a -> s{_plsPrivacyStatus = a})

instance FromJSON PlayListStatus where
        parseJSON
          = withObject "PlayListStatus"
              (\ o -> PlayListStatus' <$> (o .:? "privacyStatus"))

instance ToJSON PlayListStatus where
        toJSON PlayListStatus'{..}
          = object
              (catMaybes
                 [("privacyStatus" .=) <$> _plsPrivacyStatus])

--
-- /See:/ 'liveChatMessageListResponse' smart constructor.
data LiveChatMessageListResponse = LiveChatMessageListResponse'
    { _lcmlrOfflineAt             :: !(Maybe DateTime')
    , _lcmlrEtag                  :: !(Maybe Text)
    , _lcmlrTokenPagination       :: !(Maybe TokenPagination)
    , _lcmlrNextPageToken         :: !(Maybe Text)
    , _lcmlrPageInfo              :: !(Maybe PageInfo)
    , _lcmlrKind                  :: !Text
    , _lcmlrItems                 :: !(Maybe [LiveChatMessage])
    , _lcmlrVisitorId             :: !(Maybe Text)
    , _lcmlrPollingIntervalMillis :: !(Maybe (Textual Word32))
    , _lcmlrEventId               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessageListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmlrOfflineAt'
--
-- * 'lcmlrEtag'
--
-- * 'lcmlrTokenPagination'
--
-- * 'lcmlrNextPageToken'
--
-- * 'lcmlrPageInfo'
--
-- * 'lcmlrKind'
--
-- * 'lcmlrItems'
--
-- * 'lcmlrVisitorId'
--
-- * 'lcmlrPollingIntervalMillis'
--
-- * 'lcmlrEventId'
liveChatMessageListResponse
    :: LiveChatMessageListResponse
liveChatMessageListResponse =
    LiveChatMessageListResponse'
    { _lcmlrOfflineAt = Nothing
    , _lcmlrEtag = Nothing
    , _lcmlrTokenPagination = Nothing
    , _lcmlrNextPageToken = Nothing
    , _lcmlrPageInfo = Nothing
    , _lcmlrKind = "youtube#liveChatMessageListResponse"
    , _lcmlrItems = Nothing
    , _lcmlrVisitorId = Nothing
    , _lcmlrPollingIntervalMillis = Nothing
    , _lcmlrEventId = Nothing
    }

-- | The date and time when the underlying stream went offline. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lcmlrOfflineAt :: Lens' LiveChatMessageListResponse (Maybe UTCTime)
lcmlrOfflineAt
  = lens _lcmlrOfflineAt
      (\ s a -> s{_lcmlrOfflineAt = a})
      . mapping _DateTime

-- | Etag of this resource.
lcmlrEtag :: Lens' LiveChatMessageListResponse (Maybe Text)
lcmlrEtag
  = lens _lcmlrEtag (\ s a -> s{_lcmlrEtag = a})

lcmlrTokenPagination :: Lens' LiveChatMessageListResponse (Maybe TokenPagination)
lcmlrTokenPagination
  = lens _lcmlrTokenPagination
      (\ s a -> s{_lcmlrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lcmlrNextPageToken :: Lens' LiveChatMessageListResponse (Maybe Text)
lcmlrNextPageToken
  = lens _lcmlrNextPageToken
      (\ s a -> s{_lcmlrNextPageToken = a})

lcmlrPageInfo :: Lens' LiveChatMessageListResponse (Maybe PageInfo)
lcmlrPageInfo
  = lens _lcmlrPageInfo
      (\ s a -> s{_lcmlrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveChatMessageListResponse\".
lcmlrKind :: Lens' LiveChatMessageListResponse Text
lcmlrKind
  = lens _lcmlrKind (\ s a -> s{_lcmlrKind = a})

-- | A list of live chat messages.
lcmlrItems :: Lens' LiveChatMessageListResponse [LiveChatMessage]
lcmlrItems
  = lens _lcmlrItems (\ s a -> s{_lcmlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
lcmlrVisitorId :: Lens' LiveChatMessageListResponse (Maybe Text)
lcmlrVisitorId
  = lens _lcmlrVisitorId
      (\ s a -> s{_lcmlrVisitorId = a})

-- | The amount of time the client should wait before polling again.
lcmlrPollingIntervalMillis :: Lens' LiveChatMessageListResponse (Maybe Word32)
lcmlrPollingIntervalMillis
  = lens _lcmlrPollingIntervalMillis
      (\ s a -> s{_lcmlrPollingIntervalMillis = a})
      . mapping _Coerce

-- | Serialized EventId of the request which produced this response.
lcmlrEventId :: Lens' LiveChatMessageListResponse (Maybe Text)
lcmlrEventId
  = lens _lcmlrEventId (\ s a -> s{_lcmlrEventId = a})

instance FromJSON LiveChatMessageListResponse where
        parseJSON
          = withObject "LiveChatMessageListResponse"
              (\ o ->
                 LiveChatMessageListResponse' <$>
                   (o .:? "offlineAt") <*> (o .:? "etag") <*>
                     (o .:? "tokenPagination")
                     <*> (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#liveChatMessageListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "pollingIntervalMillis")
                     <*> (o .:? "eventId"))

instance ToJSON LiveChatMessageListResponse where
        toJSON LiveChatMessageListResponse'{..}
          = object
              (catMaybes
                 [("offlineAt" .=) <$> _lcmlrOfflineAt,
                  ("etag" .=) <$> _lcmlrEtag,
                  ("tokenPagination" .=) <$> _lcmlrTokenPagination,
                  ("nextPageToken" .=) <$> _lcmlrNextPageToken,
                  ("pageInfo" .=) <$> _lcmlrPageInfo,
                  Just ("kind" .= _lcmlrKind),
                  ("items" .=) <$> _lcmlrItems,
                  ("visitorId" .=) <$> _lcmlrVisitorId,
                  ("pollingIntervalMillis" .=) <$>
                    _lcmlrPollingIntervalMillis,
                  ("eventId" .=) <$> _lcmlrEventId])

--
-- /See:/ 'channelListResponse' smart constructor.
data ChannelListResponse = ChannelListResponse'
    { _clrEtag            :: !(Maybe Text)
    , _clrTokenPagination :: !(Maybe TokenPagination)
    , _clrNextPageToken   :: !(Maybe Text)
    , _clrPageInfo        :: !(Maybe PageInfo)
    , _clrKind            :: !Text
    , _clrItems           :: !(Maybe [Channel])
    , _clrVisitorId       :: !(Maybe Text)
    , _clrEventId         :: !(Maybe Text)
    , _clrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrEtag'
--
-- * 'clrTokenPagination'
--
-- * 'clrNextPageToken'
--
-- * 'clrPageInfo'
--
-- * 'clrKind'
--
-- * 'clrItems'
--
-- * 'clrVisitorId'
--
-- * 'clrEventId'
--
-- * 'clrPrevPageToken'
channelListResponse
    :: ChannelListResponse
channelListResponse =
    ChannelListResponse'
    { _clrEtag = Nothing
    , _clrTokenPagination = Nothing
    , _clrNextPageToken = Nothing
    , _clrPageInfo = Nothing
    , _clrKind = "youtube#channelListResponse"
    , _clrItems = Nothing
    , _clrVisitorId = Nothing
    , _clrEventId = Nothing
    , _clrPrevPageToken = Nothing
    }

-- | Etag of this resource.
clrEtag :: Lens' ChannelListResponse (Maybe Text)
clrEtag = lens _clrEtag (\ s a -> s{_clrEtag = a})

clrTokenPagination :: Lens' ChannelListResponse (Maybe TokenPagination)
clrTokenPagination
  = lens _clrTokenPagination
      (\ s a -> s{_clrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
clrNextPageToken :: Lens' ChannelListResponse (Maybe Text)
clrNextPageToken
  = lens _clrNextPageToken
      (\ s a -> s{_clrNextPageToken = a})

clrPageInfo :: Lens' ChannelListResponse (Maybe PageInfo)
clrPageInfo
  = lens _clrPageInfo (\ s a -> s{_clrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelListResponse\".
clrKind :: Lens' ChannelListResponse Text
clrKind = lens _clrKind (\ s a -> s{_clrKind = a})

-- | A list of channels that match the request criteria.
clrItems :: Lens' ChannelListResponse [Channel]
clrItems
  = lens _clrItems (\ s a -> s{_clrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
clrVisitorId :: Lens' ChannelListResponse (Maybe Text)
clrVisitorId
  = lens _clrVisitorId (\ s a -> s{_clrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
clrEventId :: Lens' ChannelListResponse (Maybe Text)
clrEventId
  = lens _clrEventId (\ s a -> s{_clrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
clrPrevPageToken :: Lens' ChannelListResponse (Maybe Text)
clrPrevPageToken
  = lens _clrPrevPageToken
      (\ s a -> s{_clrPrevPageToken = a})

instance FromJSON ChannelListResponse where
        parseJSON
          = withObject "ChannelListResponse"
              (\ o ->
                 ChannelListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#channelListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON ChannelListResponse where
        toJSON ChannelListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _clrEtag,
                  ("tokenPagination" .=) <$> _clrTokenPagination,
                  ("nextPageToken" .=) <$> _clrNextPageToken,
                  ("pageInfo" .=) <$> _clrPageInfo,
                  Just ("kind" .= _clrKind),
                  ("items" .=) <$> _clrItems,
                  ("visitorId" .=) <$> _clrVisitorId,
                  ("eventId" .=) <$> _clrEventId,
                  ("prevPageToken" .=) <$> _clrPrevPageToken])

--
-- /See:/ 'channelProFileDetails' smart constructor.
data ChannelProFileDetails = ChannelProFileDetails'
    { _cpfdChannelId       :: !(Maybe Text)
    , _cpfdProFileImageURL :: !(Maybe Text)
    , _cpfdDisplayName     :: !(Maybe Text)
    , _cpfdChannelURL      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelProFileDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpfdChannelId'
--
-- * 'cpfdProFileImageURL'
--
-- * 'cpfdDisplayName'
--
-- * 'cpfdChannelURL'
channelProFileDetails
    :: ChannelProFileDetails
channelProFileDetails =
    ChannelProFileDetails'
    { _cpfdChannelId = Nothing
    , _cpfdProFileImageURL = Nothing
    , _cpfdDisplayName = Nothing
    , _cpfdChannelURL = Nothing
    }

-- | The YouTube channel ID.
cpfdChannelId :: Lens' ChannelProFileDetails (Maybe Text)
cpfdChannelId
  = lens _cpfdChannelId
      (\ s a -> s{_cpfdChannelId = a})

-- | The channels\'s avatar URL.
cpfdProFileImageURL :: Lens' ChannelProFileDetails (Maybe Text)
cpfdProFileImageURL
  = lens _cpfdProFileImageURL
      (\ s a -> s{_cpfdProFileImageURL = a})

-- | The channel\'s display name.
cpfdDisplayName :: Lens' ChannelProFileDetails (Maybe Text)
cpfdDisplayName
  = lens _cpfdDisplayName
      (\ s a -> s{_cpfdDisplayName = a})

-- | The channel\'s URL.
cpfdChannelURL :: Lens' ChannelProFileDetails (Maybe Text)
cpfdChannelURL
  = lens _cpfdChannelURL
      (\ s a -> s{_cpfdChannelURL = a})

instance FromJSON ChannelProFileDetails where
        parseJSON
          = withObject "ChannelProFileDetails"
              (\ o ->
                 ChannelProFileDetails' <$>
                   (o .:? "channelId") <*> (o .:? "profileImageUrl") <*>
                     (o .:? "displayName")
                     <*> (o .:? "channelUrl"))

instance ToJSON ChannelProFileDetails where
        toJSON ChannelProFileDetails'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _cpfdChannelId,
                  ("profileImageUrl" .=) <$> _cpfdProFileImageURL,
                  ("displayName" .=) <$> _cpfdDisplayName,
                  ("channelUrl" .=) <$> _cpfdChannelURL])

--
-- /See:/ 'videoAbuseReportReasonListResponse' smart constructor.
data VideoAbuseReportReasonListResponse = VideoAbuseReportReasonListResponse'
    { _varrlrEtag      :: !(Maybe Text)
    , _varrlrKind      :: !Text
    , _varrlrItems     :: !(Maybe [VideoAbuseReportReason])
    , _varrlrVisitorId :: !(Maybe Text)
    , _varrlrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrlrEtag'
--
-- * 'varrlrKind'
--
-- * 'varrlrItems'
--
-- * 'varrlrVisitorId'
--
-- * 'varrlrEventId'
videoAbuseReportReasonListResponse
    :: VideoAbuseReportReasonListResponse
videoAbuseReportReasonListResponse =
    VideoAbuseReportReasonListResponse'
    { _varrlrEtag = Nothing
    , _varrlrKind = "youtube#videoAbuseReportReasonListResponse"
    , _varrlrItems = Nothing
    , _varrlrVisitorId = Nothing
    , _varrlrEventId = Nothing
    }

-- | Etag of this resource.
varrlrEtag :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrEtag
  = lens _varrlrEtag (\ s a -> s{_varrlrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoAbuseReportReasonListResponse\".
varrlrKind :: Lens' VideoAbuseReportReasonListResponse Text
varrlrKind
  = lens _varrlrKind (\ s a -> s{_varrlrKind = a})

-- | A list of valid abuse reasons that are used with video.ReportAbuse.
varrlrItems :: Lens' VideoAbuseReportReasonListResponse [VideoAbuseReportReason]
varrlrItems
  = lens _varrlrItems (\ s a -> s{_varrlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
varrlrVisitorId :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrVisitorId
  = lens _varrlrVisitorId
      (\ s a -> s{_varrlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
varrlrEventId :: Lens' VideoAbuseReportReasonListResponse (Maybe Text)
varrlrEventId
  = lens _varrlrEventId
      (\ s a -> s{_varrlrEventId = a})

instance FromJSON VideoAbuseReportReasonListResponse
         where
        parseJSON
          = withObject "VideoAbuseReportReasonListResponse"
              (\ o ->
                 VideoAbuseReportReasonListResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "youtube#videoAbuseReportReasonListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON VideoAbuseReportReasonListResponse
         where
        toJSON VideoAbuseReportReasonListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _varrlrEtag,
                  Just ("kind" .= _varrlrKind),
                  ("items" .=) <$> _varrlrItems,
                  ("visitorId" .=) <$> _varrlrVisitorId,
                  ("eventId" .=) <$> _varrlrEventId])

--
-- /See:/ 'liveChatUserBannedMessageDetails' smart constructor.
data LiveChatUserBannedMessageDetails = LiveChatUserBannedMessageDetails'
    { _lcubmdBanType            :: !(Maybe LiveChatUserBannedMessageDetailsBanType)
    , _lcubmdBannedUserDetails  :: !(Maybe ChannelProFileDetails)
    , _lcubmdBanDurationSeconds :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatUserBannedMessageDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcubmdBanType'
--
-- * 'lcubmdBannedUserDetails'
--
-- * 'lcubmdBanDurationSeconds'
liveChatUserBannedMessageDetails
    :: LiveChatUserBannedMessageDetails
liveChatUserBannedMessageDetails =
    LiveChatUserBannedMessageDetails'
    { _lcubmdBanType = Nothing
    , _lcubmdBannedUserDetails = Nothing
    , _lcubmdBanDurationSeconds = Nothing
    }

-- | The type of ban.
lcubmdBanType :: Lens' LiveChatUserBannedMessageDetails (Maybe LiveChatUserBannedMessageDetailsBanType)
lcubmdBanType
  = lens _lcubmdBanType
      (\ s a -> s{_lcubmdBanType = a})

-- | The details of the user that was banned.
lcubmdBannedUserDetails :: Lens' LiveChatUserBannedMessageDetails (Maybe ChannelProFileDetails)
lcubmdBannedUserDetails
  = lens _lcubmdBannedUserDetails
      (\ s a -> s{_lcubmdBannedUserDetails = a})

-- | The duration of the ban. This property is only present if the banType is
-- temporary.
lcubmdBanDurationSeconds :: Lens' LiveChatUserBannedMessageDetails (Maybe Word64)
lcubmdBanDurationSeconds
  = lens _lcubmdBanDurationSeconds
      (\ s a -> s{_lcubmdBanDurationSeconds = a})
      . mapping _Coerce

instance FromJSON LiveChatUserBannedMessageDetails
         where
        parseJSON
          = withObject "LiveChatUserBannedMessageDetails"
              (\ o ->
                 LiveChatUserBannedMessageDetails' <$>
                   (o .:? "banType") <*> (o .:? "bannedUserDetails") <*>
                     (o .:? "banDurationSeconds"))

instance ToJSON LiveChatUserBannedMessageDetails
         where
        toJSON LiveChatUserBannedMessageDetails'{..}
          = object
              (catMaybes
                 [("banType" .=) <$> _lcubmdBanType,
                  ("bannedUserDetails" .=) <$>
                    _lcubmdBannedUserDetails,
                  ("banDurationSeconds" .=) <$>
                    _lcubmdBanDurationSeconds])

-- | Detailed settings of a broadcast.
--
-- /See:/ 'liveBroadcastContentDetails' smart constructor.
data LiveBroadcastContentDetails = LiveBroadcastContentDetails'
    { _lbcdEnableContentEncryption     :: !(Maybe Bool)
    , _lbcdEnableLowLatency            :: !(Maybe Bool)
    , _lbcdClosedCaptionsType          :: !(Maybe LiveBroadcastContentDetailsClosedCaptionsType)
    , _lbcdEnableEmbed                 :: !(Maybe Bool)
    , _lbcdStartWithSlate              :: !(Maybe Bool)
    , _lbcdProjection                  :: !(Maybe LiveBroadcastContentDetailsProjection)
    , _lbcdMonitorStream               :: !(Maybe MonitorStreamInfo)
    , _lbcdBoundStreamId               :: !(Maybe Text)
    , _lbcdRecordFromStart             :: !(Maybe Bool)
    , _lbcdEnableClosedCaptions        :: !(Maybe Bool)
    , _lbcdBoundStreamLastUpdateTimeMs :: !(Maybe DateTime')
    , _lbcdEnableDvr                   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbcdEnableContentEncryption'
--
-- * 'lbcdEnableLowLatency'
--
-- * 'lbcdClosedCaptionsType'
--
-- * 'lbcdEnableEmbed'
--
-- * 'lbcdStartWithSlate'
--
-- * 'lbcdProjection'
--
-- * 'lbcdMonitorStream'
--
-- * 'lbcdBoundStreamId'
--
-- * 'lbcdRecordFromStart'
--
-- * 'lbcdEnableClosedCaptions'
--
-- * 'lbcdBoundStreamLastUpdateTimeMs'
--
-- * 'lbcdEnableDvr'
liveBroadcastContentDetails
    :: LiveBroadcastContentDetails
liveBroadcastContentDetails =
    LiveBroadcastContentDetails'
    { _lbcdEnableContentEncryption = Nothing
    , _lbcdEnableLowLatency = Nothing
    , _lbcdClosedCaptionsType = Nothing
    , _lbcdEnableEmbed = Nothing
    , _lbcdStartWithSlate = Nothing
    , _lbcdProjection = Nothing
    , _lbcdMonitorStream = Nothing
    , _lbcdBoundStreamId = Nothing
    , _lbcdRecordFromStart = Nothing
    , _lbcdEnableClosedCaptions = Nothing
    , _lbcdBoundStreamLastUpdateTimeMs = Nothing
    , _lbcdEnableDvr = Nothing
    }

-- | This setting indicates whether YouTube should enable content encryption
-- for the broadcast.
lbcdEnableContentEncryption :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableContentEncryption
  = lens _lbcdEnableContentEncryption
      (\ s a -> s{_lbcdEnableContentEncryption = a})

-- | Indicates whether this broadcast has low latency enabled.
lbcdEnableLowLatency :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableLowLatency
  = lens _lbcdEnableLowLatency
      (\ s a -> s{_lbcdEnableLowLatency = a})

lbcdClosedCaptionsType :: Lens' LiveBroadcastContentDetails (Maybe LiveBroadcastContentDetailsClosedCaptionsType)
lbcdClosedCaptionsType
  = lens _lbcdClosedCaptionsType
      (\ s a -> s{_lbcdClosedCaptionsType = a})

-- | This setting indicates whether the broadcast video can be played in an
-- embedded player. If you choose to archive the video (using the
-- enableArchive property), this setting will also apply to the archived
-- video.
lbcdEnableEmbed :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableEmbed
  = lens _lbcdEnableEmbed
      (\ s a -> s{_lbcdEnableEmbed = a})

-- | This setting indicates whether the broadcast should automatically begin
-- with an in-stream slate when you update the broadcast\'s status to live.
-- After updating the status, you then need to send a liveCuepoints.insert
-- request that sets the cuepoint\'s eventState to end to remove the
-- in-stream slate and make your broadcast stream visible to viewers.
lbcdStartWithSlate :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdStartWithSlate
  = lens _lbcdStartWithSlate
      (\ s a -> s{_lbcdStartWithSlate = a})

-- | The projection format of this broadcast. This defaults to rectangular.
lbcdProjection :: Lens' LiveBroadcastContentDetails (Maybe LiveBroadcastContentDetailsProjection)
lbcdProjection
  = lens _lbcdProjection
      (\ s a -> s{_lbcdProjection = a})

-- | The monitorStream object contains information about the monitor stream,
-- which the broadcaster can use to review the event content before the
-- broadcast stream is shown publicly.
lbcdMonitorStream :: Lens' LiveBroadcastContentDetails (Maybe MonitorStreamInfo)
lbcdMonitorStream
  = lens _lbcdMonitorStream
      (\ s a -> s{_lbcdMonitorStream = a})

-- | This value uniquely identifies the live stream bound to the broadcast.
lbcdBoundStreamId :: Lens' LiveBroadcastContentDetails (Maybe Text)
lbcdBoundStreamId
  = lens _lbcdBoundStreamId
      (\ s a -> s{_lbcdBoundStreamId = a})

-- | Automatically start recording after the event goes live. The default
-- value for this property is true. Important: You must also set the
-- enableDvr property\'s value to true if you want the playback to be
-- available immediately after the broadcast ends. If you set this
-- property\'s value to true but do not also set the enableDvr property to
-- true, there may be a delay of around one day before the archived video
-- will be available for playback.
lbcdRecordFromStart :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdRecordFromStart
  = lens _lbcdRecordFromStart
      (\ s a -> s{_lbcdRecordFromStart = a})

-- | This setting indicates whether HTTP POST closed captioning is enabled
-- for this broadcast. The ingestion URL of the closed captions is returned
-- through the liveStreams API. This is mutually exclusive with using the
-- closed_captions_type property, and is equivalent to setting
-- closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.
lbcdEnableClosedCaptions :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableClosedCaptions
  = lens _lbcdEnableClosedCaptions
      (\ s a -> s{_lbcdEnableClosedCaptions = a})

-- | The date and time that the live stream referenced by boundStreamId was
-- last updated.
lbcdBoundStreamLastUpdateTimeMs :: Lens' LiveBroadcastContentDetails (Maybe UTCTime)
lbcdBoundStreamLastUpdateTimeMs
  = lens _lbcdBoundStreamLastUpdateTimeMs
      (\ s a -> s{_lbcdBoundStreamLastUpdateTimeMs = a})
      . mapping _DateTime

-- | This setting determines whether viewers can access DVR controls while
-- watching the video. DVR controls enable the viewer to control the video
-- playback experience by pausing, rewinding, or fast forwarding content.
-- The default value for this property is true. Important: You must set the
-- value to true and also set the enableArchive property\'s value to true
-- if you want to make playback available immediately after the broadcast
-- ends.
lbcdEnableDvr :: Lens' LiveBroadcastContentDetails (Maybe Bool)
lbcdEnableDvr
  = lens _lbcdEnableDvr
      (\ s a -> s{_lbcdEnableDvr = a})

instance FromJSON LiveBroadcastContentDetails where
        parseJSON
          = withObject "LiveBroadcastContentDetails"
              (\ o ->
                 LiveBroadcastContentDetails' <$>
                   (o .:? "enableContentEncryption") <*>
                     (o .:? "enableLowLatency")
                     <*> (o .:? "closedCaptionsType")
                     <*> (o .:? "enableEmbed")
                     <*> (o .:? "startWithSlate")
                     <*> (o .:? "projection")
                     <*> (o .:? "monitorStream")
                     <*> (o .:? "boundStreamId")
                     <*> (o .:? "recordFromStart")
                     <*> (o .:? "enableClosedCaptions")
                     <*> (o .:? "boundStreamLastUpdateTimeMs")
                     <*> (o .:? "enableDvr"))

instance ToJSON LiveBroadcastContentDetails where
        toJSON LiveBroadcastContentDetails'{..}
          = object
              (catMaybes
                 [("enableContentEncryption" .=) <$>
                    _lbcdEnableContentEncryption,
                  ("enableLowLatency" .=) <$> _lbcdEnableLowLatency,
                  ("closedCaptionsType" .=) <$>
                    _lbcdClosedCaptionsType,
                  ("enableEmbed" .=) <$> _lbcdEnableEmbed,
                  ("startWithSlate" .=) <$> _lbcdStartWithSlate,
                  ("projection" .=) <$> _lbcdProjection,
                  ("monitorStream" .=) <$> _lbcdMonitorStream,
                  ("boundStreamId" .=) <$> _lbcdBoundStreamId,
                  ("recordFromStart" .=) <$> _lbcdRecordFromStart,
                  ("enableClosedCaptions" .=) <$>
                    _lbcdEnableClosedCaptions,
                  ("boundStreamLastUpdateTimeMs" .=) <$>
                    _lbcdBoundStreamLastUpdateTimeMs,
                  ("enableDvr" .=) <$> _lbcdEnableDvr])

--
-- /See:/ 'channelSection' smart constructor.
data ChannelSection = ChannelSection'
    { _csEtag           :: !(Maybe Text)
    , _csSnippet        :: !(Maybe ChannelSectionSnippet)
    , _csKind           :: !Text
    , _csContentDetails :: !(Maybe ChannelSectionContentDetails)
    , _csTargeting      :: !(Maybe ChannelSectionTargeting)
    , _csId             :: !(Maybe Text)
    , _csLocalizations  :: !(Maybe ChannelSectionLocalizations)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csEtag'
--
-- * 'csSnippet'
--
-- * 'csKind'
--
-- * 'csContentDetails'
--
-- * 'csTargeting'
--
-- * 'csId'
--
-- * 'csLocalizations'
channelSection
    :: ChannelSection
channelSection =
    ChannelSection'
    { _csEtag = Nothing
    , _csSnippet = Nothing
    , _csKind = "youtube#channelSection"
    , _csContentDetails = Nothing
    , _csTargeting = Nothing
    , _csId = Nothing
    , _csLocalizations = Nothing
    }

-- | Etag of this resource.
csEtag :: Lens' ChannelSection (Maybe Text)
csEtag = lens _csEtag (\ s a -> s{_csEtag = a})

-- | The snippet object contains basic details about the channel section,
-- such as its type, style and title.
csSnippet :: Lens' ChannelSection (Maybe ChannelSectionSnippet)
csSnippet
  = lens _csSnippet (\ s a -> s{_csSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelSection\".
csKind :: Lens' ChannelSection Text
csKind = lens _csKind (\ s a -> s{_csKind = a})

-- | The contentDetails object contains details about the channel section
-- content, such as a list of playlists or channels featured in the
-- section.
csContentDetails :: Lens' ChannelSection (Maybe ChannelSectionContentDetails)
csContentDetails
  = lens _csContentDetails
      (\ s a -> s{_csContentDetails = a})

-- | The targeting object contains basic targeting settings about the channel
-- section.
csTargeting :: Lens' ChannelSection (Maybe ChannelSectionTargeting)
csTargeting
  = lens _csTargeting (\ s a -> s{_csTargeting = a})

-- | The ID that YouTube uses to uniquely identify the channel section.
csId :: Lens' ChannelSection (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

-- | Localizations for different languages
csLocalizations :: Lens' ChannelSection (Maybe ChannelSectionLocalizations)
csLocalizations
  = lens _csLocalizations
      (\ s a -> s{_csLocalizations = a})

instance FromJSON ChannelSection where
        parseJSON
          = withObject "ChannelSection"
              (\ o ->
                 ChannelSection' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#channelSection")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "targeting")
                     <*> (o .:? "id")
                     <*> (o .:? "localizations"))

instance ToJSON ChannelSection where
        toJSON ChannelSection'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _csEtag,
                  ("snippet" .=) <$> _csSnippet,
                  Just ("kind" .= _csKind),
                  ("contentDetails" .=) <$> _csContentDetails,
                  ("targeting" .=) <$> _csTargeting,
                  ("id" .=) <$> _csId,
                  ("localizations" .=) <$> _csLocalizations])

--
-- /See:/ 'channelContentDetailsRelatedPlayLists' smart constructor.
data ChannelContentDetailsRelatedPlayLists = ChannelContentDetailsRelatedPlayLists'
    { _ccdrplFavorites    :: !(Maybe Text)
    , _ccdrplWatchHistory :: !(Maybe Text)
    , _ccdrplWatchLater   :: !(Maybe Text)
    , _ccdrplUploads      :: !(Maybe Text)
    , _ccdrplLikes        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelContentDetailsRelatedPlayLists' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdrplFavorites'
--
-- * 'ccdrplWatchHistory'
--
-- * 'ccdrplWatchLater'
--
-- * 'ccdrplUploads'
--
-- * 'ccdrplLikes'
channelContentDetailsRelatedPlayLists
    :: ChannelContentDetailsRelatedPlayLists
channelContentDetailsRelatedPlayLists =
    ChannelContentDetailsRelatedPlayLists'
    { _ccdrplFavorites = Nothing
    , _ccdrplWatchHistory = Nothing
    , _ccdrplWatchLater = Nothing
    , _ccdrplUploads = Nothing
    , _ccdrplLikes = Nothing
    }

-- | The ID of the playlist that contains the channel\"s favorite videos. Use
-- the playlistItems.insert and playlistItems.delete to add or remove items
-- from that list.
ccdrplFavorites :: Lens' ChannelContentDetailsRelatedPlayLists (Maybe Text)
ccdrplFavorites
  = lens _ccdrplFavorites
      (\ s a -> s{_ccdrplFavorites = a})

-- | The ID of the playlist that contains the channel\"s watch history. Use
-- the playlistItems.insert and playlistItems.delete to add or remove items
-- from that list.
ccdrplWatchHistory :: Lens' ChannelContentDetailsRelatedPlayLists (Maybe Text)
ccdrplWatchHistory
  = lens _ccdrplWatchHistory
      (\ s a -> s{_ccdrplWatchHistory = a})

-- | The ID of the playlist that contains the channel\"s watch later
-- playlist. Use the playlistItems.insert and playlistItems.delete to add
-- or remove items from that list.
ccdrplWatchLater :: Lens' ChannelContentDetailsRelatedPlayLists (Maybe Text)
ccdrplWatchLater
  = lens _ccdrplWatchLater
      (\ s a -> s{_ccdrplWatchLater = a})

-- | The ID of the playlist that contains the channel\"s uploaded videos. Use
-- the videos.insert method to upload new videos and the videos.delete
-- method to delete previously uploaded videos.
ccdrplUploads :: Lens' ChannelContentDetailsRelatedPlayLists (Maybe Text)
ccdrplUploads
  = lens _ccdrplUploads
      (\ s a -> s{_ccdrplUploads = a})

-- | The ID of the playlist that contains the channel\"s liked videos. Use
-- the playlistItems.insert and playlistItems.delete to add or remove items
-- from that list.
ccdrplLikes :: Lens' ChannelContentDetailsRelatedPlayLists (Maybe Text)
ccdrplLikes
  = lens _ccdrplLikes (\ s a -> s{_ccdrplLikes = a})

instance FromJSON
         ChannelContentDetailsRelatedPlayLists where
        parseJSON
          = withObject "ChannelContentDetailsRelatedPlayLists"
              (\ o ->
                 ChannelContentDetailsRelatedPlayLists' <$>
                   (o .:? "favorites") <*> (o .:? "watchHistory") <*>
                     (o .:? "watchLater")
                     <*> (o .:? "uploads")
                     <*> (o .:? "likes"))

instance ToJSON ChannelContentDetailsRelatedPlayLists
         where
        toJSON ChannelContentDetailsRelatedPlayLists'{..}
          = object
              (catMaybes
                 [("favorites" .=) <$> _ccdrplFavorites,
                  ("watchHistory" .=) <$> _ccdrplWatchHistory,
                  ("watchLater" .=) <$> _ccdrplWatchLater,
                  ("uploads" .=) <$> _ccdrplUploads,
                  ("likes" .=) <$> _ccdrplLikes])

-- | A live stream describes a live ingestion point.
--
-- /See:/ 'liveStream' smart constructor.
data LiveStream = LiveStream'
    { _lsStatus         :: !(Maybe LiveStreamStatus)
    , _lsEtag           :: !(Maybe Text)
    , _lsSnippet        :: !(Maybe LiveStreamSnippet)
    , _lsKind           :: !Text
    , _lsContentDetails :: !(Maybe LiveStreamContentDetails)
    , _lsId             :: !(Maybe Text)
    , _lsCdn            :: !(Maybe CdnSettings)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStatus'
--
-- * 'lsEtag'
--
-- * 'lsSnippet'
--
-- * 'lsKind'
--
-- * 'lsContentDetails'
--
-- * 'lsId'
--
-- * 'lsCdn'
liveStream
    :: LiveStream
liveStream =
    LiveStream'
    { _lsStatus = Nothing
    , _lsEtag = Nothing
    , _lsSnippet = Nothing
    , _lsKind = "youtube#liveStream"
    , _lsContentDetails = Nothing
    , _lsId = Nothing
    , _lsCdn = Nothing
    }

-- | The status object contains information about live stream\'s status.
lsStatus :: Lens' LiveStream (Maybe LiveStreamStatus)
lsStatus = lens _lsStatus (\ s a -> s{_lsStatus = a})

-- | Etag of this resource.
lsEtag :: Lens' LiveStream (Maybe Text)
lsEtag = lens _lsEtag (\ s a -> s{_lsEtag = a})

-- | The snippet object contains basic details about the stream, including
-- its channel, title, and description.
lsSnippet :: Lens' LiveStream (Maybe LiveStreamSnippet)
lsSnippet
  = lens _lsSnippet (\ s a -> s{_lsSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveStream\".
lsKind :: Lens' LiveStream Text
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The content_details object contains information about the stream,
-- including the closed captions ingestion URL.
lsContentDetails :: Lens' LiveStream (Maybe LiveStreamContentDetails)
lsContentDetails
  = lens _lsContentDetails
      (\ s a -> s{_lsContentDetails = a})

-- | The ID that YouTube assigns to uniquely identify the stream.
lsId :: Lens' LiveStream (Maybe Text)
lsId = lens _lsId (\ s a -> s{_lsId = a})

-- | The cdn object defines the live stream\'s content delivery network (CDN)
-- settings. These settings provide details about the manner in which you
-- stream your content to YouTube.
lsCdn :: Lens' LiveStream (Maybe CdnSettings)
lsCdn = lens _lsCdn (\ s a -> s{_lsCdn = a})

instance FromJSON LiveStream where
        parseJSON
          = withObject "LiveStream"
              (\ o ->
                 LiveStream' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#liveStream")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "cdn"))

instance ToJSON LiveStream where
        toJSON LiveStream'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lsStatus,
                  ("etag" .=) <$> _lsEtag,
                  ("snippet" .=) <$> _lsSnippet,
                  Just ("kind" .= _lsKind),
                  ("contentDetails" .=) <$> _lsContentDetails,
                  ("id" .=) <$> _lsId, ("cdn" .=) <$> _lsCdn])

-- | Information about a video that was marked as a favorite video.
--
-- /See:/ 'activityContentDetailsFavorite' smart constructor.
newtype ActivityContentDetailsFavorite = ActivityContentDetailsFavorite'
    { _acdfResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsFavorite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdfResourceId'
activityContentDetailsFavorite
    :: ActivityContentDetailsFavorite
activityContentDetailsFavorite =
    ActivityContentDetailsFavorite'
    { _acdfResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that was marked as a favorite.
acdfResourceId :: Lens' ActivityContentDetailsFavorite (Maybe ResourceId)
acdfResourceId
  = lens _acdfResourceId
      (\ s a -> s{_acdfResourceId = a})

instance FromJSON ActivityContentDetailsFavorite
         where
        parseJSON
          = withObject "ActivityContentDetailsFavorite"
              (\ o ->
                 ActivityContentDetailsFavorite' <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsFavorite where
        toJSON ActivityContentDetailsFavorite'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdfResourceId])

-- | Details about the content of a YouTube Video.
--
-- /See:/ 'videoContentDetails' smart constructor.
data VideoContentDetails = VideoContentDetails'
    { _vcdCountryRestriction :: !(Maybe AccessPolicy)
    , _vcdDefinition         :: !(Maybe VideoContentDetailsDefinition)
    , _vcdDimension          :: !(Maybe Text)
    , _vcdCaption            :: !(Maybe VideoContentDetailsCaption)
    , _vcdRegionRestriction  :: !(Maybe VideoContentDetailsRegionRestriction)
    , _vcdProjection         :: !(Maybe VideoContentDetailsProjection)
    , _vcdDuration           :: !(Maybe Text)
    , _vcdContentRating      :: !(Maybe ContentRating)
    , _vcdLicensedContent    :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcdCountryRestriction'
--
-- * 'vcdDefinition'
--
-- * 'vcdDimension'
--
-- * 'vcdCaption'
--
-- * 'vcdRegionRestriction'
--
-- * 'vcdProjection'
--
-- * 'vcdDuration'
--
-- * 'vcdContentRating'
--
-- * 'vcdLicensedContent'
videoContentDetails
    :: VideoContentDetails
videoContentDetails =
    VideoContentDetails'
    { _vcdCountryRestriction = Nothing
    , _vcdDefinition = Nothing
    , _vcdDimension = Nothing
    , _vcdCaption = Nothing
    , _vcdRegionRestriction = Nothing
    , _vcdProjection = Nothing
    , _vcdDuration = Nothing
    , _vcdContentRating = Nothing
    , _vcdLicensedContent = Nothing
    }

-- | The countryRestriction object contains information about the countries
-- where a video is (or is not) viewable.
vcdCountryRestriction :: Lens' VideoContentDetails (Maybe AccessPolicy)
vcdCountryRestriction
  = lens _vcdCountryRestriction
      (\ s a -> s{_vcdCountryRestriction = a})

-- | The value of definition indicates whether the video is available in high
-- definition or only in standard definition.
vcdDefinition :: Lens' VideoContentDetails (Maybe VideoContentDetailsDefinition)
vcdDefinition
  = lens _vcdDefinition
      (\ s a -> s{_vcdDefinition = a})

-- | The value of dimension indicates whether the video is available in 3D or
-- in 2D.
vcdDimension :: Lens' VideoContentDetails (Maybe Text)
vcdDimension
  = lens _vcdDimension (\ s a -> s{_vcdDimension = a})

-- | The value of captions indicates whether the video has captions or not.
vcdCaption :: Lens' VideoContentDetails (Maybe VideoContentDetailsCaption)
vcdCaption
  = lens _vcdCaption (\ s a -> s{_vcdCaption = a})

-- | The regionRestriction object contains information about the countries
-- where a video is (or is not) viewable. The object will contain either
-- the contentDetails.regionRestriction.allowed property or the
-- contentDetails.regionRestriction.blocked property.
vcdRegionRestriction :: Lens' VideoContentDetails (Maybe VideoContentDetailsRegionRestriction)
vcdRegionRestriction
  = lens _vcdRegionRestriction
      (\ s a -> s{_vcdRegionRestriction = a})

-- | Specifies the projection format of the video.
vcdProjection :: Lens' VideoContentDetails (Maybe VideoContentDetailsProjection)
vcdProjection
  = lens _vcdProjection
      (\ s a -> s{_vcdProjection = a})

-- | The length of the video. The tag value is an ISO 8601 duration in the
-- format PT#M#S, in which the letters PT indicate that the value specifies
-- a period of time, and the letters M and S refer to length in minutes and
-- seconds, respectively. The # characters preceding the M and S letters
-- are both integers that specify the number of minutes (or seconds) of the
-- video. For example, a value of PT15M51S indicates that the video is 15
-- minutes and 51 seconds long.
vcdDuration :: Lens' VideoContentDetails (Maybe Text)
vcdDuration
  = lens _vcdDuration (\ s a -> s{_vcdDuration = a})

-- | Specifies the ratings that the video received under various rating
-- schemes.
vcdContentRating :: Lens' VideoContentDetails (Maybe ContentRating)
vcdContentRating
  = lens _vcdContentRating
      (\ s a -> s{_vcdContentRating = a})

-- | The value of is_license_content indicates whether the video is licensed
-- content.
vcdLicensedContent :: Lens' VideoContentDetails (Maybe Bool)
vcdLicensedContent
  = lens _vcdLicensedContent
      (\ s a -> s{_vcdLicensedContent = a})

instance FromJSON VideoContentDetails where
        parseJSON
          = withObject "VideoContentDetails"
              (\ o ->
                 VideoContentDetails' <$>
                   (o .:? "countryRestriction") <*> (o .:? "definition")
                     <*> (o .:? "dimension")
                     <*> (o .:? "caption")
                     <*> (o .:? "regionRestriction")
                     <*> (o .:? "projection")
                     <*> (o .:? "duration")
                     <*> (o .:? "contentRating")
                     <*> (o .:? "licensedContent"))

instance ToJSON VideoContentDetails where
        toJSON VideoContentDetails'{..}
          = object
              (catMaybes
                 [("countryRestriction" .=) <$>
                    _vcdCountryRestriction,
                  ("definition" .=) <$> _vcdDefinition,
                  ("dimension" .=) <$> _vcdDimension,
                  ("caption" .=) <$> _vcdCaption,
                  ("regionRestriction" .=) <$> _vcdRegionRestriction,
                  ("projection" .=) <$> _vcdProjection,
                  ("duration" .=) <$> _vcdDuration,
                  ("contentRating" .=) <$> _vcdContentRating,
                  ("licensedContent" .=) <$> _vcdLicensedContent])

-- | Branding properties for images associated with the channel.
--
-- /See:/ 'imageSettings' smart constructor.
data ImageSettings = ImageSettings'
    { _isBannerMobileLowImageURL           :: !(Maybe Text)
    , _isBannerTabletExtraHdImageURL       :: !(Maybe Text)
    , _isSmallBrandedBannerImageImapScript :: !(Maybe LocalizedProperty)
    , _isBannerTvHighImageURL              :: !(Maybe Text)
    , _isBannerMobileHdImageURL            :: !(Maybe Text)
    , _isBannerTvMediumImageURL            :: !(Maybe Text)
    , _isBannerTvImageURL                  :: !(Maybe Text)
    , _isBannerTabletImageURL              :: !(Maybe Text)
    , _isBannerMobileImageURL              :: !(Maybe Text)
    , _isTrackingImageURL                  :: !(Maybe Text)
    , _isBannerMobileMediumHdImageURL      :: !(Maybe Text)
    , _isLargeBrandedBannerImageURL        :: !(Maybe LocalizedProperty)
    , _isBannerExternalURL                 :: !(Maybe Text)
    , _isBackgRoundImageURL                :: !(Maybe LocalizedProperty)
    , _isSmallBrandedBannerImageURL        :: !(Maybe LocalizedProperty)
    , _isBannerImageURL                    :: !(Maybe Text)
    , _isWatchIconImageURL                 :: !(Maybe Text)
    , _isBannerTvLowImageURL               :: !(Maybe Text)
    , _isBannerMobileExtraHdImageURL       :: !(Maybe Text)
    , _isLargeBrandedBannerImageImapScript :: !(Maybe LocalizedProperty)
    , _isBannerTabletLowImageURL           :: !(Maybe Text)
    , _isBannerTabletHdImageURL            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isBannerMobileLowImageURL'
--
-- * 'isBannerTabletExtraHdImageURL'
--
-- * 'isSmallBrandedBannerImageImapScript'
--
-- * 'isBannerTvHighImageURL'
--
-- * 'isBannerMobileHdImageURL'
--
-- * 'isBannerTvMediumImageURL'
--
-- * 'isBannerTvImageURL'
--
-- * 'isBannerTabletImageURL'
--
-- * 'isBannerMobileImageURL'
--
-- * 'isTrackingImageURL'
--
-- * 'isBannerMobileMediumHdImageURL'
--
-- * 'isLargeBrandedBannerImageURL'
--
-- * 'isBannerExternalURL'
--
-- * 'isBackgRoundImageURL'
--
-- * 'isSmallBrandedBannerImageURL'
--
-- * 'isBannerImageURL'
--
-- * 'isWatchIconImageURL'
--
-- * 'isBannerTvLowImageURL'
--
-- * 'isBannerMobileExtraHdImageURL'
--
-- * 'isLargeBrandedBannerImageImapScript'
--
-- * 'isBannerTabletLowImageURL'
--
-- * 'isBannerTabletHdImageURL'
imageSettings
    :: ImageSettings
imageSettings =
    ImageSettings'
    { _isBannerMobileLowImageURL = Nothing
    , _isBannerTabletExtraHdImageURL = Nothing
    , _isSmallBrandedBannerImageImapScript = Nothing
    , _isBannerTvHighImageURL = Nothing
    , _isBannerMobileHdImageURL = Nothing
    , _isBannerTvMediumImageURL = Nothing
    , _isBannerTvImageURL = Nothing
    , _isBannerTabletImageURL = Nothing
    , _isBannerMobileImageURL = Nothing
    , _isTrackingImageURL = Nothing
    , _isBannerMobileMediumHdImageURL = Nothing
    , _isLargeBrandedBannerImageURL = Nothing
    , _isBannerExternalURL = Nothing
    , _isBackgRoundImageURL = Nothing
    , _isSmallBrandedBannerImageURL = Nothing
    , _isBannerImageURL = Nothing
    , _isWatchIconImageURL = Nothing
    , _isBannerTvLowImageURL = Nothing
    , _isBannerMobileExtraHdImageURL = Nothing
    , _isLargeBrandedBannerImageImapScript = Nothing
    , _isBannerTabletLowImageURL = Nothing
    , _isBannerTabletHdImageURL = Nothing
    }

-- | Banner image. Mobile size low resolution (320x88).
isBannerMobileLowImageURL :: Lens' ImageSettings (Maybe Text)
isBannerMobileLowImageURL
  = lens _isBannerMobileLowImageURL
      (\ s a -> s{_isBannerMobileLowImageURL = a})

-- | Banner image. Tablet size extra high resolution (2560x424).
isBannerTabletExtraHdImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTabletExtraHdImageURL
  = lens _isBannerTabletExtraHdImageURL
      (\ s a -> s{_isBannerTabletExtraHdImageURL = a})

-- | The image map script for the small banner image.
isSmallBrandedBannerImageImapScript :: Lens' ImageSettings (Maybe LocalizedProperty)
isSmallBrandedBannerImageImapScript
  = lens _isSmallBrandedBannerImageImapScript
      (\ s a ->
         s{_isSmallBrandedBannerImageImapScript = a})

-- | Banner image. TV size high resolution (1920x1080).
isBannerTvHighImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTvHighImageURL
  = lens _isBannerTvHighImageURL
      (\ s a -> s{_isBannerTvHighImageURL = a})

-- | Banner image. Mobile size high resolution (1280x360).
isBannerMobileHdImageURL :: Lens' ImageSettings (Maybe Text)
isBannerMobileHdImageURL
  = lens _isBannerMobileHdImageURL
      (\ s a -> s{_isBannerMobileHdImageURL = a})

-- | Banner image. TV size medium resolution (1280x720).
isBannerTvMediumImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTvMediumImageURL
  = lens _isBannerTvMediumImageURL
      (\ s a -> s{_isBannerTvMediumImageURL = a})

-- | Banner image. TV size extra high resolution (2120x1192).
isBannerTvImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTvImageURL
  = lens _isBannerTvImageURL
      (\ s a -> s{_isBannerTvImageURL = a})

-- | Banner image. Tablet size (1707x283).
isBannerTabletImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTabletImageURL
  = lens _isBannerTabletImageURL
      (\ s a -> s{_isBannerTabletImageURL = a})

-- | Banner image. Mobile size (640x175).
isBannerMobileImageURL :: Lens' ImageSettings (Maybe Text)
isBannerMobileImageURL
  = lens _isBannerMobileImageURL
      (\ s a -> s{_isBannerMobileImageURL = a})

-- | The URL for a 1px by 1px tracking pixel that can be used to collect
-- statistics for views of the channel or video pages.
isTrackingImageURL :: Lens' ImageSettings (Maybe Text)
isTrackingImageURL
  = lens _isTrackingImageURL
      (\ s a -> s{_isTrackingImageURL = a})

-- | Banner image. Mobile size medium\/high resolution (960x263).
isBannerMobileMediumHdImageURL :: Lens' ImageSettings (Maybe Text)
isBannerMobileMediumHdImageURL
  = lens _isBannerMobileMediumHdImageURL
      (\ s a -> s{_isBannerMobileMediumHdImageURL = a})

-- | The URL for the 854px by 70px image that appears below the video player
-- in the expanded video view of the video watch page.
isLargeBrandedBannerImageURL :: Lens' ImageSettings (Maybe LocalizedProperty)
isLargeBrandedBannerImageURL
  = lens _isLargeBrandedBannerImageURL
      (\ s a -> s{_isLargeBrandedBannerImageURL = a})

-- | This is used only in update requests; if it\'s set, we use this URL to
-- generate all of the above banner URLs.
isBannerExternalURL :: Lens' ImageSettings (Maybe Text)
isBannerExternalURL
  = lens _isBannerExternalURL
      (\ s a -> s{_isBannerExternalURL = a})

-- | The URL for the background image shown on the video watch page. The
-- image should be 1200px by 615px, with a maximum file size of 128k.
isBackgRoundImageURL :: Lens' ImageSettings (Maybe LocalizedProperty)
isBackgRoundImageURL
  = lens _isBackgRoundImageURL
      (\ s a -> s{_isBackgRoundImageURL = a})

-- | The URL for the 640px by 70px banner image that appears below the video
-- player in the default view of the video watch page.
isSmallBrandedBannerImageURL :: Lens' ImageSettings (Maybe LocalizedProperty)
isSmallBrandedBannerImageURL
  = lens _isSmallBrandedBannerImageURL
      (\ s a -> s{_isSmallBrandedBannerImageURL = a})

-- | Banner image. Desktop size (1060x175).
isBannerImageURL :: Lens' ImageSettings (Maybe Text)
isBannerImageURL
  = lens _isBannerImageURL
      (\ s a -> s{_isBannerImageURL = a})

-- | The URL for the image that appears above the top-left corner of the
-- video player. This is a 25-pixel-high image with a flexible width that
-- cannot exceed 170 pixels.
isWatchIconImageURL :: Lens' ImageSettings (Maybe Text)
isWatchIconImageURL
  = lens _isWatchIconImageURL
      (\ s a -> s{_isWatchIconImageURL = a})

-- | Banner image. TV size low resolution (854x480).
isBannerTvLowImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTvLowImageURL
  = lens _isBannerTvLowImageURL
      (\ s a -> s{_isBannerTvLowImageURL = a})

-- | Banner image. Mobile size high resolution (1440x395).
isBannerMobileExtraHdImageURL :: Lens' ImageSettings (Maybe Text)
isBannerMobileExtraHdImageURL
  = lens _isBannerMobileExtraHdImageURL
      (\ s a -> s{_isBannerMobileExtraHdImageURL = a})

-- | The image map script for the large banner image.
isLargeBrandedBannerImageImapScript :: Lens' ImageSettings (Maybe LocalizedProperty)
isLargeBrandedBannerImageImapScript
  = lens _isLargeBrandedBannerImageImapScript
      (\ s a ->
         s{_isLargeBrandedBannerImageImapScript = a})

-- | Banner image. Tablet size low resolution (1138x188).
isBannerTabletLowImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTabletLowImageURL
  = lens _isBannerTabletLowImageURL
      (\ s a -> s{_isBannerTabletLowImageURL = a})

-- | Banner image. Tablet size high resolution (2276x377).
isBannerTabletHdImageURL :: Lens' ImageSettings (Maybe Text)
isBannerTabletHdImageURL
  = lens _isBannerTabletHdImageURL
      (\ s a -> s{_isBannerTabletHdImageURL = a})

instance FromJSON ImageSettings where
        parseJSON
          = withObject "ImageSettings"
              (\ o ->
                 ImageSettings' <$>
                   (o .:? "bannerMobileLowImageUrl") <*>
                     (o .:? "bannerTabletExtraHdImageUrl")
                     <*> (o .:? "smallBrandedBannerImageImapScript")
                     <*> (o .:? "bannerTvHighImageUrl")
                     <*> (o .:? "bannerMobileHdImageUrl")
                     <*> (o .:? "bannerTvMediumImageUrl")
                     <*> (o .:? "bannerTvImageUrl")
                     <*> (o .:? "bannerTabletImageUrl")
                     <*> (o .:? "bannerMobileImageUrl")
                     <*> (o .:? "trackingImageUrl")
                     <*> (o .:? "bannerMobileMediumHdImageUrl")
                     <*> (o .:? "largeBrandedBannerImageUrl")
                     <*> (o .:? "bannerExternalUrl")
                     <*> (o .:? "backgroundImageUrl")
                     <*> (o .:? "smallBrandedBannerImageUrl")
                     <*> (o .:? "bannerImageUrl")
                     <*> (o .:? "watchIconImageUrl")
                     <*> (o .:? "bannerTvLowImageUrl")
                     <*> (o .:? "bannerMobileExtraHdImageUrl")
                     <*> (o .:? "largeBrandedBannerImageImapScript")
                     <*> (o .:? "bannerTabletLowImageUrl")
                     <*> (o .:? "bannerTabletHdImageUrl"))

instance ToJSON ImageSettings where
        toJSON ImageSettings'{..}
          = object
              (catMaybes
                 [("bannerMobileLowImageUrl" .=) <$>
                    _isBannerMobileLowImageURL,
                  ("bannerTabletExtraHdImageUrl" .=) <$>
                    _isBannerTabletExtraHdImageURL,
                  ("smallBrandedBannerImageImapScript" .=) <$>
                    _isSmallBrandedBannerImageImapScript,
                  ("bannerTvHighImageUrl" .=) <$>
                    _isBannerTvHighImageURL,
                  ("bannerMobileHdImageUrl" .=) <$>
                    _isBannerMobileHdImageURL,
                  ("bannerTvMediumImageUrl" .=) <$>
                    _isBannerTvMediumImageURL,
                  ("bannerTvImageUrl" .=) <$> _isBannerTvImageURL,
                  ("bannerTabletImageUrl" .=) <$>
                    _isBannerTabletImageURL,
                  ("bannerMobileImageUrl" .=) <$>
                    _isBannerMobileImageURL,
                  ("trackingImageUrl" .=) <$> _isTrackingImageURL,
                  ("bannerMobileMediumHdImageUrl" .=) <$>
                    _isBannerMobileMediumHdImageURL,
                  ("largeBrandedBannerImageUrl" .=) <$>
                    _isLargeBrandedBannerImageURL,
                  ("bannerExternalUrl" .=) <$> _isBannerExternalURL,
                  ("backgroundImageUrl" .=) <$> _isBackgRoundImageURL,
                  ("smallBrandedBannerImageUrl" .=) <$>
                    _isSmallBrandedBannerImageURL,
                  ("bannerImageUrl" .=) <$> _isBannerImageURL,
                  ("watchIconImageUrl" .=) <$> _isWatchIconImageURL,
                  ("bannerTvLowImageUrl" .=) <$>
                    _isBannerTvLowImageURL,
                  ("bannerMobileExtraHdImageUrl" .=) <$>
                    _isBannerMobileExtraHdImageURL,
                  ("largeBrandedBannerImageImapScript" .=) <$>
                    _isLargeBrandedBannerImageImapScript,
                  ("bannerTabletLowImageUrl" .=) <$>
                    _isBannerTabletLowImageURL,
                  ("bannerTabletHdImageUrl" .=) <$>
                    _isBannerTabletHdImageURL])

-- | Freebase topic information related to the video.
--
-- /See:/ 'videoTopicDetails' smart constructor.
data VideoTopicDetails = VideoTopicDetails'
    { _vtdTopicIds         :: !(Maybe [Text])
    , _vtdRelevantTopicIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtdTopicIds'
--
-- * 'vtdRelevantTopicIds'
videoTopicDetails
    :: VideoTopicDetails
videoTopicDetails =
    VideoTopicDetails'
    { _vtdTopicIds = Nothing
    , _vtdRelevantTopicIds = Nothing
    }

-- | A list of Freebase topic IDs that are centrally associated with the
-- video. These are topics that are centrally featured in the video, and it
-- can be said that the video is mainly about each of these. You can
-- retrieve information about each topic using the Freebase Topic API.
vtdTopicIds :: Lens' VideoTopicDetails [Text]
vtdTopicIds
  = lens _vtdTopicIds (\ s a -> s{_vtdTopicIds = a}) .
      _Default
      . _Coerce

-- | Similar to topic_id, except that these topics are merely relevant to the
-- video. These are topics that may be mentioned in, or appear in the
-- video. You can retrieve information about each topic using Freebase
-- Topic API.
vtdRelevantTopicIds :: Lens' VideoTopicDetails [Text]
vtdRelevantTopicIds
  = lens _vtdRelevantTopicIds
      (\ s a -> s{_vtdRelevantTopicIds = a})
      . _Default
      . _Coerce

instance FromJSON VideoTopicDetails where
        parseJSON
          = withObject "VideoTopicDetails"
              (\ o ->
                 VideoTopicDetails' <$>
                   (o .:? "topicIds" .!= mempty) <*>
                     (o .:? "relevantTopicIds" .!= mempty))

instance ToJSON VideoTopicDetails where
        toJSON VideoTopicDetails'{..}
          = object
              (catMaybes
                 [("topicIds" .=) <$> _vtdTopicIds,
                  ("relevantTopicIds" .=) <$> _vtdRelevantTopicIds])

-- | Information about a resource that received a comment.
--
-- /See:/ 'activityContentDetailsComment' smart constructor.
newtype ActivityContentDetailsComment = ActivityContentDetailsComment'
    { _acdcResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsComment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdcResourceId'
activityContentDetailsComment
    :: ActivityContentDetailsComment
activityContentDetailsComment =
    ActivityContentDetailsComment'
    { _acdcResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- associated with the comment.
acdcResourceId :: Lens' ActivityContentDetailsComment (Maybe ResourceId)
acdcResourceId
  = lens _acdcResourceId
      (\ s a -> s{_acdcResourceId = a})

instance FromJSON ActivityContentDetailsComment where
        parseJSON
          = withObject "ActivityContentDetailsComment"
              (\ o ->
                 ActivityContentDetailsComment' <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsComment where
        toJSON ActivityContentDetailsComment'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdcResourceId])

--
-- /See:/ 'liveBroadcastStatus' smart constructor.
data LiveBroadcastStatus = LiveBroadcastStatus'
    { _lbsLiveBroadcastPriority :: !(Maybe LiveBroadcastStatusLiveBroadcastPriority)
    , _lbsRecordingStatus       :: !(Maybe LiveBroadcastStatusRecordingStatus)
    , _lbsLifeCycleStatus       :: !(Maybe LiveBroadcastStatusLifeCycleStatus)
    , _lbsPrivacyStatus         :: !(Maybe LiveBroadcastStatusPrivacyStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsLiveBroadcastPriority'
--
-- * 'lbsRecordingStatus'
--
-- * 'lbsLifeCycleStatus'
--
-- * 'lbsPrivacyStatus'
liveBroadcastStatus
    :: LiveBroadcastStatus
liveBroadcastStatus =
    LiveBroadcastStatus'
    { _lbsLiveBroadcastPriority = Nothing
    , _lbsRecordingStatus = Nothing
    , _lbsLifeCycleStatus = Nothing
    , _lbsPrivacyStatus = Nothing
    }

-- | Priority of the live broadcast event (internal state).
lbsLiveBroadcastPriority :: Lens' LiveBroadcastStatus (Maybe LiveBroadcastStatusLiveBroadcastPriority)
lbsLiveBroadcastPriority
  = lens _lbsLiveBroadcastPriority
      (\ s a -> s{_lbsLiveBroadcastPriority = a})

-- | The broadcast\'s recording status.
lbsRecordingStatus :: Lens' LiveBroadcastStatus (Maybe LiveBroadcastStatusRecordingStatus)
lbsRecordingStatus
  = lens _lbsRecordingStatus
      (\ s a -> s{_lbsRecordingStatus = a})

-- | The broadcast\'s status. The status can be updated using the API\'s
-- liveBroadcasts.transition method.
lbsLifeCycleStatus :: Lens' LiveBroadcastStatus (Maybe LiveBroadcastStatusLifeCycleStatus)
lbsLifeCycleStatus
  = lens _lbsLifeCycleStatus
      (\ s a -> s{_lbsLifeCycleStatus = a})

-- | The broadcast\'s privacy status. Note that the broadcast represents
-- exactly one YouTube video, so the privacy settings are identical to
-- those supported for videos. In addition, you can set this field by
-- modifying the broadcast resource or by setting the privacyStatus field
-- of the corresponding video resource.
lbsPrivacyStatus :: Lens' LiveBroadcastStatus (Maybe LiveBroadcastStatusPrivacyStatus)
lbsPrivacyStatus
  = lens _lbsPrivacyStatus
      (\ s a -> s{_lbsPrivacyStatus = a})

instance FromJSON LiveBroadcastStatus where
        parseJSON
          = withObject "LiveBroadcastStatus"
              (\ o ->
                 LiveBroadcastStatus' <$>
                   (o .:? "liveBroadcastPriority") <*>
                     (o .:? "recordingStatus")
                     <*> (o .:? "lifeCycleStatus")
                     <*> (o .:? "privacyStatus"))

instance ToJSON LiveBroadcastStatus where
        toJSON LiveBroadcastStatus'{..}
          = object
              (catMaybes
                 [("liveBroadcastPriority" .=) <$>
                    _lbsLiveBroadcastPriority,
                  ("recordingStatus" .=) <$> _lbsRecordingStatus,
                  ("lifeCycleStatus" .=) <$> _lbsLifeCycleStatus,
                  ("privacyStatus" .=) <$> _lbsPrivacyStatus])

-- | Information about the uploaded video.
--
-- /See:/ 'activityContentDetailsUpload' smart constructor.
newtype ActivityContentDetailsUpload = ActivityContentDetailsUpload'
    { _acduVideoId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acduVideoId'
activityContentDetailsUpload
    :: ActivityContentDetailsUpload
activityContentDetailsUpload =
    ActivityContentDetailsUpload'
    { _acduVideoId = Nothing
    }

-- | The ID that YouTube uses to uniquely identify the uploaded video.
acduVideoId :: Lens' ActivityContentDetailsUpload (Maybe Text)
acduVideoId
  = lens _acduVideoId (\ s a -> s{_acduVideoId = a})

instance FromJSON ActivityContentDetailsUpload where
        parseJSON
          = withObject "ActivityContentDetailsUpload"
              (\ o ->
                 ActivityContentDetailsUpload' <$> (o .:? "videoId"))

instance ToJSON ActivityContentDetailsUpload where
        toJSON ActivityContentDetailsUpload'{..}
          = object
              (catMaybes [("videoId" .=) <$> _acduVideoId])

-- | Information about a new playlist item.
--
-- /See:/ 'activityContentDetailsPlayListItem' smart constructor.
data ActivityContentDetailsPlayListItem = ActivityContentDetailsPlayListItem'
    { _acdpliResourceId     :: !(Maybe ResourceId)
    , _acdpliPlayListId     :: !(Maybe Text)
    , _acdpliPlayListItemId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsPlayListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdpliResourceId'
--
-- * 'acdpliPlayListId'
--
-- * 'acdpliPlayListItemId'
activityContentDetailsPlayListItem
    :: ActivityContentDetailsPlayListItem
activityContentDetailsPlayListItem =
    ActivityContentDetailsPlayListItem'
    { _acdpliResourceId = Nothing
    , _acdpliPlayListId = Nothing
    , _acdpliPlayListItemId = Nothing
    }

-- | The resourceId object contains information about the resource that was
-- added to the playlist.
acdpliResourceId :: Lens' ActivityContentDetailsPlayListItem (Maybe ResourceId)
acdpliResourceId
  = lens _acdpliResourceId
      (\ s a -> s{_acdpliResourceId = a})

-- | The value that YouTube uses to uniquely identify the playlist.
acdpliPlayListId :: Lens' ActivityContentDetailsPlayListItem (Maybe Text)
acdpliPlayListId
  = lens _acdpliPlayListId
      (\ s a -> s{_acdpliPlayListId = a})

-- | ID of the item within the playlist.
acdpliPlayListItemId :: Lens' ActivityContentDetailsPlayListItem (Maybe Text)
acdpliPlayListItemId
  = lens _acdpliPlayListItemId
      (\ s a -> s{_acdpliPlayListItemId = a})

instance FromJSON ActivityContentDetailsPlayListItem
         where
        parseJSON
          = withObject "ActivityContentDetailsPlayListItem"
              (\ o ->
                 ActivityContentDetailsPlayListItem' <$>
                   (o .:? "resourceId") <*> (o .:? "playlistId") <*>
                     (o .:? "playlistItemId"))

instance ToJSON ActivityContentDetailsPlayListItem
         where
        toJSON ActivityContentDetailsPlayListItem'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdpliResourceId,
                  ("playlistId" .=) <$> _acdpliPlayListId,
                  ("playlistItemId" .=) <$> _acdpliPlayListItemId])

-- | Details about a social network post.
--
-- /See:/ 'activityContentDetailsSocial' smart constructor.
data ActivityContentDetailsSocial = ActivityContentDetailsSocial'
    { _acdsResourceId   :: !(Maybe ResourceId)
    , _acdsImageURL     :: !(Maybe Text)
    , _acdsAuthor       :: !(Maybe Text)
    , _acdsReferenceURL :: !(Maybe Text)
    , _acdsType         :: !(Maybe ActivityContentDetailsSocialType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsSocial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdsResourceId'
--
-- * 'acdsImageURL'
--
-- * 'acdsAuthor'
--
-- * 'acdsReferenceURL'
--
-- * 'acdsType'
activityContentDetailsSocial
    :: ActivityContentDetailsSocial
activityContentDetailsSocial =
    ActivityContentDetailsSocial'
    { _acdsResourceId = Nothing
    , _acdsImageURL = Nothing
    , _acdsAuthor = Nothing
    , _acdsReferenceURL = Nothing
    , _acdsType = Nothing
    }

-- | The resourceId object encapsulates information that identifies the
-- resource associated with a social network post.
acdsResourceId :: Lens' ActivityContentDetailsSocial (Maybe ResourceId)
acdsResourceId
  = lens _acdsResourceId
      (\ s a -> s{_acdsResourceId = a})

-- | An image of the post\'s author.
acdsImageURL :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsImageURL
  = lens _acdsImageURL (\ s a -> s{_acdsImageURL = a})

-- | The author of the social network post.
acdsAuthor :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsAuthor
  = lens _acdsAuthor (\ s a -> s{_acdsAuthor = a})

-- | The URL of the social network post.
acdsReferenceURL :: Lens' ActivityContentDetailsSocial (Maybe Text)
acdsReferenceURL
  = lens _acdsReferenceURL
      (\ s a -> s{_acdsReferenceURL = a})

-- | The name of the social network.
acdsType :: Lens' ActivityContentDetailsSocial (Maybe ActivityContentDetailsSocialType)
acdsType = lens _acdsType (\ s a -> s{_acdsType = a})

instance FromJSON ActivityContentDetailsSocial where
        parseJSON
          = withObject "ActivityContentDetailsSocial"
              (\ o ->
                 ActivityContentDetailsSocial' <$>
                   (o .:? "resourceId") <*> (o .:? "imageUrl") <*>
                     (o .:? "author")
                     <*> (o .:? "referenceUrl")
                     <*> (o .:? "type"))

instance ToJSON ActivityContentDetailsSocial where
        toJSON ActivityContentDetailsSocial'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _acdsResourceId,
                  ("imageUrl" .=) <$> _acdsImageURL,
                  ("author" .=) <$> _acdsAuthor,
                  ("referenceUrl" .=) <$> _acdsReferenceURL,
                  ("type" .=) <$> _acdsType])

-- | A liveChatBan resource represents a ban for a YouTube live chat.
--
-- /See:/ 'liveChatBan' smart constructor.
data LiveChatBan = LiveChatBan'
    { _lcbEtag    :: !(Maybe Text)
    , _lcbSnippet :: !(Maybe LiveChatBanSnippet)
    , _lcbKind    :: !Text
    , _lcbId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatBan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbEtag'
--
-- * 'lcbSnippet'
--
-- * 'lcbKind'
--
-- * 'lcbId'
liveChatBan
    :: LiveChatBan
liveChatBan =
    LiveChatBan'
    { _lcbEtag = Nothing
    , _lcbSnippet = Nothing
    , _lcbKind = "youtube#liveChatBan"
    , _lcbId = Nothing
    }

-- | Etag of this resource.
lcbEtag :: Lens' LiveChatBan (Maybe Text)
lcbEtag = lens _lcbEtag (\ s a -> s{_lcbEtag = a})

-- | The snippet object contains basic details about the ban.
lcbSnippet :: Lens' LiveChatBan (Maybe LiveChatBanSnippet)
lcbSnippet
  = lens _lcbSnippet (\ s a -> s{_lcbSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveChatBan\".
lcbKind :: Lens' LiveChatBan Text
lcbKind = lens _lcbKind (\ s a -> s{_lcbKind = a})

-- | The ID that YouTube assigns to uniquely identify the ban.
lcbId :: Lens' LiveChatBan (Maybe Text)
lcbId = lens _lcbId (\ s a -> s{_lcbId = a})

instance FromJSON LiveChatBan where
        parseJSON
          = withObject "LiveChatBan"
              (\ o ->
                 LiveChatBan' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#liveChatBan")
                     <*> (o .:? "id"))

instance ToJSON LiveChatBan where
        toJSON LiveChatBan'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lcbEtag,
                  ("snippet" .=) <$> _lcbSnippet,
                  Just ("kind" .= _lcbKind), ("id" .=) <$> _lcbId])

-- | Information about a channel that a user subscribed to.
--
-- /See:/ 'activityContentDetailsSubscription' smart constructor.
newtype ActivityContentDetailsSubscription = ActivityContentDetailsSubscription'
    { _aResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsSubscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aResourceId'
activityContentDetailsSubscription
    :: ActivityContentDetailsSubscription
activityContentDetailsSubscription =
    ActivityContentDetailsSubscription'
    { _aResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that the user subscribed to.
aResourceId :: Lens' ActivityContentDetailsSubscription (Maybe ResourceId)
aResourceId
  = lens _aResourceId (\ s a -> s{_aResourceId = a})

instance FromJSON ActivityContentDetailsSubscription
         where
        parseJSON
          = withObject "ActivityContentDetailsSubscription"
              (\ o ->
                 ActivityContentDetailsSubscription' <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsSubscription
         where
        toJSON ActivityContentDetailsSubscription'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _aResourceId])

-- | Information about a resource that received a positive (like) rating.
--
-- /See:/ 'activityContentDetailsLike' smart constructor.
newtype ActivityContentDetailsLike = ActivityContentDetailsLike'
    { _acdlResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsLike' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdlResourceId'
activityContentDetailsLike
    :: ActivityContentDetailsLike
activityContentDetailsLike =
    ActivityContentDetailsLike'
    { _acdlResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the rated
-- resource.
acdlResourceId :: Lens' ActivityContentDetailsLike (Maybe ResourceId)
acdlResourceId
  = lens _acdlResourceId
      (\ s a -> s{_acdlResourceId = a})

instance FromJSON ActivityContentDetailsLike where
        parseJSON
          = withObject "ActivityContentDetailsLike"
              (\ o ->
                 ActivityContentDetailsLike' <$> (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsLike where
        toJSON ActivityContentDetailsLike'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdlResourceId])

--
-- /See:/ 'playListContentDetails' smart constructor.
newtype PlayListContentDetails = PlayListContentDetails'
    { _plcdItemCount :: Maybe (Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plcdItemCount'
playListContentDetails
    :: PlayListContentDetails
playListContentDetails =
    PlayListContentDetails'
    { _plcdItemCount = Nothing
    }

-- | The number of videos in the playlist.
plcdItemCount :: Lens' PlayListContentDetails (Maybe Word32)
plcdItemCount
  = lens _plcdItemCount
      (\ s a -> s{_plcdItemCount = a})
      . mapping _Coerce

instance FromJSON PlayListContentDetails where
        parseJSON
          = withObject "PlayListContentDetails"
              (\ o ->
                 PlayListContentDetails' <$> (o .:? "itemCount"))

instance ToJSON PlayListContentDetails where
        toJSON PlayListContentDetails'{..}
          = object
              (catMaybes [("itemCount" .=) <$> _plcdItemCount])

-- | Paging details for lists of resources, including total number of items
-- available and number of resources returned in a single page.
--
-- /See:/ 'pageInfo' smart constructor.
data PageInfo = PageInfo'
    { _piResultsPerPage :: !(Maybe (Textual Int32))
    , _piTotalResults   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piResultsPerPage'
--
-- * 'piTotalResults'
pageInfo
    :: PageInfo
pageInfo =
    PageInfo'
    { _piResultsPerPage = Nothing
    , _piTotalResults = Nothing
    }

-- | The number of results included in the API response.
piResultsPerPage :: Lens' PageInfo (Maybe Int32)
piResultsPerPage
  = lens _piResultsPerPage
      (\ s a -> s{_piResultsPerPage = a})
      . mapping _Coerce

-- | The total number of results in the result set.
piTotalResults :: Lens' PageInfo (Maybe Int32)
piTotalResults
  = lens _piTotalResults
      (\ s a -> s{_piTotalResults = a})
      . mapping _Coerce

instance FromJSON PageInfo where
        parseJSON
          = withObject "PageInfo"
              (\ o ->
                 PageInfo' <$>
                   (o .:? "resultsPerPage") <*> (o .:? "totalResults"))

instance ToJSON PageInfo where
        toJSON PageInfo'{..}
          = object
              (catMaybes
                 [("resultsPerPage" .=) <$> _piResultsPerPage,
                  ("totalResults" .=) <$> _piTotalResults])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoStatus' smart constructor.
data VideoStatus = VideoStatus'
    { _vsFailureReason       :: !(Maybe VideoStatusFailureReason)
    , _vsPublicStatsViewable :: !(Maybe Bool)
    , _vsRejectionReason     :: !(Maybe VideoStatusRejectionReason)
    , _vsPublishAt           :: !(Maybe DateTime')
    , _vsUploadStatus        :: !(Maybe VideoStatusUploadStatus)
    , _vsPrivacyStatus       :: !(Maybe VideoStatusPrivacyStatus)
    , _vsEmbeddable          :: !(Maybe Bool)
    , _vsLicense             :: !(Maybe VideoStatusLicense)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsFailureReason'
--
-- * 'vsPublicStatsViewable'
--
-- * 'vsRejectionReason'
--
-- * 'vsPublishAt'
--
-- * 'vsUploadStatus'
--
-- * 'vsPrivacyStatus'
--
-- * 'vsEmbeddable'
--
-- * 'vsLicense'
videoStatus
    :: VideoStatus
videoStatus =
    VideoStatus'
    { _vsFailureReason = Nothing
    , _vsPublicStatsViewable = Nothing
    , _vsRejectionReason = Nothing
    , _vsPublishAt = Nothing
    , _vsUploadStatus = Nothing
    , _vsPrivacyStatus = Nothing
    , _vsEmbeddable = Nothing
    , _vsLicense = Nothing
    }

-- | This value explains why a video failed to upload. This property is only
-- present if the uploadStatus property indicates that the upload failed.
vsFailureReason :: Lens' VideoStatus (Maybe VideoStatusFailureReason)
vsFailureReason
  = lens _vsFailureReason
      (\ s a -> s{_vsFailureReason = a})

-- | This value indicates if the extended video statistics on the watch page
-- can be viewed by everyone. Note that the view count, likes, etc will
-- still be visible if this is disabled.
vsPublicStatsViewable :: Lens' VideoStatus (Maybe Bool)
vsPublicStatsViewable
  = lens _vsPublicStatsViewable
      (\ s a -> s{_vsPublicStatsViewable = a})

-- | This value explains why YouTube rejected an uploaded video. This
-- property is only present if the uploadStatus property indicates that the
-- upload was rejected.
vsRejectionReason :: Lens' VideoStatus (Maybe VideoStatusRejectionReason)
vsRejectionReason
  = lens _vsRejectionReason
      (\ s a -> s{_vsRejectionReason = a})

-- | The date and time when the video is scheduled to publish. It can be set
-- only if the privacy status of the video is private. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vsPublishAt :: Lens' VideoStatus (Maybe UTCTime)
vsPublishAt
  = lens _vsPublishAt (\ s a -> s{_vsPublishAt = a}) .
      mapping _DateTime

-- | The status of the uploaded video.
vsUploadStatus :: Lens' VideoStatus (Maybe VideoStatusUploadStatus)
vsUploadStatus
  = lens _vsUploadStatus
      (\ s a -> s{_vsUploadStatus = a})

-- | The video\'s privacy status.
vsPrivacyStatus :: Lens' VideoStatus (Maybe VideoStatusPrivacyStatus)
vsPrivacyStatus
  = lens _vsPrivacyStatus
      (\ s a -> s{_vsPrivacyStatus = a})

-- | This value indicates if the video can be embedded on another website.
vsEmbeddable :: Lens' VideoStatus (Maybe Bool)
vsEmbeddable
  = lens _vsEmbeddable (\ s a -> s{_vsEmbeddable = a})

-- | The video\'s license.
vsLicense :: Lens' VideoStatus (Maybe VideoStatusLicense)
vsLicense
  = lens _vsLicense (\ s a -> s{_vsLicense = a})

instance FromJSON VideoStatus where
        parseJSON
          = withObject "VideoStatus"
              (\ o ->
                 VideoStatus' <$>
                   (o .:? "failureReason") <*>
                     (o .:? "publicStatsViewable")
                     <*> (o .:? "rejectionReason")
                     <*> (o .:? "publishAt")
                     <*> (o .:? "uploadStatus")
                     <*> (o .:? "privacyStatus")
                     <*> (o .:? "embeddable")
                     <*> (o .:? "license"))

instance ToJSON VideoStatus where
        toJSON VideoStatus'{..}
          = object
              (catMaybes
                 [("failureReason" .=) <$> _vsFailureReason,
                  ("publicStatsViewable" .=) <$>
                    _vsPublicStatsViewable,
                  ("rejectionReason" .=) <$> _vsRejectionReason,
                  ("publishAt" .=) <$> _vsPublishAt,
                  ("uploadStatus" .=) <$> _vsUploadStatus,
                  ("privacyStatus" .=) <$> _vsPrivacyStatus,
                  ("embeddable" .=) <$> _vsEmbeddable,
                  ("license" .=) <$> _vsLicense])

-- | Describes original video file properties, including technical details
-- about audio and video streams, but also metadata information like
-- content length, digitization time, or geotagging information.
--
-- /See:/ 'videoFileDetails' smart constructor.
data VideoFileDetails = VideoFileDetails'
    { _vfdBitrateBps        :: !(Maybe (Textual Word64))
    , _vfdCreationTime      :: !(Maybe Text)
    , _vfdRecordingLocation :: !(Maybe GeoPoint)
    , _vfdDurationMs        :: !(Maybe (Textual Word64))
    , _vfdFileSize          :: !(Maybe (Textual Word64))
    , _vfdFileType          :: !(Maybe VideoFileDetailsFileType)
    , _vfdContainer         :: !(Maybe Text)
    , _vfdVideoStreams      :: !(Maybe [VideoFileDetailsVideoStream])
    , _vfdAudioStreams      :: !(Maybe [VideoFileDetailsAudioStream])
    , _vfdFileName          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdBitrateBps'
--
-- * 'vfdCreationTime'
--
-- * 'vfdRecordingLocation'
--
-- * 'vfdDurationMs'
--
-- * 'vfdFileSize'
--
-- * 'vfdFileType'
--
-- * 'vfdContainer'
--
-- * 'vfdVideoStreams'
--
-- * 'vfdAudioStreams'
--
-- * 'vfdFileName'
videoFileDetails
    :: VideoFileDetails
videoFileDetails =
    VideoFileDetails'
    { _vfdBitrateBps = Nothing
    , _vfdCreationTime = Nothing
    , _vfdRecordingLocation = Nothing
    , _vfdDurationMs = Nothing
    , _vfdFileSize = Nothing
    , _vfdFileType = Nothing
    , _vfdContainer = Nothing
    , _vfdVideoStreams = Nothing
    , _vfdAudioStreams = Nothing
    , _vfdFileName = Nothing
    }

-- | The uploaded video file\'s combined (video and audio) bitrate in bits
-- per second.
vfdBitrateBps :: Lens' VideoFileDetails (Maybe Word64)
vfdBitrateBps
  = lens _vfdBitrateBps
      (\ s a -> s{_vfdBitrateBps = a})
      . mapping _Coerce

-- | The date and time when the uploaded video file was created. The value is
-- specified in ISO 8601 format. Currently, the following ISO 8601 formats
-- are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS
-- - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM
vfdCreationTime :: Lens' VideoFileDetails (Maybe Text)
vfdCreationTime
  = lens _vfdCreationTime
      (\ s a -> s{_vfdCreationTime = a})

-- | Geographic coordinates that identify the place where the uploaded video
-- was recorded. Coordinates are defined using WGS 84.
vfdRecordingLocation :: Lens' VideoFileDetails (Maybe GeoPoint)
vfdRecordingLocation
  = lens _vfdRecordingLocation
      (\ s a -> s{_vfdRecordingLocation = a})

-- | The length of the uploaded video in milliseconds.
vfdDurationMs :: Lens' VideoFileDetails (Maybe Word64)
vfdDurationMs
  = lens _vfdDurationMs
      (\ s a -> s{_vfdDurationMs = a})
      . mapping _Coerce

-- | The uploaded file\'s size in bytes. This field is present whether a
-- video file or another type of file was uploaded.
vfdFileSize :: Lens' VideoFileDetails (Maybe Word64)
vfdFileSize
  = lens _vfdFileSize (\ s a -> s{_vfdFileSize = a}) .
      mapping _Coerce

-- | The uploaded file\'s type as detected by YouTube\'s video processing
-- engine. Currently, YouTube only processes video files, but this field is
-- present whether a video file or another type of file was uploaded.
vfdFileType :: Lens' VideoFileDetails (Maybe VideoFileDetailsFileType)
vfdFileType
  = lens _vfdFileType (\ s a -> s{_vfdFileType = a})

-- | The uploaded video file\'s container format.
vfdContainer :: Lens' VideoFileDetails (Maybe Text)
vfdContainer
  = lens _vfdContainer (\ s a -> s{_vfdContainer = a})

-- | A list of video streams contained in the uploaded video file. Each item
-- in the list contains detailed metadata about a video stream.
vfdVideoStreams :: Lens' VideoFileDetails [VideoFileDetailsVideoStream]
vfdVideoStreams
  = lens _vfdVideoStreams
      (\ s a -> s{_vfdVideoStreams = a})
      . _Default
      . _Coerce

-- | A list of audio streams contained in the uploaded video file. Each item
-- in the list contains detailed metadata about an audio stream.
vfdAudioStreams :: Lens' VideoFileDetails [VideoFileDetailsAudioStream]
vfdAudioStreams
  = lens _vfdAudioStreams
      (\ s a -> s{_vfdAudioStreams = a})
      . _Default
      . _Coerce

-- | The uploaded file\'s name. This field is present whether a video file or
-- another type of file was uploaded.
vfdFileName :: Lens' VideoFileDetails (Maybe Text)
vfdFileName
  = lens _vfdFileName (\ s a -> s{_vfdFileName = a})

instance FromJSON VideoFileDetails where
        parseJSON
          = withObject "VideoFileDetails"
              (\ o ->
                 VideoFileDetails' <$>
                   (o .:? "bitrateBps") <*> (o .:? "creationTime") <*>
                     (o .:? "recordingLocation")
                     <*> (o .:? "durationMs")
                     <*> (o .:? "fileSize")
                     <*> (o .:? "fileType")
                     <*> (o .:? "container")
                     <*> (o .:? "videoStreams" .!= mempty)
                     <*> (o .:? "audioStreams" .!= mempty)
                     <*> (o .:? "fileName"))

instance ToJSON VideoFileDetails where
        toJSON VideoFileDetails'{..}
          = object
              (catMaybes
                 [("bitrateBps" .=) <$> _vfdBitrateBps,
                  ("creationTime" .=) <$> _vfdCreationTime,
                  ("recordingLocation" .=) <$> _vfdRecordingLocation,
                  ("durationMs" .=) <$> _vfdDurationMs,
                  ("fileSize" .=) <$> _vfdFileSize,
                  ("fileType" .=) <$> _vfdFileType,
                  ("container" .=) <$> _vfdContainer,
                  ("videoStreams" .=) <$> _vfdVideoStreams,
                  ("audioStreams" .=) <$> _vfdAudioStreams,
                  ("fileName" .=) <$> _vfdFileName])

--
-- /See:/ 'thumbnailSetResponse' smart constructor.
data ThumbnailSetResponse = ThumbnailSetResponse'
    { _tsrEtag      :: !(Maybe Text)
    , _tsrKind      :: !Text
    , _tsrItems     :: !(Maybe [ThumbnailDetails])
    , _tsrVisitorId :: !(Maybe Text)
    , _tsrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsrEtag'
--
-- * 'tsrKind'
--
-- * 'tsrItems'
--
-- * 'tsrVisitorId'
--
-- * 'tsrEventId'
thumbnailSetResponse
    :: ThumbnailSetResponse
thumbnailSetResponse =
    ThumbnailSetResponse'
    { _tsrEtag = Nothing
    , _tsrKind = "youtube#thumbnailSetResponse"
    , _tsrItems = Nothing
    , _tsrVisitorId = Nothing
    , _tsrEventId = Nothing
    }

-- | Etag of this resource.
tsrEtag :: Lens' ThumbnailSetResponse (Maybe Text)
tsrEtag = lens _tsrEtag (\ s a -> s{_tsrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#thumbnailSetResponse\".
tsrKind :: Lens' ThumbnailSetResponse Text
tsrKind = lens _tsrKind (\ s a -> s{_tsrKind = a})

-- | A list of thumbnails.
tsrItems :: Lens' ThumbnailSetResponse [ThumbnailDetails]
tsrItems
  = lens _tsrItems (\ s a -> s{_tsrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
tsrVisitorId :: Lens' ThumbnailSetResponse (Maybe Text)
tsrVisitorId
  = lens _tsrVisitorId (\ s a -> s{_tsrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
tsrEventId :: Lens' ThumbnailSetResponse (Maybe Text)
tsrEventId
  = lens _tsrEventId (\ s a -> s{_tsrEventId = a})

instance FromJSON ThumbnailSetResponse where
        parseJSON
          = withObject "ThumbnailSetResponse"
              (\ o ->
                 ThumbnailSetResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#thumbnailSetResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON ThumbnailSetResponse where
        toJSON ThumbnailSetResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _tsrEtag, Just ("kind" .= _tsrKind),
                  ("items" .=) <$> _tsrItems,
                  ("visitorId" .=) <$> _tsrVisitorId,
                  ("eventId" .=) <$> _tsrEventId])

--
-- /See:/ 'liveBroadcastListResponse' smart constructor.
data LiveBroadcastListResponse = LiveBroadcastListResponse'
    { _lblrEtag            :: !(Maybe Text)
    , _lblrTokenPagination :: !(Maybe TokenPagination)
    , _lblrNextPageToken   :: !(Maybe Text)
    , _lblrPageInfo        :: !(Maybe PageInfo)
    , _lblrKind            :: !Text
    , _lblrItems           :: !(Maybe [LiveBroadcast])
    , _lblrVisitorId       :: !(Maybe Text)
    , _lblrEventId         :: !(Maybe Text)
    , _lblrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lblrEtag'
--
-- * 'lblrTokenPagination'
--
-- * 'lblrNextPageToken'
--
-- * 'lblrPageInfo'
--
-- * 'lblrKind'
--
-- * 'lblrItems'
--
-- * 'lblrVisitorId'
--
-- * 'lblrEventId'
--
-- * 'lblrPrevPageToken'
liveBroadcastListResponse
    :: LiveBroadcastListResponse
liveBroadcastListResponse =
    LiveBroadcastListResponse'
    { _lblrEtag = Nothing
    , _lblrTokenPagination = Nothing
    , _lblrNextPageToken = Nothing
    , _lblrPageInfo = Nothing
    , _lblrKind = "youtube#liveBroadcastListResponse"
    , _lblrItems = Nothing
    , _lblrVisitorId = Nothing
    , _lblrEventId = Nothing
    , _lblrPrevPageToken = Nothing
    }

-- | Etag of this resource.
lblrEtag :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrEtag = lens _lblrEtag (\ s a -> s{_lblrEtag = a})

lblrTokenPagination :: Lens' LiveBroadcastListResponse (Maybe TokenPagination)
lblrTokenPagination
  = lens _lblrTokenPagination
      (\ s a -> s{_lblrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lblrNextPageToken :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrNextPageToken
  = lens _lblrNextPageToken
      (\ s a -> s{_lblrNextPageToken = a})

lblrPageInfo :: Lens' LiveBroadcastListResponse (Maybe PageInfo)
lblrPageInfo
  = lens _lblrPageInfo (\ s a -> s{_lblrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveBroadcastListResponse\".
lblrKind :: Lens' LiveBroadcastListResponse Text
lblrKind = lens _lblrKind (\ s a -> s{_lblrKind = a})

-- | A list of broadcasts that match the request criteria.
lblrItems :: Lens' LiveBroadcastListResponse [LiveBroadcast]
lblrItems
  = lens _lblrItems (\ s a -> s{_lblrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
lblrVisitorId :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrVisitorId
  = lens _lblrVisitorId
      (\ s a -> s{_lblrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
lblrEventId :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrEventId
  = lens _lblrEventId (\ s a -> s{_lblrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
lblrPrevPageToken :: Lens' LiveBroadcastListResponse (Maybe Text)
lblrPrevPageToken
  = lens _lblrPrevPageToken
      (\ s a -> s{_lblrPrevPageToken = a})

instance FromJSON LiveBroadcastListResponse where
        parseJSON
          = withObject "LiveBroadcastListResponse"
              (\ o ->
                 LiveBroadcastListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#liveBroadcastListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON LiveBroadcastListResponse where
        toJSON LiveBroadcastListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lblrEtag,
                  ("tokenPagination" .=) <$> _lblrTokenPagination,
                  ("nextPageToken" .=) <$> _lblrNextPageToken,
                  ("pageInfo" .=) <$> _lblrPageInfo,
                  Just ("kind" .= _lblrKind),
                  ("items" .=) <$> _lblrItems,
                  ("visitorId" .=) <$> _lblrVisitorId,
                  ("eventId" .=) <$> _lblrEventId,
                  ("prevPageToken" .=) <$> _lblrPrevPageToken])

-- | Details about the content of a channel.
--
-- /See:/ 'channelContentDetails' smart constructor.
data ChannelContentDetails = ChannelContentDetails'
    { _ccdRelatedPlayLists :: !(Maybe ChannelContentDetailsRelatedPlayLists)
    , _ccdGooglePlusUserId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdRelatedPlayLists'
--
-- * 'ccdGooglePlusUserId'
channelContentDetails
    :: ChannelContentDetails
channelContentDetails =
    ChannelContentDetails'
    { _ccdRelatedPlayLists = Nothing
    , _ccdGooglePlusUserId = Nothing
    }

ccdRelatedPlayLists :: Lens' ChannelContentDetails (Maybe ChannelContentDetailsRelatedPlayLists)
ccdRelatedPlayLists
  = lens _ccdRelatedPlayLists
      (\ s a -> s{_ccdRelatedPlayLists = a})

-- | The googlePlusUserId object identifies the Google+ profile ID associated
-- with this channel.
ccdGooglePlusUserId :: Lens' ChannelContentDetails (Maybe Text)
ccdGooglePlusUserId
  = lens _ccdGooglePlusUserId
      (\ s a -> s{_ccdGooglePlusUserId = a})

instance FromJSON ChannelContentDetails where
        parseJSON
          = withObject "ChannelContentDetails"
              (\ o ->
                 ChannelContentDetails' <$>
                   (o .:? "relatedPlaylists") <*>
                     (o .:? "googlePlusUserId"))

instance ToJSON ChannelContentDetails where
        toJSON ChannelContentDetails'{..}
          = object
              (catMaybes
                 [("relatedPlaylists" .=) <$> _ccdRelatedPlayLists,
                  ("googlePlusUserId" .=) <$> _ccdGooglePlusUserId])

-- | Details about a resource which was added to a channel.
--
-- /See:/ 'activityContentDetailsChannelItem' smart constructor.
newtype ActivityContentDetailsChannelItem = ActivityContentDetailsChannelItem'
    { _acdciResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsChannelItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdciResourceId'
activityContentDetailsChannelItem
    :: ActivityContentDetailsChannelItem
activityContentDetailsChannelItem =
    ActivityContentDetailsChannelItem'
    { _acdciResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- that was added to the channel.
acdciResourceId :: Lens' ActivityContentDetailsChannelItem (Maybe ResourceId)
acdciResourceId
  = lens _acdciResourceId
      (\ s a -> s{_acdciResourceId = a})

instance FromJSON ActivityContentDetailsChannelItem
         where
        parseJSON
          = withObject "ActivityContentDetailsChannelItem"
              (\ o ->
                 ActivityContentDetailsChannelItem' <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsChannelItem
         where
        toJSON ActivityContentDetailsChannelItem'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdciResourceId])

--
-- /See:/ 'videoListResponse' smart constructor.
data VideoListResponse = VideoListResponse'
    { _vlrEtag            :: !(Maybe Text)
    , _vlrTokenPagination :: !(Maybe TokenPagination)
    , _vlrNextPageToken   :: !(Maybe Text)
    , _vlrPageInfo        :: !(Maybe PageInfo)
    , _vlrKind            :: !Text
    , _vlrItems           :: !(Maybe [Video])
    , _vlrVisitorId       :: !(Maybe Text)
    , _vlrEventId         :: !(Maybe Text)
    , _vlrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlrEtag'
--
-- * 'vlrTokenPagination'
--
-- * 'vlrNextPageToken'
--
-- * 'vlrPageInfo'
--
-- * 'vlrKind'
--
-- * 'vlrItems'
--
-- * 'vlrVisitorId'
--
-- * 'vlrEventId'
--
-- * 'vlrPrevPageToken'
videoListResponse
    :: VideoListResponse
videoListResponse =
    VideoListResponse'
    { _vlrEtag = Nothing
    , _vlrTokenPagination = Nothing
    , _vlrNextPageToken = Nothing
    , _vlrPageInfo = Nothing
    , _vlrKind = "youtube#videoListResponse"
    , _vlrItems = Nothing
    , _vlrVisitorId = Nothing
    , _vlrEventId = Nothing
    , _vlrPrevPageToken = Nothing
    }

-- | Etag of this resource.
vlrEtag :: Lens' VideoListResponse (Maybe Text)
vlrEtag = lens _vlrEtag (\ s a -> s{_vlrEtag = a})

vlrTokenPagination :: Lens' VideoListResponse (Maybe TokenPagination)
vlrTokenPagination
  = lens _vlrTokenPagination
      (\ s a -> s{_vlrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
vlrNextPageToken :: Lens' VideoListResponse (Maybe Text)
vlrNextPageToken
  = lens _vlrNextPageToken
      (\ s a -> s{_vlrNextPageToken = a})

vlrPageInfo :: Lens' VideoListResponse (Maybe PageInfo)
vlrPageInfo
  = lens _vlrPageInfo (\ s a -> s{_vlrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoListResponse\".
vlrKind :: Lens' VideoListResponse Text
vlrKind = lens _vlrKind (\ s a -> s{_vlrKind = a})

-- | A list of videos that match the request criteria.
vlrItems :: Lens' VideoListResponse [Video]
vlrItems
  = lens _vlrItems (\ s a -> s{_vlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vlrVisitorId :: Lens' VideoListResponse (Maybe Text)
vlrVisitorId
  = lens _vlrVisitorId (\ s a -> s{_vlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vlrEventId :: Lens' VideoListResponse (Maybe Text)
vlrEventId
  = lens _vlrEventId (\ s a -> s{_vlrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
vlrPrevPageToken :: Lens' VideoListResponse (Maybe Text)
vlrPrevPageToken
  = lens _vlrPrevPageToken
      (\ s a -> s{_vlrPrevPageToken = a})

instance FromJSON VideoListResponse where
        parseJSON
          = withObject "VideoListResponse"
              (\ o ->
                 VideoListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#videoListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON VideoListResponse where
        toJSON VideoListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vlrEtag,
                  ("tokenPagination" .=) <$> _vlrTokenPagination,
                  ("nextPageToken" .=) <$> _vlrNextPageToken,
                  ("pageInfo" .=) <$> _vlrPageInfo,
                  Just ("kind" .= _vlrKind),
                  ("items" .=) <$> _vlrItems,
                  ("visitorId" .=) <$> _vlrVisitorId,
                  ("eventId" .=) <$> _vlrEventId,
                  ("prevPageToken" .=) <$> _vlrPrevPageToken])

-- | Details about monetization of a YouTube Video.
--
-- /See:/ 'videoMonetizationDetails' smart constructor.
newtype VideoMonetizationDetails = VideoMonetizationDetails'
    { _vmdAccess :: Maybe AccessPolicy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoMonetizationDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmdAccess'
videoMonetizationDetails
    :: VideoMonetizationDetails
videoMonetizationDetails =
    VideoMonetizationDetails'
    { _vmdAccess = Nothing
    }

-- | The value of access indicates whether the video can be monetized or not.
vmdAccess :: Lens' VideoMonetizationDetails (Maybe AccessPolicy)
vmdAccess
  = lens _vmdAccess (\ s a -> s{_vmdAccess = a})

instance FromJSON VideoMonetizationDetails where
        parseJSON
          = withObject "VideoMonetizationDetails"
              (\ o ->
                 VideoMonetizationDetails' <$> (o .:? "access"))

instance ToJSON VideoMonetizationDetails where
        toJSON VideoMonetizationDetails'{..}
          = object (catMaybes [("access" .=) <$> _vmdAccess])

-- | A single tag suggestion with it\'s relevance information.
--
-- /See:/ 'videoSuggestionsTagSuggestion' smart constructor.
data VideoSuggestionsTagSuggestion = VideoSuggestionsTagSuggestion'
    { _vstsTag               :: !(Maybe Text)
    , _vstsCategoryRestricts :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSuggestionsTagSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vstsTag'
--
-- * 'vstsCategoryRestricts'
videoSuggestionsTagSuggestion
    :: VideoSuggestionsTagSuggestion
videoSuggestionsTagSuggestion =
    VideoSuggestionsTagSuggestion'
    { _vstsTag = Nothing
    , _vstsCategoryRestricts = Nothing
    }

-- | The keyword tag suggested for the video.
vstsTag :: Lens' VideoSuggestionsTagSuggestion (Maybe Text)
vstsTag = lens _vstsTag (\ s a -> s{_vstsTag = a})

-- | A set of video categories for which the tag is relevant. You can use
-- this information to display appropriate tag suggestions based on the
-- video category that the video uploader associates with the video. By
-- default, tag suggestions are relevant for all categories if there are no
-- restricts defined for the keyword.
vstsCategoryRestricts :: Lens' VideoSuggestionsTagSuggestion [Text]
vstsCategoryRestricts
  = lens _vstsCategoryRestricts
      (\ s a -> s{_vstsCategoryRestricts = a})
      . _Default
      . _Coerce

instance FromJSON VideoSuggestionsTagSuggestion where
        parseJSON
          = withObject "VideoSuggestionsTagSuggestion"
              (\ o ->
                 VideoSuggestionsTagSuggestion' <$>
                   (o .:? "tag") <*>
                     (o .:? "categoryRestricts" .!= mempty))

instance ToJSON VideoSuggestionsTagSuggestion where
        toJSON VideoSuggestionsTagSuggestion'{..}
          = object
              (catMaybes
                 [("tag" .=) <$> _vstsTag,
                  ("categoryRestricts" .=) <$> _vstsCategoryRestricts])

--
-- /See:/ 'liveChatModeratorListResponse' smart constructor.
data LiveChatModeratorListResponse = LiveChatModeratorListResponse'
    { _lEtag            :: !(Maybe Text)
    , _lTokenPagination :: !(Maybe TokenPagination)
    , _lNextPageToken   :: !(Maybe Text)
    , _lPageInfo        :: !(Maybe PageInfo)
    , _lKind            :: !Text
    , _lItems           :: !(Maybe [LiveChatModerator])
    , _lVisitorId       :: !(Maybe Text)
    , _lEventId         :: !(Maybe Text)
    , _lPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatModeratorListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lEtag'
--
-- * 'lTokenPagination'
--
-- * 'lNextPageToken'
--
-- * 'lPageInfo'
--
-- * 'lKind'
--
-- * 'lItems'
--
-- * 'lVisitorId'
--
-- * 'lEventId'
--
-- * 'lPrevPageToken'
liveChatModeratorListResponse
    :: LiveChatModeratorListResponse
liveChatModeratorListResponse =
    LiveChatModeratorListResponse'
    { _lEtag = Nothing
    , _lTokenPagination = Nothing
    , _lNextPageToken = Nothing
    , _lPageInfo = Nothing
    , _lKind = "youtube#liveChatModeratorListResponse"
    , _lItems = Nothing
    , _lVisitorId = Nothing
    , _lEventId = Nothing
    , _lPrevPageToken = Nothing
    }

-- | Etag of this resource.
lEtag :: Lens' LiveChatModeratorListResponse (Maybe Text)
lEtag = lens _lEtag (\ s a -> s{_lEtag = a})

lTokenPagination :: Lens' LiveChatModeratorListResponse (Maybe TokenPagination)
lTokenPagination
  = lens _lTokenPagination
      (\ s a -> s{_lTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lNextPageToken :: Lens' LiveChatModeratorListResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

lPageInfo :: Lens' LiveChatModeratorListResponse (Maybe PageInfo)
lPageInfo
  = lens _lPageInfo (\ s a -> s{_lPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveChatModeratorListResponse\".
lKind :: Lens' LiveChatModeratorListResponse Text
lKind = lens _lKind (\ s a -> s{_lKind = a})

-- | A list of moderators that match the request criteria.
lItems :: Lens' LiveChatModeratorListResponse [LiveChatModerator]
lItems
  = lens _lItems (\ s a -> s{_lItems = a}) . _Default .
      _Coerce

-- | The visitorId identifies the visitor.
lVisitorId :: Lens' LiveChatModeratorListResponse (Maybe Text)
lVisitorId
  = lens _lVisitorId (\ s a -> s{_lVisitorId = a})

-- | Serialized EventId of the request which produced this response.
lEventId :: Lens' LiveChatModeratorListResponse (Maybe Text)
lEventId = lens _lEventId (\ s a -> s{_lEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
lPrevPageToken :: Lens' LiveChatModeratorListResponse (Maybe Text)
lPrevPageToken
  = lens _lPrevPageToken
      (\ s a -> s{_lPrevPageToken = a})

instance FromJSON LiveChatModeratorListResponse where
        parseJSON
          = withObject "LiveChatModeratorListResponse"
              (\ o ->
                 LiveChatModeratorListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#liveChatModeratorListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON LiveChatModeratorListResponse where
        toJSON LiveChatModeratorListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lEtag,
                  ("tokenPagination" .=) <$> _lTokenPagination,
                  ("nextPageToken" .=) <$> _lNextPageToken,
                  ("pageInfo" .=) <$> _lPageInfo,
                  Just ("kind" .= _lKind), ("items" .=) <$> _lItems,
                  ("visitorId" .=) <$> _lVisitorId,
                  ("eventId" .=) <$> _lEventId,
                  ("prevPageToken" .=) <$> _lPrevPageToken])

-- | Basic details about an activity, including title, description,
-- thumbnails, activity type and group.
--
-- /See:/ 'activitySnippet' smart constructor.
data ActivitySnippet = ActivitySnippet'
    { _asPublishedAt  :: !(Maybe DateTime')
    , _asChannelTitle :: !(Maybe Text)
    , _asChannelId    :: !(Maybe Text)
    , _asThumbnails   :: !(Maybe ThumbnailDetails)
    , _asGroupId      :: !(Maybe Text)
    , _asTitle        :: !(Maybe Text)
    , _asType         :: !(Maybe ActivitySnippetType)
    , _asDescription  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitySnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asPublishedAt'
--
-- * 'asChannelTitle'
--
-- * 'asChannelId'
--
-- * 'asThumbnails'
--
-- * 'asGroupId'
--
-- * 'asTitle'
--
-- * 'asType'
--
-- * 'asDescription'
activitySnippet
    :: ActivitySnippet
activitySnippet =
    ActivitySnippet'
    { _asPublishedAt = Nothing
    , _asChannelTitle = Nothing
    , _asChannelId = Nothing
    , _asThumbnails = Nothing
    , _asGroupId = Nothing
    , _asTitle = Nothing
    , _asType = Nothing
    , _asDescription = Nothing
    }

-- | The date and time that the video was uploaded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
asPublishedAt :: Lens' ActivitySnippet (Maybe UTCTime)
asPublishedAt
  = lens _asPublishedAt
      (\ s a -> s{_asPublishedAt = a})
      . mapping _DateTime

-- | Channel title for the channel responsible for this activity
asChannelTitle :: Lens' ActivitySnippet (Maybe Text)
asChannelTitle
  = lens _asChannelTitle
      (\ s a -> s{_asChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel associated
-- with the activity.
asChannelId :: Lens' ActivitySnippet (Maybe Text)
asChannelId
  = lens _asChannelId (\ s a -> s{_asChannelId = a})

-- | A map of thumbnail images associated with the resource that is primarily
-- associated with the activity. For each object in the map, the key is the
-- name of the thumbnail image, and the value is an object that contains
-- other information about the thumbnail.
asThumbnails :: Lens' ActivitySnippet (Maybe ThumbnailDetails)
asThumbnails
  = lens _asThumbnails (\ s a -> s{_asThumbnails = a})

-- | The group ID associated with the activity. A group ID identifies user
-- events that are associated with the same user and resource. For example,
-- if a user rates a video and marks the same video as a favorite, the
-- entries for those events would have the same group ID in the user\'s
-- activity feed. In your user interface, you can avoid repetition by
-- grouping events with the same groupId value.
asGroupId :: Lens' ActivitySnippet (Maybe Text)
asGroupId
  = lens _asGroupId (\ s a -> s{_asGroupId = a})

-- | The title of the resource primarily associated with the activity.
asTitle :: Lens' ActivitySnippet (Maybe Text)
asTitle = lens _asTitle (\ s a -> s{_asTitle = a})

-- | The type of activity that the resource describes.
asType :: Lens' ActivitySnippet (Maybe ActivitySnippetType)
asType = lens _asType (\ s a -> s{_asType = a})

-- | The description of the resource primarily associated with the activity.
asDescription :: Lens' ActivitySnippet (Maybe Text)
asDescription
  = lens _asDescription
      (\ s a -> s{_asDescription = a})

instance FromJSON ActivitySnippet where
        parseJSON
          = withObject "ActivitySnippet"
              (\ o ->
                 ActivitySnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "groupId")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON ActivitySnippet where
        toJSON ActivitySnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _asPublishedAt,
                  ("channelTitle" .=) <$> _asChannelTitle,
                  ("channelId" .=) <$> _asChannelId,
                  ("thumbnails" .=) <$> _asThumbnails,
                  ("groupId" .=) <$> _asGroupId,
                  ("title" .=) <$> _asTitle, ("type" .=) <$> _asType,
                  ("description" .=) <$> _asDescription])

-- | Freebase topic information related to the channel.
--
-- /See:/ 'channelTopicDetails' smart constructor.
newtype ChannelTopicDetails = ChannelTopicDetails'
    { _ctdTopicIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelTopicDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdTopicIds'
channelTopicDetails
    :: ChannelTopicDetails
channelTopicDetails =
    ChannelTopicDetails'
    { _ctdTopicIds = Nothing
    }

-- | A list of Freebase topic IDs associated with the channel. You can
-- retrieve information about each topic using the Freebase Topic API.
ctdTopicIds :: Lens' ChannelTopicDetails [Text]
ctdTopicIds
  = lens _ctdTopicIds (\ s a -> s{_ctdTopicIds = a}) .
      _Default
      . _Coerce

instance FromJSON ChannelTopicDetails where
        parseJSON
          = withObject "ChannelTopicDetails"
              (\ o ->
                 ChannelTopicDetails' <$>
                   (o .:? "topicIds" .!= mempty))

instance ToJSON ChannelTopicDetails where
        toJSON ChannelTopicDetails'{..}
          = object
              (catMaybes [("topicIds" .=) <$> _ctdTopicIds])

--
-- /See:/ 'videoCategoryListResponse' smart constructor.
data VideoCategoryListResponse = VideoCategoryListResponse'
    { _vclrEtag            :: !(Maybe Text)
    , _vclrTokenPagination :: !(Maybe TokenPagination)
    , _vclrNextPageToken   :: !(Maybe Text)
    , _vclrPageInfo        :: !(Maybe PageInfo)
    , _vclrKind            :: !Text
    , _vclrItems           :: !(Maybe [VideoCategory])
    , _vclrVisitorId       :: !(Maybe Text)
    , _vclrEventId         :: !(Maybe Text)
    , _vclrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategoryListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclrEtag'
--
-- * 'vclrTokenPagination'
--
-- * 'vclrNextPageToken'
--
-- * 'vclrPageInfo'
--
-- * 'vclrKind'
--
-- * 'vclrItems'
--
-- * 'vclrVisitorId'
--
-- * 'vclrEventId'
--
-- * 'vclrPrevPageToken'
videoCategoryListResponse
    :: VideoCategoryListResponse
videoCategoryListResponse =
    VideoCategoryListResponse'
    { _vclrEtag = Nothing
    , _vclrTokenPagination = Nothing
    , _vclrNextPageToken = Nothing
    , _vclrPageInfo = Nothing
    , _vclrKind = "youtube#videoCategoryListResponse"
    , _vclrItems = Nothing
    , _vclrVisitorId = Nothing
    , _vclrEventId = Nothing
    , _vclrPrevPageToken = Nothing
    }

-- | Etag of this resource.
vclrEtag :: Lens' VideoCategoryListResponse (Maybe Text)
vclrEtag = lens _vclrEtag (\ s a -> s{_vclrEtag = a})

vclrTokenPagination :: Lens' VideoCategoryListResponse (Maybe TokenPagination)
vclrTokenPagination
  = lens _vclrTokenPagination
      (\ s a -> s{_vclrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
vclrNextPageToken :: Lens' VideoCategoryListResponse (Maybe Text)
vclrNextPageToken
  = lens _vclrNextPageToken
      (\ s a -> s{_vclrNextPageToken = a})

vclrPageInfo :: Lens' VideoCategoryListResponse (Maybe PageInfo)
vclrPageInfo
  = lens _vclrPageInfo (\ s a -> s{_vclrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoCategoryListResponse\".
vclrKind :: Lens' VideoCategoryListResponse Text
vclrKind = lens _vclrKind (\ s a -> s{_vclrKind = a})

-- | A list of video categories that can be associated with YouTube videos.
-- In this map, the video category ID is the map key, and its value is the
-- corresponding videoCategory resource.
vclrItems :: Lens' VideoCategoryListResponse [VideoCategory]
vclrItems
  = lens _vclrItems (\ s a -> s{_vclrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vclrVisitorId :: Lens' VideoCategoryListResponse (Maybe Text)
vclrVisitorId
  = lens _vclrVisitorId
      (\ s a -> s{_vclrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vclrEventId :: Lens' VideoCategoryListResponse (Maybe Text)
vclrEventId
  = lens _vclrEventId (\ s a -> s{_vclrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
vclrPrevPageToken :: Lens' VideoCategoryListResponse (Maybe Text)
vclrPrevPageToken
  = lens _vclrPrevPageToken
      (\ s a -> s{_vclrPrevPageToken = a})

instance FromJSON VideoCategoryListResponse where
        parseJSON
          = withObject "VideoCategoryListResponse"
              (\ o ->
                 VideoCategoryListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#videoCategoryListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON VideoCategoryListResponse where
        toJSON VideoCategoryListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vclrEtag,
                  ("tokenPagination" .=) <$> _vclrTokenPagination,
                  ("nextPageToken" .=) <$> _vclrNextPageToken,
                  ("pageInfo" .=) <$> _vclrPageInfo,
                  Just ("kind" .= _vclrKind),
                  ("items" .=) <$> _vclrItems,
                  ("visitorId" .=) <$> _vclrVisitorId,
                  ("eventId" .=) <$> _vclrEventId,
                  ("prevPageToken" .=) <$> _vclrPrevPageToken])

-- | Describes processing status and progress and availability of some other
-- Video resource parts.
--
-- /See:/ 'videoProcessingDetails' smart constructor.
data VideoProcessingDetails = VideoProcessingDetails'
    { _vpdProcessingFailureReason       :: !(Maybe VideoProcessingDetailsProcessingFailureReason)
    , _vpdProcessingIssuesAvailability  :: !(Maybe Text)
    , _vpdProcessingProgress            :: !(Maybe VideoProcessingDetailsProcessingProgress)
    , _vpdThumbnailsAvailability        :: !(Maybe Text)
    , _vpdTagSuggestionsAvailability    :: !(Maybe Text)
    , _vpdProcessingStatus              :: !(Maybe VideoProcessingDetailsProcessingStatus)
    , _vpdEditorSuggestionsAvailability :: !(Maybe Text)
    , _vpdFileDetailsAvailability       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProcessingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdProcessingFailureReason'
--
-- * 'vpdProcessingIssuesAvailability'
--
-- * 'vpdProcessingProgress'
--
-- * 'vpdThumbnailsAvailability'
--
-- * 'vpdTagSuggestionsAvailability'
--
-- * 'vpdProcessingStatus'
--
-- * 'vpdEditorSuggestionsAvailability'
--
-- * 'vpdFileDetailsAvailability'
videoProcessingDetails
    :: VideoProcessingDetails
videoProcessingDetails =
    VideoProcessingDetails'
    { _vpdProcessingFailureReason = Nothing
    , _vpdProcessingIssuesAvailability = Nothing
    , _vpdProcessingProgress = Nothing
    , _vpdThumbnailsAvailability = Nothing
    , _vpdTagSuggestionsAvailability = Nothing
    , _vpdProcessingStatus = Nothing
    , _vpdEditorSuggestionsAvailability = Nothing
    , _vpdFileDetailsAvailability = Nothing
    }

-- | The reason that YouTube failed to process the video. This property will
-- only have a value if the processingStatus property\'s value is failed.
vpdProcessingFailureReason :: Lens' VideoProcessingDetails (Maybe VideoProcessingDetailsProcessingFailureReason)
vpdProcessingFailureReason
  = lens _vpdProcessingFailureReason
      (\ s a -> s{_vpdProcessingFailureReason = a})

-- | This value indicates whether the video processing engine has generated
-- suggestions that might improve YouTube\'s ability to process the the
-- video, warnings that explain video processing problems, or errors that
-- cause video processing problems. You can retrieve these suggestions by
-- requesting the suggestions part in your videos.list() request.
vpdProcessingIssuesAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdProcessingIssuesAvailability
  = lens _vpdProcessingIssuesAvailability
      (\ s a -> s{_vpdProcessingIssuesAvailability = a})

-- | The processingProgress object contains information about the progress
-- YouTube has made in processing the video. The values are really only
-- relevant if the video\'s processing status is processing.
vpdProcessingProgress :: Lens' VideoProcessingDetails (Maybe VideoProcessingDetailsProcessingProgress)
vpdProcessingProgress
  = lens _vpdProcessingProgress
      (\ s a -> s{_vpdProcessingProgress = a})

-- | This value indicates whether thumbnail images have been generated for
-- the video.
vpdThumbnailsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdThumbnailsAvailability
  = lens _vpdThumbnailsAvailability
      (\ s a -> s{_vpdThumbnailsAvailability = a})

-- | This value indicates whether keyword (tag) suggestions are available for
-- the video. Tags can be added to a video\'s metadata to make it easier
-- for other users to find the video. You can retrieve these suggestions by
-- requesting the suggestions part in your videos.list() request.
vpdTagSuggestionsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdTagSuggestionsAvailability
  = lens _vpdTagSuggestionsAvailability
      (\ s a -> s{_vpdTagSuggestionsAvailability = a})

-- | The video\'s processing status. This value indicates whether YouTube was
-- able to process the video or if the video is still being processed.
vpdProcessingStatus :: Lens' VideoProcessingDetails (Maybe VideoProcessingDetailsProcessingStatus)
vpdProcessingStatus
  = lens _vpdProcessingStatus
      (\ s a -> s{_vpdProcessingStatus = a})

-- | This value indicates whether video editing suggestions, which might
-- improve video quality or the playback experience, are available for the
-- video. You can retrieve these suggestions by requesting the suggestions
-- part in your videos.list() request.
vpdEditorSuggestionsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdEditorSuggestionsAvailability
  = lens _vpdEditorSuggestionsAvailability
      (\ s a -> s{_vpdEditorSuggestionsAvailability = a})

-- | This value indicates whether file details are available for the uploaded
-- video. You can retrieve a video\'s file details by requesting the
-- fileDetails part in your videos.list() request.
vpdFileDetailsAvailability :: Lens' VideoProcessingDetails (Maybe Text)
vpdFileDetailsAvailability
  = lens _vpdFileDetailsAvailability
      (\ s a -> s{_vpdFileDetailsAvailability = a})

instance FromJSON VideoProcessingDetails where
        parseJSON
          = withObject "VideoProcessingDetails"
              (\ o ->
                 VideoProcessingDetails' <$>
                   (o .:? "processingFailureReason") <*>
                     (o .:? "processingIssuesAvailability")
                     <*> (o .:? "processingProgress")
                     <*> (o .:? "thumbnailsAvailability")
                     <*> (o .:? "tagSuggestionsAvailability")
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "editorSuggestionsAvailability")
                     <*> (o .:? "fileDetailsAvailability"))

instance ToJSON VideoProcessingDetails where
        toJSON VideoProcessingDetails'{..}
          = object
              (catMaybes
                 [("processingFailureReason" .=) <$>
                    _vpdProcessingFailureReason,
                  ("processingIssuesAvailability" .=) <$>
                    _vpdProcessingIssuesAvailability,
                  ("processingProgress" .=) <$> _vpdProcessingProgress,
                  ("thumbnailsAvailability" .=) <$>
                    _vpdThumbnailsAvailability,
                  ("tagSuggestionsAvailability" .=) <$>
                    _vpdTagSuggestionsAvailability,
                  ("processingStatus" .=) <$> _vpdProcessingStatus,
                  ("editorSuggestionsAvailability" .=) <$>
                    _vpdEditorSuggestionsAvailability,
                  ("fileDetailsAvailability" .=) <$>
                    _vpdFileDetailsAvailability])

-- | Basic details about a comment thread.
--
-- /See:/ 'commentThreadSnippet' smart constructor.
data CommentThreadSnippet = CommentThreadSnippet'
    { _ctsIsPublic        :: !(Maybe Bool)
    , _ctsChannelId       :: !(Maybe Text)
    , _ctsCanReply        :: !(Maybe Bool)
    , _ctsVideoId         :: !(Maybe Text)
    , _ctsTotalReplyCount :: !(Maybe (Textual Word32))
    , _ctsTopLevelComment :: !(Maybe Comment)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctsIsPublic'
--
-- * 'ctsChannelId'
--
-- * 'ctsCanReply'
--
-- * 'ctsVideoId'
--
-- * 'ctsTotalReplyCount'
--
-- * 'ctsTopLevelComment'
commentThreadSnippet
    :: CommentThreadSnippet
commentThreadSnippet =
    CommentThreadSnippet'
    { _ctsIsPublic = Nothing
    , _ctsChannelId = Nothing
    , _ctsCanReply = Nothing
    , _ctsVideoId = Nothing
    , _ctsTotalReplyCount = Nothing
    , _ctsTopLevelComment = Nothing
    }

-- | Whether the thread (and therefore all its comments) is visible to all
-- YouTube users.
ctsIsPublic :: Lens' CommentThreadSnippet (Maybe Bool)
ctsIsPublic
  = lens _ctsIsPublic (\ s a -> s{_ctsIsPublic = a})

-- | The YouTube channel the comments in the thread refer to or the channel
-- with the video the comments refer to. If video_id isn\'t set the
-- comments refer to the channel itself.
ctsChannelId :: Lens' CommentThreadSnippet (Maybe Text)
ctsChannelId
  = lens _ctsChannelId (\ s a -> s{_ctsChannelId = a})

-- | Whether the current viewer of the thread can reply to it. This is viewer
-- specific - other viewers may see a different value for this field.
ctsCanReply :: Lens' CommentThreadSnippet (Maybe Bool)
ctsCanReply
  = lens _ctsCanReply (\ s a -> s{_ctsCanReply = a})

-- | The ID of the video the comments refer to, if any. No video_id implies a
-- channel discussion comment.
ctsVideoId :: Lens' CommentThreadSnippet (Maybe Text)
ctsVideoId
  = lens _ctsVideoId (\ s a -> s{_ctsVideoId = a})

-- | The total number of replies (not including the top level comment).
ctsTotalReplyCount :: Lens' CommentThreadSnippet (Maybe Word32)
ctsTotalReplyCount
  = lens _ctsTotalReplyCount
      (\ s a -> s{_ctsTotalReplyCount = a})
      . mapping _Coerce

-- | The top level comment of this thread.
ctsTopLevelComment :: Lens' CommentThreadSnippet (Maybe Comment)
ctsTopLevelComment
  = lens _ctsTopLevelComment
      (\ s a -> s{_ctsTopLevelComment = a})

instance FromJSON CommentThreadSnippet where
        parseJSON
          = withObject "CommentThreadSnippet"
              (\ o ->
                 CommentThreadSnippet' <$>
                   (o .:? "isPublic") <*> (o .:? "channelId") <*>
                     (o .:? "canReply")
                     <*> (o .:? "videoId")
                     <*> (o .:? "totalReplyCount")
                     <*> (o .:? "topLevelComment"))

instance ToJSON CommentThreadSnippet where
        toJSON CommentThreadSnippet'{..}
          = object
              (catMaybes
                 [("isPublic" .=) <$> _ctsIsPublic,
                  ("channelId" .=) <$> _ctsChannelId,
                  ("canReply" .=) <$> _ctsCanReply,
                  ("videoId" .=) <$> _ctsVideoId,
                  ("totalReplyCount" .=) <$> _ctsTotalReplyCount,
                  ("topLevelComment" .=) <$> _ctsTopLevelComment])

--
-- /See:/ 'channelSectionListResponse' smart constructor.
data ChannelSectionListResponse = ChannelSectionListResponse'
    { _cslrEtag      :: !(Maybe Text)
    , _cslrKind      :: !Text
    , _cslrItems     :: !(Maybe [ChannelSection])
    , _cslrVisitorId :: !(Maybe Text)
    , _cslrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslrEtag'
--
-- * 'cslrKind'
--
-- * 'cslrItems'
--
-- * 'cslrVisitorId'
--
-- * 'cslrEventId'
channelSectionListResponse
    :: ChannelSectionListResponse
channelSectionListResponse =
    ChannelSectionListResponse'
    { _cslrEtag = Nothing
    , _cslrKind = "youtube#channelSectionListResponse"
    , _cslrItems = Nothing
    , _cslrVisitorId = Nothing
    , _cslrEventId = Nothing
    }

-- | Etag of this resource.
cslrEtag :: Lens' ChannelSectionListResponse (Maybe Text)
cslrEtag = lens _cslrEtag (\ s a -> s{_cslrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelSectionListResponse\".
cslrKind :: Lens' ChannelSectionListResponse Text
cslrKind = lens _cslrKind (\ s a -> s{_cslrKind = a})

-- | A list of ChannelSections that match the request criteria.
cslrItems :: Lens' ChannelSectionListResponse [ChannelSection]
cslrItems
  = lens _cslrItems (\ s a -> s{_cslrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
cslrVisitorId :: Lens' ChannelSectionListResponse (Maybe Text)
cslrVisitorId
  = lens _cslrVisitorId
      (\ s a -> s{_cslrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
cslrEventId :: Lens' ChannelSectionListResponse (Maybe Text)
cslrEventId
  = lens _cslrEventId (\ s a -> s{_cslrEventId = a})

instance FromJSON ChannelSectionListResponse where
        parseJSON
          = withObject "ChannelSectionListResponse"
              (\ o ->
                 ChannelSectionListResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!=
                        "youtube#channelSectionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON ChannelSectionListResponse where
        toJSON ChannelSectionListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cslrEtag,
                  Just ("kind" .= _cslrKind),
                  ("items" .=) <$> _cslrItems,
                  ("visitorId" .=) <$> _cslrVisitorId,
                  ("eventId" .=) <$> _cslrEventId])

-- | A videoAbuseReportReason resource identifies a reason that a video could
-- be reported as abusive. Video abuse report reasons are used with
-- video.ReportAbuse.
--
-- /See:/ 'videoAbuseReportReason' smart constructor.
data VideoAbuseReportReason = VideoAbuseReportReason'
    { _varrEtag    :: !(Maybe Text)
    , _varrSnippet :: !(Maybe VideoAbuseReportReasonSnippet)
    , _varrKind    :: !Text
    , _varrId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrEtag'
--
-- * 'varrSnippet'
--
-- * 'varrKind'
--
-- * 'varrId'
videoAbuseReportReason
    :: VideoAbuseReportReason
videoAbuseReportReason =
    VideoAbuseReportReason'
    { _varrEtag = Nothing
    , _varrSnippet = Nothing
    , _varrKind = "youtube#videoAbuseReportReason"
    , _varrId = Nothing
    }

-- | Etag of this resource.
varrEtag :: Lens' VideoAbuseReportReason (Maybe Text)
varrEtag = lens _varrEtag (\ s a -> s{_varrEtag = a})

-- | The snippet object contains basic details about the abuse report reason.
varrSnippet :: Lens' VideoAbuseReportReason (Maybe VideoAbuseReportReasonSnippet)
varrSnippet
  = lens _varrSnippet (\ s a -> s{_varrSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoAbuseReportReason\".
varrKind :: Lens' VideoAbuseReportReason Text
varrKind = lens _varrKind (\ s a -> s{_varrKind = a})

-- | The high-level, or primary, reason that the content is abusive. The
-- value is an abuse report reason ID.
varrId :: Lens' VideoAbuseReportReason (Maybe Text)
varrId = lens _varrId (\ s a -> s{_varrId = a})

instance FromJSON VideoAbuseReportReason where
        parseJSON
          = withObject "VideoAbuseReportReason"
              (\ o ->
                 VideoAbuseReportReason' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#videoAbuseReportReason")
                     <*> (o .:? "id"))

instance ToJSON VideoAbuseReportReason where
        toJSON VideoAbuseReportReason'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _varrEtag,
                  ("snippet" .=) <$> _varrSnippet,
                  Just ("kind" .= _varrKind), ("id" .=) <$> _varrId])

--
-- /See:/ 'liveStreamConfigurationIssue' smart constructor.
data LiveStreamConfigurationIssue = LiveStreamConfigurationIssue'
    { _lsciSeverity    :: !(Maybe LiveStreamConfigurationIssueSeverity)
    , _lsciReason      :: !(Maybe Text)
    , _lsciType        :: !(Maybe LiveStreamConfigurationIssueType)
    , _lsciDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamConfigurationIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsciSeverity'
--
-- * 'lsciReason'
--
-- * 'lsciType'
--
-- * 'lsciDescription'
liveStreamConfigurationIssue
    :: LiveStreamConfigurationIssue
liveStreamConfigurationIssue =
    LiveStreamConfigurationIssue'
    { _lsciSeverity = Nothing
    , _lsciReason = Nothing
    , _lsciType = Nothing
    , _lsciDescription = Nothing
    }

-- | How severe this issue is to the stream.
lsciSeverity :: Lens' LiveStreamConfigurationIssue (Maybe LiveStreamConfigurationIssueSeverity)
lsciSeverity
  = lens _lsciSeverity (\ s a -> s{_lsciSeverity = a})

-- | The short-form reason for this issue.
lsciReason :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciReason
  = lens _lsciReason (\ s a -> s{_lsciReason = a})

-- | The kind of error happening.
lsciType :: Lens' LiveStreamConfigurationIssue (Maybe LiveStreamConfigurationIssueType)
lsciType = lens _lsciType (\ s a -> s{_lsciType = a})

-- | The long-form description of the issue and how to resolve it.
lsciDescription :: Lens' LiveStreamConfigurationIssue (Maybe Text)
lsciDescription
  = lens _lsciDescription
      (\ s a -> s{_lsciDescription = a})

instance FromJSON LiveStreamConfigurationIssue where
        parseJSON
          = withObject "LiveStreamConfigurationIssue"
              (\ o ->
                 LiveStreamConfigurationIssue' <$>
                   (o .:? "severity") <*> (o .:? "reason") <*>
                     (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON LiveStreamConfigurationIssue where
        toJSON LiveStreamConfigurationIssue'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _lsciSeverity,
                  ("reason" .=) <$> _lsciReason,
                  ("type" .=) <$> _lsciType,
                  ("description" .=) <$> _lsciDescription])

-- | A liveChatMessage resource represents a chat message in a YouTube Live
-- Chat.
--
-- /See:/ 'liveChatMessage' smart constructor.
data LiveChatMessage = LiveChatMessage'
    { _lcmEtag          :: !(Maybe Text)
    , _lcmSnippet       :: !(Maybe LiveChatMessageSnippet)
    , _lcmKind          :: !Text
    , _lcmAuthorDetails :: !(Maybe LiveChatMessageAuthorDetails)
    , _lcmId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmEtag'
--
-- * 'lcmSnippet'
--
-- * 'lcmKind'
--
-- * 'lcmAuthorDetails'
--
-- * 'lcmId'
liveChatMessage
    :: LiveChatMessage
liveChatMessage =
    LiveChatMessage'
    { _lcmEtag = Nothing
    , _lcmSnippet = Nothing
    , _lcmKind = "youtube#liveChatMessage"
    , _lcmAuthorDetails = Nothing
    , _lcmId = Nothing
    }

-- | Etag of this resource.
lcmEtag :: Lens' LiveChatMessage (Maybe Text)
lcmEtag = lens _lcmEtag (\ s a -> s{_lcmEtag = a})

-- | The snippet object contains basic details about the message.
lcmSnippet :: Lens' LiveChatMessage (Maybe LiveChatMessageSnippet)
lcmSnippet
  = lens _lcmSnippet (\ s a -> s{_lcmSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveChatMessage\".
lcmKind :: Lens' LiveChatMessage Text
lcmKind = lens _lcmKind (\ s a -> s{_lcmKind = a})

-- | The authorDetails object contains basic details about the user that
-- posted this message.
lcmAuthorDetails :: Lens' LiveChatMessage (Maybe LiveChatMessageAuthorDetails)
lcmAuthorDetails
  = lens _lcmAuthorDetails
      (\ s a -> s{_lcmAuthorDetails = a})

-- | The ID that YouTube assigns to uniquely identify the message.
lcmId :: Lens' LiveChatMessage (Maybe Text)
lcmId = lens _lcmId (\ s a -> s{_lcmId = a})

instance FromJSON LiveChatMessage where
        parseJSON
          = withObject "LiveChatMessage"
              (\ o ->
                 LiveChatMessage' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#liveChatMessage")
                     <*> (o .:? "authorDetails")
                     <*> (o .:? "id"))

instance ToJSON LiveChatMessage where
        toJSON LiveChatMessage'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lcmEtag,
                  ("snippet" .=) <$> _lcmSnippet,
                  Just ("kind" .= _lcmKind),
                  ("authorDetails" .=) <$> _lcmAuthorDetails,
                  ("id" .=) <$> _lcmId])

-- | A channel resource contains information about a YouTube channel.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel'
    { _chaStatus              :: !(Maybe ChannelStatus)
    , _chaEtag                :: !(Maybe Text)
    , _chaAuditDetails        :: !(Maybe ChannelAuditDetails)
    , _chaContentOwnerDetails :: !(Maybe ChannelContentOwnerDetails)
    , _chaSnippet             :: !(Maybe ChannelSnippet)
    , _chaKind                :: !Text
    , _chaTopicDetails        :: !(Maybe ChannelTopicDetails)
    , _chaContentDetails      :: !(Maybe ChannelContentDetails)
    , _chaConversionPings     :: !(Maybe ChannelConversionPings)
    , _chaBrandingSettings    :: !(Maybe ChannelBrandingSettings)
    , _chaId                  :: !(Maybe Text)
    , _chaInvideoPromotion    :: !(Maybe InvideoPromotion)
    , _chaStatistics          :: !(Maybe ChannelStatistics)
    , _chaLocalizations       :: !(Maybe ChannelLocalizations)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaStatus'
--
-- * 'chaEtag'
--
-- * 'chaAuditDetails'
--
-- * 'chaContentOwnerDetails'
--
-- * 'chaSnippet'
--
-- * 'chaKind'
--
-- * 'chaTopicDetails'
--
-- * 'chaContentDetails'
--
-- * 'chaConversionPings'
--
-- * 'chaBrandingSettings'
--
-- * 'chaId'
--
-- * 'chaInvideoPromotion'
--
-- * 'chaStatistics'
--
-- * 'chaLocalizations'
channel
    :: Channel
channel =
    Channel'
    { _chaStatus = Nothing
    , _chaEtag = Nothing
    , _chaAuditDetails = Nothing
    , _chaContentOwnerDetails = Nothing
    , _chaSnippet = Nothing
    , _chaKind = "youtube#channel"
    , _chaTopicDetails = Nothing
    , _chaContentDetails = Nothing
    , _chaConversionPings = Nothing
    , _chaBrandingSettings = Nothing
    , _chaId = Nothing
    , _chaInvideoPromotion = Nothing
    , _chaStatistics = Nothing
    , _chaLocalizations = Nothing
    }

-- | The status object encapsulates information about the privacy status of
-- the channel.
chaStatus :: Lens' Channel (Maybe ChannelStatus)
chaStatus
  = lens _chaStatus (\ s a -> s{_chaStatus = a})

-- | Etag of this resource.
chaEtag :: Lens' Channel (Maybe Text)
chaEtag = lens _chaEtag (\ s a -> s{_chaEtag = a})

-- | The auditionDetails object encapsulates channel data that is relevant
-- for YouTube Partners during the audition process.
chaAuditDetails :: Lens' Channel (Maybe ChannelAuditDetails)
chaAuditDetails
  = lens _chaAuditDetails
      (\ s a -> s{_chaAuditDetails = a})

-- | The contentOwnerDetails object encapsulates channel data that is
-- relevant for YouTube Partners linked with the channel.
chaContentOwnerDetails :: Lens' Channel (Maybe ChannelContentOwnerDetails)
chaContentOwnerDetails
  = lens _chaContentOwnerDetails
      (\ s a -> s{_chaContentOwnerDetails = a})

-- | The snippet object contains basic details about the channel, such as its
-- title, description, and thumbnail images.
chaSnippet :: Lens' Channel (Maybe ChannelSnippet)
chaSnippet
  = lens _chaSnippet (\ s a -> s{_chaSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channel\".
chaKind :: Lens' Channel Text
chaKind = lens _chaKind (\ s a -> s{_chaKind = a})

-- | The topicDetails object encapsulates information about Freebase topics
-- associated with the channel.
chaTopicDetails :: Lens' Channel (Maybe ChannelTopicDetails)
chaTopicDetails
  = lens _chaTopicDetails
      (\ s a -> s{_chaTopicDetails = a})

-- | The contentDetails object encapsulates information about the channel\'s
-- content.
chaContentDetails :: Lens' Channel (Maybe ChannelContentDetails)
chaContentDetails
  = lens _chaContentDetails
      (\ s a -> s{_chaContentDetails = a})

-- | The conversionPings object encapsulates information about conversion
-- pings that need to be respected by the channel.
chaConversionPings :: Lens' Channel (Maybe ChannelConversionPings)
chaConversionPings
  = lens _chaConversionPings
      (\ s a -> s{_chaConversionPings = a})

-- | The brandingSettings object encapsulates information about the branding
-- of the channel.
chaBrandingSettings :: Lens' Channel (Maybe ChannelBrandingSettings)
chaBrandingSettings
  = lens _chaBrandingSettings
      (\ s a -> s{_chaBrandingSettings = a})

-- | The ID that YouTube uses to uniquely identify the channel.
chaId :: Lens' Channel (Maybe Text)
chaId = lens _chaId (\ s a -> s{_chaId = a})

-- | The invideoPromotion object encapsulates information about promotion
-- campaign associated with the channel.
chaInvideoPromotion :: Lens' Channel (Maybe InvideoPromotion)
chaInvideoPromotion
  = lens _chaInvideoPromotion
      (\ s a -> s{_chaInvideoPromotion = a})

-- | The statistics object encapsulates statistics for the channel.
chaStatistics :: Lens' Channel (Maybe ChannelStatistics)
chaStatistics
  = lens _chaStatistics
      (\ s a -> s{_chaStatistics = a})

-- | Localizations for different languages
chaLocalizations :: Lens' Channel (Maybe ChannelLocalizations)
chaLocalizations
  = lens _chaLocalizations
      (\ s a -> s{_chaLocalizations = a})

instance FromJSON Channel where
        parseJSON
          = withObject "Channel"
              (\ o ->
                 Channel' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "auditDetails")
                     <*> (o .:? "contentOwnerDetails")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#channel")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "conversionPings")
                     <*> (o .:? "brandingSettings")
                     <*> (o .:? "id")
                     <*> (o .:? "invideoPromotion")
                     <*> (o .:? "statistics")
                     <*> (o .:? "localizations"))

instance ToJSON Channel where
        toJSON Channel'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _chaStatus,
                  ("etag" .=) <$> _chaEtag,
                  ("auditDetails" .=) <$> _chaAuditDetails,
                  ("contentOwnerDetails" .=) <$>
                    _chaContentOwnerDetails,
                  ("snippet" .=) <$> _chaSnippet,
                  Just ("kind" .= _chaKind),
                  ("topicDetails" .=) <$> _chaTopicDetails,
                  ("contentDetails" .=) <$> _chaContentDetails,
                  ("conversionPings" .=) <$> _chaConversionPings,
                  ("brandingSettings" .=) <$> _chaBrandingSettings,
                  ("id" .=) <$> _chaId,
                  ("invideoPromotion" .=) <$> _chaInvideoPromotion,
                  ("statistics" .=) <$> _chaStatistics,
                  ("localizations" .=) <$> _chaLocalizations])

-- | ChannelSection targeting setting.
--
-- /See:/ 'channelSectionTargeting' smart constructor.
data ChannelSectionTargeting = ChannelSectionTargeting'
    { _cstRegions   :: !(Maybe [Text])
    , _cstCountries :: !(Maybe [Text])
    , _cstLanguages :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionTargeting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cstRegions'
--
-- * 'cstCountries'
--
-- * 'cstLanguages'
channelSectionTargeting
    :: ChannelSectionTargeting
channelSectionTargeting =
    ChannelSectionTargeting'
    { _cstRegions = Nothing
    , _cstCountries = Nothing
    , _cstLanguages = Nothing
    }

-- | The region the channel section is targeting.
cstRegions :: Lens' ChannelSectionTargeting [Text]
cstRegions
  = lens _cstRegions (\ s a -> s{_cstRegions = a}) .
      _Default
      . _Coerce

-- | The country the channel section is targeting.
cstCountries :: Lens' ChannelSectionTargeting [Text]
cstCountries
  = lens _cstCountries (\ s a -> s{_cstCountries = a})
      . _Default
      . _Coerce

-- | The language the channel section is targeting.
cstLanguages :: Lens' ChannelSectionTargeting [Text]
cstLanguages
  = lens _cstLanguages (\ s a -> s{_cstLanguages = a})
      . _Default
      . _Coerce

instance FromJSON ChannelSectionTargeting where
        parseJSON
          = withObject "ChannelSectionTargeting"
              (\ o ->
                 ChannelSectionTargeting' <$>
                   (o .:? "regions" .!= mempty) <*>
                     (o .:? "countries" .!= mempty)
                     <*> (o .:? "languages" .!= mempty))

instance ToJSON ChannelSectionTargeting where
        toJSON ChannelSectionTargeting'{..}
          = object
              (catMaybes
                 [("regions" .=) <$> _cstRegions,
                  ("countries" .=) <$> _cstCountries,
                  ("languages" .=) <$> _cstLanguages])

--
-- /See:/ 'liveStreamListResponse' smart constructor.
data LiveStreamListResponse = LiveStreamListResponse'
    { _lslrEtag            :: !(Maybe Text)
    , _lslrTokenPagination :: !(Maybe TokenPagination)
    , _lslrNextPageToken   :: !(Maybe Text)
    , _lslrPageInfo        :: !(Maybe PageInfo)
    , _lslrKind            :: !Text
    , _lslrItems           :: !(Maybe [LiveStream])
    , _lslrVisitorId       :: !(Maybe Text)
    , _lslrEventId         :: !(Maybe Text)
    , _lslrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslrEtag'
--
-- * 'lslrTokenPagination'
--
-- * 'lslrNextPageToken'
--
-- * 'lslrPageInfo'
--
-- * 'lslrKind'
--
-- * 'lslrItems'
--
-- * 'lslrVisitorId'
--
-- * 'lslrEventId'
--
-- * 'lslrPrevPageToken'
liveStreamListResponse
    :: LiveStreamListResponse
liveStreamListResponse =
    LiveStreamListResponse'
    { _lslrEtag = Nothing
    , _lslrTokenPagination = Nothing
    , _lslrNextPageToken = Nothing
    , _lslrPageInfo = Nothing
    , _lslrKind = "youtube#liveStreamListResponse"
    , _lslrItems = Nothing
    , _lslrVisitorId = Nothing
    , _lslrEventId = Nothing
    , _lslrPrevPageToken = Nothing
    }

-- | Etag of this resource.
lslrEtag :: Lens' LiveStreamListResponse (Maybe Text)
lslrEtag = lens _lslrEtag (\ s a -> s{_lslrEtag = a})

lslrTokenPagination :: Lens' LiveStreamListResponse (Maybe TokenPagination)
lslrTokenPagination
  = lens _lslrTokenPagination
      (\ s a -> s{_lslrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
lslrNextPageToken :: Lens' LiveStreamListResponse (Maybe Text)
lslrNextPageToken
  = lens _lslrNextPageToken
      (\ s a -> s{_lslrNextPageToken = a})

lslrPageInfo :: Lens' LiveStreamListResponse (Maybe PageInfo)
lslrPageInfo
  = lens _lslrPageInfo (\ s a -> s{_lslrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveStreamListResponse\".
lslrKind :: Lens' LiveStreamListResponse Text
lslrKind = lens _lslrKind (\ s a -> s{_lslrKind = a})

-- | A list of live streams that match the request criteria.
lslrItems :: Lens' LiveStreamListResponse [LiveStream]
lslrItems
  = lens _lslrItems (\ s a -> s{_lslrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
lslrVisitorId :: Lens' LiveStreamListResponse (Maybe Text)
lslrVisitorId
  = lens _lslrVisitorId
      (\ s a -> s{_lslrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
lslrEventId :: Lens' LiveStreamListResponse (Maybe Text)
lslrEventId
  = lens _lslrEventId (\ s a -> s{_lslrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
lslrPrevPageToken :: Lens' LiveStreamListResponse (Maybe Text)
lslrPrevPageToken
  = lens _lslrPrevPageToken
      (\ s a -> s{_lslrPrevPageToken = a})

instance FromJSON LiveStreamListResponse where
        parseJSON
          = withObject "LiveStreamListResponse"
              (\ o ->
                 LiveStreamListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#liveStreamListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON LiveStreamListResponse where
        toJSON LiveStreamListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _lslrEtag,
                  ("tokenPagination" .=) <$> _lslrTokenPagination,
                  ("nextPageToken" .=) <$> _lslrNextPageToken,
                  ("pageInfo" .=) <$> _lslrPageInfo,
                  Just ("kind" .= _lslrKind),
                  ("items" .=) <$> _lslrItems,
                  ("visitorId" .=) <$> _lslrVisitorId,
                  ("eventId" .=) <$> _lslrEventId,
                  ("prevPageToken" .=) <$> _lslrPrevPageToken])

-- | Localizations for different languages
--
-- /See:/ 'channelLocalizations' smart constructor.
newtype ChannelLocalizations = ChannelLocalizations'
    { _clAddtional :: HashMap Text ChannelLocalization
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelLocalizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clAddtional'
channelLocalizations
    :: HashMap Text ChannelLocalization -- ^ 'clAddtional'
    -> ChannelLocalizations
channelLocalizations pClAddtional_ =
    ChannelLocalizations'
    { _clAddtional = _Coerce # pClAddtional_
    }

-- | The language tag, using string since map_key require simple types.
clAddtional :: Lens' ChannelLocalizations (HashMap Text ChannelLocalization)
clAddtional
  = lens _clAddtional (\ s a -> s{_clAddtional = a}) .
      _Coerce

instance FromJSON ChannelLocalizations where
        parseJSON
          = withObject "ChannelLocalizations"
              (\ o ->
                 ChannelLocalizations' <$> (parseJSONObject o))

instance ToJSON ChannelLocalizations where
        toJSON = toJSON . _clAddtional

-- | Basic details about a playlist, including title, description and
-- thumbnails.
--
-- /See:/ 'playListSnippet' smart constructor.
data PlayListSnippet = PlayListSnippet'
    { _plsPublishedAt     :: !(Maybe DateTime')
    , _plsChannelTitle    :: !(Maybe Text)
    , _plsChannelId       :: !(Maybe Text)
    , _plsThumbnails      :: !(Maybe ThumbnailDetails)
    , _plsLocalized       :: !(Maybe PlayListLocalization)
    , _plsTitle           :: !(Maybe Text)
    , _plsDescription     :: !(Maybe Text)
    , _plsTags            :: !(Maybe [Text])
    , _plsDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsPublishedAt'
--
-- * 'plsChannelTitle'
--
-- * 'plsChannelId'
--
-- * 'plsThumbnails'
--
-- * 'plsLocalized'
--
-- * 'plsTitle'
--
-- * 'plsDescription'
--
-- * 'plsTags'
--
-- * 'plsDefaultLanguage'
playListSnippet
    :: PlayListSnippet
playListSnippet =
    PlayListSnippet'
    { _plsPublishedAt = Nothing
    , _plsChannelTitle = Nothing
    , _plsChannelId = Nothing
    , _plsThumbnails = Nothing
    , _plsLocalized = Nothing
    , _plsTitle = Nothing
    , _plsDescription = Nothing
    , _plsTags = Nothing
    , _plsDefaultLanguage = Nothing
    }

-- | The date and time that the playlist was created. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
plsPublishedAt :: Lens' PlayListSnippet (Maybe UTCTime)
plsPublishedAt
  = lens _plsPublishedAt
      (\ s a -> s{_plsPublishedAt = a})
      . mapping _DateTime

-- | The channel title of the channel that the video belongs to.
plsChannelTitle :: Lens' PlayListSnippet (Maybe Text)
plsChannelTitle
  = lens _plsChannelTitle
      (\ s a -> s{_plsChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel that published
-- the playlist.
plsChannelId :: Lens' PlayListSnippet (Maybe Text)
plsChannelId
  = lens _plsChannelId (\ s a -> s{_plsChannelId = a})

-- | A map of thumbnail images associated with the playlist. For each object
-- in the map, the key is the name of the thumbnail image, and the value is
-- an object that contains other information about the thumbnail.
plsThumbnails :: Lens' PlayListSnippet (Maybe ThumbnailDetails)
plsThumbnails
  = lens _plsThumbnails
      (\ s a -> s{_plsThumbnails = a})

-- | Localized title and description, read-only.
plsLocalized :: Lens' PlayListSnippet (Maybe PlayListLocalization)
plsLocalized
  = lens _plsLocalized (\ s a -> s{_plsLocalized = a})

-- | The playlist\'s title.
plsTitle :: Lens' PlayListSnippet (Maybe Text)
plsTitle = lens _plsTitle (\ s a -> s{_plsTitle = a})

-- | The playlist\'s description.
plsDescription :: Lens' PlayListSnippet (Maybe Text)
plsDescription
  = lens _plsDescription
      (\ s a -> s{_plsDescription = a})

-- | Keyword tags associated with the playlist.
plsTags :: Lens' PlayListSnippet [Text]
plsTags
  = lens _plsTags (\ s a -> s{_plsTags = a}) . _Default
      . _Coerce

-- | The language of the playlist\'s default title and description.
plsDefaultLanguage :: Lens' PlayListSnippet (Maybe Text)
plsDefaultLanguage
  = lens _plsDefaultLanguage
      (\ s a -> s{_plsDefaultLanguage = a})

instance FromJSON PlayListSnippet where
        parseJSON
          = withObject "PlayListSnippet"
              (\ o ->
                 PlayListSnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON PlayListSnippet where
        toJSON PlayListSnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _plsPublishedAt,
                  ("channelTitle" .=) <$> _plsChannelTitle,
                  ("channelId" .=) <$> _plsChannelId,
                  ("thumbnails" .=) <$> _plsThumbnails,
                  ("localized" .=) <$> _plsLocalized,
                  ("title" .=) <$> _plsTitle,
                  ("description" .=) <$> _plsDescription,
                  ("tags" .=) <$> _plsTags,
                  ("defaultLanguage" .=) <$> _plsDefaultLanguage])

--
-- /See:/ 'videoGetRatingResponse' smart constructor.
data VideoGetRatingResponse = VideoGetRatingResponse'
    { _vgrrEtag      :: !(Maybe Text)
    , _vgrrKind      :: !Text
    , _vgrrItems     :: !(Maybe [VideoRating])
    , _vgrrVisitorId :: !(Maybe Text)
    , _vgrrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoGetRatingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgrrEtag'
--
-- * 'vgrrKind'
--
-- * 'vgrrItems'
--
-- * 'vgrrVisitorId'
--
-- * 'vgrrEventId'
videoGetRatingResponse
    :: VideoGetRatingResponse
videoGetRatingResponse =
    VideoGetRatingResponse'
    { _vgrrEtag = Nothing
    , _vgrrKind = "youtube#videoGetRatingResponse"
    , _vgrrItems = Nothing
    , _vgrrVisitorId = Nothing
    , _vgrrEventId = Nothing
    }

-- | Etag of this resource.
vgrrEtag :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrEtag = lens _vgrrEtag (\ s a -> s{_vgrrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoGetRatingResponse\".
vgrrKind :: Lens' VideoGetRatingResponse Text
vgrrKind = lens _vgrrKind (\ s a -> s{_vgrrKind = a})

-- | A list of ratings that match the request criteria.
vgrrItems :: Lens' VideoGetRatingResponse [VideoRating]
vgrrItems
  = lens _vgrrItems (\ s a -> s{_vgrrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
vgrrVisitorId :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrVisitorId
  = lens _vgrrVisitorId
      (\ s a -> s{_vgrrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
vgrrEventId :: Lens' VideoGetRatingResponse (Maybe Text)
vgrrEventId
  = lens _vgrrEventId (\ s a -> s{_vgrrEventId = a})

instance FromJSON VideoGetRatingResponse where
        parseJSON
          = withObject "VideoGetRatingResponse"
              (\ o ->
                 VideoGetRatingResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#videoGetRatingResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON VideoGetRatingResponse where
        toJSON VideoGetRatingResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vgrrEtag,
                  Just ("kind" .= _vgrrKind),
                  ("items" .=) <$> _vgrrItems,
                  ("visitorId" .=) <$> _vgrrVisitorId,
                  ("eventId" .=) <$> _vgrrEventId])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoAbuseReportReasonSnippet' smart constructor.
data VideoAbuseReportReasonSnippet = VideoAbuseReportReasonSnippet'
    { _varrsSecondaryReasons :: !(Maybe [VideoAbuseReportSecondaryReason])
    , _varrsLabel            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportReasonSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varrsSecondaryReasons'
--
-- * 'varrsLabel'
videoAbuseReportReasonSnippet
    :: VideoAbuseReportReasonSnippet
videoAbuseReportReasonSnippet =
    VideoAbuseReportReasonSnippet'
    { _varrsSecondaryReasons = Nothing
    , _varrsLabel = Nothing
    }

-- | The secondary reasons associated with this reason, if any are available.
-- (There might be 0 or more.)
varrsSecondaryReasons :: Lens' VideoAbuseReportReasonSnippet [VideoAbuseReportSecondaryReason]
varrsSecondaryReasons
  = lens _varrsSecondaryReasons
      (\ s a -> s{_varrsSecondaryReasons = a})
      . _Default
      . _Coerce

-- | The localized label belonging to this abuse report reason.
varrsLabel :: Lens' VideoAbuseReportReasonSnippet (Maybe Text)
varrsLabel
  = lens _varrsLabel (\ s a -> s{_varrsLabel = a})

instance FromJSON VideoAbuseReportReasonSnippet where
        parseJSON
          = withObject "VideoAbuseReportReasonSnippet"
              (\ o ->
                 VideoAbuseReportReasonSnippet' <$>
                   (o .:? "secondaryReasons" .!= mempty) <*>
                     (o .:? "label"))

instance ToJSON VideoAbuseReportReasonSnippet where
        toJSON VideoAbuseReportReasonSnippet'{..}
          = object
              (catMaybes
                 [("secondaryReasons" .=) <$> _varrsSecondaryReasons,
                  ("label" .=) <$> _varrsLabel])

-- | A caption resource represents a YouTube caption track. A caption track
-- is associated with exactly one YouTube video.
--
-- /See:/ 'caption' smart constructor.
data Caption = Caption'
    { _capEtag    :: !(Maybe Text)
    , _capSnippet :: !(Maybe CaptionSnippet)
    , _capKind    :: !Text
    , _capId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Caption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capEtag'
--
-- * 'capSnippet'
--
-- * 'capKind'
--
-- * 'capId'
caption
    :: Caption
caption =
    Caption'
    { _capEtag = Nothing
    , _capSnippet = Nothing
    , _capKind = "youtube#caption"
    , _capId = Nothing
    }

-- | Etag of this resource.
capEtag :: Lens' Caption (Maybe Text)
capEtag = lens _capEtag (\ s a -> s{_capEtag = a})

-- | The snippet object contains basic details about the caption.
capSnippet :: Lens' Caption (Maybe CaptionSnippet)
capSnippet
  = lens _capSnippet (\ s a -> s{_capSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#caption\".
capKind :: Lens' Caption Text
capKind = lens _capKind (\ s a -> s{_capKind = a})

-- | The ID that YouTube uses to uniquely identify the caption track.
capId :: Lens' Caption (Maybe Text)
capId = lens _capId (\ s a -> s{_capId = a})

instance FromJSON Caption where
        parseJSON
          = withObject "Caption"
              (\ o ->
                 Caption' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#caption")
                     <*> (o .:? "id"))

instance ToJSON Caption where
        toJSON Caption'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _capEtag,
                  ("snippet" .=) <$> _capSnippet,
                  Just ("kind" .= _capKind), ("id" .=) <$> _capId])

-- | DEPRECATED Region restriction of the video.
--
-- /See:/ 'videoContentDetailsRegionRestriction' smart constructor.
data VideoContentDetailsRegionRestriction = VideoContentDetailsRegionRestriction'
    { _vcdrrAllowed :: !(Maybe [Text])
    , _vcdrrBlocked :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoContentDetailsRegionRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcdrrAllowed'
--
-- * 'vcdrrBlocked'
videoContentDetailsRegionRestriction
    :: VideoContentDetailsRegionRestriction
videoContentDetailsRegionRestriction =
    VideoContentDetailsRegionRestriction'
    { _vcdrrAllowed = Nothing
    , _vcdrrBlocked = Nothing
    }

-- | A list of region codes that identify countries where the video is
-- viewable. If this property is present and a country is not listed in its
-- value, then the video is blocked from appearing in that country. If this
-- property is present and contains an empty list, the video is blocked in
-- all countries.
vcdrrAllowed :: Lens' VideoContentDetailsRegionRestriction [Text]
vcdrrAllowed
  = lens _vcdrrAllowed (\ s a -> s{_vcdrrAllowed = a})
      . _Default
      . _Coerce

-- | A list of region codes that identify countries where the video is
-- blocked. If this property is present and a country is not listed in its
-- value, then the video is viewable in that country. If this property is
-- present and contains an empty list, the video is viewable in all
-- countries.
vcdrrBlocked :: Lens' VideoContentDetailsRegionRestriction [Text]
vcdrrBlocked
  = lens _vcdrrBlocked (\ s a -> s{_vcdrrBlocked = a})
      . _Default
      . _Coerce

instance FromJSON
         VideoContentDetailsRegionRestriction where
        parseJSON
          = withObject "VideoContentDetailsRegionRestriction"
              (\ o ->
                 VideoContentDetailsRegionRestriction' <$>
                   (o .:? "allowed" .!= mempty) <*>
                     (o .:? "blocked" .!= mempty))

instance ToJSON VideoContentDetailsRegionRestriction
         where
        toJSON VideoContentDetailsRegionRestriction'{..}
          = object
              (catMaybes
                 [("allowed" .=) <$> _vcdrrAllowed,
                  ("blocked" .=) <$> _vcdrrBlocked])

-- | Describes a temporal position of a visual widget inside a video.
--
-- /See:/ 'invideoTiming' smart constructor.
data InvideoTiming = InvideoTiming'
    { _itDurationMs :: !(Maybe (Textual Word64))
    , _itOffSetMs   :: !(Maybe (Textual Word64))
    , _itType       :: !(Maybe InvideoTimingType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoTiming' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itDurationMs'
--
-- * 'itOffSetMs'
--
-- * 'itType'
invideoTiming
    :: InvideoTiming
invideoTiming =
    InvideoTiming'
    { _itDurationMs = Nothing
    , _itOffSetMs = Nothing
    , _itType = Nothing
    }

-- | Defines the duration in milliseconds for which the promotion should be
-- displayed. If missing, the client should use the default.
itDurationMs :: Lens' InvideoTiming (Maybe Word64)
itDurationMs
  = lens _itDurationMs (\ s a -> s{_itDurationMs = a})
      . mapping _Coerce

-- | Defines the time at which the promotion will appear. Depending on the
-- value of type the value of the offsetMs field will represent a time
-- offset from the start or from the end of the video, expressed in
-- milliseconds.
itOffSetMs :: Lens' InvideoTiming (Maybe Word64)
itOffSetMs
  = lens _itOffSetMs (\ s a -> s{_itOffSetMs = a}) .
      mapping _Coerce

-- | Describes a timing type. If the value is offsetFromStart, then the
-- offsetMs field represents an offset from the start of the video. If the
-- value is offsetFromEnd, then the offsetMs field represents an offset
-- from the end of the video.
itType :: Lens' InvideoTiming (Maybe InvideoTimingType)
itType = lens _itType (\ s a -> s{_itType = a})

instance FromJSON InvideoTiming where
        parseJSON
          = withObject "InvideoTiming"
              (\ o ->
                 InvideoTiming' <$>
                   (o .:? "durationMs") <*> (o .:? "offsetMs") <*>
                     (o .:? "type"))

instance ToJSON InvideoTiming where
        toJSON InvideoTiming'{..}
          = object
              (catMaybes
                 [("durationMs" .=) <$> _itDurationMs,
                  ("offsetMs" .=) <$> _itOffSetMs,
                  ("type" .=) <$> _itType])

-- | Localizations for different languages
--
-- /See:/ 'playListLocalizations' smart constructor.
newtype PlayListLocalizations = PlayListLocalizations'
    { _pllAddtional :: HashMap Text PlayListLocalization
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListLocalizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllAddtional'
playListLocalizations
    :: HashMap Text PlayListLocalization -- ^ 'pllAddtional'
    -> PlayListLocalizations
playListLocalizations pPllAddtional_ =
    PlayListLocalizations'
    { _pllAddtional = _Coerce # pPllAddtional_
    }

-- | The language tag, using string since map_key require simple types.
pllAddtional :: Lens' PlayListLocalizations (HashMap Text PlayListLocalization)
pllAddtional
  = lens _pllAddtional (\ s a -> s{_pllAddtional = a})
      . _Coerce

instance FromJSON PlayListLocalizations where
        parseJSON
          = withObject "PlayListLocalizations"
              (\ o ->
                 PlayListLocalizations' <$> (parseJSONObject o))

instance ToJSON PlayListLocalizations where
        toJSON = toJSON . _pllAddtional

-- | Video processing progress and completion time estimate.
--
-- /See:/ 'videoProcessingDetailsProcessingProgress' smart constructor.
data VideoProcessingDetailsProcessingProgress = VideoProcessingDetailsProcessingProgress'
    { _vpdppTimeLeftMs     :: !(Maybe (Textual Word64))
    , _vpdppPartsTotal     :: !(Maybe (Textual Word64))
    , _vpdppPartsProcessed :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProcessingDetailsProcessingProgress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdppTimeLeftMs'
--
-- * 'vpdppPartsTotal'
--
-- * 'vpdppPartsProcessed'
videoProcessingDetailsProcessingProgress
    :: VideoProcessingDetailsProcessingProgress
videoProcessingDetailsProcessingProgress =
    VideoProcessingDetailsProcessingProgress'
    { _vpdppTimeLeftMs = Nothing
    , _vpdppPartsTotal = Nothing
    , _vpdppPartsProcessed = Nothing
    }

-- | An estimate of the amount of time, in millseconds, that YouTube needs to
-- finish processing the video.
vpdppTimeLeftMs :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppTimeLeftMs
  = lens _vpdppTimeLeftMs
      (\ s a -> s{_vpdppTimeLeftMs = a})
      . mapping _Coerce

-- | An estimate of the total number of parts that need to be processed for
-- the video. The number may be updated with more precise estimates while
-- YouTube processes the video.
vpdppPartsTotal :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppPartsTotal
  = lens _vpdppPartsTotal
      (\ s a -> s{_vpdppPartsTotal = a})
      . mapping _Coerce

-- | The number of parts of the video that YouTube has already processed. You
-- can estimate the percentage of the video that YouTube has already
-- processed by calculating: 100 * parts_processed \/ parts_total Note that
-- since the estimated number of parts could increase without a
-- corresponding increase in the number of parts that have already been
-- processed, it is possible that the calculated progress could
-- periodically decrease while YouTube processes a video.
vpdppPartsProcessed :: Lens' VideoProcessingDetailsProcessingProgress (Maybe Word64)
vpdppPartsProcessed
  = lens _vpdppPartsProcessed
      (\ s a -> s{_vpdppPartsProcessed = a})
      . mapping _Coerce

instance FromJSON
         VideoProcessingDetailsProcessingProgress where
        parseJSON
          = withObject
              "VideoProcessingDetailsProcessingProgress"
              (\ o ->
                 VideoProcessingDetailsProcessingProgress' <$>
                   (o .:? "timeLeftMs") <*> (o .:? "partsTotal") <*>
                     (o .:? "partsProcessed"))

instance ToJSON
         VideoProcessingDetailsProcessingProgress where
        toJSON VideoProcessingDetailsProcessingProgress'{..}
          = object
              (catMaybes
                 [("timeLeftMs" .=) <$> _vpdppTimeLeftMs,
                  ("partsTotal" .=) <$> _vpdppPartsTotal,
                  ("partsProcessed" .=) <$> _vpdppPartsProcessed])

-- | Basic details about a channel, including title, description and
-- thumbnails. Next available id: 15.
--
-- /See:/ 'channelSnippet' smart constructor.
data ChannelSnippet = ChannelSnippet'
    { _csPublishedAt     :: !(Maybe DateTime')
    , _csCountry         :: !(Maybe Text)
    , _csThumbnails      :: !(Maybe ThumbnailDetails)
    , _csLocalized       :: !(Maybe ChannelLocalization)
    , _csCustomURL       :: !(Maybe Text)
    , _csTitle           :: !(Maybe Text)
    , _csDescription     :: !(Maybe Text)
    , _csDefaultLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csPublishedAt'
--
-- * 'csCountry'
--
-- * 'csThumbnails'
--
-- * 'csLocalized'
--
-- * 'csCustomURL'
--
-- * 'csTitle'
--
-- * 'csDescription'
--
-- * 'csDefaultLanguage'
channelSnippet
    :: ChannelSnippet
channelSnippet =
    ChannelSnippet'
    { _csPublishedAt = Nothing
    , _csCountry = Nothing
    , _csThumbnails = Nothing
    , _csLocalized = Nothing
    , _csCustomURL = Nothing
    , _csTitle = Nothing
    , _csDescription = Nothing
    , _csDefaultLanguage = Nothing
    }

-- | The date and time that the channel was created. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csPublishedAt :: Lens' ChannelSnippet (Maybe UTCTime)
csPublishedAt
  = lens _csPublishedAt
      (\ s a -> s{_csPublishedAt = a})
      . mapping _DateTime

-- | The country of the channel.
csCountry :: Lens' ChannelSnippet (Maybe Text)
csCountry
  = lens _csCountry (\ s a -> s{_csCountry = a})

-- | A map of thumbnail images associated with the channel. For each object
-- in the map, the key is the name of the thumbnail image, and the value is
-- an object that contains other information about the thumbnail.
csThumbnails :: Lens' ChannelSnippet (Maybe ThumbnailDetails)
csThumbnails
  = lens _csThumbnails (\ s a -> s{_csThumbnails = a})

-- | Localized title and description, read-only.
csLocalized :: Lens' ChannelSnippet (Maybe ChannelLocalization)
csLocalized
  = lens _csLocalized (\ s a -> s{_csLocalized = a})

-- | The custom url of the channel.
csCustomURL :: Lens' ChannelSnippet (Maybe Text)
csCustomURL
  = lens _csCustomURL (\ s a -> s{_csCustomURL = a})

-- | The channel\'s title.
csTitle :: Lens' ChannelSnippet (Maybe Text)
csTitle = lens _csTitle (\ s a -> s{_csTitle = a})

-- | The description of the channel.
csDescription :: Lens' ChannelSnippet (Maybe Text)
csDescription
  = lens _csDescription
      (\ s a -> s{_csDescription = a})

-- | The language of the channel\'s default title and description.
csDefaultLanguage :: Lens' ChannelSnippet (Maybe Text)
csDefaultLanguage
  = lens _csDefaultLanguage
      (\ s a -> s{_csDefaultLanguage = a})

instance FromJSON ChannelSnippet where
        parseJSON
          = withObject "ChannelSnippet"
              (\ o ->
                 ChannelSnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "country") <*>
                     (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "customUrl")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSnippet where
        toJSON ChannelSnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _csPublishedAt,
                  ("country" .=) <$> _csCountry,
                  ("thumbnails" .=) <$> _csThumbnails,
                  ("localized" .=) <$> _csLocalized,
                  ("customUrl" .=) <$> _csCustomURL,
                  ("title" .=) <$> _csTitle,
                  ("description" .=) <$> _csDescription,
                  ("defaultLanguage" .=) <$> _csDefaultLanguage])

-- | Internal representation of thumbnails for a YouTube resource.
--
-- /See:/ 'thumbnailDetails' smart constructor.
data ThumbnailDetails = ThumbnailDetails'
    { _tdMedium   :: !(Maybe Thumbnail)
    , _tdMaxres   :: !(Maybe Thumbnail)
    , _tdDefault  :: !(Maybe Thumbnail)
    , _tdStandard :: !(Maybe Thumbnail)
    , _tdHigh     :: !(Maybe Thumbnail)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThumbnailDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdMedium'
--
-- * 'tdMaxres'
--
-- * 'tdDefault'
--
-- * 'tdStandard'
--
-- * 'tdHigh'
thumbnailDetails
    :: ThumbnailDetails
thumbnailDetails =
    ThumbnailDetails'
    { _tdMedium = Nothing
    , _tdMaxres = Nothing
    , _tdDefault = Nothing
    , _tdStandard = Nothing
    , _tdHigh = Nothing
    }

-- | The medium quality image for this resource.
tdMedium :: Lens' ThumbnailDetails (Maybe Thumbnail)
tdMedium = lens _tdMedium (\ s a -> s{_tdMedium = a})

-- | The maximum resolution quality image for this resource.
tdMaxres :: Lens' ThumbnailDetails (Maybe Thumbnail)
tdMaxres = lens _tdMaxres (\ s a -> s{_tdMaxres = a})

-- | The default image for this resource.
tdDefault :: Lens' ThumbnailDetails (Maybe Thumbnail)
tdDefault
  = lens _tdDefault (\ s a -> s{_tdDefault = a})

-- | The standard quality image for this resource.
tdStandard :: Lens' ThumbnailDetails (Maybe Thumbnail)
tdStandard
  = lens _tdStandard (\ s a -> s{_tdStandard = a})

-- | The high quality image for this resource.
tdHigh :: Lens' ThumbnailDetails (Maybe Thumbnail)
tdHigh = lens _tdHigh (\ s a -> s{_tdHigh = a})

instance FromJSON ThumbnailDetails where
        parseJSON
          = withObject "ThumbnailDetails"
              (\ o ->
                 ThumbnailDetails' <$>
                   (o .:? "medium") <*> (o .:? "maxres") <*>
                     (o .:? "default")
                     <*> (o .:? "standard")
                     <*> (o .:? "high"))

instance ToJSON ThumbnailDetails where
        toJSON ThumbnailDetails'{..}
          = object
              (catMaybes
                 [("medium" .=) <$> _tdMedium,
                  ("maxres" .=) <$> _tdMaxres,
                  ("default" .=) <$> _tdDefault,
                  ("standard" .=) <$> _tdStandard,
                  ("high" .=) <$> _tdHigh])

-- | Settings and Info of the monitor stream
--
-- /See:/ 'monitorStreamInfo' smart constructor.
data MonitorStreamInfo = MonitorStreamInfo'
    { _msiBroadcastStreamDelayMs :: !(Maybe (Textual Word32))
    , _msiEmbedHTML              :: !(Maybe Text)
    , _msiEnableMonitorStream    :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitorStreamInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msiBroadcastStreamDelayMs'
--
-- * 'msiEmbedHTML'
--
-- * 'msiEnableMonitorStream'
monitorStreamInfo
    :: MonitorStreamInfo
monitorStreamInfo =
    MonitorStreamInfo'
    { _msiBroadcastStreamDelayMs = Nothing
    , _msiEmbedHTML = Nothing
    , _msiEnableMonitorStream = Nothing
    }

-- | If you have set the enableMonitorStream property to true, then this
-- property determines the length of the live broadcast delay.
msiBroadcastStreamDelayMs :: Lens' MonitorStreamInfo (Maybe Word32)
msiBroadcastStreamDelayMs
  = lens _msiBroadcastStreamDelayMs
      (\ s a -> s{_msiBroadcastStreamDelayMs = a})
      . mapping _Coerce

-- | HTML code that embeds a player that plays the monitor stream.
msiEmbedHTML :: Lens' MonitorStreamInfo (Maybe Text)
msiEmbedHTML
  = lens _msiEmbedHTML (\ s a -> s{_msiEmbedHTML = a})

-- | This value determines whether the monitor stream is enabled for the
-- broadcast. If the monitor stream is enabled, then YouTube will broadcast
-- the event content on a special stream intended only for the
-- broadcaster\'s consumption. The broadcaster can use the stream to review
-- the event content and also to identify the optimal times to insert
-- cuepoints. You need to set this value to true if you intend to have a
-- broadcast delay for your event. Note: This property cannot be updated
-- once the broadcast is in the testing or live state.
msiEnableMonitorStream :: Lens' MonitorStreamInfo (Maybe Bool)
msiEnableMonitorStream
  = lens _msiEnableMonitorStream
      (\ s a -> s{_msiEnableMonitorStream = a})

instance FromJSON MonitorStreamInfo where
        parseJSON
          = withObject "MonitorStreamInfo"
              (\ o ->
                 MonitorStreamInfo' <$>
                   (o .:? "broadcastStreamDelayMs") <*>
                     (o .:? "embedHtml")
                     <*> (o .:? "enableMonitorStream"))

instance ToJSON MonitorStreamInfo where
        toJSON MonitorStreamInfo'{..}
          = object
              (catMaybes
                 [("broadcastStreamDelayMs" .=) <$>
                    _msiBroadcastStreamDelayMs,
                  ("embedHtml" .=) <$> _msiEmbedHTML,
                  ("enableMonitorStream" .=) <$>
                    _msiEnableMonitorStream])

--
-- /See:/ 'liveChatMessageSnippet' smart constructor.
data LiveChatMessageSnippet = LiveChatMessageSnippet'
    { _lcmsMessageDeletedDetails   :: !(Maybe LiveChatMessageDeletedDetails)
    , _lcmsLiveChatId              :: !(Maybe Text)
    , _lcmsPublishedAt             :: !(Maybe DateTime')
    , _lcmsUserBannedDetails       :: !(Maybe LiveChatUserBannedMessageDetails)
    , _lcmsTextMessageDetails      :: !(Maybe LiveChatTextMessageDetails)
    , _lcmsMessageRetractedDetails :: !(Maybe LiveChatMessageRetractedDetails)
    , _lcmsType                    :: !(Maybe LiveChatMessageSnippetType)
    , _lcmsAuthorChannelId         :: !(Maybe Text)
    , _lcmsFanFundingEventDetails  :: !(Maybe LiveChatFanFundingEventDetails)
    , _lcmsHasDisplayContent       :: !(Maybe Bool)
    , _lcmsDisplayMessage          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessageSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmsMessageDeletedDetails'
--
-- * 'lcmsLiveChatId'
--
-- * 'lcmsPublishedAt'
--
-- * 'lcmsUserBannedDetails'
--
-- * 'lcmsTextMessageDetails'
--
-- * 'lcmsMessageRetractedDetails'
--
-- * 'lcmsType'
--
-- * 'lcmsAuthorChannelId'
--
-- * 'lcmsFanFundingEventDetails'
--
-- * 'lcmsHasDisplayContent'
--
-- * 'lcmsDisplayMessage'
liveChatMessageSnippet
    :: LiveChatMessageSnippet
liveChatMessageSnippet =
    LiveChatMessageSnippet'
    { _lcmsMessageDeletedDetails = Nothing
    , _lcmsLiveChatId = Nothing
    , _lcmsPublishedAt = Nothing
    , _lcmsUserBannedDetails = Nothing
    , _lcmsTextMessageDetails = Nothing
    , _lcmsMessageRetractedDetails = Nothing
    , _lcmsType = Nothing
    , _lcmsAuthorChannelId = Nothing
    , _lcmsFanFundingEventDetails = Nothing
    , _lcmsHasDisplayContent = Nothing
    , _lcmsDisplayMessage = Nothing
    }

lcmsMessageDeletedDetails :: Lens' LiveChatMessageSnippet (Maybe LiveChatMessageDeletedDetails)
lcmsMessageDeletedDetails
  = lens _lcmsMessageDeletedDetails
      (\ s a -> s{_lcmsMessageDeletedDetails = a})

lcmsLiveChatId :: Lens' LiveChatMessageSnippet (Maybe Text)
lcmsLiveChatId
  = lens _lcmsLiveChatId
      (\ s a -> s{_lcmsLiveChatId = a})

-- | The date and time when the message was orignally published. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lcmsPublishedAt :: Lens' LiveChatMessageSnippet (Maybe UTCTime)
lcmsPublishedAt
  = lens _lcmsPublishedAt
      (\ s a -> s{_lcmsPublishedAt = a})
      . mapping _DateTime

lcmsUserBannedDetails :: Lens' LiveChatMessageSnippet (Maybe LiveChatUserBannedMessageDetails)
lcmsUserBannedDetails
  = lens _lcmsUserBannedDetails
      (\ s a -> s{_lcmsUserBannedDetails = a})

-- | Details about the text message, this is only set if the type is
-- \'textMessageEvent\'.
lcmsTextMessageDetails :: Lens' LiveChatMessageSnippet (Maybe LiveChatTextMessageDetails)
lcmsTextMessageDetails
  = lens _lcmsTextMessageDetails
      (\ s a -> s{_lcmsTextMessageDetails = a})

lcmsMessageRetractedDetails :: Lens' LiveChatMessageSnippet (Maybe LiveChatMessageRetractedDetails)
lcmsMessageRetractedDetails
  = lens _lcmsMessageRetractedDetails
      (\ s a -> s{_lcmsMessageRetractedDetails = a})

-- | The type of message, this will always be present, it determines the
-- contents of the message as well as which fields will be present.
lcmsType :: Lens' LiveChatMessageSnippet (Maybe LiveChatMessageSnippetType)
lcmsType = lens _lcmsType (\ s a -> s{_lcmsType = a})

-- | The ID of the user that authored this message, this field is not always
-- filled. textMessageEvent - the user that wrote the message
-- fanFundingEvent - the user that funded the broadcast newSponsorEvent -
-- the user that just became a sponsor messageDeletedEvent - the moderator
-- that took the action messageRetractedEvent - the author that retracted
-- their message userBannedEvent - the moderator that took the action
lcmsAuthorChannelId :: Lens' LiveChatMessageSnippet (Maybe Text)
lcmsAuthorChannelId
  = lens _lcmsAuthorChannelId
      (\ s a -> s{_lcmsAuthorChannelId = a})

-- | Details about the funding event, this is only set if the type is
-- \'fanFundingEvent\'.
lcmsFanFundingEventDetails :: Lens' LiveChatMessageSnippet (Maybe LiveChatFanFundingEventDetails)
lcmsFanFundingEventDetails
  = lens _lcmsFanFundingEventDetails
      (\ s a -> s{_lcmsFanFundingEventDetails = a})

-- | Whether the message has display content that should be displayed to
-- users.
lcmsHasDisplayContent :: Lens' LiveChatMessageSnippet (Maybe Bool)
lcmsHasDisplayContent
  = lens _lcmsHasDisplayContent
      (\ s a -> s{_lcmsHasDisplayContent = a})

-- | Contains a string that can be displayed to the user. If this field is
-- not present the message is silent, at the moment only messages of type
-- TOMBSTONE and CHAT_ENDED_EVENT are silent.
lcmsDisplayMessage :: Lens' LiveChatMessageSnippet (Maybe Text)
lcmsDisplayMessage
  = lens _lcmsDisplayMessage
      (\ s a -> s{_lcmsDisplayMessage = a})

instance FromJSON LiveChatMessageSnippet where
        parseJSON
          = withObject "LiveChatMessageSnippet"
              (\ o ->
                 LiveChatMessageSnippet' <$>
                   (o .:? "messageDeletedDetails") <*>
                     (o .:? "liveChatId")
                     <*> (o .:? "publishedAt")
                     <*> (o .:? "userBannedDetails")
                     <*> (o .:? "textMessageDetails")
                     <*> (o .:? "messageRetractedDetails")
                     <*> (o .:? "type")
                     <*> (o .:? "authorChannelId")
                     <*> (o .:? "fanFundingEventDetails")
                     <*> (o .:? "hasDisplayContent")
                     <*> (o .:? "displayMessage"))

instance ToJSON LiveChatMessageSnippet where
        toJSON LiveChatMessageSnippet'{..}
          = object
              (catMaybes
                 [("messageDeletedDetails" .=) <$>
                    _lcmsMessageDeletedDetails,
                  ("liveChatId" .=) <$> _lcmsLiveChatId,
                  ("publishedAt" .=) <$> _lcmsPublishedAt,
                  ("userBannedDetails" .=) <$> _lcmsUserBannedDetails,
                  ("textMessageDetails" .=) <$>
                    _lcmsTextMessageDetails,
                  ("messageRetractedDetails" .=) <$>
                    _lcmsMessageRetractedDetails,
                  ("type" .=) <$> _lcmsType,
                  ("authorChannelId" .=) <$> _lcmsAuthorChannelId,
                  ("fanFundingEventDetails" .=) <$>
                    _lcmsFanFundingEventDetails,
                  ("hasDisplayContent" .=) <$> _lcmsHasDisplayContent,
                  ("displayMessage" .=) <$> _lcmsDisplayMessage])

-- | A i18nRegion resource identifies a region where YouTube is available.
--
-- /See:/ 'i18nRegion' smart constructor.
data I18nRegion = I18nRegion'
    { _irEtag    :: !(Maybe Text)
    , _irSnippet :: !(Maybe I18nRegionSnippet)
    , _irKind    :: !Text
    , _irId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irEtag'
--
-- * 'irSnippet'
--
-- * 'irKind'
--
-- * 'irId'
i18nRegion
    :: I18nRegion
i18nRegion =
    I18nRegion'
    { _irEtag = Nothing
    , _irSnippet = Nothing
    , _irKind = "youtube#i18nRegion"
    , _irId = Nothing
    }

-- | Etag of this resource.
irEtag :: Lens' I18nRegion (Maybe Text)
irEtag = lens _irEtag (\ s a -> s{_irEtag = a})

-- | The snippet object contains basic details about the i18n region, such as
-- region code and human-readable name.
irSnippet :: Lens' I18nRegion (Maybe I18nRegionSnippet)
irSnippet
  = lens _irSnippet (\ s a -> s{_irSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nRegion\".
irKind :: Lens' I18nRegion Text
irKind = lens _irKind (\ s a -> s{_irKind = a})

-- | The ID that YouTube uses to uniquely identify the i18n region.
irId :: Lens' I18nRegion (Maybe Text)
irId = lens _irId (\ s a -> s{_irId = a})

instance FromJSON I18nRegion where
        parseJSON
          = withObject "I18nRegion"
              (\ o ->
                 I18nRegion' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#i18nRegion")
                     <*> (o .:? "id"))

instance ToJSON I18nRegion where
        toJSON I18nRegion'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _irEtag,
                  ("snippet" .=) <$> _irSnippet,
                  Just ("kind" .= _irKind), ("id" .=) <$> _irId])

-- | Statistics about a channel: number of subscribers, number of videos in
-- the channel, etc.
--
-- /See:/ 'channelStatistics' smart constructor.
data ChannelStatistics = ChannelStatistics'
    { _csCommentCount          :: !(Maybe (Textual Word64))
    , _csSubscriberCount       :: !(Maybe (Textual Word64))
    , _csVideoCount            :: !(Maybe (Textual Word64))
    , _csHiddenSubscriberCount :: !(Maybe Bool)
    , _csViewCount             :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCommentCount'
--
-- * 'csSubscriberCount'
--
-- * 'csVideoCount'
--
-- * 'csHiddenSubscriberCount'
--
-- * 'csViewCount'
channelStatistics
    :: ChannelStatistics
channelStatistics =
    ChannelStatistics'
    { _csCommentCount = Nothing
    , _csSubscriberCount = Nothing
    , _csVideoCount = Nothing
    , _csHiddenSubscriberCount = Nothing
    , _csViewCount = Nothing
    }

-- | The number of comments for the channel.
csCommentCount :: Lens' ChannelStatistics (Maybe Word64)
csCommentCount
  = lens _csCommentCount
      (\ s a -> s{_csCommentCount = a})
      . mapping _Coerce

-- | The number of subscribers that the channel has.
csSubscriberCount :: Lens' ChannelStatistics (Maybe Word64)
csSubscriberCount
  = lens _csSubscriberCount
      (\ s a -> s{_csSubscriberCount = a})
      . mapping _Coerce

-- | The number of videos uploaded to the channel.
csVideoCount :: Lens' ChannelStatistics (Maybe Word64)
csVideoCount
  = lens _csVideoCount (\ s a -> s{_csVideoCount = a})
      . mapping _Coerce

-- | Whether or not the number of subscribers is shown for this user.
csHiddenSubscriberCount :: Lens' ChannelStatistics (Maybe Bool)
csHiddenSubscriberCount
  = lens _csHiddenSubscriberCount
      (\ s a -> s{_csHiddenSubscriberCount = a})

-- | The number of times the channel has been viewed.
csViewCount :: Lens' ChannelStatistics (Maybe Word64)
csViewCount
  = lens _csViewCount (\ s a -> s{_csViewCount = a}) .
      mapping _Coerce

instance FromJSON ChannelStatistics where
        parseJSON
          = withObject "ChannelStatistics"
              (\ o ->
                 ChannelStatistics' <$>
                   (o .:? "commentCount") <*> (o .:? "subscriberCount")
                     <*> (o .:? "videoCount")
                     <*> (o .:? "hiddenSubscriberCount")
                     <*> (o .:? "viewCount"))

instance ToJSON ChannelStatistics where
        toJSON ChannelStatistics'{..}
          = object
              (catMaybes
                 [("commentCount" .=) <$> _csCommentCount,
                  ("subscriberCount" .=) <$> _csSubscriberCount,
                  ("videoCount" .=) <$> _csVideoCount,
                  ("hiddenSubscriberCount" .=) <$>
                    _csHiddenSubscriberCount,
                  ("viewCount" .=) <$> _csViewCount])

--
-- /See:/ 'liveChatFanFundingEventDetails' smart constructor.
data LiveChatFanFundingEventDetails = LiveChatFanFundingEventDetails'
    { _lcffedUserComment         :: !(Maybe Text)
    , _lcffedAmountMicros        :: !(Maybe (Textual Word64))
    , _lcffedAmountDisplayString :: !(Maybe Text)
    , _lcffedCurrency            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatFanFundingEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcffedUserComment'
--
-- * 'lcffedAmountMicros'
--
-- * 'lcffedAmountDisplayString'
--
-- * 'lcffedCurrency'
liveChatFanFundingEventDetails
    :: LiveChatFanFundingEventDetails
liveChatFanFundingEventDetails =
    LiveChatFanFundingEventDetails'
    { _lcffedUserComment = Nothing
    , _lcffedAmountMicros = Nothing
    , _lcffedAmountDisplayString = Nothing
    , _lcffedCurrency = Nothing
    }

-- | The comment added by the user to this fan funding event.
lcffedUserComment :: Lens' LiveChatFanFundingEventDetails (Maybe Text)
lcffedUserComment
  = lens _lcffedUserComment
      (\ s a -> s{_lcffedUserComment = a})

-- | The amount of the fund.
lcffedAmountMicros :: Lens' LiveChatFanFundingEventDetails (Maybe Word64)
lcffedAmountMicros
  = lens _lcffedAmountMicros
      (\ s a -> s{_lcffedAmountMicros = a})
      . mapping _Coerce

-- | A rendered string that displays the fund amount and currency to the
-- user.
lcffedAmountDisplayString :: Lens' LiveChatFanFundingEventDetails (Maybe Text)
lcffedAmountDisplayString
  = lens _lcffedAmountDisplayString
      (\ s a -> s{_lcffedAmountDisplayString = a})

-- | The currency in which the fund was made.
lcffedCurrency :: Lens' LiveChatFanFundingEventDetails (Maybe Text)
lcffedCurrency
  = lens _lcffedCurrency
      (\ s a -> s{_lcffedCurrency = a})

instance FromJSON LiveChatFanFundingEventDetails
         where
        parseJSON
          = withObject "LiveChatFanFundingEventDetails"
              (\ o ->
                 LiveChatFanFundingEventDetails' <$>
                   (o .:? "userComment") <*> (o .:? "amountMicros") <*>
                     (o .:? "amountDisplayString")
                     <*> (o .:? "currency"))

instance ToJSON LiveChatFanFundingEventDetails where
        toJSON LiveChatFanFundingEventDetails'{..}
          = object
              (catMaybes
                 [("userComment" .=) <$> _lcffedUserComment,
                  ("amountMicros" .=) <$> _lcffedAmountMicros,
                  ("amountDisplayString" .=) <$>
                    _lcffedAmountDisplayString,
                  ("currency" .=) <$> _lcffedCurrency])

-- | Details about the content of an activity: the video that was shared, the
-- channel that was subscribed to, etc.
--
-- /See:/ 'activityContentDetails' smart constructor.
data ActivityContentDetails = ActivityContentDetails'
    { _acdPromotedItem   :: !(Maybe ActivityContentDetailsPromotedItem)
    , _acdChannelItem    :: !(Maybe ActivityContentDetailsChannelItem)
    , _acdBulletin       :: !(Maybe ActivityContentDetailsBulletin)
    , _acdFavorite       :: !(Maybe ActivityContentDetailsFavorite)
    , _acdUpload         :: !(Maybe ActivityContentDetailsUpload)
    , _acdComment        :: !(Maybe ActivityContentDetailsComment)
    , _acdSocial         :: !(Maybe ActivityContentDetailsSocial)
    , _acdSubscription   :: !(Maybe ActivityContentDetailsSubscription)
    , _acdPlayListItem   :: !(Maybe ActivityContentDetailsPlayListItem)
    , _acdLike           :: !(Maybe ActivityContentDetailsLike)
    , _acdRecommendation :: !(Maybe ActivityContentDetailsRecommendation)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdPromotedItem'
--
-- * 'acdChannelItem'
--
-- * 'acdBulletin'
--
-- * 'acdFavorite'
--
-- * 'acdUpload'
--
-- * 'acdComment'
--
-- * 'acdSocial'
--
-- * 'acdSubscription'
--
-- * 'acdPlayListItem'
--
-- * 'acdLike'
--
-- * 'acdRecommendation'
activityContentDetails
    :: ActivityContentDetails
activityContentDetails =
    ActivityContentDetails'
    { _acdPromotedItem = Nothing
    , _acdChannelItem = Nothing
    , _acdBulletin = Nothing
    , _acdFavorite = Nothing
    , _acdUpload = Nothing
    , _acdComment = Nothing
    , _acdSocial = Nothing
    , _acdSubscription = Nothing
    , _acdPlayListItem = Nothing
    , _acdLike = Nothing
    , _acdRecommendation = Nothing
    }

-- | The promotedItem object contains details about a resource which is being
-- promoted. This property is only present if the snippet.type is
-- promotedItem.
acdPromotedItem :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsPromotedItem)
acdPromotedItem
  = lens _acdPromotedItem
      (\ s a -> s{_acdPromotedItem = a})

-- | The channelItem object contains details about a resource which was added
-- to a channel. This property is only present if the snippet.type is
-- channelItem.
acdChannelItem :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsChannelItem)
acdChannelItem
  = lens _acdChannelItem
      (\ s a -> s{_acdChannelItem = a})

-- | The bulletin object contains details about a channel bulletin post. This
-- object is only present if the snippet.type is bulletin.
acdBulletin :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsBulletin)
acdBulletin
  = lens _acdBulletin (\ s a -> s{_acdBulletin = a})

-- | The favorite object contains information about a video that was marked
-- as a favorite video. This property is only present if the snippet.type
-- is favorite.
acdFavorite :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsFavorite)
acdFavorite
  = lens _acdFavorite (\ s a -> s{_acdFavorite = a})

-- | The upload object contains information about the uploaded video. This
-- property is only present if the snippet.type is upload.
acdUpload :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsUpload)
acdUpload
  = lens _acdUpload (\ s a -> s{_acdUpload = a})

-- | The comment object contains information about a resource that received a
-- comment. This property is only present if the snippet.type is comment.
acdComment :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsComment)
acdComment
  = lens _acdComment (\ s a -> s{_acdComment = a})

-- | The social object contains details about a social network post. This
-- property is only present if the snippet.type is social.
acdSocial :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsSocial)
acdSocial
  = lens _acdSocial (\ s a -> s{_acdSocial = a})

-- | The subscription object contains information about a channel that a user
-- subscribed to. This property is only present if the snippet.type is
-- subscription.
acdSubscription :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsSubscription)
acdSubscription
  = lens _acdSubscription
      (\ s a -> s{_acdSubscription = a})

-- | The playlistItem object contains information about a new playlist item.
-- This property is only present if the snippet.type is playlistItem.
acdPlayListItem :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsPlayListItem)
acdPlayListItem
  = lens _acdPlayListItem
      (\ s a -> s{_acdPlayListItem = a})

-- | The like object contains information about a resource that received a
-- positive (like) rating. This property is only present if the
-- snippet.type is like.
acdLike :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsLike)
acdLike = lens _acdLike (\ s a -> s{_acdLike = a})

-- | The recommendation object contains information about a recommended
-- resource. This property is only present if the snippet.type is
-- recommendation.
acdRecommendation :: Lens' ActivityContentDetails (Maybe ActivityContentDetailsRecommendation)
acdRecommendation
  = lens _acdRecommendation
      (\ s a -> s{_acdRecommendation = a})

instance FromJSON ActivityContentDetails where
        parseJSON
          = withObject "ActivityContentDetails"
              (\ o ->
                 ActivityContentDetails' <$>
                   (o .:? "promotedItem") <*> (o .:? "channelItem") <*>
                     (o .:? "bulletin")
                     <*> (o .:? "favorite")
                     <*> (o .:? "upload")
                     <*> (o .:? "comment")
                     <*> (o .:? "social")
                     <*> (o .:? "subscription")
                     <*> (o .:? "playlistItem")
                     <*> (o .:? "like")
                     <*> (o .:? "recommendation"))

instance ToJSON ActivityContentDetails where
        toJSON ActivityContentDetails'{..}
          = object
              (catMaybes
                 [("promotedItem" .=) <$> _acdPromotedItem,
                  ("channelItem" .=) <$> _acdChannelItem,
                  ("bulletin" .=) <$> _acdBulletin,
                  ("favorite" .=) <$> _acdFavorite,
                  ("upload" .=) <$> _acdUpload,
                  ("comment" .=) <$> _acdComment,
                  ("social" .=) <$> _acdSocial,
                  ("subscription" .=) <$> _acdSubscription,
                  ("playlistItem" .=) <$> _acdPlayListItem,
                  ("like" .=) <$> _acdLike,
                  ("recommendation" .=) <$> _acdRecommendation])

-- | A videoCategory resource identifies a category that has been or could be
-- associated with uploaded videos.
--
-- /See:/ 'videoCategory' smart constructor.
data VideoCategory = VideoCategory'
    { _vcEtag    :: !(Maybe Text)
    , _vcSnippet :: !(Maybe VideoCategorySnippet)
    , _vcKind    :: !Text
    , _vcId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcEtag'
--
-- * 'vcSnippet'
--
-- * 'vcKind'
--
-- * 'vcId'
videoCategory
    :: VideoCategory
videoCategory =
    VideoCategory'
    { _vcEtag = Nothing
    , _vcSnippet = Nothing
    , _vcKind = "youtube#videoCategory"
    , _vcId = Nothing
    }

-- | Etag of this resource.
vcEtag :: Lens' VideoCategory (Maybe Text)
vcEtag = lens _vcEtag (\ s a -> s{_vcEtag = a})

-- | The snippet object contains basic details about the video category,
-- including its title.
vcSnippet :: Lens' VideoCategory (Maybe VideoCategorySnippet)
vcSnippet
  = lens _vcSnippet (\ s a -> s{_vcSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#videoCategory\".
vcKind :: Lens' VideoCategory Text
vcKind = lens _vcKind (\ s a -> s{_vcKind = a})

-- | The ID that YouTube uses to uniquely identify the video category.
vcId :: Lens' VideoCategory (Maybe Text)
vcId = lens _vcId (\ s a -> s{_vcId = a})

instance FromJSON VideoCategory where
        parseJSON
          = withObject "VideoCategory"
              (\ o ->
                 VideoCategory' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#videoCategory")
                     <*> (o .:? "id"))

instance ToJSON VideoCategory where
        toJSON VideoCategory'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _vcEtag,
                  ("snippet" .=) <$> _vcSnippet,
                  Just ("kind" .= _vcKind), ("id" .=) <$> _vcId])

-- | List with all localizations.
--
-- /See:/ 'videoLocalizations' smart constructor.
newtype VideoLocalizations = VideoLocalizations'
    { _vlAddtional :: HashMap Text VideoLocalization
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoLocalizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlAddtional'
videoLocalizations
    :: HashMap Text VideoLocalization -- ^ 'vlAddtional'
    -> VideoLocalizations
videoLocalizations pVlAddtional_ =
    VideoLocalizations'
    { _vlAddtional = _Coerce # pVlAddtional_
    }

-- | The language tag, using string since map_key require simple types.
vlAddtional :: Lens' VideoLocalizations (HashMap Text VideoLocalization)
vlAddtional
  = lens _vlAddtional (\ s a -> s{_vlAddtional = a}) .
      _Coerce

instance FromJSON VideoLocalizations where
        parseJSON
          = withObject "VideoLocalizations"
              (\ o -> VideoLocalizations' <$> (parseJSONObject o))

instance ToJSON VideoLocalizations where
        toJSON = toJSON . _vlAddtional

-- | Details about a channelsection, including playlists and channels.
--
-- /See:/ 'channelSectionContentDetails' smart constructor.
data ChannelSectionContentDetails = ChannelSectionContentDetails'
    { _cscdChannels  :: !(Maybe [Text])
    , _cscdPlayLists :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscdChannels'
--
-- * 'cscdPlayLists'
channelSectionContentDetails
    :: ChannelSectionContentDetails
channelSectionContentDetails =
    ChannelSectionContentDetails'
    { _cscdChannels = Nothing
    , _cscdPlayLists = Nothing
    }

-- | The channel ids for type multiple_channels.
cscdChannels :: Lens' ChannelSectionContentDetails [Text]
cscdChannels
  = lens _cscdChannels (\ s a -> s{_cscdChannels = a})
      . _Default
      . _Coerce

-- | The playlist ids for type single_playlist and multiple_playlists. For
-- singlePlaylist, only one playlistId is allowed.
cscdPlayLists :: Lens' ChannelSectionContentDetails [Text]
cscdPlayLists
  = lens _cscdPlayLists
      (\ s a -> s{_cscdPlayLists = a})
      . _Default
      . _Coerce

instance FromJSON ChannelSectionContentDetails where
        parseJSON
          = withObject "ChannelSectionContentDetails"
              (\ o ->
                 ChannelSectionContentDetails' <$>
                   (o .:? "channels" .!= mempty) <*>
                     (o .:? "playlists" .!= mempty))

instance ToJSON ChannelSectionContentDetails where
        toJSON ChannelSectionContentDetails'{..}
          = object
              (catMaybes
                 [("channels" .=) <$> _cscdChannels,
                  ("playlists" .=) <$> _cscdPlayLists])

-- | A video resource represents a YouTube video.
--
-- /See:/ 'video' smart constructor.
data Video = Video'
    { _vStatus               :: !(Maybe VideoStatus)
    , _vEtag                 :: !(Maybe Text)
    , _vProjectDetails       :: !(Maybe VideoProjectDetails)
    , _vRecordingDetails     :: !(Maybe VideoRecordingDetails)
    , _vSnippet              :: !(Maybe VideoSnippet)
    , _vKind                 :: !Text
    , _vTopicDetails         :: !(Maybe VideoTopicDetails)
    , _vContentDetails       :: !(Maybe VideoContentDetails)
    , _vAgeGating            :: !(Maybe VideoAgeGating)
    , _vFileDetails          :: !(Maybe VideoFileDetails)
    , _vSuggestions          :: !(Maybe VideoSuggestions)
    , _vId                   :: !(Maybe Text)
    , _vStatistics           :: !(Maybe VideoStatistics)
    , _vLocalizations        :: !(Maybe VideoLocalizations)
    , _vLiveStreamingDetails :: !(Maybe VideoLiveStreamingDetails)
    , _vPlayer               :: !(Maybe VideoPlayer)
    , _vProcessingDetails    :: !(Maybe VideoProcessingDetails)
    , _vMonetizationDetails  :: !(Maybe VideoMonetizationDetails)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Video' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vStatus'
--
-- * 'vEtag'
--
-- * 'vProjectDetails'
--
-- * 'vRecordingDetails'
--
-- * 'vSnippet'
--
-- * 'vKind'
--
-- * 'vTopicDetails'
--
-- * 'vContentDetails'
--
-- * 'vAgeGating'
--
-- * 'vFileDetails'
--
-- * 'vSuggestions'
--
-- * 'vId'
--
-- * 'vStatistics'
--
-- * 'vLocalizations'
--
-- * 'vLiveStreamingDetails'
--
-- * 'vPlayer'
--
-- * 'vProcessingDetails'
--
-- * 'vMonetizationDetails'
video
    :: Video
video =
    Video'
    { _vStatus = Nothing
    , _vEtag = Nothing
    , _vProjectDetails = Nothing
    , _vRecordingDetails = Nothing
    , _vSnippet = Nothing
    , _vKind = "youtube#video"
    , _vTopicDetails = Nothing
    , _vContentDetails = Nothing
    , _vAgeGating = Nothing
    , _vFileDetails = Nothing
    , _vSuggestions = Nothing
    , _vId = Nothing
    , _vStatistics = Nothing
    , _vLocalizations = Nothing
    , _vLiveStreamingDetails = Nothing
    , _vPlayer = Nothing
    , _vProcessingDetails = Nothing
    , _vMonetizationDetails = Nothing
    }

-- | The status object contains information about the video\'s uploading,
-- processing, and privacy statuses.
vStatus :: Lens' Video (Maybe VideoStatus)
vStatus = lens _vStatus (\ s a -> s{_vStatus = a})

-- | Etag of this resource.
vEtag :: Lens' Video (Maybe Text)
vEtag = lens _vEtag (\ s a -> s{_vEtag = a})

-- | The projectDetails object contains information about the project
-- specific video metadata.
vProjectDetails :: Lens' Video (Maybe VideoProjectDetails)
vProjectDetails
  = lens _vProjectDetails
      (\ s a -> s{_vProjectDetails = a})

-- | The recordingDetails object encapsulates information about the location,
-- date and address where the video was recorded.
vRecordingDetails :: Lens' Video (Maybe VideoRecordingDetails)
vRecordingDetails
  = lens _vRecordingDetails
      (\ s a -> s{_vRecordingDetails = a})

-- | The snippet object contains basic details about the video, such as its
-- title, description, and category.
vSnippet :: Lens' Video (Maybe VideoSnippet)
vSnippet = lens _vSnippet (\ s a -> s{_vSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#video\".
vKind :: Lens' Video Text
vKind = lens _vKind (\ s a -> s{_vKind = a})

-- | The topicDetails object encapsulates information about Freebase topics
-- associated with the video.
vTopicDetails :: Lens' Video (Maybe VideoTopicDetails)
vTopicDetails
  = lens _vTopicDetails
      (\ s a -> s{_vTopicDetails = a})

-- | The contentDetails object contains information about the video content,
-- including the length of the video and its aspect ratio.
vContentDetails :: Lens' Video (Maybe VideoContentDetails)
vContentDetails
  = lens _vContentDetails
      (\ s a -> s{_vContentDetails = a})

-- | Age restriction details related to a video. This data can only be
-- retrieved by the video owner.
vAgeGating :: Lens' Video (Maybe VideoAgeGating)
vAgeGating
  = lens _vAgeGating (\ s a -> s{_vAgeGating = a})

-- | The fileDetails object encapsulates information about the video file
-- that was uploaded to YouTube, including the file\'s resolution,
-- duration, audio and video codecs, stream bitrates, and more. This data
-- can only be retrieved by the video owner.
vFileDetails :: Lens' Video (Maybe VideoFileDetails)
vFileDetails
  = lens _vFileDetails (\ s a -> s{_vFileDetails = a})

-- | The suggestions object encapsulates suggestions that identify
-- opportunities to improve the video quality or the metadata for the
-- uploaded video. This data can only be retrieved by the video owner.
vSuggestions :: Lens' Video (Maybe VideoSuggestions)
vSuggestions
  = lens _vSuggestions (\ s a -> s{_vSuggestions = a})

-- | The ID that YouTube uses to uniquely identify the video.
vId :: Lens' Video (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | The statistics object contains statistics about the video.
vStatistics :: Lens' Video (Maybe VideoStatistics)
vStatistics
  = lens _vStatistics (\ s a -> s{_vStatistics = a})

-- | List with all localizations.
vLocalizations :: Lens' Video (Maybe VideoLocalizations)
vLocalizations
  = lens _vLocalizations
      (\ s a -> s{_vLocalizations = a})

-- | The liveStreamingDetails object contains metadata about a live video
-- broadcast. The object will only be present in a video resource if the
-- video is an upcoming, live, or completed live broadcast.
vLiveStreamingDetails :: Lens' Video (Maybe VideoLiveStreamingDetails)
vLiveStreamingDetails
  = lens _vLiveStreamingDetails
      (\ s a -> s{_vLiveStreamingDetails = a})

-- | The player object contains information that you would use to play the
-- video in an embedded player.
vPlayer :: Lens' Video (Maybe VideoPlayer)
vPlayer = lens _vPlayer (\ s a -> s{_vPlayer = a})

-- | The processingProgress object encapsulates information about YouTube\'s
-- progress in processing the uploaded video file. The properties in the
-- object identify the current processing status and an estimate of the
-- time remaining until YouTube finishes processing the video. This part
-- also indicates whether different types of data or content, such as file
-- details or thumbnail images, are available for the video. The
-- processingProgress object is designed to be polled so that the video
-- uploaded can track the progress that YouTube has made in processing the
-- uploaded video file. This data can only be retrieved by the video owner.
vProcessingDetails :: Lens' Video (Maybe VideoProcessingDetails)
vProcessingDetails
  = lens _vProcessingDetails
      (\ s a -> s{_vProcessingDetails = a})

-- | The monetizationDetails object encapsulates information about the
-- monetization status of the video.
vMonetizationDetails :: Lens' Video (Maybe VideoMonetizationDetails)
vMonetizationDetails
  = lens _vMonetizationDetails
      (\ s a -> s{_vMonetizationDetails = a})

instance FromJSON Video where
        parseJSON
          = withObject "Video"
              (\ o ->
                 Video' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "projectDetails")
                     <*> (o .:? "recordingDetails")
                     <*> (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#video")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "ageGating")
                     <*> (o .:? "fileDetails")
                     <*> (o .:? "suggestions")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics")
                     <*> (o .:? "localizations")
                     <*> (o .:? "liveStreamingDetails")
                     <*> (o .:? "player")
                     <*> (o .:? "processingDetails")
                     <*> (o .:? "monetizationDetails"))

instance ToJSON Video where
        toJSON Video'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _vStatus, ("etag" .=) <$> _vEtag,
                  ("projectDetails" .=) <$> _vProjectDetails,
                  ("recordingDetails" .=) <$> _vRecordingDetails,
                  ("snippet" .=) <$> _vSnippet,
                  Just ("kind" .= _vKind),
                  ("topicDetails" .=) <$> _vTopicDetails,
                  ("contentDetails" .=) <$> _vContentDetails,
                  ("ageGating" .=) <$> _vAgeGating,
                  ("fileDetails" .=) <$> _vFileDetails,
                  ("suggestions" .=) <$> _vSuggestions,
                  ("id" .=) <$> _vId,
                  ("statistics" .=) <$> _vStatistics,
                  ("localizations" .=) <$> _vLocalizations,
                  ("liveStreamingDetails" .=) <$>
                    _vLiveStreamingDetails,
                  ("player" .=) <$> _vPlayer,
                  ("processingDetails" .=) <$> _vProcessingDetails,
                  ("monetizationDetails" .=) <$>
                    _vMonetizationDetails])

-- | A liveBroadcast resource represents an event that will be streamed, via
-- live video, on YouTube.
--
-- /See:/ 'liveBroadcast' smart constructor.
data LiveBroadcast = LiveBroadcast'
    { _lbStatus         :: !(Maybe LiveBroadcastStatus)
    , _lbEtag           :: !(Maybe Text)
    , _lbSnippet        :: !(Maybe LiveBroadcastSnippet)
    , _lbKind           :: !Text
    , _lbTopicDetails   :: !(Maybe LiveBroadcastTopicDetails)
    , _lbContentDetails :: !(Maybe LiveBroadcastContentDetails)
    , _lbId             :: !(Maybe Text)
    , _lbStatistics     :: !(Maybe LiveBroadcastStatistics)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcast' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbStatus'
--
-- * 'lbEtag'
--
-- * 'lbSnippet'
--
-- * 'lbKind'
--
-- * 'lbTopicDetails'
--
-- * 'lbContentDetails'
--
-- * 'lbId'
--
-- * 'lbStatistics'
liveBroadcast
    :: LiveBroadcast
liveBroadcast =
    LiveBroadcast'
    { _lbStatus = Nothing
    , _lbEtag = Nothing
    , _lbSnippet = Nothing
    , _lbKind = "youtube#liveBroadcast"
    , _lbTopicDetails = Nothing
    , _lbContentDetails = Nothing
    , _lbId = Nothing
    , _lbStatistics = Nothing
    }

-- | The status object contains information about the event\'s status.
lbStatus :: Lens' LiveBroadcast (Maybe LiveBroadcastStatus)
lbStatus = lens _lbStatus (\ s a -> s{_lbStatus = a})

-- | Etag of this resource.
lbEtag :: Lens' LiveBroadcast (Maybe Text)
lbEtag = lens _lbEtag (\ s a -> s{_lbEtag = a})

-- | The snippet object contains basic details about the event, including its
-- title, description, start time, and end time.
lbSnippet :: Lens' LiveBroadcast (Maybe LiveBroadcastSnippet)
lbSnippet
  = lens _lbSnippet (\ s a -> s{_lbSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveBroadcast\".
lbKind :: Lens' LiveBroadcast Text
lbKind = lens _lbKind (\ s a -> s{_lbKind = a})

lbTopicDetails :: Lens' LiveBroadcast (Maybe LiveBroadcastTopicDetails)
lbTopicDetails
  = lens _lbTopicDetails
      (\ s a -> s{_lbTopicDetails = a})

-- | The contentDetails object contains information about the event\'s video
-- content, such as whether the content can be shown in an embedded video
-- player or if it will be archived and therefore available for viewing
-- after the event has concluded.
lbContentDetails :: Lens' LiveBroadcast (Maybe LiveBroadcastContentDetails)
lbContentDetails
  = lens _lbContentDetails
      (\ s a -> s{_lbContentDetails = a})

-- | The ID that YouTube assigns to uniquely identify the broadcast.
lbId :: Lens' LiveBroadcast (Maybe Text)
lbId = lens _lbId (\ s a -> s{_lbId = a})

-- | The statistics object contains info about the event\'s current stats.
-- These include concurrent viewers and total chat count. Statistics can
-- change (in either direction) during the lifetime of an event. Statistics
-- are only returned while the event is live.
lbStatistics :: Lens' LiveBroadcast (Maybe LiveBroadcastStatistics)
lbStatistics
  = lens _lbStatistics (\ s a -> s{_lbStatistics = a})

instance FromJSON LiveBroadcast where
        parseJSON
          = withObject "LiveBroadcast"
              (\ o ->
                 LiveBroadcast' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#liveBroadcast")
                     <*> (o .:? "topicDetails")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "statistics"))

instance ToJSON LiveBroadcast where
        toJSON LiveBroadcast'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lbStatus,
                  ("etag" .=) <$> _lbEtag,
                  ("snippet" .=) <$> _lbSnippet,
                  Just ("kind" .= _lbKind),
                  ("topicDetails" .=) <$> _lbTopicDetails,
                  ("contentDetails" .=) <$> _lbContentDetails,
                  ("id" .=) <$> _lbId,
                  ("statistics" .=) <$> _lbStatistics])

-- | A liveChatModerator resource represents a moderator for a YouTube live
-- chat. A chat moderator has the ability to ban\/unban users from a chat,
-- remove message, etc.
--
-- /See:/ 'liveChatModerator' smart constructor.
data LiveChatModerator = LiveChatModerator'
    { _livEtag    :: !(Maybe Text)
    , _livSnippet :: !(Maybe LiveChatModeratorSnippet)
    , _livKind    :: !Text
    , _livId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatModerator' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'livEtag'
--
-- * 'livSnippet'
--
-- * 'livKind'
--
-- * 'livId'
liveChatModerator
    :: LiveChatModerator
liveChatModerator =
    LiveChatModerator'
    { _livEtag = Nothing
    , _livSnippet = Nothing
    , _livKind = "youtube#liveChatModerator"
    , _livId = Nothing
    }

-- | Etag of this resource.
livEtag :: Lens' LiveChatModerator (Maybe Text)
livEtag = lens _livEtag (\ s a -> s{_livEtag = a})

-- | The snippet object contains basic details about the moderator.
livSnippet :: Lens' LiveChatModerator (Maybe LiveChatModeratorSnippet)
livSnippet
  = lens _livSnippet (\ s a -> s{_livSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#liveChatModerator\".
livKind :: Lens' LiveChatModerator Text
livKind = lens _livKind (\ s a -> s{_livKind = a})

-- | The ID that YouTube assigns to uniquely identify the moderator.
livId :: Lens' LiveChatModerator (Maybe Text)
livId = lens _livId (\ s a -> s{_livId = a})

instance FromJSON LiveChatModerator where
        parseJSON
          = withObject "LiveChatModerator"
              (\ o ->
                 LiveChatModerator' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#liveChatModerator")
                     <*> (o .:? "id"))

instance ToJSON LiveChatModerator where
        toJSON LiveChatModerator'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _livEtag,
                  ("snippet" .=) <$> _livSnippet,
                  Just ("kind" .= _livKind), ("id" .=) <$> _livId])

-- | Detailed settings of a stream.
--
-- /See:/ 'liveStreamContentDetails' smart constructor.
data LiveStreamContentDetails = LiveStreamContentDetails'
    { _lscdClosedCaptionsIngestionURL :: !(Maybe Text)
    , _lscdIsReusable                 :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscdClosedCaptionsIngestionURL'
--
-- * 'lscdIsReusable'
liveStreamContentDetails
    :: LiveStreamContentDetails
liveStreamContentDetails =
    LiveStreamContentDetails'
    { _lscdClosedCaptionsIngestionURL = Nothing
    , _lscdIsReusable = Nothing
    }

-- | The ingestion URL where the closed captions of this stream are sent.
lscdClosedCaptionsIngestionURL :: Lens' LiveStreamContentDetails (Maybe Text)
lscdClosedCaptionsIngestionURL
  = lens _lscdClosedCaptionsIngestionURL
      (\ s a -> s{_lscdClosedCaptionsIngestionURL = a})

-- | Indicates whether the stream is reusable, which means that it can be
-- bound to multiple broadcasts. It is common for broadcasters to reuse the
-- same stream for many different broadcasts if those broadcasts occur at
-- different times. If you set this value to false, then the stream will
-- not be reusable, which means that it can only be bound to one broadcast.
-- Non-reusable streams differ from reusable streams in the following ways:
-- - A non-reusable stream can only be bound to one broadcast. - A
-- non-reusable stream might be deleted by an automated process after the
-- broadcast ends. - The liveStreams.list method does not list non-reusable
-- streams if you call the method and set the mine parameter to true. The
-- only way to use that method to retrieve the resource for a non-reusable
-- stream is to use the id parameter to identify the stream.
lscdIsReusable :: Lens' LiveStreamContentDetails (Maybe Bool)
lscdIsReusable
  = lens _lscdIsReusable
      (\ s a -> s{_lscdIsReusable = a})

instance FromJSON LiveStreamContentDetails where
        parseJSON
          = withObject "LiveStreamContentDetails"
              (\ o ->
                 LiveStreamContentDetails' <$>
                   (o .:? "closedCaptionsIngestionUrl") <*>
                     (o .:? "isReusable"))

instance ToJSON LiveStreamContentDetails where
        toJSON LiveStreamContentDetails'{..}
          = object
              (catMaybes
                 [("closedCaptionsIngestionUrl" .=) <$>
                    _lscdClosedCaptionsIngestionURL,
                  ("isReusable" .=) <$> _lscdIsReusable])

--
-- /See:/ 'liveChatModeratorSnippet' smart constructor.
data LiveChatModeratorSnippet = LiveChatModeratorSnippet'
    { _lLiveChatId       :: !(Maybe Text)
    , _lModeratorDetails :: !(Maybe ChannelProFileDetails)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatModeratorSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLiveChatId'
--
-- * 'lModeratorDetails'
liveChatModeratorSnippet
    :: LiveChatModeratorSnippet
liveChatModeratorSnippet =
    LiveChatModeratorSnippet'
    { _lLiveChatId = Nothing
    , _lModeratorDetails = Nothing
    }

-- | The ID of the live chat this moderator can act on.
lLiveChatId :: Lens' LiveChatModeratorSnippet (Maybe Text)
lLiveChatId
  = lens _lLiveChatId (\ s a -> s{_lLiveChatId = a})

-- | Details about the moderator.
lModeratorDetails :: Lens' LiveChatModeratorSnippet (Maybe ChannelProFileDetails)
lModeratorDetails
  = lens _lModeratorDetails
      (\ s a -> s{_lModeratorDetails = a})

instance FromJSON LiveChatModeratorSnippet where
        parseJSON
          = withObject "LiveChatModeratorSnippet"
              (\ o ->
                 LiveChatModeratorSnippet' <$>
                   (o .:? "liveChatId") <*> (o .:? "moderatorDetails"))

instance ToJSON LiveChatModeratorSnippet where
        toJSON LiveChatModeratorSnippet'{..}
          = object
              (catMaybes
                 [("liveChatId" .=) <$> _lLiveChatId,
                  ("moderatorDetails" .=) <$> _lModeratorDetails])

-- | A pair Property \/ Value.
--
-- /See:/ 'propertyValue' smart constructor.
data PropertyValue = PropertyValue'
    { _pvProperty :: !(Maybe Text)
    , _pvValue    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvProperty'
--
-- * 'pvValue'
propertyValue
    :: PropertyValue
propertyValue =
    PropertyValue'
    { _pvProperty = Nothing
    , _pvValue = Nothing
    }

-- | A property.
pvProperty :: Lens' PropertyValue (Maybe Text)
pvProperty
  = lens _pvProperty (\ s a -> s{_pvProperty = a})

-- | The property\'s value.
pvValue :: Lens' PropertyValue (Maybe Text)
pvValue = lens _pvValue (\ s a -> s{_pvValue = a})

instance FromJSON PropertyValue where
        parseJSON
          = withObject "PropertyValue"
              (\ o ->
                 PropertyValue' <$>
                   (o .:? "property") <*> (o .:? "value"))

instance ToJSON PropertyValue where
        toJSON PropertyValue'{..}
          = object
              (catMaybes
                 [("property" .=) <$> _pvProperty,
                  ("value" .=) <$> _pvValue])

-- | Basic details about a video, including title, description, uploader,
-- thumbnails and category.
--
-- /See:/ 'videoSnippet' smart constructor.
data VideoSnippet = VideoSnippet'
    { _vsDefaultAudioLanguage :: !(Maybe Text)
    , _vsPublishedAt          :: !(Maybe DateTime')
    , _vsChannelTitle         :: !(Maybe Text)
    , _vsChannelId            :: !(Maybe Text)
    , _vsThumbnails           :: !(Maybe ThumbnailDetails)
    , _vsLocalized            :: !(Maybe VideoLocalization)
    , _vsCategoryId           :: !(Maybe Text)
    , _vsTitle                :: !(Maybe Text)
    , _vsLiveBroadcastContent :: !(Maybe VideoSnippetLiveBroadcastContent)
    , _vsDescription          :: !(Maybe Text)
    , _vsTags                 :: !(Maybe [Text])
    , _vsDefaultLanguage      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsDefaultAudioLanguage'
--
-- * 'vsPublishedAt'
--
-- * 'vsChannelTitle'
--
-- * 'vsChannelId'
--
-- * 'vsThumbnails'
--
-- * 'vsLocalized'
--
-- * 'vsCategoryId'
--
-- * 'vsTitle'
--
-- * 'vsLiveBroadcastContent'
--
-- * 'vsDescription'
--
-- * 'vsTags'
--
-- * 'vsDefaultLanguage'
videoSnippet
    :: VideoSnippet
videoSnippet =
    VideoSnippet'
    { _vsDefaultAudioLanguage = Nothing
    , _vsPublishedAt = Nothing
    , _vsChannelTitle = Nothing
    , _vsChannelId = Nothing
    , _vsThumbnails = Nothing
    , _vsLocalized = Nothing
    , _vsCategoryId = Nothing
    , _vsTitle = Nothing
    , _vsLiveBroadcastContent = Nothing
    , _vsDescription = Nothing
    , _vsTags = Nothing
    , _vsDefaultLanguage = Nothing
    }

-- | The default_audio_language property specifies the language spoken in the
-- video\'s default audio track.
vsDefaultAudioLanguage :: Lens' VideoSnippet (Maybe Text)
vsDefaultAudioLanguage
  = lens _vsDefaultAudioLanguage
      (\ s a -> s{_vsDefaultAudioLanguage = a})

-- | The date and time that the video was uploaded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vsPublishedAt :: Lens' VideoSnippet (Maybe UTCTime)
vsPublishedAt
  = lens _vsPublishedAt
      (\ s a -> s{_vsPublishedAt = a})
      . mapping _DateTime

-- | Channel title for the channel that the video belongs to.
vsChannelTitle :: Lens' VideoSnippet (Maybe Text)
vsChannelTitle
  = lens _vsChannelTitle
      (\ s a -> s{_vsChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the channel that the video
-- was uploaded to.
vsChannelId :: Lens' VideoSnippet (Maybe Text)
vsChannelId
  = lens _vsChannelId (\ s a -> s{_vsChannelId = a})

-- | A map of thumbnail images associated with the video. For each object in
-- the map, the key is the name of the thumbnail image, and the value is an
-- object that contains other information about the thumbnail.
vsThumbnails :: Lens' VideoSnippet (Maybe ThumbnailDetails)
vsThumbnails
  = lens _vsThumbnails (\ s a -> s{_vsThumbnails = a})

-- | Localized snippet selected with the hl parameter. If no such
-- localization exists, this field is populated with the default snippet.
-- (Read-only)
vsLocalized :: Lens' VideoSnippet (Maybe VideoLocalization)
vsLocalized
  = lens _vsLocalized (\ s a -> s{_vsLocalized = a})

-- | The YouTube video category associated with the video.
vsCategoryId :: Lens' VideoSnippet (Maybe Text)
vsCategoryId
  = lens _vsCategoryId (\ s a -> s{_vsCategoryId = a})

-- | The video\'s title.
vsTitle :: Lens' VideoSnippet (Maybe Text)
vsTitle = lens _vsTitle (\ s a -> s{_vsTitle = a})

-- | Indicates if the video is an upcoming\/active live broadcast. Or it\'s
-- \"none\" if the video is not an upcoming\/active live broadcast.
vsLiveBroadcastContent :: Lens' VideoSnippet (Maybe VideoSnippetLiveBroadcastContent)
vsLiveBroadcastContent
  = lens _vsLiveBroadcastContent
      (\ s a -> s{_vsLiveBroadcastContent = a})

-- | The video\'s description.
vsDescription :: Lens' VideoSnippet (Maybe Text)
vsDescription
  = lens _vsDescription
      (\ s a -> s{_vsDescription = a})

-- | A list of keyword tags associated with the video. Tags may contain
-- spaces.
vsTags :: Lens' VideoSnippet [Text]
vsTags
  = lens _vsTags (\ s a -> s{_vsTags = a}) . _Default .
      _Coerce

-- | The language of the videos\'s default snippet.
vsDefaultLanguage :: Lens' VideoSnippet (Maybe Text)
vsDefaultLanguage
  = lens _vsDefaultLanguage
      (\ s a -> s{_vsDefaultLanguage = a})

instance FromJSON VideoSnippet where
        parseJSON
          = withObject "VideoSnippet"
              (\ o ->
                 VideoSnippet' <$>
                   (o .:? "defaultAudioLanguage") <*>
                     (o .:? "publishedAt")
                     <*> (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "localized")
                     <*> (o .:? "categoryId")
                     <*> (o .:? "title")
                     <*> (o .:? "liveBroadcastContent")
                     <*> (o .:? "description")
                     <*> (o .:? "tags" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON VideoSnippet where
        toJSON VideoSnippet'{..}
          = object
              (catMaybes
                 [("defaultAudioLanguage" .=) <$>
                    _vsDefaultAudioLanguage,
                  ("publishedAt" .=) <$> _vsPublishedAt,
                  ("channelTitle" .=) <$> _vsChannelTitle,
                  ("channelId" .=) <$> _vsChannelId,
                  ("thumbnails" .=) <$> _vsThumbnails,
                  ("localized" .=) <$> _vsLocalized,
                  ("categoryId" .=) <$> _vsCategoryId,
                  ("title" .=) <$> _vsTitle,
                  ("liveBroadcastContent" .=) <$>
                    _vsLiveBroadcastContent,
                  ("description" .=) <$> _vsDescription,
                  ("tags" .=) <$> _vsTags,
                  ("defaultLanguage" .=) <$> _vsDefaultLanguage])

-- | A fanFundingEvent resource represents a fan funding event on a YouTube
-- channel. Fan funding events occur when a user gives one-time monetary
-- support to the channel owner.
--
-- /See:/ 'fanFundingEvent' smart constructor.
data FanFundingEvent = FanFundingEvent'
    { _ffeEtag    :: !(Maybe Text)
    , _ffeSnippet :: !(Maybe FanFundingEventSnippet)
    , _ffeKind    :: !Text
    , _ffeId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FanFundingEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffeEtag'
--
-- * 'ffeSnippet'
--
-- * 'ffeKind'
--
-- * 'ffeId'
fanFundingEvent
    :: FanFundingEvent
fanFundingEvent =
    FanFundingEvent'
    { _ffeEtag = Nothing
    , _ffeSnippet = Nothing
    , _ffeKind = "youtube#fanFundingEvent"
    , _ffeId = Nothing
    }

-- | Etag of this resource.
ffeEtag :: Lens' FanFundingEvent (Maybe Text)
ffeEtag = lens _ffeEtag (\ s a -> s{_ffeEtag = a})

-- | The snippet object contains basic details about the fan funding event.
ffeSnippet :: Lens' FanFundingEvent (Maybe FanFundingEventSnippet)
ffeSnippet
  = lens _ffeSnippet (\ s a -> s{_ffeSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#fanFundingEvent\".
ffeKind :: Lens' FanFundingEvent Text
ffeKind = lens _ffeKind (\ s a -> s{_ffeKind = a})

-- | The ID that YouTube assigns to uniquely identify the fan funding event.
ffeId :: Lens' FanFundingEvent (Maybe Text)
ffeId = lens _ffeId (\ s a -> s{_ffeId = a})

instance FromJSON FanFundingEvent where
        parseJSON
          = withObject "FanFundingEvent"
              (\ o ->
                 FanFundingEvent' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#fanFundingEvent")
                     <*> (o .:? "id"))

instance ToJSON FanFundingEvent where
        toJSON FanFundingEvent'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ffeEtag,
                  ("snippet" .=) <$> _ffeSnippet,
                  Just ("kind" .= _ffeKind), ("id" .=) <$> _ffeId])

--
-- /See:/ 'liveBroadcastSnippet' smart constructor.
data LiveBroadcastSnippet = LiveBroadcastSnippet'
    { _lbsActualEndTime      :: !(Maybe DateTime')
    , _lbsLiveChatId         :: !(Maybe Text)
    , _lbsPublishedAt        :: !(Maybe DateTime')
    , _lbsScheduledEndTime   :: !(Maybe DateTime')
    , _lbsChannelId          :: !(Maybe Text)
    , _lbsScheduledStartTime :: !(Maybe DateTime')
    , _lbsThumbnails         :: !(Maybe ThumbnailDetails)
    , _lbsTitle              :: !(Maybe Text)
    , _lbsActualStartTime    :: !(Maybe DateTime')
    , _lbsIsDefaultBroadcast :: !(Maybe Bool)
    , _lbsDescription        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsActualEndTime'
--
-- * 'lbsLiveChatId'
--
-- * 'lbsPublishedAt'
--
-- * 'lbsScheduledEndTime'
--
-- * 'lbsChannelId'
--
-- * 'lbsScheduledStartTime'
--
-- * 'lbsThumbnails'
--
-- * 'lbsTitle'
--
-- * 'lbsActualStartTime'
--
-- * 'lbsIsDefaultBroadcast'
--
-- * 'lbsDescription'
liveBroadcastSnippet
    :: LiveBroadcastSnippet
liveBroadcastSnippet =
    LiveBroadcastSnippet'
    { _lbsActualEndTime = Nothing
    , _lbsLiveChatId = Nothing
    , _lbsPublishedAt = Nothing
    , _lbsScheduledEndTime = Nothing
    , _lbsChannelId = Nothing
    , _lbsScheduledStartTime = Nothing
    , _lbsThumbnails = Nothing
    , _lbsTitle = Nothing
    , _lbsActualStartTime = Nothing
    , _lbsIsDefaultBroadcast = Nothing
    , _lbsDescription = Nothing
    }

-- | The date and time that the broadcast actually ended. This information is
-- only available once the broadcast\'s state is complete. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsActualEndTime :: Lens' LiveBroadcastSnippet (Maybe UTCTime)
lbsActualEndTime
  = lens _lbsActualEndTime
      (\ s a -> s{_lbsActualEndTime = a})
      . mapping _DateTime

-- | The id of the live chat for this broadcast.
lbsLiveChatId :: Lens' LiveBroadcastSnippet (Maybe Text)
lbsLiveChatId
  = lens _lbsLiveChatId
      (\ s a -> s{_lbsLiveChatId = a})

-- | The date and time that the broadcast was added to YouTube\'s live
-- broadcast schedule. The value is specified in ISO 8601
-- (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsPublishedAt :: Lens' LiveBroadcastSnippet (Maybe UTCTime)
lbsPublishedAt
  = lens _lbsPublishedAt
      (\ s a -> s{_lbsPublishedAt = a})
      . mapping _DateTime

-- | The date and time that the broadcast is scheduled to end. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsScheduledEndTime :: Lens' LiveBroadcastSnippet (Maybe UTCTime)
lbsScheduledEndTime
  = lens _lbsScheduledEndTime
      (\ s a -> s{_lbsScheduledEndTime = a})
      . mapping _DateTime

-- | The ID that YouTube uses to uniquely identify the channel that is
-- publishing the broadcast.
lbsChannelId :: Lens' LiveBroadcastSnippet (Maybe Text)
lbsChannelId
  = lens _lbsChannelId (\ s a -> s{_lbsChannelId = a})

-- | The date and time that the broadcast is scheduled to start. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsScheduledStartTime :: Lens' LiveBroadcastSnippet (Maybe UTCTime)
lbsScheduledStartTime
  = lens _lbsScheduledStartTime
      (\ s a -> s{_lbsScheduledStartTime = a})
      . mapping _DateTime

-- | A map of thumbnail images associated with the broadcast. For each nested
-- object in this object, the key is the name of the thumbnail image, and
-- the value is an object that contains other information about the
-- thumbnail.
lbsThumbnails :: Lens' LiveBroadcastSnippet (Maybe ThumbnailDetails)
lbsThumbnails
  = lens _lbsThumbnails
      (\ s a -> s{_lbsThumbnails = a})

-- | The broadcast\'s title. Note that the broadcast represents exactly one
-- YouTube video. You can set this field by modifying the broadcast
-- resource or by setting the title field of the corresponding video
-- resource.
lbsTitle :: Lens' LiveBroadcastSnippet (Maybe Text)
lbsTitle = lens _lbsTitle (\ s a -> s{_lbsTitle = a})

-- | The date and time that the broadcast actually started. This information
-- is only available once the broadcast\'s state is live. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
lbsActualStartTime :: Lens' LiveBroadcastSnippet (Maybe UTCTime)
lbsActualStartTime
  = lens _lbsActualStartTime
      (\ s a -> s{_lbsActualStartTime = a})
      . mapping _DateTime

lbsIsDefaultBroadcast :: Lens' LiveBroadcastSnippet (Maybe Bool)
lbsIsDefaultBroadcast
  = lens _lbsIsDefaultBroadcast
      (\ s a -> s{_lbsIsDefaultBroadcast = a})

-- | The broadcast\'s description. As with the title, you can set this field
-- by modifying the broadcast resource or by setting the description field
-- of the corresponding video resource.
lbsDescription :: Lens' LiveBroadcastSnippet (Maybe Text)
lbsDescription
  = lens _lbsDescription
      (\ s a -> s{_lbsDescription = a})

instance FromJSON LiveBroadcastSnippet where
        parseJSON
          = withObject "LiveBroadcastSnippet"
              (\ o ->
                 LiveBroadcastSnippet' <$>
                   (o .:? "actualEndTime") <*> (o .:? "liveChatId") <*>
                     (o .:? "publishedAt")
                     <*> (o .:? "scheduledEndTime")
                     <*> (o .:? "channelId")
                     <*> (o .:? "scheduledStartTime")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "actualStartTime")
                     <*> (o .:? "isDefaultBroadcast")
                     <*> (o .:? "description"))

instance ToJSON LiveBroadcastSnippet where
        toJSON LiveBroadcastSnippet'{..}
          = object
              (catMaybes
                 [("actualEndTime" .=) <$> _lbsActualEndTime,
                  ("liveChatId" .=) <$> _lbsLiveChatId,
                  ("publishedAt" .=) <$> _lbsPublishedAt,
                  ("scheduledEndTime" .=) <$> _lbsScheduledEndTime,
                  ("channelId" .=) <$> _lbsChannelId,
                  ("scheduledStartTime" .=) <$> _lbsScheduledStartTime,
                  ("thumbnails" .=) <$> _lbsThumbnails,
                  ("title" .=) <$> _lbsTitle,
                  ("actualStartTime" .=) <$> _lbsActualStartTime,
                  ("isDefaultBroadcast" .=) <$> _lbsIsDefaultBroadcast,
                  ("description" .=) <$> _lbsDescription])

-- | Rights management policy for YouTube resources.
--
-- /See:/ 'accessPolicy' smart constructor.
data AccessPolicy = AccessPolicy'
    { _apException :: !(Maybe [Text])
    , _apAllowed   :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccessPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apException'
--
-- * 'apAllowed'
accessPolicy
    :: AccessPolicy
accessPolicy =
    AccessPolicy'
    { _apException = Nothing
    , _apAllowed = Nothing
    }

-- | A list of region codes that identify countries where the default policy
-- do not apply.
apException :: Lens' AccessPolicy [Text]
apException
  = lens _apException (\ s a -> s{_apException = a}) .
      _Default
      . _Coerce

-- | The value of allowed indicates whether the access to the policy is
-- allowed or denied by default.
apAllowed :: Lens' AccessPolicy (Maybe Bool)
apAllowed
  = lens _apAllowed (\ s a -> s{_apAllowed = a})

instance FromJSON AccessPolicy where
        parseJSON
          = withObject "AccessPolicy"
              (\ o ->
                 AccessPolicy' <$>
                   (o .:? "exception" .!= mempty) <*> (o .:? "allowed"))

instance ToJSON AccessPolicy where
        toJSON AccessPolicy'{..}
          = object
              (catMaybes
                 [("exception" .=) <$> _apException,
                  ("allowed" .=) <$> _apAllowed])

-- | A sponsor resource represents a sponsor for a YouTube channel. A sponsor
-- provides recurring monetary support to a creator and receives special
-- benefits.
--
-- /See:/ 'sponsor' smart constructor.
data Sponsor = Sponsor'
    { _sEtag    :: !(Maybe Text)
    , _sSnippet :: !(Maybe SponsorSnippet)
    , _sKind    :: !Text
    , _sId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Sponsor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sEtag'
--
-- * 'sSnippet'
--
-- * 'sKind'
--
-- * 'sId'
sponsor
    :: Sponsor
sponsor =
    Sponsor'
    { _sEtag = Nothing
    , _sSnippet = Nothing
    , _sKind = "youtube#sponsor"
    , _sId = Nothing
    }

-- | Etag of this resource.
sEtag :: Lens' Sponsor (Maybe Text)
sEtag = lens _sEtag (\ s a -> s{_sEtag = a})

-- | The snippet object contains basic details about the sponsor.
sSnippet :: Lens' Sponsor (Maybe SponsorSnippet)
sSnippet = lens _sSnippet (\ s a -> s{_sSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#sponsor\".
sKind :: Lens' Sponsor Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The ID that YouTube assigns to uniquely identify the sponsor.
sId :: Lens' Sponsor (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

instance FromJSON Sponsor where
        parseJSON
          = withObject "Sponsor"
              (\ o ->
                 Sponsor' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#sponsor")
                     <*> (o .:? "id"))

instance ToJSON Sponsor where
        toJSON Sponsor'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _sEtag,
                  ("snippet" .=) <$> _sSnippet,
                  Just ("kind" .= _sKind), ("id" .=) <$> _sId])

--
-- /See:/ 'liveChatMessageDeletedDetails' smart constructor.
newtype LiveChatMessageDeletedDetails = LiveChatMessageDeletedDetails'
    { _lcmddDeletedMessageId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatMessageDeletedDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcmddDeletedMessageId'
liveChatMessageDeletedDetails
    :: LiveChatMessageDeletedDetails
liveChatMessageDeletedDetails =
    LiveChatMessageDeletedDetails'
    { _lcmddDeletedMessageId = Nothing
    }

lcmddDeletedMessageId :: Lens' LiveChatMessageDeletedDetails (Maybe Text)
lcmddDeletedMessageId
  = lens _lcmddDeletedMessageId
      (\ s a -> s{_lcmddDeletedMessageId = a})

instance FromJSON LiveChatMessageDeletedDetails where
        parseJSON
          = withObject "LiveChatMessageDeletedDetails"
              (\ o ->
                 LiveChatMessageDeletedDetails' <$>
                   (o .:? "deletedMessageId"))

instance ToJSON LiveChatMessageDeletedDetails where
        toJSON LiveChatMessageDeletedDetails'{..}
          = object
              (catMaybes
                 [("deletedMessageId" .=) <$> _lcmddDeletedMessageId])

--
-- /See:/ 'commentThreadListResponse' smart constructor.
data CommentThreadListResponse = CommentThreadListResponse'
    { _ctlrEtag            :: !(Maybe Text)
    , _ctlrTokenPagination :: !(Maybe TokenPagination)
    , _ctlrNextPageToken   :: !(Maybe Text)
    , _ctlrPageInfo        :: !(Maybe PageInfo)
    , _ctlrKind            :: !Text
    , _ctlrItems           :: !(Maybe [CommentThread])
    , _ctlrVisitorId       :: !(Maybe Text)
    , _ctlrEventId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlrEtag'
--
-- * 'ctlrTokenPagination'
--
-- * 'ctlrNextPageToken'
--
-- * 'ctlrPageInfo'
--
-- * 'ctlrKind'
--
-- * 'ctlrItems'
--
-- * 'ctlrVisitorId'
--
-- * 'ctlrEventId'
commentThreadListResponse
    :: CommentThreadListResponse
commentThreadListResponse =
    CommentThreadListResponse'
    { _ctlrEtag = Nothing
    , _ctlrTokenPagination = Nothing
    , _ctlrNextPageToken = Nothing
    , _ctlrPageInfo = Nothing
    , _ctlrKind = "youtube#commentThreadListResponse"
    , _ctlrItems = Nothing
    , _ctlrVisitorId = Nothing
    , _ctlrEventId = Nothing
    }

-- | Etag of this resource.
ctlrEtag :: Lens' CommentThreadListResponse (Maybe Text)
ctlrEtag = lens _ctlrEtag (\ s a -> s{_ctlrEtag = a})

ctlrTokenPagination :: Lens' CommentThreadListResponse (Maybe TokenPagination)
ctlrTokenPagination
  = lens _ctlrTokenPagination
      (\ s a -> s{_ctlrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
ctlrNextPageToken :: Lens' CommentThreadListResponse (Maybe Text)
ctlrNextPageToken
  = lens _ctlrNextPageToken
      (\ s a -> s{_ctlrNextPageToken = a})

ctlrPageInfo :: Lens' CommentThreadListResponse (Maybe PageInfo)
ctlrPageInfo
  = lens _ctlrPageInfo (\ s a -> s{_ctlrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentThreadListResponse\".
ctlrKind :: Lens' CommentThreadListResponse Text
ctlrKind = lens _ctlrKind (\ s a -> s{_ctlrKind = a})

-- | A list of comment threads that match the request criteria.
ctlrItems :: Lens' CommentThreadListResponse [CommentThread]
ctlrItems
  = lens _ctlrItems (\ s a -> s{_ctlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
ctlrVisitorId :: Lens' CommentThreadListResponse (Maybe Text)
ctlrVisitorId
  = lens _ctlrVisitorId
      (\ s a -> s{_ctlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
ctlrEventId :: Lens' CommentThreadListResponse (Maybe Text)
ctlrEventId
  = lens _ctlrEventId (\ s a -> s{_ctlrEventId = a})

instance FromJSON CommentThreadListResponse where
        parseJSON
          = withObject "CommentThreadListResponse"
              (\ o ->
                 CommentThreadListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#commentThreadListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CommentThreadListResponse where
        toJSON CommentThreadListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ctlrEtag,
                  ("tokenPagination" .=) <$> _ctlrTokenPagination,
                  ("nextPageToken" .=) <$> _ctlrNextPageToken,
                  ("pageInfo" .=) <$> _ctlrPageInfo,
                  Just ("kind" .= _ctlrKind),
                  ("items" .=) <$> _ctlrItems,
                  ("visitorId" .=) <$> _ctlrVisitorId,
                  ("eventId" .=) <$> _ctlrEventId])

-- | Branding properties for the watch. All deprecated.
--
-- /See:/ 'watchSettings' smart constructor.
data WatchSettings = WatchSettings'
    { _wsFeaturedPlayListId :: !(Maybe Text)
    , _wsBackgRoundColor    :: !(Maybe Text)
    , _wsTextColor          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatchSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wsFeaturedPlayListId'
--
-- * 'wsBackgRoundColor'
--
-- * 'wsTextColor'
watchSettings
    :: WatchSettings
watchSettings =
    WatchSettings'
    { _wsFeaturedPlayListId = Nothing
    , _wsBackgRoundColor = Nothing
    , _wsTextColor = Nothing
    }

-- | An ID that uniquely identifies a playlist that displays next to the
-- video player.
wsFeaturedPlayListId :: Lens' WatchSettings (Maybe Text)
wsFeaturedPlayListId
  = lens _wsFeaturedPlayListId
      (\ s a -> s{_wsFeaturedPlayListId = a})

-- | The text color for the video watch page\'s branded area.
wsBackgRoundColor :: Lens' WatchSettings (Maybe Text)
wsBackgRoundColor
  = lens _wsBackgRoundColor
      (\ s a -> s{_wsBackgRoundColor = a})

-- | The background color for the video watch page\'s branded area.
wsTextColor :: Lens' WatchSettings (Maybe Text)
wsTextColor
  = lens _wsTextColor (\ s a -> s{_wsTextColor = a})

instance FromJSON WatchSettings where
        parseJSON
          = withObject "WatchSettings"
              (\ o ->
                 WatchSettings' <$>
                   (o .:? "featuredPlaylistId") <*>
                     (o .:? "backgroundColor")
                     <*> (o .:? "textColor"))

instance ToJSON WatchSettings where
        toJSON WatchSettings'{..}
          = object
              (catMaybes
                 [("featuredPlaylistId" .=) <$> _wsFeaturedPlayListId,
                  ("backgroundColor" .=) <$> _wsBackgRoundColor,
                  ("textColor" .=) <$> _wsTextColor])

-- | Brief description of the live stream cdn settings.
--
-- /See:/ 'cdnSettings' smart constructor.
data CdnSettings = CdnSettings'
    { _csIngestionInfo :: !(Maybe IngestionInfo)
    , _csFrameRate     :: !(Maybe CdnSettingsFrameRate)
    , _csFormat        :: !(Maybe Text)
    , _csResolution    :: !(Maybe CdnSettingsResolution)
    , _csIngestionType :: !(Maybe CdnSettingsIngestionType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CdnSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csIngestionInfo'
--
-- * 'csFrameRate'
--
-- * 'csFormat'
--
-- * 'csResolution'
--
-- * 'csIngestionType'
cdnSettings
    :: CdnSettings
cdnSettings =
    CdnSettings'
    { _csIngestionInfo = Nothing
    , _csFrameRate = Nothing
    , _csFormat = Nothing
    , _csResolution = Nothing
    , _csIngestionType = Nothing
    }

-- | The ingestionInfo object contains information that YouTube provides that
-- you need to transmit your RTMP or HTTP stream to YouTube.
csIngestionInfo :: Lens' CdnSettings (Maybe IngestionInfo)
csIngestionInfo
  = lens _csIngestionInfo
      (\ s a -> s{_csIngestionInfo = a})

-- | The frame rate of the inbound video data.
csFrameRate :: Lens' CdnSettings (Maybe CdnSettingsFrameRate)
csFrameRate
  = lens _csFrameRate (\ s a -> s{_csFrameRate = a})

-- | The format of the video stream that you are sending to Youtube.
csFormat :: Lens' CdnSettings (Maybe Text)
csFormat = lens _csFormat (\ s a -> s{_csFormat = a})

-- | The resolution of the inbound video data.
csResolution :: Lens' CdnSettings (Maybe CdnSettingsResolution)
csResolution
  = lens _csResolution (\ s a -> s{_csResolution = a})

-- | The method or protocol used to transmit the video stream.
csIngestionType :: Lens' CdnSettings (Maybe CdnSettingsIngestionType)
csIngestionType
  = lens _csIngestionType
      (\ s a -> s{_csIngestionType = a})

instance FromJSON CdnSettings where
        parseJSON
          = withObject "CdnSettings"
              (\ o ->
                 CdnSettings' <$>
                   (o .:? "ingestionInfo") <*> (o .:? "frameRate") <*>
                     (o .:? "format")
                     <*> (o .:? "resolution")
                     <*> (o .:? "ingestionType"))

instance ToJSON CdnSettings where
        toJSON CdnSettings'{..}
          = object
              (catMaybes
                 [("ingestionInfo" .=) <$> _csIngestionInfo,
                  ("frameRate" .=) <$> _csFrameRate,
                  ("format" .=) <$> _csFormat,
                  ("resolution" .=) <$> _csResolution,
                  ("ingestionType" .=) <$> _csIngestionType])

-- | Statistics about the live broadcast. These represent a snapshot of the
-- values at the time of the request. Statistics are only returned for live
-- broadcasts.
--
-- /See:/ 'liveBroadcastStatistics' smart constructor.
data LiveBroadcastStatistics = LiveBroadcastStatistics'
    { _lbsTotalChatCount    :: !(Maybe (Textual Word64))
    , _lbsConcurrentViewers :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbsTotalChatCount'
--
-- * 'lbsConcurrentViewers'
liveBroadcastStatistics
    :: LiveBroadcastStatistics
liveBroadcastStatistics =
    LiveBroadcastStatistics'
    { _lbsTotalChatCount = Nothing
    , _lbsConcurrentViewers = Nothing
    }

-- | The total number of live chat messages currently on the broadcast. The
-- property and its value will be present if the broadcast is public, has
-- the live chat feature enabled, and has at least one message. Note that
-- this field will not be filled after the broadcast ends. So this property
-- would not identify the number of chat messages for an archived video of
-- a completed live broadcast.
lbsTotalChatCount :: Lens' LiveBroadcastStatistics (Maybe Word64)
lbsTotalChatCount
  = lens _lbsTotalChatCount
      (\ s a -> s{_lbsTotalChatCount = a})
      . mapping _Coerce

-- | The number of viewers currently watching the broadcast. The property and
-- its value will be present if the broadcast has current viewers and the
-- broadcast owner has not hidden the viewcount for the video. Note that
-- YouTube stops tracking the number of concurrent viewers for a broadcast
-- when the broadcast ends. So, this property would not identify the number
-- of viewers watching an archived video of a live broadcast that already
-- ended.
lbsConcurrentViewers :: Lens' LiveBroadcastStatistics (Maybe Word64)
lbsConcurrentViewers
  = lens _lbsConcurrentViewers
      (\ s a -> s{_lbsConcurrentViewers = a})
      . mapping _Coerce

instance FromJSON LiveBroadcastStatistics where
        parseJSON
          = withObject "LiveBroadcastStatistics"
              (\ o ->
                 LiveBroadcastStatistics' <$>
                   (o .:? "totalChatCount") <*>
                     (o .:? "concurrentViewers"))

instance ToJSON LiveBroadcastStatistics where
        toJSON LiveBroadcastStatistics'{..}
          = object
              (catMaybes
                 [("totalChatCount" .=) <$> _lbsTotalChatCount,
                  ("concurrentViewers" .=) <$> _lbsConcurrentViewers])

-- | Basic details about a video category, such as its localized title.
--
-- /See:/ 'videoCategorySnippet' smart constructor.
data VideoCategorySnippet = VideoCategorySnippet'
    { _vcsAssignable :: !(Maybe Bool)
    , _vcsChannelId  :: !Text
    , _vcsTitle      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoCategorySnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsAssignable'
--
-- * 'vcsChannelId'
--
-- * 'vcsTitle'
videoCategorySnippet
    :: VideoCategorySnippet
videoCategorySnippet =
    VideoCategorySnippet'
    { _vcsAssignable = Nothing
    , _vcsChannelId = "UCBR8-60-B28hp2BmDPdntcQ"
    , _vcsTitle = Nothing
    }

vcsAssignable :: Lens' VideoCategorySnippet (Maybe Bool)
vcsAssignable
  = lens _vcsAssignable
      (\ s a -> s{_vcsAssignable = a})

-- | The YouTube channel that created the video category.
vcsChannelId :: Lens' VideoCategorySnippet Text
vcsChannelId
  = lens _vcsChannelId (\ s a -> s{_vcsChannelId = a})

-- | The video category\'s title.
vcsTitle :: Lens' VideoCategorySnippet (Maybe Text)
vcsTitle = lens _vcsTitle (\ s a -> s{_vcsTitle = a})

instance FromJSON VideoCategorySnippet where
        parseJSON
          = withObject "VideoCategorySnippet"
              (\ o ->
                 VideoCategorySnippet' <$>
                   (o .:? "assignable") <*>
                     (o .:? "channelId" .!= "UCBR8-60-B28hp2BmDPdntcQ")
                     <*> (o .:? "title"))

instance ToJSON VideoCategorySnippet where
        toJSON VideoCategorySnippet'{..}
          = object
              (catMaybes
                 [("assignable" .=) <$> _vcsAssignable,
                  Just ("channelId" .= _vcsChannelId),
                  ("title" .=) <$> _vcsTitle])

-- | An i18nLanguage resource identifies a UI language currently supported by
-- YouTube.
--
-- /See:/ 'i18nLanguage' smart constructor.
data I18nLanguage = I18nLanguage'
    { _ilEtag    :: !(Maybe Text)
    , _ilSnippet :: !(Maybe I18nLanguageSnippet)
    , _ilKind    :: !Text
    , _ilId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilEtag'
--
-- * 'ilSnippet'
--
-- * 'ilKind'
--
-- * 'ilId'
i18nLanguage
    :: I18nLanguage
i18nLanguage =
    I18nLanguage'
    { _ilEtag = Nothing
    , _ilSnippet = Nothing
    , _ilKind = "youtube#i18nLanguage"
    , _ilId = Nothing
    }

-- | Etag of this resource.
ilEtag :: Lens' I18nLanguage (Maybe Text)
ilEtag = lens _ilEtag (\ s a -> s{_ilEtag = a})

-- | The snippet object contains basic details about the i18n language, such
-- as language code and human-readable name.
ilSnippet :: Lens' I18nLanguage (Maybe I18nLanguageSnippet)
ilSnippet
  = lens _ilSnippet (\ s a -> s{_ilSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nLanguage\".
ilKind :: Lens' I18nLanguage Text
ilKind = lens _ilKind (\ s a -> s{_ilKind = a})

-- | The ID that YouTube uses to uniquely identify the i18n language.
ilId :: Lens' I18nLanguage (Maybe Text)
ilId = lens _ilId (\ s a -> s{_ilId = a})

instance FromJSON I18nLanguage where
        parseJSON
          = withObject "I18nLanguage"
              (\ o ->
                 I18nLanguage' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#i18nLanguage")
                     <*> (o .:? "id"))

instance ToJSON I18nLanguage where
        toJSON I18nLanguage'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ilEtag,
                  ("snippet" .=) <$> _ilSnippet,
                  Just ("kind" .= _ilKind), ("id" .=) <$> _ilId])

-- | Statistics about the video, such as the number of times the video was
-- viewed or liked.
--
-- /See:/ 'videoStatistics' smart constructor.
data VideoStatistics = VideoStatistics'
    { _vsLikeCount     :: !(Maybe (Textual Word64))
    , _vsCommentCount  :: !(Maybe (Textual Word64))
    , _vsFavoriteCount :: !(Maybe (Textual Word64))
    , _vsDislikeCount  :: !(Maybe (Textual Word64))
    , _vsViewCount     :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsLikeCount'
--
-- * 'vsCommentCount'
--
-- * 'vsFavoriteCount'
--
-- * 'vsDislikeCount'
--
-- * 'vsViewCount'
videoStatistics
    :: VideoStatistics
videoStatistics =
    VideoStatistics'
    { _vsLikeCount = Nothing
    , _vsCommentCount = Nothing
    , _vsFavoriteCount = Nothing
    , _vsDislikeCount = Nothing
    , _vsViewCount = Nothing
    }

-- | The number of users who have indicated that they liked the video by
-- giving it a positive rating.
vsLikeCount :: Lens' VideoStatistics (Maybe Word64)
vsLikeCount
  = lens _vsLikeCount (\ s a -> s{_vsLikeCount = a}) .
      mapping _Coerce

-- | The number of comments for the video.
vsCommentCount :: Lens' VideoStatistics (Maybe Word64)
vsCommentCount
  = lens _vsCommentCount
      (\ s a -> s{_vsCommentCount = a})
      . mapping _Coerce

-- | The number of users who currently have the video marked as a favorite
-- video.
vsFavoriteCount :: Lens' VideoStatistics (Maybe Word64)
vsFavoriteCount
  = lens _vsFavoriteCount
      (\ s a -> s{_vsFavoriteCount = a})
      . mapping _Coerce

-- | The number of users who have indicated that they disliked the video by
-- giving it a negative rating.
vsDislikeCount :: Lens' VideoStatistics (Maybe Word64)
vsDislikeCount
  = lens _vsDislikeCount
      (\ s a -> s{_vsDislikeCount = a})
      . mapping _Coerce

-- | The number of times the video has been viewed.
vsViewCount :: Lens' VideoStatistics (Maybe Word64)
vsViewCount
  = lens _vsViewCount (\ s a -> s{_vsViewCount = a}) .
      mapping _Coerce

instance FromJSON VideoStatistics where
        parseJSON
          = withObject "VideoStatistics"
              (\ o ->
                 VideoStatistics' <$>
                   (o .:? "likeCount") <*> (o .:? "commentCount") <*>
                     (o .:? "favoriteCount")
                     <*> (o .:? "dislikeCount")
                     <*> (o .:? "viewCount"))

instance ToJSON VideoStatistics where
        toJSON VideoStatistics'{..}
          = object
              (catMaybes
                 [("likeCount" .=) <$> _vsLikeCount,
                  ("commentCount" .=) <$> _vsCommentCount,
                  ("favoriteCount" .=) <$> _vsFavoriteCount,
                  ("dislikeCount" .=) <$> _vsDislikeCount,
                  ("viewCount" .=) <$> _vsViewCount])

--
-- /See:/ 'activityListResponse' smart constructor.
data ActivityListResponse = ActivityListResponse'
    { _alrEtag            :: !(Maybe Text)
    , _alrTokenPagination :: !(Maybe TokenPagination)
    , _alrNextPageToken   :: !(Maybe Text)
    , _alrPageInfo        :: !(Maybe PageInfo)
    , _alrKind            :: !Text
    , _alrItems           :: !(Maybe [Activity])
    , _alrVisitorId       :: !(Maybe Text)
    , _alrEventId         :: !(Maybe Text)
    , _alrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrEtag'
--
-- * 'alrTokenPagination'
--
-- * 'alrNextPageToken'
--
-- * 'alrPageInfo'
--
-- * 'alrKind'
--
-- * 'alrItems'
--
-- * 'alrVisitorId'
--
-- * 'alrEventId'
--
-- * 'alrPrevPageToken'
activityListResponse
    :: ActivityListResponse
activityListResponse =
    ActivityListResponse'
    { _alrEtag = Nothing
    , _alrTokenPagination = Nothing
    , _alrNextPageToken = Nothing
    , _alrPageInfo = Nothing
    , _alrKind = "youtube#activityListResponse"
    , _alrItems = Nothing
    , _alrVisitorId = Nothing
    , _alrEventId = Nothing
    , _alrPrevPageToken = Nothing
    }

-- | Etag of this resource.
alrEtag :: Lens' ActivityListResponse (Maybe Text)
alrEtag = lens _alrEtag (\ s a -> s{_alrEtag = a})

alrTokenPagination :: Lens' ActivityListResponse (Maybe TokenPagination)
alrTokenPagination
  = lens _alrTokenPagination
      (\ s a -> s{_alrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
alrNextPageToken :: Lens' ActivityListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

alrPageInfo :: Lens' ActivityListResponse (Maybe PageInfo)
alrPageInfo
  = lens _alrPageInfo (\ s a -> s{_alrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#activityListResponse\".
alrKind :: Lens' ActivityListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | A list of activities, or events, that match the request criteria.
alrItems :: Lens' ActivityListResponse [Activity]
alrItems
  = lens _alrItems (\ s a -> s{_alrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
alrVisitorId :: Lens' ActivityListResponse (Maybe Text)
alrVisitorId
  = lens _alrVisitorId (\ s a -> s{_alrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
alrEventId :: Lens' ActivityListResponse (Maybe Text)
alrEventId
  = lens _alrEventId (\ s a -> s{_alrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
alrPrevPageToken :: Lens' ActivityListResponse (Maybe Text)
alrPrevPageToken
  = lens _alrPrevPageToken
      (\ s a -> s{_alrPrevPageToken = a})

instance FromJSON ActivityListResponse where
        parseJSON
          = withObject "ActivityListResponse"
              (\ o ->
                 ActivityListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#activityListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON ActivityListResponse where
        toJSON ActivityListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _alrEtag,
                  ("tokenPagination" .=) <$> _alrTokenPagination,
                  ("nextPageToken" .=) <$> _alrNextPageToken,
                  ("pageInfo" .=) <$> _alrPageInfo,
                  Just ("kind" .= _alrKind),
                  ("items" .=) <$> _alrItems,
                  ("visitorId" .=) <$> _alrVisitorId,
                  ("eventId" .=) <$> _alrEventId,
                  ("prevPageToken" .=) <$> _alrPrevPageToken])

-- | Details about a channel bulletin post.
--
-- /See:/ 'activityContentDetailsBulletin' smart constructor.
newtype ActivityContentDetailsBulletin = ActivityContentDetailsBulletin'
    { _acdbResourceId :: Maybe ResourceId
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsBulletin' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdbResourceId'
activityContentDetailsBulletin
    :: ActivityContentDetailsBulletin
activityContentDetailsBulletin =
    ActivityContentDetailsBulletin'
    { _acdbResourceId = Nothing
    }

-- | The resourceId object contains information that identifies the resource
-- associated with a bulletin post.
acdbResourceId :: Lens' ActivityContentDetailsBulletin (Maybe ResourceId)
acdbResourceId
  = lens _acdbResourceId
      (\ s a -> s{_acdbResourceId = a})

instance FromJSON ActivityContentDetailsBulletin
         where
        parseJSON
          = withObject "ActivityContentDetailsBulletin"
              (\ o ->
                 ActivityContentDetailsBulletin' <$>
                   (o .:? "resourceId"))

instance ToJSON ActivityContentDetailsBulletin where
        toJSON ActivityContentDetailsBulletin'{..}
          = object
              (catMaybes [("resourceId" .=) <$> _acdbResourceId])

--
-- /See:/ 'videoAbuseReport' smart constructor.
data VideoAbuseReport = VideoAbuseReport'
    { _varSecondaryReasonId :: !(Maybe Text)
    , _varReasonId          :: !(Maybe Text)
    , _varVideoId           :: !(Maybe Text)
    , _varLanguage          :: !(Maybe Text)
    , _varComments          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varSecondaryReasonId'
--
-- * 'varReasonId'
--
-- * 'varVideoId'
--
-- * 'varLanguage'
--
-- * 'varComments'
videoAbuseReport
    :: VideoAbuseReport
videoAbuseReport =
    VideoAbuseReport'
    { _varSecondaryReasonId = Nothing
    , _varReasonId = Nothing
    , _varVideoId = Nothing
    , _varLanguage = Nothing
    , _varComments = Nothing
    }

-- | The ID of this abuse report secondary reason.
varSecondaryReasonId :: Lens' VideoAbuseReport (Maybe Text)
varSecondaryReasonId
  = lens _varSecondaryReasonId
      (\ s a -> s{_varSecondaryReasonId = a})

-- | The high-level, or primary, reason that the content is abusive. The
-- value is an abuse report reason ID.
varReasonId :: Lens' VideoAbuseReport (Maybe Text)
varReasonId
  = lens _varReasonId (\ s a -> s{_varReasonId = a})

-- | The ID that YouTube uses to uniquely identify the video.
varVideoId :: Lens' VideoAbuseReport (Maybe Text)
varVideoId
  = lens _varVideoId (\ s a -> s{_varVideoId = a})

-- | The language that the content was viewed in.
varLanguage :: Lens' VideoAbuseReport (Maybe Text)
varLanguage
  = lens _varLanguage (\ s a -> s{_varLanguage = a})

-- | Additional comments regarding the abuse report.
varComments :: Lens' VideoAbuseReport (Maybe Text)
varComments
  = lens _varComments (\ s a -> s{_varComments = a})

instance FromJSON VideoAbuseReport where
        parseJSON
          = withObject "VideoAbuseReport"
              (\ o ->
                 VideoAbuseReport' <$>
                   (o .:? "secondaryReasonId") <*> (o .:? "reasonId")
                     <*> (o .:? "videoId")
                     <*> (o .:? "language")
                     <*> (o .:? "comments"))

instance ToJSON VideoAbuseReport where
        toJSON VideoAbuseReport'{..}
          = object
              (catMaybes
                 [("secondaryReasonId" .=) <$> _varSecondaryReasonId,
                  ("reasonId" .=) <$> _varReasonId,
                  ("videoId" .=) <$> _varVideoId,
                  ("language" .=) <$> _varLanguage,
                  ("comments" .=) <$> _varComments])

-- | Information about an audio stream.
--
-- /See:/ 'videoFileDetailsAudioStream' smart constructor.
data VideoFileDetailsAudioStream = VideoFileDetailsAudioStream'
    { _vfdasBitrateBps   :: !(Maybe (Textual Word64))
    , _vfdasVendor       :: !(Maybe Text)
    , _vfdasCodec        :: !(Maybe Text)
    , _vfdasChannelCount :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetailsAudioStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdasBitrateBps'
--
-- * 'vfdasVendor'
--
-- * 'vfdasCodec'
--
-- * 'vfdasChannelCount'
videoFileDetailsAudioStream
    :: VideoFileDetailsAudioStream
videoFileDetailsAudioStream =
    VideoFileDetailsAudioStream'
    { _vfdasBitrateBps = Nothing
    , _vfdasVendor = Nothing
    , _vfdasCodec = Nothing
    , _vfdasChannelCount = Nothing
    }

-- | The audio stream\'s bitrate, in bits per second.
vfdasBitrateBps :: Lens' VideoFileDetailsAudioStream (Maybe Word64)
vfdasBitrateBps
  = lens _vfdasBitrateBps
      (\ s a -> s{_vfdasBitrateBps = a})
      . mapping _Coerce

-- | A value that uniquely identifies a video vendor. Typically, the value is
-- a four-letter vendor code.
vfdasVendor :: Lens' VideoFileDetailsAudioStream (Maybe Text)
vfdasVendor
  = lens _vfdasVendor (\ s a -> s{_vfdasVendor = a})

-- | The audio codec that the stream uses.
vfdasCodec :: Lens' VideoFileDetailsAudioStream (Maybe Text)
vfdasCodec
  = lens _vfdasCodec (\ s a -> s{_vfdasCodec = a})

-- | The number of audio channels that the stream contains.
vfdasChannelCount :: Lens' VideoFileDetailsAudioStream (Maybe Word32)
vfdasChannelCount
  = lens _vfdasChannelCount
      (\ s a -> s{_vfdasChannelCount = a})
      . mapping _Coerce

instance FromJSON VideoFileDetailsAudioStream where
        parseJSON
          = withObject "VideoFileDetailsAudioStream"
              (\ o ->
                 VideoFileDetailsAudioStream' <$>
                   (o .:? "bitrateBps") <*> (o .:? "vendor") <*>
                     (o .:? "codec")
                     <*> (o .:? "channelCount"))

instance ToJSON VideoFileDetailsAudioStream where
        toJSON VideoFileDetailsAudioStream'{..}
          = object
              (catMaybes
                 [("bitrateBps" .=) <$> _vfdasBitrateBps,
                  ("vendor" .=) <$> _vfdasVendor,
                  ("codec" .=) <$> _vfdasCodec,
                  ("channelCount" .=) <$> _vfdasChannelCount])

--
-- /See:/ 'i18nRegionListResponse' smart constructor.
data I18nRegionListResponse = I18nRegionListResponse'
    { _irlrEtag      :: !(Maybe Text)
    , _irlrKind      :: !Text
    , _irlrItems     :: !(Maybe [I18nRegion])
    , _irlrVisitorId :: !(Maybe Text)
    , _irlrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irlrEtag'
--
-- * 'irlrKind'
--
-- * 'irlrItems'
--
-- * 'irlrVisitorId'
--
-- * 'irlrEventId'
i18nRegionListResponse
    :: I18nRegionListResponse
i18nRegionListResponse =
    I18nRegionListResponse'
    { _irlrEtag = Nothing
    , _irlrKind = "youtube#i18nRegionListResponse"
    , _irlrItems = Nothing
    , _irlrVisitorId = Nothing
    , _irlrEventId = Nothing
    }

-- | Etag of this resource.
irlrEtag :: Lens' I18nRegionListResponse (Maybe Text)
irlrEtag = lens _irlrEtag (\ s a -> s{_irlrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nRegionListResponse\".
irlrKind :: Lens' I18nRegionListResponse Text
irlrKind = lens _irlrKind (\ s a -> s{_irlrKind = a})

-- | A list of regions where YouTube is available. In this map, the i18n
-- region ID is the map key, and its value is the corresponding i18nRegion
-- resource.
irlrItems :: Lens' I18nRegionListResponse [I18nRegion]
irlrItems
  = lens _irlrItems (\ s a -> s{_irlrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
irlrVisitorId :: Lens' I18nRegionListResponse (Maybe Text)
irlrVisitorId
  = lens _irlrVisitorId
      (\ s a -> s{_irlrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
irlrEventId :: Lens' I18nRegionListResponse (Maybe Text)
irlrEventId
  = lens _irlrEventId (\ s a -> s{_irlrEventId = a})

instance FromJSON I18nRegionListResponse where
        parseJSON
          = withObject "I18nRegionListResponse"
              (\ o ->
                 I18nRegionListResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#i18nRegionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON I18nRegionListResponse where
        toJSON I18nRegionListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _irlrEtag,
                  Just ("kind" .= _irlrKind),
                  ("items" .=) <$> _irlrItems,
                  ("visitorId" .=) <$> _irlrVisitorId,
                  ("eventId" .=) <$> _irlrEventId])

-- | Basic details about a guide category.
--
-- /See:/ 'guideCategorySnippet' smart constructor.
data GuideCategorySnippet = GuideCategorySnippet'
    { _gcsChannelId :: !Text
    , _gcsTitle     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategorySnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsChannelId'
--
-- * 'gcsTitle'
guideCategorySnippet
    :: GuideCategorySnippet
guideCategorySnippet =
    GuideCategorySnippet'
    { _gcsChannelId = "UCBR8-60-B28hp2BmDPdntcQ"
    , _gcsTitle = Nothing
    }

gcsChannelId :: Lens' GuideCategorySnippet Text
gcsChannelId
  = lens _gcsChannelId (\ s a -> s{_gcsChannelId = a})

-- | Description of the guide category.
gcsTitle :: Lens' GuideCategorySnippet (Maybe Text)
gcsTitle = lens _gcsTitle (\ s a -> s{_gcsTitle = a})

instance FromJSON GuideCategorySnippet where
        parseJSON
          = withObject "GuideCategorySnippet"
              (\ o ->
                 GuideCategorySnippet' <$>
                   (o .:? "channelId" .!= "UCBR8-60-B28hp2BmDPdntcQ")
                     <*> (o .:? "title"))

instance ToJSON GuideCategorySnippet where
        toJSON GuideCategorySnippet'{..}
          = object
              (catMaybes
                 [Just ("channelId" .= _gcsChannelId),
                  ("title" .=) <$> _gcsTitle])

--
-- /See:/ 'captionListResponse' smart constructor.
data CaptionListResponse = CaptionListResponse'
    { _cEtag      :: !(Maybe Text)
    , _cKind      :: !Text
    , _cItems     :: !(Maybe [Caption])
    , _cVisitorId :: !(Maybe Text)
    , _cEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEtag'
--
-- * 'cKind'
--
-- * 'cItems'
--
-- * 'cVisitorId'
--
-- * 'cEventId'
captionListResponse
    :: CaptionListResponse
captionListResponse =
    CaptionListResponse'
    { _cEtag = Nothing
    , _cKind = "youtube#captionListResponse"
    , _cItems = Nothing
    , _cVisitorId = Nothing
    , _cEventId = Nothing
    }

-- | Etag of this resource.
cEtag :: Lens' CaptionListResponse (Maybe Text)
cEtag = lens _cEtag (\ s a -> s{_cEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#captionListResponse\".
cKind :: Lens' CaptionListResponse Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | A list of captions that match the request criteria.
cItems :: Lens' CaptionListResponse [Caption]
cItems
  = lens _cItems (\ s a -> s{_cItems = a}) . _Default .
      _Coerce

-- | The visitorId identifies the visitor.
cVisitorId :: Lens' CaptionListResponse (Maybe Text)
cVisitorId
  = lens _cVisitorId (\ s a -> s{_cVisitorId = a})

-- | Serialized EventId of the request which produced this response.
cEventId :: Lens' CaptionListResponse (Maybe Text)
cEventId = lens _cEventId (\ s a -> s{_cEventId = a})

instance FromJSON CaptionListResponse where
        parseJSON
          = withObject "CaptionListResponse"
              (\ o ->
                 CaptionListResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#captionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CaptionListResponse where
        toJSON CaptionListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cEtag, Just ("kind" .= _cKind),
                  ("items" .=) <$> _cItems,
                  ("visitorId" .=) <$> _cVisitorId,
                  ("eventId" .=) <$> _cEventId])

-- | Information about the playlist item\'s privacy status.
--
-- /See:/ 'playListItemStatus' smart constructor.
newtype PlayListItemStatus = PlayListItemStatus'
    { _plisPrivacyStatus :: Maybe PlayListItemStatusPrivacyStatus
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plisPrivacyStatus'
playListItemStatus
    :: PlayListItemStatus
playListItemStatus =
    PlayListItemStatus'
    { _plisPrivacyStatus = Nothing
    }

-- | This resource\'s privacy status.
plisPrivacyStatus :: Lens' PlayListItemStatus (Maybe PlayListItemStatusPrivacyStatus)
plisPrivacyStatus
  = lens _plisPrivacyStatus
      (\ s a -> s{_plisPrivacyStatus = a})

instance FromJSON PlayListItemStatus where
        parseJSON
          = withObject "PlayListItemStatus"
              (\ o ->
                 PlayListItemStatus' <$> (o .:? "privacyStatus"))

instance ToJSON PlayListItemStatus where
        toJSON PlayListItemStatus'{..}
          = object
              (catMaybes
                 [("privacyStatus" .=) <$> _plisPrivacyStatus])

-- | Describes the spatial position of a visual widget inside a video. It is
-- a union of various position types, out of which only will be set one.
--
-- /See:/ 'invideoPosition' smart constructor.
data InvideoPosition = InvideoPosition'
    { _ipCornerPosition :: !(Maybe InvideoPositionCornerPosition)
    , _ipType           :: !(Maybe InvideoPositionType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipCornerPosition'
--
-- * 'ipType'
invideoPosition
    :: InvideoPosition
invideoPosition =
    InvideoPosition'
    { _ipCornerPosition = Nothing
    , _ipType = Nothing
    }

-- | Describes in which corner of the video the visual widget will appear.
ipCornerPosition :: Lens' InvideoPosition (Maybe InvideoPositionCornerPosition)
ipCornerPosition
  = lens _ipCornerPosition
      (\ s a -> s{_ipCornerPosition = a})

-- | Defines the position type.
ipType :: Lens' InvideoPosition (Maybe InvideoPositionType)
ipType = lens _ipType (\ s a -> s{_ipType = a})

instance FromJSON InvideoPosition where
        parseJSON
          = withObject "InvideoPosition"
              (\ o ->
                 InvideoPosition' <$>
                   (o .:? "cornerPosition") <*> (o .:? "type"))

instance ToJSON InvideoPosition where
        toJSON InvideoPosition'{..}
          = object
              (catMaybes
                 [("cornerPosition" .=) <$> _ipCornerPosition,
                  ("type" .=) <$> _ipType])

--
-- /See:/ 'liveStreamHealthStatus' smart constructor.
data LiveStreamHealthStatus = LiveStreamHealthStatus'
    { _lshsStatus                :: !(Maybe LiveStreamHealthStatusStatus)
    , _lshsConfigurationIssues   :: !(Maybe [LiveStreamConfigurationIssue])
    , _lshsLastUpdateTimeSeconds :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamHealthStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lshsStatus'
--
-- * 'lshsConfigurationIssues'
--
-- * 'lshsLastUpdateTimeSeconds'
liveStreamHealthStatus
    :: LiveStreamHealthStatus
liveStreamHealthStatus =
    LiveStreamHealthStatus'
    { _lshsStatus = Nothing
    , _lshsConfigurationIssues = Nothing
    , _lshsLastUpdateTimeSeconds = Nothing
    }

-- | The status code of this stream
lshsStatus :: Lens' LiveStreamHealthStatus (Maybe LiveStreamHealthStatusStatus)
lshsStatus
  = lens _lshsStatus (\ s a -> s{_lshsStatus = a})

-- | The configurations issues on this stream
lshsConfigurationIssues :: Lens' LiveStreamHealthStatus [LiveStreamConfigurationIssue]
lshsConfigurationIssues
  = lens _lshsConfigurationIssues
      (\ s a -> s{_lshsConfigurationIssues = a})
      . _Default
      . _Coerce

-- | The last time this status was updated (in seconds)
lshsLastUpdateTimeSeconds :: Lens' LiveStreamHealthStatus (Maybe Word64)
lshsLastUpdateTimeSeconds
  = lens _lshsLastUpdateTimeSeconds
      (\ s a -> s{_lshsLastUpdateTimeSeconds = a})
      . mapping _Coerce

instance FromJSON LiveStreamHealthStatus where
        parseJSON
          = withObject "LiveStreamHealthStatus"
              (\ o ->
                 LiveStreamHealthStatus' <$>
                   (o .:? "status") <*>
                     (o .:? "configurationIssues" .!= mempty)
                     <*> (o .:? "lastUpdateTimeSeconds"))

instance ToJSON LiveStreamHealthStatus where
        toJSON LiveStreamHealthStatus'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lshsStatus,
                  ("configurationIssues" .=) <$>
                    _lshsConfigurationIssues,
                  ("lastUpdateTimeSeconds" .=) <$>
                    _lshsLastUpdateTimeSeconds])

-- | Localizations for different languages
--
-- /See:/ 'channelSectionLocalizations' smart constructor.
newtype ChannelSectionLocalizations = ChannelSectionLocalizations'
    { _cslAddtional :: HashMap Text ChannelSectionLocalization
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionLocalizations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslAddtional'
channelSectionLocalizations
    :: HashMap Text ChannelSectionLocalization -- ^ 'cslAddtional'
    -> ChannelSectionLocalizations
channelSectionLocalizations pCslAddtional_ =
    ChannelSectionLocalizations'
    { _cslAddtional = _Coerce # pCslAddtional_
    }

-- | The language tag, using string since map_key require simple types.
cslAddtional :: Lens' ChannelSectionLocalizations (HashMap Text ChannelSectionLocalization)
cslAddtional
  = lens _cslAddtional (\ s a -> s{_cslAddtional = a})
      . _Coerce

instance FromJSON ChannelSectionLocalizations where
        parseJSON
          = withObject "ChannelSectionLocalizations"
              (\ o ->
                 ChannelSectionLocalizations' <$> (parseJSONObject o))

instance ToJSON ChannelSectionLocalizations where
        toJSON = toJSON . _cslAddtional

--
-- /See:/ 'subscriptionListResponse' smart constructor.
data SubscriptionListResponse = SubscriptionListResponse'
    { _subEtag            :: !(Maybe Text)
    , _subTokenPagination :: !(Maybe TokenPagination)
    , _subNextPageToken   :: !(Maybe Text)
    , _subPageInfo        :: !(Maybe PageInfo)
    , _subKind            :: !Text
    , _subItems           :: !(Maybe [Subscription])
    , _subVisitorId       :: !(Maybe Text)
    , _subEventId         :: !(Maybe Text)
    , _subPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subEtag'
--
-- * 'subTokenPagination'
--
-- * 'subNextPageToken'
--
-- * 'subPageInfo'
--
-- * 'subKind'
--
-- * 'subItems'
--
-- * 'subVisitorId'
--
-- * 'subEventId'
--
-- * 'subPrevPageToken'
subscriptionListResponse
    :: SubscriptionListResponse
subscriptionListResponse =
    SubscriptionListResponse'
    { _subEtag = Nothing
    , _subTokenPagination = Nothing
    , _subNextPageToken = Nothing
    , _subPageInfo = Nothing
    , _subKind = "youtube#subscriptionListResponse"
    , _subItems = Nothing
    , _subVisitorId = Nothing
    , _subEventId = Nothing
    , _subPrevPageToken = Nothing
    }

-- | Etag of this resource.
subEtag :: Lens' SubscriptionListResponse (Maybe Text)
subEtag = lens _subEtag (\ s a -> s{_subEtag = a})

subTokenPagination :: Lens' SubscriptionListResponse (Maybe TokenPagination)
subTokenPagination
  = lens _subTokenPagination
      (\ s a -> s{_subTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
subNextPageToken :: Lens' SubscriptionListResponse (Maybe Text)
subNextPageToken
  = lens _subNextPageToken
      (\ s a -> s{_subNextPageToken = a})

subPageInfo :: Lens' SubscriptionListResponse (Maybe PageInfo)
subPageInfo
  = lens _subPageInfo (\ s a -> s{_subPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#subscriptionListResponse\".
subKind :: Lens' SubscriptionListResponse Text
subKind = lens _subKind (\ s a -> s{_subKind = a})

-- | A list of subscriptions that match the request criteria.
subItems :: Lens' SubscriptionListResponse [Subscription]
subItems
  = lens _subItems (\ s a -> s{_subItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
subVisitorId :: Lens' SubscriptionListResponse (Maybe Text)
subVisitorId
  = lens _subVisitorId (\ s a -> s{_subVisitorId = a})

-- | Serialized EventId of the request which produced this response.
subEventId :: Lens' SubscriptionListResponse (Maybe Text)
subEventId
  = lens _subEventId (\ s a -> s{_subEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
subPrevPageToken :: Lens' SubscriptionListResponse (Maybe Text)
subPrevPageToken
  = lens _subPrevPageToken
      (\ s a -> s{_subPrevPageToken = a})

instance FromJSON SubscriptionListResponse where
        parseJSON
          = withObject "SubscriptionListResponse"
              (\ o ->
                 SubscriptionListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#subscriptionListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON SubscriptionListResponse where
        toJSON SubscriptionListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _subEtag,
                  ("tokenPagination" .=) <$> _subTokenPagination,
                  ("nextPageToken" .=) <$> _subNextPageToken,
                  ("pageInfo" .=) <$> _subPageInfo,
                  Just ("kind" .= _subKind),
                  ("items" .=) <$> _subItems,
                  ("visitorId" .=) <$> _subVisitorId,
                  ("eventId" .=) <$> _subEventId,
                  ("prevPageToken" .=) <$> _subPrevPageToken])

-- | Localized versions of certain video properties (e.g. title).
--
-- /See:/ 'videoLocalization' smart constructor.
data VideoLocalization = VideoLocalization'
    { _vlTitle       :: !(Maybe Text)
    , _vlDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlTitle'
--
-- * 'vlDescription'
videoLocalization
    :: VideoLocalization
videoLocalization =
    VideoLocalization'
    { _vlTitle = Nothing
    , _vlDescription = Nothing
    }

-- | Localized version of the video\'s title.
vlTitle :: Lens' VideoLocalization (Maybe Text)
vlTitle = lens _vlTitle (\ s a -> s{_vlTitle = a})

-- | Localized version of the video\'s description.
vlDescription :: Lens' VideoLocalization (Maybe Text)
vlDescription
  = lens _vlDescription
      (\ s a -> s{_vlDescription = a})

instance FromJSON VideoLocalization where
        parseJSON
          = withObject "VideoLocalization"
              (\ o ->
                 VideoLocalization' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON VideoLocalization where
        toJSON VideoLocalization'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _vlTitle,
                  ("description" .=) <$> _vlDescription])

--
-- /See:/ 'commentListResponse' smart constructor.
data CommentListResponse = CommentListResponse'
    { _comEtag            :: !(Maybe Text)
    , _comTokenPagination :: !(Maybe TokenPagination)
    , _comNextPageToken   :: !(Maybe Text)
    , _comPageInfo        :: !(Maybe PageInfo)
    , _comKind            :: !Text
    , _comItems           :: !(Maybe [Comment])
    , _comVisitorId       :: !(Maybe Text)
    , _comEventId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comEtag'
--
-- * 'comTokenPagination'
--
-- * 'comNextPageToken'
--
-- * 'comPageInfo'
--
-- * 'comKind'
--
-- * 'comItems'
--
-- * 'comVisitorId'
--
-- * 'comEventId'
commentListResponse
    :: CommentListResponse
commentListResponse =
    CommentListResponse'
    { _comEtag = Nothing
    , _comTokenPagination = Nothing
    , _comNextPageToken = Nothing
    , _comPageInfo = Nothing
    , _comKind = "youtube#commentListResponse"
    , _comItems = Nothing
    , _comVisitorId = Nothing
    , _comEventId = Nothing
    }

-- | Etag of this resource.
comEtag :: Lens' CommentListResponse (Maybe Text)
comEtag = lens _comEtag (\ s a -> s{_comEtag = a})

comTokenPagination :: Lens' CommentListResponse (Maybe TokenPagination)
comTokenPagination
  = lens _comTokenPagination
      (\ s a -> s{_comTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
comNextPageToken :: Lens' CommentListResponse (Maybe Text)
comNextPageToken
  = lens _comNextPageToken
      (\ s a -> s{_comNextPageToken = a})

comPageInfo :: Lens' CommentListResponse (Maybe PageInfo)
comPageInfo
  = lens _comPageInfo (\ s a -> s{_comPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentListResponse\".
comKind :: Lens' CommentListResponse Text
comKind = lens _comKind (\ s a -> s{_comKind = a})

-- | A list of comments that match the request criteria.
comItems :: Lens' CommentListResponse [Comment]
comItems
  = lens _comItems (\ s a -> s{_comItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
comVisitorId :: Lens' CommentListResponse (Maybe Text)
comVisitorId
  = lens _comVisitorId (\ s a -> s{_comVisitorId = a})

-- | Serialized EventId of the request which produced this response.
comEventId :: Lens' CommentListResponse (Maybe Text)
comEventId
  = lens _comEventId (\ s a -> s{_comEventId = a})

instance FromJSON CommentListResponse where
        parseJSON
          = withObject "CommentListResponse"
              (\ o ->
                 CommentListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#commentListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON CommentListResponse where
        toJSON CommentListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _comEtag,
                  ("tokenPagination" .=) <$> _comTokenPagination,
                  ("nextPageToken" .=) <$> _comNextPageToken,
                  ("pageInfo" .=) <$> _comPageInfo,
                  Just ("kind" .= _comKind),
                  ("items" .=) <$> _comItems,
                  ("visitorId" .=) <$> _comVisitorId,
                  ("eventId" .=) <$> _comEventId])

-- | Player to be used for a video playback.
--
-- /See:/ 'videoPlayer' smart constructor.
newtype VideoPlayer = VideoPlayer'
    { _vpEmbedHTML :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpEmbedHTML'
videoPlayer
    :: VideoPlayer
videoPlayer =
    VideoPlayer'
    { _vpEmbedHTML = Nothing
    }

-- | An
-- tag that embeds a player that will play the video.
vpEmbedHTML :: Lens' VideoPlayer (Maybe Text)
vpEmbedHTML
  = lens _vpEmbedHTML (\ s a -> s{_vpEmbedHTML = a})

instance FromJSON VideoPlayer where
        parseJSON
          = withObject "VideoPlayer"
              (\ o -> VideoPlayer' <$> (o .:? "embedHtml"))

instance ToJSON VideoPlayer where
        toJSON VideoPlayer'{..}
          = object
              (catMaybes [("embedHtml" .=) <$> _vpEmbedHTML])

-- | Describes a single promoted item id. It is a union of various possible
-- types.
--
-- /See:/ 'promotedItemId' smart constructor.
data PromotedItemId = PromotedItemId'
    { _piiRecentlyUploadedBy :: !(Maybe Text)
    , _piiVideoId            :: !(Maybe Text)
    , _piiWebsiteURL         :: !(Maybe Text)
    , _piiType               :: !(Maybe PromotedItemIdType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PromotedItemId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piiRecentlyUploadedBy'
--
-- * 'piiVideoId'
--
-- * 'piiWebsiteURL'
--
-- * 'piiType'
promotedItemId
    :: PromotedItemId
promotedItemId =
    PromotedItemId'
    { _piiRecentlyUploadedBy = Nothing
    , _piiVideoId = Nothing
    , _piiWebsiteURL = Nothing
    , _piiType = Nothing
    }

-- | If type is recentUpload, this field identifies the channel from which to
-- take the recent upload. If missing, the channel is assumed to be the
-- same channel for which the invideoPromotion is set.
piiRecentlyUploadedBy :: Lens' PromotedItemId (Maybe Text)
piiRecentlyUploadedBy
  = lens _piiRecentlyUploadedBy
      (\ s a -> s{_piiRecentlyUploadedBy = a})

-- | If the promoted item represents a video, this field represents the
-- unique YouTube ID identifying it. This field will be present only if
-- type has the value video.
piiVideoId :: Lens' PromotedItemId (Maybe Text)
piiVideoId
  = lens _piiVideoId (\ s a -> s{_piiVideoId = a})

-- | If the promoted item represents a website, this field represents the url
-- pointing to the website. This field will be present only if type has the
-- value website.
piiWebsiteURL :: Lens' PromotedItemId (Maybe Text)
piiWebsiteURL
  = lens _piiWebsiteURL
      (\ s a -> s{_piiWebsiteURL = a})

-- | Describes the type of the promoted item.
piiType :: Lens' PromotedItemId (Maybe PromotedItemIdType)
piiType = lens _piiType (\ s a -> s{_piiType = a})

instance FromJSON PromotedItemId where
        parseJSON
          = withObject "PromotedItemId"
              (\ o ->
                 PromotedItemId' <$>
                   (o .:? "recentlyUploadedBy") <*> (o .:? "videoId")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "type"))

instance ToJSON PromotedItemId where
        toJSON PromotedItemId'{..}
          = object
              (catMaybes
                 [("recentlyUploadedBy" .=) <$>
                    _piiRecentlyUploadedBy,
                  ("videoId" .=) <$> _piiVideoId,
                  ("websiteUrl" .=) <$> _piiWebsiteURL,
                  ("type" .=) <$> _piiType])

--
-- /See:/ 'localizedString' smart constructor.
data LocalizedString = LocalizedString'
    { _lsValue    :: !(Maybe Text)
    , _lsLanguage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsValue'
--
-- * 'lsLanguage'
localizedString
    :: LocalizedString
localizedString =
    LocalizedString'
    { _lsValue = Nothing
    , _lsLanguage = Nothing
    }

lsValue :: Lens' LocalizedString (Maybe Text)
lsValue = lens _lsValue (\ s a -> s{_lsValue = a})

lsLanguage :: Lens' LocalizedString (Maybe Text)
lsLanguage
  = lens _lsLanguage (\ s a -> s{_lsLanguage = a})

instance FromJSON LocalizedString where
        parseJSON
          = withObject "LocalizedString"
              (\ o ->
                 LocalizedString' <$>
                   (o .:? "value") <*> (o .:? "language"))

instance ToJSON LocalizedString where
        toJSON LocalizedString'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _lsValue,
                  ("language" .=) <$> _lsLanguage])

--
-- /See:/ 'playListItemListResponse' smart constructor.
data PlayListItemListResponse = PlayListItemListResponse'
    { _plilrEtag            :: !(Maybe Text)
    , _plilrTokenPagination :: !(Maybe TokenPagination)
    , _plilrNextPageToken   :: !(Maybe Text)
    , _plilrPageInfo        :: !(Maybe PageInfo)
    , _plilrKind            :: !Text
    , _plilrItems           :: !(Maybe [PlayListItem])
    , _plilrVisitorId       :: !(Maybe Text)
    , _plilrEventId         :: !(Maybe Text)
    , _plilrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plilrEtag'
--
-- * 'plilrTokenPagination'
--
-- * 'plilrNextPageToken'
--
-- * 'plilrPageInfo'
--
-- * 'plilrKind'
--
-- * 'plilrItems'
--
-- * 'plilrVisitorId'
--
-- * 'plilrEventId'
--
-- * 'plilrPrevPageToken'
playListItemListResponse
    :: PlayListItemListResponse
playListItemListResponse =
    PlayListItemListResponse'
    { _plilrEtag = Nothing
    , _plilrTokenPagination = Nothing
    , _plilrNextPageToken = Nothing
    , _plilrPageInfo = Nothing
    , _plilrKind = "youtube#playlistItemListResponse"
    , _plilrItems = Nothing
    , _plilrVisitorId = Nothing
    , _plilrEventId = Nothing
    , _plilrPrevPageToken = Nothing
    }

-- | Etag of this resource.
plilrEtag :: Lens' PlayListItemListResponse (Maybe Text)
plilrEtag
  = lens _plilrEtag (\ s a -> s{_plilrEtag = a})

plilrTokenPagination :: Lens' PlayListItemListResponse (Maybe TokenPagination)
plilrTokenPagination
  = lens _plilrTokenPagination
      (\ s a -> s{_plilrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
plilrNextPageToken :: Lens' PlayListItemListResponse (Maybe Text)
plilrNextPageToken
  = lens _plilrNextPageToken
      (\ s a -> s{_plilrNextPageToken = a})

plilrPageInfo :: Lens' PlayListItemListResponse (Maybe PageInfo)
plilrPageInfo
  = lens _plilrPageInfo
      (\ s a -> s{_plilrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistItemListResponse\".
plilrKind :: Lens' PlayListItemListResponse Text
plilrKind
  = lens _plilrKind (\ s a -> s{_plilrKind = a})

-- | A list of playlist items that match the request criteria.
plilrItems :: Lens' PlayListItemListResponse [PlayListItem]
plilrItems
  = lens _plilrItems (\ s a -> s{_plilrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
plilrVisitorId :: Lens' PlayListItemListResponse (Maybe Text)
plilrVisitorId
  = lens _plilrVisitorId
      (\ s a -> s{_plilrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
plilrEventId :: Lens' PlayListItemListResponse (Maybe Text)
plilrEventId
  = lens _plilrEventId (\ s a -> s{_plilrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
plilrPrevPageToken :: Lens' PlayListItemListResponse (Maybe Text)
plilrPrevPageToken
  = lens _plilrPrevPageToken
      (\ s a -> s{_plilrPrevPageToken = a})

instance FromJSON PlayListItemListResponse where
        parseJSON
          = withObject "PlayListItemListResponse"
              (\ o ->
                 PlayListItemListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!= "youtube#playlistItemListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON PlayListItemListResponse where
        toJSON PlayListItemListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _plilrEtag,
                  ("tokenPagination" .=) <$> _plilrTokenPagination,
                  ("nextPageToken" .=) <$> _plilrNextPageToken,
                  ("pageInfo" .=) <$> _plilrPageInfo,
                  Just ("kind" .= _plilrKind),
                  ("items" .=) <$> _plilrItems,
                  ("visitorId" .=) <$> _plilrVisitorId,
                  ("eventId" .=) <$> _plilrEventId,
                  ("prevPageToken" .=) <$> _plilrPrevPageToken])

-- | A guideCategory resource identifies a category that YouTube
-- algorithmically assigns based on a channel\'s content or other
-- indicators, such as the channel\'s popularity. The list is similar to
-- video categories, with the difference being that a video\'s uploader can
-- assign a video category but only YouTube can assign a channel category.
--
-- /See:/ 'guideCategory' smart constructor.
data GuideCategory = GuideCategory'
    { _gcEtag    :: !(Maybe Text)
    , _gcSnippet :: !(Maybe GuideCategorySnippet)
    , _gcKind    :: !Text
    , _gcId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcEtag'
--
-- * 'gcSnippet'
--
-- * 'gcKind'
--
-- * 'gcId'
guideCategory
    :: GuideCategory
guideCategory =
    GuideCategory'
    { _gcEtag = Nothing
    , _gcSnippet = Nothing
    , _gcKind = "youtube#guideCategory"
    , _gcId = Nothing
    }

-- | Etag of this resource.
gcEtag :: Lens' GuideCategory (Maybe Text)
gcEtag = lens _gcEtag (\ s a -> s{_gcEtag = a})

-- | The snippet object contains basic details about the category, such as
-- its title.
gcSnippet :: Lens' GuideCategory (Maybe GuideCategorySnippet)
gcSnippet
  = lens _gcSnippet (\ s a -> s{_gcSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#guideCategory\".
gcKind :: Lens' GuideCategory Text
gcKind = lens _gcKind (\ s a -> s{_gcKind = a})

-- | The ID that YouTube uses to uniquely identify the guide category.
gcId :: Lens' GuideCategory (Maybe Text)
gcId = lens _gcId (\ s a -> s{_gcId = a})

instance FromJSON GuideCategory where
        parseJSON
          = withObject "GuideCategory"
              (\ o ->
                 GuideCategory' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#guideCategory")
                     <*> (o .:? "id"))

instance ToJSON GuideCategory where
        toJSON GuideCategory'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gcEtag,
                  ("snippet" .=) <$> _gcSnippet,
                  Just ("kind" .= _gcKind), ("id" .=) <$> _gcId])

-- | Basic details about a search result, including title, description and
-- thumbnails of the item referenced by the search result.
--
-- /See:/ 'searchResultSnippet' smart constructor.
data SearchResultSnippet = SearchResultSnippet'
    { _srsPublishedAt          :: !(Maybe DateTime')
    , _srsChannelTitle         :: !(Maybe Text)
    , _srsChannelId            :: !(Maybe Text)
    , _srsThumbnails           :: !(Maybe ThumbnailDetails)
    , _srsTitle                :: !(Maybe Text)
    , _srsLiveBroadcastContent :: !(Maybe SearchResultSnippetLiveBroadcastContent)
    , _srsDescription          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchResultSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsPublishedAt'
--
-- * 'srsChannelTitle'
--
-- * 'srsChannelId'
--
-- * 'srsThumbnails'
--
-- * 'srsTitle'
--
-- * 'srsLiveBroadcastContent'
--
-- * 'srsDescription'
searchResultSnippet
    :: SearchResultSnippet
searchResultSnippet =
    SearchResultSnippet'
    { _srsPublishedAt = Nothing
    , _srsChannelTitle = Nothing
    , _srsChannelId = Nothing
    , _srsThumbnails = Nothing
    , _srsTitle = Nothing
    , _srsLiveBroadcastContent = Nothing
    , _srsDescription = Nothing
    }

-- | The creation date and time of the resource that the search result
-- identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ)
-- format.
srsPublishedAt :: Lens' SearchResultSnippet (Maybe UTCTime)
srsPublishedAt
  = lens _srsPublishedAt
      (\ s a -> s{_srsPublishedAt = a})
      . mapping _DateTime

-- | The title of the channel that published the resource that the search
-- result identifies.
srsChannelTitle :: Lens' SearchResultSnippet (Maybe Text)
srsChannelTitle
  = lens _srsChannelTitle
      (\ s a -> s{_srsChannelTitle = a})

-- | The value that YouTube uses to uniquely identify the channel that
-- published the resource that the search result identifies.
srsChannelId :: Lens' SearchResultSnippet (Maybe Text)
srsChannelId
  = lens _srsChannelId (\ s a -> s{_srsChannelId = a})

-- | A map of thumbnail images associated with the search result. For each
-- object in the map, the key is the name of the thumbnail image, and the
-- value is an object that contains other information about the thumbnail.
srsThumbnails :: Lens' SearchResultSnippet (Maybe ThumbnailDetails)
srsThumbnails
  = lens _srsThumbnails
      (\ s a -> s{_srsThumbnails = a})

-- | The title of the search result.
srsTitle :: Lens' SearchResultSnippet (Maybe Text)
srsTitle = lens _srsTitle (\ s a -> s{_srsTitle = a})

-- | It indicates if the resource (video or channel) has upcoming\/active
-- live broadcast content. Or it\'s \"none\" if there is not any
-- upcoming\/active live broadcasts.
srsLiveBroadcastContent :: Lens' SearchResultSnippet (Maybe SearchResultSnippetLiveBroadcastContent)
srsLiveBroadcastContent
  = lens _srsLiveBroadcastContent
      (\ s a -> s{_srsLiveBroadcastContent = a})

-- | A description of the search result.
srsDescription :: Lens' SearchResultSnippet (Maybe Text)
srsDescription
  = lens _srsDescription
      (\ s a -> s{_srsDescription = a})

instance FromJSON SearchResultSnippet where
        parseJSON
          = withObject "SearchResultSnippet"
              (\ o ->
                 SearchResultSnippet' <$>
                   (o .:? "publishedAt") <*> (o .:? "channelTitle") <*>
                     (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "liveBroadcastContent")
                     <*> (o .:? "description"))

instance ToJSON SearchResultSnippet where
        toJSON SearchResultSnippet'{..}
          = object
              (catMaybes
                 [("publishedAt" .=) <$> _srsPublishedAt,
                  ("channelTitle" .=) <$> _srsChannelTitle,
                  ("channelId" .=) <$> _srsChannelId,
                  ("thumbnails" .=) <$> _srsThumbnails,
                  ("title" .=) <$> _srsTitle,
                  ("liveBroadcastContent" .=) <$>
                    _srsLiveBroadcastContent,
                  ("description" .=) <$> _srsDescription])

--
-- /See:/ 'sponsorListResponse' smart constructor.
data SponsorListResponse = SponsorListResponse'
    { _spoEtag            :: !(Maybe Text)
    , _spoTokenPagination :: !(Maybe TokenPagination)
    , _spoNextPageToken   :: !(Maybe Text)
    , _spoPageInfo        :: !(Maybe PageInfo)
    , _spoKind            :: !Text
    , _spoItems           :: !(Maybe [Sponsor])
    , _spoVisitorId       :: !(Maybe Text)
    , _spoEventId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SponsorListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spoEtag'
--
-- * 'spoTokenPagination'
--
-- * 'spoNextPageToken'
--
-- * 'spoPageInfo'
--
-- * 'spoKind'
--
-- * 'spoItems'
--
-- * 'spoVisitorId'
--
-- * 'spoEventId'
sponsorListResponse
    :: SponsorListResponse
sponsorListResponse =
    SponsorListResponse'
    { _spoEtag = Nothing
    , _spoTokenPagination = Nothing
    , _spoNextPageToken = Nothing
    , _spoPageInfo = Nothing
    , _spoKind = "youtube#sponsorListResponse"
    , _spoItems = Nothing
    , _spoVisitorId = Nothing
    , _spoEventId = Nothing
    }

-- | Etag of this resource.
spoEtag :: Lens' SponsorListResponse (Maybe Text)
spoEtag = lens _spoEtag (\ s a -> s{_spoEtag = a})

spoTokenPagination :: Lens' SponsorListResponse (Maybe TokenPagination)
spoTokenPagination
  = lens _spoTokenPagination
      (\ s a -> s{_spoTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
spoNextPageToken :: Lens' SponsorListResponse (Maybe Text)
spoNextPageToken
  = lens _spoNextPageToken
      (\ s a -> s{_spoNextPageToken = a})

spoPageInfo :: Lens' SponsorListResponse (Maybe PageInfo)
spoPageInfo
  = lens _spoPageInfo (\ s a -> s{_spoPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#sponsorListResponse\".
spoKind :: Lens' SponsorListResponse Text
spoKind = lens _spoKind (\ s a -> s{_spoKind = a})

-- | A list of sponsors that match the request criteria.
spoItems :: Lens' SponsorListResponse [Sponsor]
spoItems
  = lens _spoItems (\ s a -> s{_spoItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
spoVisitorId :: Lens' SponsorListResponse (Maybe Text)
spoVisitorId
  = lens _spoVisitorId (\ s a -> s{_spoVisitorId = a})

-- | Serialized EventId of the request which produced this response.
spoEventId :: Lens' SponsorListResponse (Maybe Text)
spoEventId
  = lens _spoEventId (\ s a -> s{_spoEventId = a})

instance FromJSON SponsorListResponse where
        parseJSON
          = withObject "SponsorListResponse"
              (\ o ->
                 SponsorListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*> (o .:? "kind" .!= "youtube#sponsorListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON SponsorListResponse where
        toJSON SponsorListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _spoEtag,
                  ("tokenPagination" .=) <$> _spoTokenPagination,
                  ("nextPageToken" .=) <$> _spoNextPageToken,
                  ("pageInfo" .=) <$> _spoPageInfo,
                  Just ("kind" .= _spoKind),
                  ("items" .=) <$> _spoItems,
                  ("visitorId" .=) <$> _spoVisitorId,
                  ("eventId" .=) <$> _spoEventId])

--
-- /See:/ 'liveBroadcastTopicSnippet' smart constructor.
data LiveBroadcastTopicSnippet = LiveBroadcastTopicSnippet'
    { _lbtsName        :: !(Maybe Text)
    , _lbtsReleaseDate :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopicSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtsName'
--
-- * 'lbtsReleaseDate'
liveBroadcastTopicSnippet
    :: LiveBroadcastTopicSnippet
liveBroadcastTopicSnippet =
    LiveBroadcastTopicSnippet'
    { _lbtsName = Nothing
    , _lbtsReleaseDate = Nothing
    }

-- | The name of the topic.
lbtsName :: Lens' LiveBroadcastTopicSnippet (Maybe Text)
lbtsName = lens _lbtsName (\ s a -> s{_lbtsName = a})

-- | The date at which the topic was released. Filled for types: videoGame
lbtsReleaseDate :: Lens' LiveBroadcastTopicSnippet (Maybe Text)
lbtsReleaseDate
  = lens _lbtsReleaseDate
      (\ s a -> s{_lbtsReleaseDate = a})

instance FromJSON LiveBroadcastTopicSnippet where
        parseJSON
          = withObject "LiveBroadcastTopicSnippet"
              (\ o ->
                 LiveBroadcastTopicSnippet' <$>
                   (o .:? "name") <*> (o .:? "releaseDate"))

instance ToJSON LiveBroadcastTopicSnippet where
        toJSON LiveBroadcastTopicSnippet'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lbtsName,
                  ("releaseDate" .=) <$> _lbtsReleaseDate])

-- | An activity resource contains information about an action that a
-- particular channel, or user, has taken on YouTube.The actions reported
-- in activity feeds include rating a video, sharing a video, marking a
-- video as a favorite, commenting on a video, uploading a video, and so
-- forth. Each activity resource identifies the type of action, the channel
-- associated with the action, and the resource(s) associated with the
-- action, such as the video that was rated or uploaded.
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity'
    { _aEtag           :: !(Maybe Text)
    , _aSnippet        :: !(Maybe ActivitySnippet)
    , _aKind           :: !Text
    , _aContentDetails :: !(Maybe ActivityContentDetails)
    , _aId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEtag'
--
-- * 'aSnippet'
--
-- * 'aKind'
--
-- * 'aContentDetails'
--
-- * 'aId'
activity
    :: Activity
activity =
    Activity'
    { _aEtag = Nothing
    , _aSnippet = Nothing
    , _aKind = "youtube#activity"
    , _aContentDetails = Nothing
    , _aId = Nothing
    }

-- | Etag of this resource.
aEtag :: Lens' Activity (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | The snippet object contains basic details about the activity, including
-- the activity\'s type and group ID.
aSnippet :: Lens' Activity (Maybe ActivitySnippet)
aSnippet = lens _aSnippet (\ s a -> s{_aSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#activity\".
aKind :: Lens' Activity Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The contentDetails object contains information about the content
-- associated with the activity. For example, if the snippet.type value is
-- videoRated, then the contentDetails object\'s content identifies the
-- rated video.
aContentDetails :: Lens' Activity (Maybe ActivityContentDetails)
aContentDetails
  = lens _aContentDetails
      (\ s a -> s{_aContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the activity.
aId :: Lens' Activity (Maybe Text)
aId = lens _aId (\ s a -> s{_aId = a})

instance FromJSON Activity where
        parseJSON
          = withObject "Activity"
              (\ o ->
                 Activity' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#activity")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON Activity where
        toJSON Activity'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _aEtag,
                  ("snippet" .=) <$> _aSnippet,
                  Just ("kind" .= _aKind),
                  ("contentDetails" .=) <$> _aContentDetails,
                  ("id" .=) <$> _aId])

-- | Describes an invideo promotion campaign consisting of multiple promoted
-- items. A campaign belongs to a single channel_id.
--
-- /See:/ 'invideoPromotion' smart constructor.
data InvideoPromotion = InvideoPromotion'
    { _ipUseSmartTiming :: !(Maybe Bool)
    , _ipItems          :: !(Maybe [PromotedItem])
    , _ipDefaultTiming  :: !(Maybe InvideoTiming)
    , _ipPosition       :: !(Maybe InvideoPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoPromotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipUseSmartTiming'
--
-- * 'ipItems'
--
-- * 'ipDefaultTiming'
--
-- * 'ipPosition'
invideoPromotion
    :: InvideoPromotion
invideoPromotion =
    InvideoPromotion'
    { _ipUseSmartTiming = Nothing
    , _ipItems = Nothing
    , _ipDefaultTiming = Nothing
    , _ipPosition = Nothing
    }

-- | Indicates whether the channel\'s promotional campaign uses \"smart
-- timing.\" This feature attempts to show promotions at a point in the
-- video when they are more likely to be clicked and less likely to disrupt
-- the viewing experience. This feature also picks up a single promotion to
-- show on each video.
ipUseSmartTiming :: Lens' InvideoPromotion (Maybe Bool)
ipUseSmartTiming
  = lens _ipUseSmartTiming
      (\ s a -> s{_ipUseSmartTiming = a})

-- | List of promoted items in decreasing priority.
ipItems :: Lens' InvideoPromotion [PromotedItem]
ipItems
  = lens _ipItems (\ s a -> s{_ipItems = a}) . _Default
      . _Coerce

-- | The default temporal position within the video where the promoted item
-- will be displayed. Can be overriden by more specific timing in the item.
ipDefaultTiming :: Lens' InvideoPromotion (Maybe InvideoTiming)
ipDefaultTiming
  = lens _ipDefaultTiming
      (\ s a -> s{_ipDefaultTiming = a})

-- | The spatial position within the video where the promoted item will be
-- displayed.
ipPosition :: Lens' InvideoPromotion (Maybe InvideoPosition)
ipPosition
  = lens _ipPosition (\ s a -> s{_ipPosition = a})

instance FromJSON InvideoPromotion where
        parseJSON
          = withObject "InvideoPromotion"
              (\ o ->
                 InvideoPromotion' <$>
                   (o .:? "useSmartTiming") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "defaultTiming")
                     <*> (o .:? "position"))

instance ToJSON InvideoPromotion where
        toJSON InvideoPromotion'{..}
          = object
              (catMaybes
                 [("useSmartTiming" .=) <$> _ipUseSmartTiming,
                  ("items" .=) <$> _ipItems,
                  ("defaultTiming" .=) <$> _ipDefaultTiming,
                  ("position" .=) <$> _ipPosition])

--
-- /See:/ 'invideoBranding' smart constructor.
data InvideoBranding = InvideoBranding'
    { _ibImageURL        :: !(Maybe Text)
    , _ibTargetChannelId :: !(Maybe Text)
    , _ibTiming          :: !(Maybe InvideoTiming)
    , _ibImageBytes      :: !(Maybe (Textual Word8))
    , _ibPosition        :: !(Maybe InvideoPosition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvideoBranding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibImageURL'
--
-- * 'ibTargetChannelId'
--
-- * 'ibTiming'
--
-- * 'ibImageBytes'
--
-- * 'ibPosition'
invideoBranding
    :: InvideoBranding
invideoBranding =
    InvideoBranding'
    { _ibImageURL = Nothing
    , _ibTargetChannelId = Nothing
    , _ibTiming = Nothing
    , _ibImageBytes = Nothing
    , _ibPosition = Nothing
    }

ibImageURL :: Lens' InvideoBranding (Maybe Text)
ibImageURL
  = lens _ibImageURL (\ s a -> s{_ibImageURL = a})

ibTargetChannelId :: Lens' InvideoBranding (Maybe Text)
ibTargetChannelId
  = lens _ibTargetChannelId
      (\ s a -> s{_ibTargetChannelId = a})

ibTiming :: Lens' InvideoBranding (Maybe InvideoTiming)
ibTiming = lens _ibTiming (\ s a -> s{_ibTiming = a})

ibImageBytes :: Lens' InvideoBranding (Maybe Word8)
ibImageBytes
  = lens _ibImageBytes (\ s a -> s{_ibImageBytes = a})
      . mapping _Coerce

ibPosition :: Lens' InvideoBranding (Maybe InvideoPosition)
ibPosition
  = lens _ibPosition (\ s a -> s{_ibPosition = a})

instance FromJSON InvideoBranding where
        parseJSON
          = withObject "InvideoBranding"
              (\ o ->
                 InvideoBranding' <$>
                   (o .:? "imageUrl") <*> (o .:? "targetChannelId") <*>
                     (o .:? "timing")
                     <*> (o .:? "imageBytes")
                     <*> (o .:? "position"))

instance ToJSON InvideoBranding where
        toJSON InvideoBranding'{..}
          = object
              (catMaybes
                 [("imageUrl" .=) <$> _ibImageURL,
                  ("targetChannelId" .=) <$> _ibTargetChannelId,
                  ("timing" .=) <$> _ibTiming,
                  ("imageBytes" .=) <$> _ibImageBytes,
                  ("position" .=) <$> _ibPosition])

-- | A channel banner returned as the response to a channel_banner.insert
-- call.
--
-- /See:/ 'channelBannerResource' smart constructor.
data ChannelBannerResource = ChannelBannerResource'
    { _cbrEtag :: !(Maybe Text)
    , _cbrKind :: !Text
    , _cbrURL  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelBannerResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbrEtag'
--
-- * 'cbrKind'
--
-- * 'cbrURL'
channelBannerResource
    :: ChannelBannerResource
channelBannerResource =
    ChannelBannerResource'
    { _cbrEtag = Nothing
    , _cbrKind = "youtube#channelBannerResource"
    , _cbrURL = Nothing
    }

-- | Etag of this resource.
cbrEtag :: Lens' ChannelBannerResource (Maybe Text)
cbrEtag = lens _cbrEtag (\ s a -> s{_cbrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#channelBannerResource\".
cbrKind :: Lens' ChannelBannerResource Text
cbrKind = lens _cbrKind (\ s a -> s{_cbrKind = a})

-- | The URL of this banner image.
cbrURL :: Lens' ChannelBannerResource (Maybe Text)
cbrURL = lens _cbrURL (\ s a -> s{_cbrURL = a})

instance FromJSON ChannelBannerResource where
        parseJSON
          = withObject "ChannelBannerResource"
              (\ o ->
                 ChannelBannerResource' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#channelBannerResource")
                     <*> (o .:? "url"))

instance ToJSON ChannelBannerResource where
        toJSON ChannelBannerResource'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _cbrEtag, Just ("kind" .= _cbrKind),
                  ("url" .=) <$> _cbrURL])

--
-- /See:/ 'i18nLanguageListResponse' smart constructor.
data I18nLanguageListResponse = I18nLanguageListResponse'
    { _illrEtag      :: !(Maybe Text)
    , _illrKind      :: !Text
    , _illrItems     :: !(Maybe [I18nLanguage])
    , _illrVisitorId :: !(Maybe Text)
    , _illrEventId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguageListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illrEtag'
--
-- * 'illrKind'
--
-- * 'illrItems'
--
-- * 'illrVisitorId'
--
-- * 'illrEventId'
i18nLanguageListResponse
    :: I18nLanguageListResponse
i18nLanguageListResponse =
    I18nLanguageListResponse'
    { _illrEtag = Nothing
    , _illrKind = "youtube#i18nLanguageListResponse"
    , _illrItems = Nothing
    , _illrVisitorId = Nothing
    , _illrEventId = Nothing
    }

-- | Etag of this resource.
illrEtag :: Lens' I18nLanguageListResponse (Maybe Text)
illrEtag = lens _illrEtag (\ s a -> s{_illrEtag = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#i18nLanguageListResponse\".
illrKind :: Lens' I18nLanguageListResponse Text
illrKind = lens _illrKind (\ s a -> s{_illrKind = a})

-- | A list of supported i18n languages. In this map, the i18n language ID is
-- the map key, and its value is the corresponding i18nLanguage resource.
illrItems :: Lens' I18nLanguageListResponse [I18nLanguage]
illrItems
  = lens _illrItems (\ s a -> s{_illrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
illrVisitorId :: Lens' I18nLanguageListResponse (Maybe Text)
illrVisitorId
  = lens _illrVisitorId
      (\ s a -> s{_illrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
illrEventId :: Lens' I18nLanguageListResponse (Maybe Text)
illrEventId
  = lens _illrEventId (\ s a -> s{_illrEventId = a})

instance FromJSON I18nLanguageListResponse where
        parseJSON
          = withObject "I18nLanguageListResponse"
              (\ o ->
                 I18nLanguageListResponse' <$>
                   (o .:? "etag") <*>
                     (o .:? "kind" .!= "youtube#i18nLanguageListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON I18nLanguageListResponse where
        toJSON I18nLanguageListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _illrEtag,
                  Just ("kind" .= _illrKind),
                  ("items" .=) <$> _illrItems,
                  ("visitorId" .=) <$> _illrVisitorId,
                  ("eventId" .=) <$> _illrEventId])

--
-- /See:/ 'playListPlayer' smart constructor.
newtype PlayListPlayer = PlayListPlayer'
    { _plpEmbedHTML :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListPlayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plpEmbedHTML'
playListPlayer
    :: PlayListPlayer
playListPlayer =
    PlayListPlayer'
    { _plpEmbedHTML = Nothing
    }

-- | An
-- tag that embeds a player that will play the playlist.
plpEmbedHTML :: Lens' PlayListPlayer (Maybe Text)
plpEmbedHTML
  = lens _plpEmbedHTML (\ s a -> s{_plpEmbedHTML = a})

instance FromJSON PlayListPlayer where
        parseJSON
          = withObject "PlayListPlayer"
              (\ o -> PlayListPlayer' <$> (o .:? "embedHtml"))

instance ToJSON PlayListPlayer where
        toJSON PlayListPlayer'{..}
          = object
              (catMaybes [("embedHtml" .=) <$> _plpEmbedHTML])

-- | Branding properties of a YouTube channel.
--
-- /See:/ 'channelBrandingSettings' smart constructor.
data ChannelBrandingSettings = ChannelBrandingSettings'
    { _cbsImage   :: !(Maybe ImageSettings)
    , _cbsHints   :: !(Maybe [PropertyValue])
    , _cbsChannel :: !(Maybe ChannelSettings)
    , _cbsWatch   :: !(Maybe WatchSettings)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelBrandingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbsImage'
--
-- * 'cbsHints'
--
-- * 'cbsChannel'
--
-- * 'cbsWatch'
channelBrandingSettings
    :: ChannelBrandingSettings
channelBrandingSettings =
    ChannelBrandingSettings'
    { _cbsImage = Nothing
    , _cbsHints = Nothing
    , _cbsChannel = Nothing
    , _cbsWatch = Nothing
    }

-- | Branding properties for branding images.
cbsImage :: Lens' ChannelBrandingSettings (Maybe ImageSettings)
cbsImage = lens _cbsImage (\ s a -> s{_cbsImage = a})

-- | Additional experimental branding properties.
cbsHints :: Lens' ChannelBrandingSettings [PropertyValue]
cbsHints
  = lens _cbsHints (\ s a -> s{_cbsHints = a}) .
      _Default
      . _Coerce

-- | Branding properties for the channel view.
cbsChannel :: Lens' ChannelBrandingSettings (Maybe ChannelSettings)
cbsChannel
  = lens _cbsChannel (\ s a -> s{_cbsChannel = a})

-- | Branding properties for the watch page.
cbsWatch :: Lens' ChannelBrandingSettings (Maybe WatchSettings)
cbsWatch = lens _cbsWatch (\ s a -> s{_cbsWatch = a})

instance FromJSON ChannelBrandingSettings where
        parseJSON
          = withObject "ChannelBrandingSettings"
              (\ o ->
                 ChannelBrandingSettings' <$>
                   (o .:? "image") <*> (o .:? "hints" .!= mempty) <*>
                     (o .:? "channel")
                     <*> (o .:? "watch"))

instance ToJSON ChannelBrandingSettings where
        toJSON ChannelBrandingSettings'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _cbsImage,
                  ("hints" .=) <$> _cbsHints,
                  ("channel" .=) <$> _cbsChannel,
                  ("watch" .=) <$> _cbsWatch])

-- | A comment thread represents information that applies to a top level
-- comment and all its replies. It can also include the top level comment
-- itself and some of the replies.
--
-- /See:/ 'commentThread' smart constructor.
data CommentThread = CommentThread'
    { _ctEtag    :: !(Maybe Text)
    , _ctSnippet :: !(Maybe CommentThreadSnippet)
    , _ctKind    :: !Text
    , _ctReplies :: !(Maybe CommentThreadReplies)
    , _ctId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctEtag'
--
-- * 'ctSnippet'
--
-- * 'ctKind'
--
-- * 'ctReplies'
--
-- * 'ctId'
commentThread
    :: CommentThread
commentThread =
    CommentThread'
    { _ctEtag = Nothing
    , _ctSnippet = Nothing
    , _ctKind = "youtube#commentThread"
    , _ctReplies = Nothing
    , _ctId = Nothing
    }

-- | Etag of this resource.
ctEtag :: Lens' CommentThread (Maybe Text)
ctEtag = lens _ctEtag (\ s a -> s{_ctEtag = a})

-- | The snippet object contains basic details about the comment thread and
-- also the top level comment.
ctSnippet :: Lens' CommentThread (Maybe CommentThreadSnippet)
ctSnippet
  = lens _ctSnippet (\ s a -> s{_ctSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#commentThread\".
ctKind :: Lens' CommentThread Text
ctKind = lens _ctKind (\ s a -> s{_ctKind = a})

-- | The replies object contains a limited number of replies (if any) to the
-- top level comment found in the snippet.
ctReplies :: Lens' CommentThread (Maybe CommentThreadReplies)
ctReplies
  = lens _ctReplies (\ s a -> s{_ctReplies = a})

-- | The ID that YouTube uses to uniquely identify the comment thread.
ctId :: Lens' CommentThread (Maybe Text)
ctId = lens _ctId (\ s a -> s{_ctId = a})

instance FromJSON CommentThread where
        parseJSON
          = withObject "CommentThread"
              (\ o ->
                 CommentThread' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#commentThread")
                     <*> (o .:? "replies")
                     <*> (o .:? "id"))

instance ToJSON CommentThread where
        toJSON CommentThread'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ctEtag,
                  ("snippet" .=) <$> _ctSnippet,
                  Just ("kind" .= _ctKind),
                  ("replies" .=) <$> _ctReplies, ("id" .=) <$> _ctId])

--
-- /See:/ 'fanFundingEventListResponse' smart constructor.
data FanFundingEventListResponse = FanFundingEventListResponse'
    { _ffelrEtag            :: !(Maybe Text)
    , _ffelrTokenPagination :: !(Maybe TokenPagination)
    , _ffelrNextPageToken   :: !(Maybe Text)
    , _ffelrPageInfo        :: !(Maybe PageInfo)
    , _ffelrKind            :: !Text
    , _ffelrItems           :: !(Maybe [FanFundingEvent])
    , _ffelrVisitorId       :: !(Maybe Text)
    , _ffelrEventId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FanFundingEventListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffelrEtag'
--
-- * 'ffelrTokenPagination'
--
-- * 'ffelrNextPageToken'
--
-- * 'ffelrPageInfo'
--
-- * 'ffelrKind'
--
-- * 'ffelrItems'
--
-- * 'ffelrVisitorId'
--
-- * 'ffelrEventId'
fanFundingEventListResponse
    :: FanFundingEventListResponse
fanFundingEventListResponse =
    FanFundingEventListResponse'
    { _ffelrEtag = Nothing
    , _ffelrTokenPagination = Nothing
    , _ffelrNextPageToken = Nothing
    , _ffelrPageInfo = Nothing
    , _ffelrKind = "youtube#fanFundingEventListResponse"
    , _ffelrItems = Nothing
    , _ffelrVisitorId = Nothing
    , _ffelrEventId = Nothing
    }

-- | Etag of this resource.
ffelrEtag :: Lens' FanFundingEventListResponse (Maybe Text)
ffelrEtag
  = lens _ffelrEtag (\ s a -> s{_ffelrEtag = a})

ffelrTokenPagination :: Lens' FanFundingEventListResponse (Maybe TokenPagination)
ffelrTokenPagination
  = lens _ffelrTokenPagination
      (\ s a -> s{_ffelrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
ffelrNextPageToken :: Lens' FanFundingEventListResponse (Maybe Text)
ffelrNextPageToken
  = lens _ffelrNextPageToken
      (\ s a -> s{_ffelrNextPageToken = a})

ffelrPageInfo :: Lens' FanFundingEventListResponse (Maybe PageInfo)
ffelrPageInfo
  = lens _ffelrPageInfo
      (\ s a -> s{_ffelrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#fanFundingEventListResponse\".
ffelrKind :: Lens' FanFundingEventListResponse Text
ffelrKind
  = lens _ffelrKind (\ s a -> s{_ffelrKind = a})

-- | A list of fan funding events that match the request criteria.
ffelrItems :: Lens' FanFundingEventListResponse [FanFundingEvent]
ffelrItems
  = lens _ffelrItems (\ s a -> s{_ffelrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
ffelrVisitorId :: Lens' FanFundingEventListResponse (Maybe Text)
ffelrVisitorId
  = lens _ffelrVisitorId
      (\ s a -> s{_ffelrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
ffelrEventId :: Lens' FanFundingEventListResponse (Maybe Text)
ffelrEventId
  = lens _ffelrEventId (\ s a -> s{_ffelrEventId = a})

instance FromJSON FanFundingEventListResponse where
        parseJSON
          = withObject "FanFundingEventListResponse"
              (\ o ->
                 FanFundingEventListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#fanFundingEventListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId"))

instance ToJSON FanFundingEventListResponse where
        toJSON FanFundingEventListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ffelrEtag,
                  ("tokenPagination" .=) <$> _ffelrTokenPagination,
                  ("nextPageToken" .=) <$> _ffelrNextPageToken,
                  ("pageInfo" .=) <$> _ffelrPageInfo,
                  Just ("kind" .= _ffelrKind),
                  ("items" .=) <$> _ffelrItems,
                  ("visitorId" .=) <$> _ffelrVisitorId,
                  ("eventId" .=) <$> _ffelrEventId])

-- | Playlist localization setting
--
-- /See:/ 'playListLocalization' smart constructor.
data PlayListLocalization = PlayListLocalization'
    { _pllTitle       :: !(Maybe Text)
    , _pllDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllTitle'
--
-- * 'pllDescription'
playListLocalization
    :: PlayListLocalization
playListLocalization =
    PlayListLocalization'
    { _pllTitle = Nothing
    , _pllDescription = Nothing
    }

-- | The localized strings for playlist\'s title.
pllTitle :: Lens' PlayListLocalization (Maybe Text)
pllTitle = lens _pllTitle (\ s a -> s{_pllTitle = a})

-- | The localized strings for playlist\'s description.
pllDescription :: Lens' PlayListLocalization (Maybe Text)
pllDescription
  = lens _pllDescription
      (\ s a -> s{_pllDescription = a})

instance FromJSON PlayListLocalization where
        parseJSON
          = withObject "PlayListLocalization"
              (\ o ->
                 PlayListLocalization' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON PlayListLocalization where
        toJSON PlayListLocalization'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _pllTitle,
                  ("description" .=) <$> _pllDescription])

--
-- /See:/ 'liveChatBanSnippet' smart constructor.
data LiveChatBanSnippet = LiveChatBanSnippet'
    { _lcbsLiveChatId         :: !(Maybe Text)
    , _lcbsBannedUserDetails  :: !(Maybe ChannelProFileDetails)
    , _lcbsBanDurationSeconds :: !(Maybe (Textual Word64))
    , _lcbsType               :: !(Maybe LiveChatBanSnippetType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveChatBanSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbsLiveChatId'
--
-- * 'lcbsBannedUserDetails'
--
-- * 'lcbsBanDurationSeconds'
--
-- * 'lcbsType'
liveChatBanSnippet
    :: LiveChatBanSnippet
liveChatBanSnippet =
    LiveChatBanSnippet'
    { _lcbsLiveChatId = Nothing
    , _lcbsBannedUserDetails = Nothing
    , _lcbsBanDurationSeconds = Nothing
    , _lcbsType = Nothing
    }

-- | The chat this ban is pertinent to.
lcbsLiveChatId :: Lens' LiveChatBanSnippet (Maybe Text)
lcbsLiveChatId
  = lens _lcbsLiveChatId
      (\ s a -> s{_lcbsLiveChatId = a})

lcbsBannedUserDetails :: Lens' LiveChatBanSnippet (Maybe ChannelProFileDetails)
lcbsBannedUserDetails
  = lens _lcbsBannedUserDetails
      (\ s a -> s{_lcbsBannedUserDetails = a})

-- | The duration of a ban, only filled if the ban has type TEMPORARY.
lcbsBanDurationSeconds :: Lens' LiveChatBanSnippet (Maybe Word64)
lcbsBanDurationSeconds
  = lens _lcbsBanDurationSeconds
      (\ s a -> s{_lcbsBanDurationSeconds = a})
      . mapping _Coerce

-- | The type of ban.
lcbsType :: Lens' LiveChatBanSnippet (Maybe LiveChatBanSnippetType)
lcbsType = lens _lcbsType (\ s a -> s{_lcbsType = a})

instance FromJSON LiveChatBanSnippet where
        parseJSON
          = withObject "LiveChatBanSnippet"
              (\ o ->
                 LiveChatBanSnippet' <$>
                   (o .:? "liveChatId") <*> (o .:? "bannedUserDetails")
                     <*> (o .:? "banDurationSeconds")
                     <*> (o .:? "type"))

instance ToJSON LiveChatBanSnippet where
        toJSON LiveChatBanSnippet'{..}
          = object
              (catMaybes
                 [("liveChatId" .=) <$> _lcbsLiveChatId,
                  ("bannedUserDetails" .=) <$> _lcbsBannedUserDetails,
                  ("banDurationSeconds" .=) <$>
                    _lcbsBanDurationSeconds,
                  ("type" .=) <$> _lcbsType])

-- | Details about the content to witch a subscription refers.
--
-- /See:/ 'subscriptionContentDetails' smart constructor.
data SubscriptionContentDetails = SubscriptionContentDetails'
    { _scdActivityType   :: !(Maybe SubscriptionContentDetailsActivityType)
    , _scdTotalItemCount :: !(Maybe (Textual Word32))
    , _scdNewItemCount   :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdActivityType'
--
-- * 'scdTotalItemCount'
--
-- * 'scdNewItemCount'
subscriptionContentDetails
    :: SubscriptionContentDetails
subscriptionContentDetails =
    SubscriptionContentDetails'
    { _scdActivityType = Nothing
    , _scdTotalItemCount = Nothing
    , _scdNewItemCount = Nothing
    }

-- | The type of activity this subscription is for (only uploads,
-- everything).
scdActivityType :: Lens' SubscriptionContentDetails (Maybe SubscriptionContentDetailsActivityType)
scdActivityType
  = lens _scdActivityType
      (\ s a -> s{_scdActivityType = a})

-- | The approximate number of items that the subscription points to.
scdTotalItemCount :: Lens' SubscriptionContentDetails (Maybe Word32)
scdTotalItemCount
  = lens _scdTotalItemCount
      (\ s a -> s{_scdTotalItemCount = a})
      . mapping _Coerce

-- | The number of new items in the subscription since its content was last
-- read.
scdNewItemCount :: Lens' SubscriptionContentDetails (Maybe Word32)
scdNewItemCount
  = lens _scdNewItemCount
      (\ s a -> s{_scdNewItemCount = a})
      . mapping _Coerce

instance FromJSON SubscriptionContentDetails where
        parseJSON
          = withObject "SubscriptionContentDetails"
              (\ o ->
                 SubscriptionContentDetails' <$>
                   (o .:? "activityType") <*> (o .:? "totalItemCount")
                     <*> (o .:? "newItemCount"))

instance ToJSON SubscriptionContentDetails where
        toJSON SubscriptionContentDetails'{..}
          = object
              (catMaybes
                 [("activityType" .=) <$> _scdActivityType,
                  ("totalItemCount" .=) <$> _scdTotalItemCount,
                  ("newItemCount" .=) <$> _scdNewItemCount])

--
-- /See:/ 'liveBroadcastTopic' smart constructor.
data LiveBroadcastTopic = LiveBroadcastTopic'
    { _lbtSnippet   :: !(Maybe LiveBroadcastTopicSnippet)
    , _lbtUnmatched :: !(Maybe Bool)
    , _lbtType      :: !(Maybe LiveBroadcastTopicType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveBroadcastTopic' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtSnippet'
--
-- * 'lbtUnmatched'
--
-- * 'lbtType'
liveBroadcastTopic
    :: LiveBroadcastTopic
liveBroadcastTopic =
    LiveBroadcastTopic'
    { _lbtSnippet = Nothing
    , _lbtUnmatched = Nothing
    , _lbtType = Nothing
    }

-- | Information about the topic matched.
lbtSnippet :: Lens' LiveBroadcastTopic (Maybe LiveBroadcastTopicSnippet)
lbtSnippet
  = lens _lbtSnippet (\ s a -> s{_lbtSnippet = a})

-- | If this flag is set it means that we have not been able to match the
-- topic title and type provided to a known entity.
lbtUnmatched :: Lens' LiveBroadcastTopic (Maybe Bool)
lbtUnmatched
  = lens _lbtUnmatched (\ s a -> s{_lbtUnmatched = a})

-- | The type of the topic.
lbtType :: Lens' LiveBroadcastTopic (Maybe LiveBroadcastTopicType)
lbtType = lens _lbtType (\ s a -> s{_lbtType = a})

instance FromJSON LiveBroadcastTopic where
        parseJSON
          = withObject "LiveBroadcastTopic"
              (\ o ->
                 LiveBroadcastTopic' <$>
                   (o .:? "snippet") <*> (o .:? "unmatched") <*>
                     (o .:? "type"))

instance ToJSON LiveBroadcastTopic where
        toJSON LiveBroadcastTopic'{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _lbtSnippet,
                  ("unmatched" .=) <$> _lbtUnmatched,
                  ("type" .=) <$> _lbtType])

-- | The conversionPings object encapsulates information about conversion
-- pings that need to be respected by the channel.
--
-- /See:/ 'channelConversionPings' smart constructor.
newtype ChannelConversionPings = ChannelConversionPings'
    { _ccpPings :: Maybe [ChannelConversionPing]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelConversionPings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpPings'
channelConversionPings
    :: ChannelConversionPings
channelConversionPings =
    ChannelConversionPings'
    { _ccpPings = Nothing
    }

-- | Pings that the app shall fire (authenticated by biscotti cookie). Each
-- ping has a context, in which the app must fire the ping, and a url
-- identifying the ping.
ccpPings :: Lens' ChannelConversionPings [ChannelConversionPing]
ccpPings
  = lens _ccpPings (\ s a -> s{_ccpPings = a}) .
      _Default
      . _Coerce

instance FromJSON ChannelConversionPings where
        parseJSON
          = withObject "ChannelConversionPings"
              (\ o ->
                 ChannelConversionPings' <$>
                   (o .:? "pings" .!= mempty))

instance ToJSON ChannelConversionPings where
        toJSON ChannelConversionPings'{..}
          = object (catMaybes [("pings" .=) <$> _ccpPings])

--
-- /See:/ 'localizedProperty' smart constructor.
data LocalizedProperty = LocalizedProperty'
    { _lpDefault         :: !(Maybe Text)
    , _lpLocalized       :: !(Maybe [LocalizedString])
    , _lpDefaultLanguage :: !(Maybe LanguageTag)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocalizedProperty' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpDefault'
--
-- * 'lpLocalized'
--
-- * 'lpDefaultLanguage'
localizedProperty
    :: LocalizedProperty
localizedProperty =
    LocalizedProperty'
    { _lpDefault = Nothing
    , _lpLocalized = Nothing
    , _lpDefaultLanguage = Nothing
    }

lpDefault :: Lens' LocalizedProperty (Maybe Text)
lpDefault
  = lens _lpDefault (\ s a -> s{_lpDefault = a})

lpLocalized :: Lens' LocalizedProperty [LocalizedString]
lpLocalized
  = lens _lpLocalized (\ s a -> s{_lpLocalized = a}) .
      _Default
      . _Coerce

-- | The language of the default property.
lpDefaultLanguage :: Lens' LocalizedProperty (Maybe LanguageTag)
lpDefaultLanguage
  = lens _lpDefaultLanguage
      (\ s a -> s{_lpDefaultLanguage = a})

instance FromJSON LocalizedProperty where
        parseJSON
          = withObject "LocalizedProperty"
              (\ o ->
                 LocalizedProperty' <$>
                   (o .:? "default") <*> (o .:? "localized" .!= mempty)
                     <*> (o .:? "defaultLanguage"))

instance ToJSON LocalizedProperty where
        toJSON LocalizedProperty'{..}
          = object
              (catMaybes
                 [("default" .=) <$> _lpDefault,
                  ("localized" .=) <$> _lpLocalized,
                  ("defaultLanguage" .=) <$> _lpDefaultLanguage])

-- | Channel localization setting
--
-- /See:/ 'channelLocalization' smart constructor.
data ChannelLocalization = ChannelLocalization'
    { _clTitle       :: !(Maybe Text)
    , _clDescription :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clTitle'
--
-- * 'clDescription'
channelLocalization
    :: ChannelLocalization
channelLocalization =
    ChannelLocalization'
    { _clTitle = Nothing
    , _clDescription = Nothing
    }

-- | The localized strings for channel\'s title.
clTitle :: Lens' ChannelLocalization (Maybe Text)
clTitle = lens _clTitle (\ s a -> s{_clTitle = a})

-- | The localized strings for channel\'s description.
clDescription :: Lens' ChannelLocalization (Maybe Text)
clDescription
  = lens _clDescription
      (\ s a -> s{_clDescription = a})

instance FromJSON ChannelLocalization where
        parseJSON
          = withObject "ChannelLocalization"
              (\ o ->
                 ChannelLocalization' <$>
                   (o .:? "title") <*> (o .:? "description"))

instance ToJSON ChannelLocalization where
        toJSON ChannelLocalization'{..}
          = object
              (catMaybes
                 [("title" .=) <$> _clTitle,
                  ("description" .=) <$> _clDescription])

--
-- /See:/ 'playListItemContentDetails' smart constructor.
data PlayListItemContentDetails = PlayListItemContentDetails'
    { _plicdStartAt :: !(Maybe Text)
    , _plicdNote    :: !(Maybe Text)
    , _plicdVideoId :: !(Maybe Text)
    , _plicdEndAt   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemContentDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plicdStartAt'
--
-- * 'plicdNote'
--
-- * 'plicdVideoId'
--
-- * 'plicdEndAt'
playListItemContentDetails
    :: PlayListItemContentDetails
playListItemContentDetails =
    PlayListItemContentDetails'
    { _plicdStartAt = Nothing
    , _plicdNote = Nothing
    , _plicdVideoId = Nothing
    , _plicdEndAt = Nothing
    }

-- | The time, measured in seconds from the start of the video, when the
-- video should start playing. (The playlist owner can specify the times
-- when the video should start and stop playing when the video is played in
-- the context of the playlist.) The default value is 0.
plicdStartAt :: Lens' PlayListItemContentDetails (Maybe Text)
plicdStartAt
  = lens _plicdStartAt (\ s a -> s{_plicdStartAt = a})

-- | A user-generated note for this item.
plicdNote :: Lens' PlayListItemContentDetails (Maybe Text)
plicdNote
  = lens _plicdNote (\ s a -> s{_plicdNote = a})

-- | The ID that YouTube uses to uniquely identify a video. To retrieve the
-- video resource, set the id query parameter to this value in your API
-- request.
plicdVideoId :: Lens' PlayListItemContentDetails (Maybe Text)
plicdVideoId
  = lens _plicdVideoId (\ s a -> s{_plicdVideoId = a})

-- | The time, measured in seconds from the start of the video, when the
-- video should stop playing. (The playlist owner can specify the times
-- when the video should start and stop playing when the video is played in
-- the context of the playlist.) By default, assume that the video.endTime
-- is the end of the video.
plicdEndAt :: Lens' PlayListItemContentDetails (Maybe Text)
plicdEndAt
  = lens _plicdEndAt (\ s a -> s{_plicdEndAt = a})

instance FromJSON PlayListItemContentDetails where
        parseJSON
          = withObject "PlayListItemContentDetails"
              (\ o ->
                 PlayListItemContentDetails' <$>
                   (o .:? "startAt") <*> (o .:? "note") <*>
                     (o .:? "videoId")
                     <*> (o .:? "endAt"))

instance ToJSON PlayListItemContentDetails where
        toJSON PlayListItemContentDetails'{..}
          = object
              (catMaybes
                 [("startAt" .=) <$> _plicdStartAt,
                  ("note" .=) <$> _plicdNote,
                  ("videoId" .=) <$> _plicdVideoId,
                  ("endAt" .=) <$> _plicdEndAt])

--
-- /See:/ 'videoAgeGating' smart constructor.
data VideoAgeGating = VideoAgeGating'
    { _vagAlcoholContent  :: !(Maybe Bool)
    , _vagRestricted      :: !(Maybe Bool)
    , _vagVideoGameRating :: !(Maybe VideoAgeGatingVideoGameRating)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAgeGating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vagAlcoholContent'
--
-- * 'vagRestricted'
--
-- * 'vagVideoGameRating'
videoAgeGating
    :: VideoAgeGating
videoAgeGating =
    VideoAgeGating'
    { _vagAlcoholContent = Nothing
    , _vagRestricted = Nothing
    , _vagVideoGameRating = Nothing
    }

-- | Indicates whether or not the video has alcoholic beverage content. Only
-- users of legal purchasing age in a particular country, as identified by
-- ICAP, can view the content.
vagAlcoholContent :: Lens' VideoAgeGating (Maybe Bool)
vagAlcoholContent
  = lens _vagAlcoholContent
      (\ s a -> s{_vagAlcoholContent = a})

-- | Age-restricted trailers. For redband trailers and adult-rated
-- video-games. Only users aged 18+ can view the content. The the field is
-- true the content is restricted to viewers aged 18+. Otherwise The field
-- won\'t be present.
vagRestricted :: Lens' VideoAgeGating (Maybe Bool)
vagRestricted
  = lens _vagRestricted
      (\ s a -> s{_vagRestricted = a})

-- | Video game rating, if any.
vagVideoGameRating :: Lens' VideoAgeGating (Maybe VideoAgeGatingVideoGameRating)
vagVideoGameRating
  = lens _vagVideoGameRating
      (\ s a -> s{_vagVideoGameRating = a})

instance FromJSON VideoAgeGating where
        parseJSON
          = withObject "VideoAgeGating"
              (\ o ->
                 VideoAgeGating' <$>
                   (o .:? "alcoholContent") <*> (o .:? "restricted") <*>
                     (o .:? "videoGameRating"))

instance ToJSON VideoAgeGating where
        toJSON VideoAgeGating'{..}
          = object
              (catMaybes
                 [("alcoholContent" .=) <$> _vagAlcoholContent,
                  ("restricted" .=) <$> _vagRestricted,
                  ("videoGameRating" .=) <$> _vagVideoGameRating])

--
-- /See:/ 'languageTag' smart constructor.
newtype LanguageTag = LanguageTag'
    { _ltValue :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LanguageTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltValue'
languageTag
    :: LanguageTag
languageTag =
    LanguageTag'
    { _ltValue = Nothing
    }

ltValue :: Lens' LanguageTag (Maybe Text)
ltValue = lens _ltValue (\ s a -> s{_ltValue = a})

instance FromJSON LanguageTag where
        parseJSON
          = withObject "LanguageTag"
              (\ o -> LanguageTag' <$> (o .:? "value"))

instance ToJSON LanguageTag where
        toJSON LanguageTag'{..}
          = object (catMaybes [("value" .=) <$> _ltValue])

-- | Information about a video stream.
--
-- /See:/ 'videoFileDetailsVideoStream' smart constructor.
data VideoFileDetailsVideoStream = VideoFileDetailsVideoStream'
    { _vfdvsHeightPixels :: !(Maybe (Textual Word32))
    , _vfdvsBitrateBps   :: !(Maybe (Textual Word64))
    , _vfdvsVendor       :: !(Maybe Text)
    , _vfdvsRotation     :: !(Maybe VideoFileDetailsVideoStreamRotation)
    , _vfdvsFrameRateFps :: !(Maybe (Textual Double))
    , _vfdvsCodec        :: !(Maybe Text)
    , _vfdvsAspectRatio  :: !(Maybe (Textual Double))
    , _vfdvsWidthPixels  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoFileDetailsVideoStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vfdvsHeightPixels'
--
-- * 'vfdvsBitrateBps'
--
-- * 'vfdvsVendor'
--
-- * 'vfdvsRotation'
--
-- * 'vfdvsFrameRateFps'
--
-- * 'vfdvsCodec'
--
-- * 'vfdvsAspectRatio'
--
-- * 'vfdvsWidthPixels'
videoFileDetailsVideoStream
    :: VideoFileDetailsVideoStream
videoFileDetailsVideoStream =
    VideoFileDetailsVideoStream'
    { _vfdvsHeightPixels = Nothing
    , _vfdvsBitrateBps = Nothing
    , _vfdvsVendor = Nothing
    , _vfdvsRotation = Nothing
    , _vfdvsFrameRateFps = Nothing
    , _vfdvsCodec = Nothing
    , _vfdvsAspectRatio = Nothing
    , _vfdvsWidthPixels = Nothing
    }

-- | The encoded video content\'s height in pixels.
vfdvsHeightPixels :: Lens' VideoFileDetailsVideoStream (Maybe Word32)
vfdvsHeightPixels
  = lens _vfdvsHeightPixels
      (\ s a -> s{_vfdvsHeightPixels = a})
      . mapping _Coerce

-- | The video stream\'s bitrate, in bits per second.
vfdvsBitrateBps :: Lens' VideoFileDetailsVideoStream (Maybe Word64)
vfdvsBitrateBps
  = lens _vfdvsBitrateBps
      (\ s a -> s{_vfdvsBitrateBps = a})
      . mapping _Coerce

-- | A value that uniquely identifies a video vendor. Typically, the value is
-- a four-letter vendor code.
vfdvsVendor :: Lens' VideoFileDetailsVideoStream (Maybe Text)
vfdvsVendor
  = lens _vfdvsVendor (\ s a -> s{_vfdvsVendor = a})

-- | The amount that YouTube needs to rotate the original source content to
-- properly display the video.
vfdvsRotation :: Lens' VideoFileDetailsVideoStream (Maybe VideoFileDetailsVideoStreamRotation)
vfdvsRotation
  = lens _vfdvsRotation
      (\ s a -> s{_vfdvsRotation = a})

-- | The video stream\'s frame rate, in frames per second.
vfdvsFrameRateFps :: Lens' VideoFileDetailsVideoStream (Maybe Double)
vfdvsFrameRateFps
  = lens _vfdvsFrameRateFps
      (\ s a -> s{_vfdvsFrameRateFps = a})
      . mapping _Coerce

-- | The video codec that the stream uses.
vfdvsCodec :: Lens' VideoFileDetailsVideoStream (Maybe Text)
vfdvsCodec
  = lens _vfdvsCodec (\ s a -> s{_vfdvsCodec = a})

-- | The video content\'s display aspect ratio, which specifies the aspect
-- ratio in which the video should be displayed.
vfdvsAspectRatio :: Lens' VideoFileDetailsVideoStream (Maybe Double)
vfdvsAspectRatio
  = lens _vfdvsAspectRatio
      (\ s a -> s{_vfdvsAspectRatio = a})
      . mapping _Coerce

-- | The encoded video content\'s width in pixels. You can calculate the
-- video\'s encoding aspect ratio as width_pixels \/ height_pixels.
vfdvsWidthPixels :: Lens' VideoFileDetailsVideoStream (Maybe Word32)
vfdvsWidthPixels
  = lens _vfdvsWidthPixels
      (\ s a -> s{_vfdvsWidthPixels = a})
      . mapping _Coerce

instance FromJSON VideoFileDetailsVideoStream where
        parseJSON
          = withObject "VideoFileDetailsVideoStream"
              (\ o ->
                 VideoFileDetailsVideoStream' <$>
                   (o .:? "heightPixels") <*> (o .:? "bitrateBps") <*>
                     (o .:? "vendor")
                     <*> (o .:? "rotation")
                     <*> (o .:? "frameRateFps")
                     <*> (o .:? "codec")
                     <*> (o .:? "aspectRatio")
                     <*> (o .:? "widthPixels"))

instance ToJSON VideoFileDetailsVideoStream where
        toJSON VideoFileDetailsVideoStream'{..}
          = object
              (catMaybes
                 [("heightPixels" .=) <$> _vfdvsHeightPixels,
                  ("bitrateBps" .=) <$> _vfdvsBitrateBps,
                  ("vendor" .=) <$> _vfdvsVendor,
                  ("rotation" .=) <$> _vfdvsRotation,
                  ("frameRateFps" .=) <$> _vfdvsFrameRateFps,
                  ("codec" .=) <$> _vfdvsCodec,
                  ("aspectRatio" .=) <$> _vfdvsAspectRatio,
                  ("widthPixels" .=) <$> _vfdvsWidthPixels])

-- | Pings that the app shall fire (authenticated by biscotti cookie). Each
-- ping has a context, in which the app must fire the ping, and a url
-- identifying the ping.
--
-- /See:/ 'channelConversionPing' smart constructor.
data ChannelConversionPing = ChannelConversionPing'
    { _ccpContext       :: !(Maybe ChannelConversionPingContext)
    , _ccpConversionURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelConversionPing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpContext'
--
-- * 'ccpConversionURL'
channelConversionPing
    :: ChannelConversionPing
channelConversionPing =
    ChannelConversionPing'
    { _ccpContext = Nothing
    , _ccpConversionURL = Nothing
    }

-- | Defines the context of the ping.
ccpContext :: Lens' ChannelConversionPing (Maybe ChannelConversionPingContext)
ccpContext
  = lens _ccpContext (\ s a -> s{_ccpContext = a})

-- | The url (without the schema) that the player shall send the ping to.
-- It\'s at caller\'s descretion to decide which schema to use (http vs
-- https) Example of a returned url:
-- \/\/googleads.g.doubleclick.net\/pagead\/
-- viewthroughconversion\/962985656\/?data=path%3DtHe_path%3Btype%3D
-- cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must
-- append biscotti authentication (ms param in case of mobile, for example)
-- to this ping.
ccpConversionURL :: Lens' ChannelConversionPing (Maybe Text)
ccpConversionURL
  = lens _ccpConversionURL
      (\ s a -> s{_ccpConversionURL = a})

instance FromJSON ChannelConversionPing where
        parseJSON
          = withObject "ChannelConversionPing"
              (\ o ->
                 ChannelConversionPing' <$>
                   (o .:? "context") <*> (o .:? "conversionUrl"))

instance ToJSON ChannelConversionPing where
        toJSON ChannelConversionPing'{..}
          = object
              (catMaybes
                 [("context" .=) <$> _ccpContext,
                  ("conversionUrl" .=) <$> _ccpConversionURL])

-- | A playlistItem resource identifies another resource, such as a video,
-- that is included in a playlist. In addition, the playlistItem resource
-- contains details about the included resource that pertain specifically
-- to how that resource is used in that playlist. YouTube uses playlists to
-- identify special collections of videos for a channel, such as: -
-- uploaded videos - favorite videos - positively rated (liked) videos -
-- watch history - watch later To be more specific, these lists are
-- associated with a channel, which is a collection of a person, group, or
-- company\'s videos, playlists, and other YouTube information. You can
-- retrieve the playlist IDs for each of these lists from the channel
-- resource for a given channel. You can then use the playlistItems.list
-- method to retrieve any of those lists. You can also add or remove items
-- from those lists by calling the playlistItems.insert and
-- playlistItems.delete methods. For example, if a user gives a positive
-- rating to a video, you would insert that video into the liked videos
-- playlist for that user\'s channel.
--
-- /See:/ 'playListItem' smart constructor.
data PlayListItem = PlayListItem'
    { _pliStatus         :: !(Maybe PlayListItemStatus)
    , _pliEtag           :: !(Maybe Text)
    , _pliSnippet        :: !(Maybe PlayListItemSnippet)
    , _pliKind           :: !Text
    , _pliContentDetails :: !(Maybe PlayListItemContentDetails)
    , _pliId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliStatus'
--
-- * 'pliEtag'
--
-- * 'pliSnippet'
--
-- * 'pliKind'
--
-- * 'pliContentDetails'
--
-- * 'pliId'
playListItem
    :: PlayListItem
playListItem =
    PlayListItem'
    { _pliStatus = Nothing
    , _pliEtag = Nothing
    , _pliSnippet = Nothing
    , _pliKind = "youtube#playlistItem"
    , _pliContentDetails = Nothing
    , _pliId = Nothing
    }

-- | The status object contains information about the playlist item\'s
-- privacy status.
pliStatus :: Lens' PlayListItem (Maybe PlayListItemStatus)
pliStatus
  = lens _pliStatus (\ s a -> s{_pliStatus = a})

-- | Etag of this resource.
pliEtag :: Lens' PlayListItem (Maybe Text)
pliEtag = lens _pliEtag (\ s a -> s{_pliEtag = a})

-- | The snippet object contains basic details about the playlist item, such
-- as its title and position in the playlist.
pliSnippet :: Lens' PlayListItem (Maybe PlayListItemSnippet)
pliSnippet
  = lens _pliSnippet (\ s a -> s{_pliSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlistItem\".
pliKind :: Lens' PlayListItem Text
pliKind = lens _pliKind (\ s a -> s{_pliKind = a})

-- | The contentDetails object is included in the resource if the included
-- item is a YouTube video. The object contains additional information
-- about the video.
pliContentDetails :: Lens' PlayListItem (Maybe PlayListItemContentDetails)
pliContentDetails
  = lens _pliContentDetails
      (\ s a -> s{_pliContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the playlist item.
pliId :: Lens' PlayListItem (Maybe Text)
pliId = lens _pliId (\ s a -> s{_pliId = a})

instance FromJSON PlayListItem where
        parseJSON
          = withObject "PlayListItem"
              (\ o ->
                 PlayListItem' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#playlistItem")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON PlayListItem where
        toJSON PlayListItem'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _pliStatus,
                  ("etag" .=) <$> _pliEtag,
                  ("snippet" .=) <$> _pliSnippet,
                  Just ("kind" .= _pliKind),
                  ("contentDetails" .=) <$> _pliContentDetails,
                  ("id" .=) <$> _pliId])

--
-- /See:/ 'guideCategoryListResponse' smart constructor.
data GuideCategoryListResponse = GuideCategoryListResponse'
    { _gclrEtag            :: !(Maybe Text)
    , _gclrTokenPagination :: !(Maybe TokenPagination)
    , _gclrNextPageToken   :: !(Maybe Text)
    , _gclrPageInfo        :: !(Maybe PageInfo)
    , _gclrKind            :: !Text
    , _gclrItems           :: !(Maybe [GuideCategory])
    , _gclrVisitorId       :: !(Maybe Text)
    , _gclrEventId         :: !(Maybe Text)
    , _gclrPrevPageToken   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GuideCategoryListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gclrEtag'
--
-- * 'gclrTokenPagination'
--
-- * 'gclrNextPageToken'
--
-- * 'gclrPageInfo'
--
-- * 'gclrKind'
--
-- * 'gclrItems'
--
-- * 'gclrVisitorId'
--
-- * 'gclrEventId'
--
-- * 'gclrPrevPageToken'
guideCategoryListResponse
    :: GuideCategoryListResponse
guideCategoryListResponse =
    GuideCategoryListResponse'
    { _gclrEtag = Nothing
    , _gclrTokenPagination = Nothing
    , _gclrNextPageToken = Nothing
    , _gclrPageInfo = Nothing
    , _gclrKind = "youtube#guideCategoryListResponse"
    , _gclrItems = Nothing
    , _gclrVisitorId = Nothing
    , _gclrEventId = Nothing
    , _gclrPrevPageToken = Nothing
    }

-- | Etag of this resource.
gclrEtag :: Lens' GuideCategoryListResponse (Maybe Text)
gclrEtag = lens _gclrEtag (\ s a -> s{_gclrEtag = a})

gclrTokenPagination :: Lens' GuideCategoryListResponse (Maybe TokenPagination)
gclrTokenPagination
  = lens _gclrTokenPagination
      (\ s a -> s{_gclrTokenPagination = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the next page in the result set.
gclrNextPageToken :: Lens' GuideCategoryListResponse (Maybe Text)
gclrNextPageToken
  = lens _gclrNextPageToken
      (\ s a -> s{_gclrNextPageToken = a})

gclrPageInfo :: Lens' GuideCategoryListResponse (Maybe PageInfo)
gclrPageInfo
  = lens _gclrPageInfo (\ s a -> s{_gclrPageInfo = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#guideCategoryListResponse\".
gclrKind :: Lens' GuideCategoryListResponse Text
gclrKind = lens _gclrKind (\ s a -> s{_gclrKind = a})

-- | A list of categories that can be associated with YouTube channels. In
-- this map, the category ID is the map key, and its value is the
-- corresponding guideCategory resource.
gclrItems :: Lens' GuideCategoryListResponse [GuideCategory]
gclrItems
  = lens _gclrItems (\ s a -> s{_gclrItems = a}) .
      _Default
      . _Coerce

-- | The visitorId identifies the visitor.
gclrVisitorId :: Lens' GuideCategoryListResponse (Maybe Text)
gclrVisitorId
  = lens _gclrVisitorId
      (\ s a -> s{_gclrVisitorId = a})

-- | Serialized EventId of the request which produced this response.
gclrEventId :: Lens' GuideCategoryListResponse (Maybe Text)
gclrEventId
  = lens _gclrEventId (\ s a -> s{_gclrEventId = a})

-- | The token that can be used as the value of the pageToken parameter to
-- retrieve the previous page in the result set.
gclrPrevPageToken :: Lens' GuideCategoryListResponse (Maybe Text)
gclrPrevPageToken
  = lens _gclrPrevPageToken
      (\ s a -> s{_gclrPrevPageToken = a})

instance FromJSON GuideCategoryListResponse where
        parseJSON
          = withObject "GuideCategoryListResponse"
              (\ o ->
                 GuideCategoryListResponse' <$>
                   (o .:? "etag") <*> (o .:? "tokenPagination") <*>
                     (o .:? "nextPageToken")
                     <*> (o .:? "pageInfo")
                     <*>
                     (o .:? "kind" .!=
                        "youtube#guideCategoryListResponse")
                     <*> (o .:? "items" .!= mempty)
                     <*> (o .:? "visitorId")
                     <*> (o .:? "eventId")
                     <*> (o .:? "prevPageToken"))

instance ToJSON GuideCategoryListResponse where
        toJSON GuideCategoryListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _gclrEtag,
                  ("tokenPagination" .=) <$> _gclrTokenPagination,
                  ("nextPageToken" .=) <$> _gclrNextPageToken,
                  ("pageInfo" .=) <$> _gclrPageInfo,
                  Just ("kind" .= _gclrKind),
                  ("items" .=) <$> _gclrItems,
                  ("visitorId" .=) <$> _gclrVisitorId,
                  ("eventId" .=) <$> _gclrEventId,
                  ("prevPageToken" .=) <$> _gclrPrevPageToken])

-- | Basic details about a caption track, such as its language and name.
--
-- /See:/ 'captionSnippet' smart constructor.
data CaptionSnippet = CaptionSnippet'
    { _csFailureReason  :: !(Maybe CaptionSnippetFailureReason)
    , _csStatus         :: !(Maybe CaptionSnippetStatus)
    , _csLastUpdated    :: !(Maybe DateTime')
    , _csTrackKind      :: !(Maybe CaptionSnippetTrackKind)
    , _csIsDraft        :: !(Maybe Bool)
    , _csIsCC           :: !(Maybe Bool)
    , _csVideoId        :: !(Maybe Text)
    , _csName           :: !(Maybe Text)
    , _csIsLarge        :: !(Maybe Bool)
    , _csLanguage       :: !(Maybe Text)
    , _csIsAutoSynced   :: !(Maybe Bool)
    , _csIsEasyReader   :: !(Maybe Bool)
    , _csAudioTrackType :: !(Maybe CaptionSnippetAudioTrackType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CaptionSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csFailureReason'
--
-- * 'csStatus'
--
-- * 'csLastUpdated'
--
-- * 'csTrackKind'
--
-- * 'csIsDraft'
--
-- * 'csIsCC'
--
-- * 'csVideoId'
--
-- * 'csName'
--
-- * 'csIsLarge'
--
-- * 'csLanguage'
--
-- * 'csIsAutoSynced'
--
-- * 'csIsEasyReader'
--
-- * 'csAudioTrackType'
captionSnippet
    :: CaptionSnippet
captionSnippet =
    CaptionSnippet'
    { _csFailureReason = Nothing
    , _csStatus = Nothing
    , _csLastUpdated = Nothing
    , _csTrackKind = Nothing
    , _csIsDraft = Nothing
    , _csIsCC = Nothing
    , _csVideoId = Nothing
    , _csName = Nothing
    , _csIsLarge = Nothing
    , _csLanguage = Nothing
    , _csIsAutoSynced = Nothing
    , _csIsEasyReader = Nothing
    , _csAudioTrackType = Nothing
    }

-- | The reason that YouTube failed to process the caption track. This
-- property is only present if the state property\'s value is failed.
csFailureReason :: Lens' CaptionSnippet (Maybe CaptionSnippetFailureReason)
csFailureReason
  = lens _csFailureReason
      (\ s a -> s{_csFailureReason = a})

-- | The caption track\'s status.
csStatus :: Lens' CaptionSnippet (Maybe CaptionSnippetStatus)
csStatus = lens _csStatus (\ s a -> s{_csStatus = a})

-- | The date and time when the caption track was last updated. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
csLastUpdated :: Lens' CaptionSnippet (Maybe UTCTime)
csLastUpdated
  = lens _csLastUpdated
      (\ s a -> s{_csLastUpdated = a})
      . mapping _DateTime

-- | The caption track\'s type.
csTrackKind :: Lens' CaptionSnippet (Maybe CaptionSnippetTrackKind)
csTrackKind
  = lens _csTrackKind (\ s a -> s{_csTrackKind = a})

-- | Indicates whether the caption track is a draft. If the value is true,
-- then the track is not publicly visible. The default value is false.
csIsDraft :: Lens' CaptionSnippet (Maybe Bool)
csIsDraft
  = lens _csIsDraft (\ s a -> s{_csIsDraft = a})

-- | Indicates whether the track contains closed captions for the deaf and
-- hard of hearing. The default value is false.
csIsCC :: Lens' CaptionSnippet (Maybe Bool)
csIsCC = lens _csIsCC (\ s a -> s{_csIsCC = a})

-- | The ID that YouTube uses to uniquely identify the video associated with
-- the caption track.
csVideoId :: Lens' CaptionSnippet (Maybe Text)
csVideoId
  = lens _csVideoId (\ s a -> s{_csVideoId = a})

-- | The name of the caption track. The name is intended to be visible to the
-- user as an option during playback.
csName :: Lens' CaptionSnippet (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | Indicates whether the caption track uses large text for the
-- vision-impaired. The default value is false.
csIsLarge :: Lens' CaptionSnippet (Maybe Bool)
csIsLarge
  = lens _csIsLarge (\ s a -> s{_csIsLarge = a})

-- | The language of the caption track. The property value is a BCP-47
-- language tag.
csLanguage :: Lens' CaptionSnippet (Maybe Text)
csLanguage
  = lens _csLanguage (\ s a -> s{_csLanguage = a})

-- | Indicates whether YouTube synchronized the caption track to the audio
-- track in the video. The value will be true if a sync was explicitly
-- requested when the caption track was uploaded. For example, when calling
-- the captions.insert or captions.update methods, you can set the sync
-- parameter to true to instruct YouTube to sync the uploaded track to the
-- video. If the value is false, YouTube uses the time codes in the
-- uploaded caption track to determine when to display captions.
csIsAutoSynced :: Lens' CaptionSnippet (Maybe Bool)
csIsAutoSynced
  = lens _csIsAutoSynced
      (\ s a -> s{_csIsAutoSynced = a})

-- | Indicates whether caption track is formatted for \"easy reader,\"
-- meaning it is at a third-grade level for language learners. The default
-- value is false.
csIsEasyReader :: Lens' CaptionSnippet (Maybe Bool)
csIsEasyReader
  = lens _csIsEasyReader
      (\ s a -> s{_csIsEasyReader = a})

-- | The type of audio track associated with the caption track.
csAudioTrackType :: Lens' CaptionSnippet (Maybe CaptionSnippetAudioTrackType)
csAudioTrackType
  = lens _csAudioTrackType
      (\ s a -> s{_csAudioTrackType = a})

instance FromJSON CaptionSnippet where
        parseJSON
          = withObject "CaptionSnippet"
              (\ o ->
                 CaptionSnippet' <$>
                   (o .:? "failureReason") <*> (o .:? "status") <*>
                     (o .:? "lastUpdated")
                     <*> (o .:? "trackKind")
                     <*> (o .:? "isDraft")
                     <*> (o .:? "isCC")
                     <*> (o .:? "videoId")
                     <*> (o .:? "name")
                     <*> (o .:? "isLarge")
                     <*> (o .:? "language")
                     <*> (o .:? "isAutoSynced")
                     <*> (o .:? "isEasyReader")
                     <*> (o .:? "audioTrackType"))

instance ToJSON CaptionSnippet where
        toJSON CaptionSnippet'{..}
          = object
              (catMaybes
                 [("failureReason" .=) <$> _csFailureReason,
                  ("status" .=) <$> _csStatus,
                  ("lastUpdated" .=) <$> _csLastUpdated,
                  ("trackKind" .=) <$> _csTrackKind,
                  ("isDraft" .=) <$> _csIsDraft,
                  ("isCC" .=) <$> _csIsCC,
                  ("videoId" .=) <$> _csVideoId,
                  ("name" .=) <$> _csName,
                  ("isLarge" .=) <$> _csIsLarge,
                  ("language" .=) <$> _csLanguage,
                  ("isAutoSynced" .=) <$> _csIsAutoSynced,
                  ("isEasyReader" .=) <$> _csIsEasyReader,
                  ("audioTrackType" .=) <$> _csAudioTrackType])

-- | A comment represents a single YouTube comment.
--
-- /See:/ 'comment' smart constructor.
data Comment = Comment'
    { _ccEtag    :: !(Maybe Text)
    , _ccSnippet :: !(Maybe CommentSnippet)
    , _ccKind    :: !Text
    , _ccId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccEtag'
--
-- * 'ccSnippet'
--
-- * 'ccKind'
--
-- * 'ccId'
comment
    :: Comment
comment =
    Comment'
    { _ccEtag = Nothing
    , _ccSnippet = Nothing
    , _ccKind = "youtube#comment"
    , _ccId = Nothing
    }

-- | Etag of this resource.
ccEtag :: Lens' Comment (Maybe Text)
ccEtag = lens _ccEtag (\ s a -> s{_ccEtag = a})

-- | The snippet object contains basic details about the comment.
ccSnippet :: Lens' Comment (Maybe CommentSnippet)
ccSnippet
  = lens _ccSnippet (\ s a -> s{_ccSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#comment\".
ccKind :: Lens' Comment Text
ccKind = lens _ccKind (\ s a -> s{_ccKind = a})

-- | The ID that YouTube uses to uniquely identify the comment.
ccId :: Lens' Comment (Maybe Text)
ccId = lens _ccId (\ s a -> s{_ccId = a})

instance FromJSON Comment where
        parseJSON
          = withObject "Comment"
              (\ o ->
                 Comment' <$>
                   (o .:? "etag") <*> (o .:? "snippet") <*>
                     (o .:? "kind" .!= "youtube#comment")
                     <*> (o .:? "id"))

instance ToJSON Comment where
        toJSON Comment'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ccEtag,
                  ("snippet" .=) <$> _ccSnippet,
                  Just ("kind" .= _ccKind), ("id" .=) <$> _ccId])

-- | Basic details about an i18n region, such as region code and
-- human-readable name.
--
-- /See:/ 'i18nRegionSnippet' smart constructor.
data I18nRegionSnippet = I18nRegionSnippet'
    { _irsName :: !(Maybe Text)
    , _irsGl   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nRegionSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irsName'
--
-- * 'irsGl'
i18nRegionSnippet
    :: I18nRegionSnippet
i18nRegionSnippet =
    I18nRegionSnippet'
    { _irsName = Nothing
    , _irsGl = Nothing
    }

-- | The human-readable name of the region.
irsName :: Lens' I18nRegionSnippet (Maybe Text)
irsName = lens _irsName (\ s a -> s{_irsName = a})

-- | The region code as a 2-letter ISO country code.
irsGl :: Lens' I18nRegionSnippet (Maybe Text)
irsGl = lens _irsGl (\ s a -> s{_irsGl = a})

instance FromJSON I18nRegionSnippet where
        parseJSON
          = withObject "I18nRegionSnippet"
              (\ o ->
                 I18nRegionSnippet' <$>
                   (o .:? "name") <*> (o .:? "gl"))

instance ToJSON I18nRegionSnippet where
        toJSON I18nRegionSnippet'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _irsName, ("gl" .=) <$> _irsGl])

-- | A subscription resource contains information about a YouTube user
-- subscription. A subscription notifies a user when new videos are added
-- to a channel or when another user takes one of several actions on
-- YouTube, such as uploading a video, rating a video, or commenting on a
-- video.
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription'
    { _ssEtag              :: !(Maybe Text)
    , _ssSubscriberSnippet :: !(Maybe SubscriptionSubscriberSnippet)
    , _ssSnippet           :: !(Maybe SubscriptionSnippet)
    , _ssKind              :: !Text
    , _ssContentDetails    :: !(Maybe SubscriptionContentDetails)
    , _ssId                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssEtag'
--
-- * 'ssSubscriberSnippet'
--
-- * 'ssSnippet'
--
-- * 'ssKind'
--
-- * 'ssContentDetails'
--
-- * 'ssId'
subscription
    :: Subscription
subscription =
    Subscription'
    { _ssEtag = Nothing
    , _ssSubscriberSnippet = Nothing
    , _ssSnippet = Nothing
    , _ssKind = "youtube#subscription"
    , _ssContentDetails = Nothing
    , _ssId = Nothing
    }

-- | Etag of this resource.
ssEtag :: Lens' Subscription (Maybe Text)
ssEtag = lens _ssEtag (\ s a -> s{_ssEtag = a})

-- | The subscriberSnippet object contains basic details about the
-- sbuscriber.
ssSubscriberSnippet :: Lens' Subscription (Maybe SubscriptionSubscriberSnippet)
ssSubscriberSnippet
  = lens _ssSubscriberSnippet
      (\ s a -> s{_ssSubscriberSnippet = a})

-- | The snippet object contains basic details about the subscription,
-- including its title and the channel that the user subscribed to.
ssSnippet :: Lens' Subscription (Maybe SubscriptionSnippet)
ssSnippet
  = lens _ssSnippet (\ s a -> s{_ssSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#subscription\".
ssKind :: Lens' Subscription Text
ssKind = lens _ssKind (\ s a -> s{_ssKind = a})

-- | The contentDetails object contains basic statistics about the
-- subscription.
ssContentDetails :: Lens' Subscription (Maybe SubscriptionContentDetails)
ssContentDetails
  = lens _ssContentDetails
      (\ s a -> s{_ssContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the subscription.
ssId :: Lens' Subscription (Maybe Text)
ssId = lens _ssId (\ s a -> s{_ssId = a})

instance FromJSON Subscription where
        parseJSON
          = withObject "Subscription"
              (\ o ->
                 Subscription' <$>
                   (o .:? "etag") <*> (o .:? "subscriberSnippet") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#subscription")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id"))

instance ToJSON Subscription where
        toJSON Subscription'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ssEtag,
                  ("subscriberSnippet" .=) <$> _ssSubscriberSnippet,
                  ("snippet" .=) <$> _ssSnippet,
                  Just ("kind" .= _ssKind),
                  ("contentDetails" .=) <$> _ssContentDetails,
                  ("id" .=) <$> _ssId])

-- | Recording information associated with the video.
--
-- /See:/ 'videoRecordingDetails' smart constructor.
data VideoRecordingDetails = VideoRecordingDetails'
    { _vrdLocation            :: !(Maybe GeoPoint)
    , _vrdLocationDescription :: !(Maybe Text)
    , _vrdRecordingDate       :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoRecordingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrdLocation'
--
-- * 'vrdLocationDescription'
--
-- * 'vrdRecordingDate'
videoRecordingDetails
    :: VideoRecordingDetails
videoRecordingDetails =
    VideoRecordingDetails'
    { _vrdLocation = Nothing
    , _vrdLocationDescription = Nothing
    , _vrdRecordingDate = Nothing
    }

-- | The geolocation information associated with the video.
vrdLocation :: Lens' VideoRecordingDetails (Maybe GeoPoint)
vrdLocation
  = lens _vrdLocation (\ s a -> s{_vrdLocation = a})

-- | The text description of the location where the video was recorded.
vrdLocationDescription :: Lens' VideoRecordingDetails (Maybe Text)
vrdLocationDescription
  = lens _vrdLocationDescription
      (\ s a -> s{_vrdLocationDescription = a})

-- | The date and time when the video was recorded. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format.
vrdRecordingDate :: Lens' VideoRecordingDetails (Maybe UTCTime)
vrdRecordingDate
  = lens _vrdRecordingDate
      (\ s a -> s{_vrdRecordingDate = a})
      . mapping _DateTime

instance FromJSON VideoRecordingDetails where
        parseJSON
          = withObject "VideoRecordingDetails"
              (\ o ->
                 VideoRecordingDetails' <$>
                   (o .:? "location") <*> (o .:? "locationDescription")
                     <*> (o .:? "recordingDate"))

instance ToJSON VideoRecordingDetails where
        toJSON VideoRecordingDetails'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _vrdLocation,
                  ("locationDescription" .=) <$>
                    _vrdLocationDescription,
                  ("recordingDate" .=) <$> _vrdRecordingDate])

--
-- /See:/ 'videoRating' smart constructor.
data VideoRating = VideoRating'
    { _vRating  :: !(Maybe VideoRatingRating)
    , _vVideoId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vRating'
--
-- * 'vVideoId'
videoRating
    :: VideoRating
videoRating =
    VideoRating'
    { _vRating = Nothing
    , _vVideoId = Nothing
    }

vRating :: Lens' VideoRating (Maybe VideoRatingRating)
vRating = lens _vRating (\ s a -> s{_vRating = a})

vVideoId :: Lens' VideoRating (Maybe Text)
vVideoId = lens _vVideoId (\ s a -> s{_vVideoId = a})

instance FromJSON VideoRating where
        parseJSON
          = withObject "VideoRating"
              (\ o ->
                 VideoRating' <$>
                   (o .:? "rating") <*> (o .:? "videoId"))

instance ToJSON VideoRating where
        toJSON VideoRating'{..}
          = object
              (catMaybes
                 [("rating" .=) <$> _vRating,
                  ("videoId" .=) <$> _vVideoId])

-- | Basic details about a comment, such as its author and text.
--
-- /See:/ 'commentSnippet' smart constructor.
data CommentSnippet = CommentSnippet'
    { _cViewerRating               :: !(Maybe CommentSnippetViewerRating)
    , _cPublishedAt                :: !(Maybe DateTime')
    , _cAuthorChannelURL           :: !(Maybe Text)
    , _cModerationStatus           :: !(Maybe CommentSnippetModerationStatus)
    , _cLikeCount                  :: !(Maybe (Textual Word32))
    , _cChannelId                  :: !(Maybe Text)
    , _cTextOriginal               :: !(Maybe Text)
    , _cVideoId                    :: !(Maybe Text)
    , _cTextDisplay                :: !(Maybe Text)
    , _cAuthorProFileImageURL      :: !(Maybe Text)
    , _cAuthorDisplayName          :: !(Maybe Text)
    , _cUpdatedAt                  :: !(Maybe DateTime')
    , _cAuthorChannelId            :: !(Maybe JSONValue)
    , _cCanRate                    :: !(Maybe Bool)
    , _cAuthorGoogleplusProFileURL :: !(Maybe Text)
    , _cParentId                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cViewerRating'
--
-- * 'cPublishedAt'
--
-- * 'cAuthorChannelURL'
--
-- * 'cModerationStatus'
--
-- * 'cLikeCount'
--
-- * 'cChannelId'
--
-- * 'cTextOriginal'
--
-- * 'cVideoId'
--
-- * 'cTextDisplay'
--
-- * 'cAuthorProFileImageURL'
--
-- * 'cAuthorDisplayName'
--
-- * 'cUpdatedAt'
--
-- * 'cAuthorChannelId'
--
-- * 'cCanRate'
--
-- * 'cAuthorGoogleplusProFileURL'
--
-- * 'cParentId'
commentSnippet
    :: CommentSnippet
commentSnippet =
    CommentSnippet'
    { _cViewerRating = Nothing
    , _cPublishedAt = Nothing
    , _cAuthorChannelURL = Nothing
    , _cModerationStatus = Nothing
    , _cLikeCount = Nothing
    , _cChannelId = Nothing
    , _cTextOriginal = Nothing
    , _cVideoId = Nothing
    , _cTextDisplay = Nothing
    , _cAuthorProFileImageURL = Nothing
    , _cAuthorDisplayName = Nothing
    , _cUpdatedAt = Nothing
    , _cAuthorChannelId = Nothing
    , _cCanRate = Nothing
    , _cAuthorGoogleplusProFileURL = Nothing
    , _cParentId = Nothing
    }

-- | The rating the viewer has given to this comment. For the time being this
-- will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE.
-- This may change in the future.
cViewerRating :: Lens' CommentSnippet (Maybe CommentSnippetViewerRating)
cViewerRating
  = lens _cViewerRating
      (\ s a -> s{_cViewerRating = a})

-- | The date and time when the comment was orignally published. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
cPublishedAt :: Lens' CommentSnippet (Maybe UTCTime)
cPublishedAt
  = lens _cPublishedAt (\ s a -> s{_cPublishedAt = a})
      . mapping _DateTime

-- | Link to the author\'s YouTube channel, if any.
cAuthorChannelURL :: Lens' CommentSnippet (Maybe Text)
cAuthorChannelURL
  = lens _cAuthorChannelURL
      (\ s a -> s{_cAuthorChannelURL = a})

-- | The comment\'s moderation status. Will not be set if the comments were
-- requested through the id filter.
cModerationStatus :: Lens' CommentSnippet (Maybe CommentSnippetModerationStatus)
cModerationStatus
  = lens _cModerationStatus
      (\ s a -> s{_cModerationStatus = a})

-- | The total number of likes this comment has received.
cLikeCount :: Lens' CommentSnippet (Maybe Word32)
cLikeCount
  = lens _cLikeCount (\ s a -> s{_cLikeCount = a}) .
      mapping _Coerce

-- | The id of the corresponding YouTube channel. In case of a channel
-- comment this is the channel the comment refers to. In case of a video
-- comment it\'s the video\'s channel.
cChannelId :: Lens' CommentSnippet (Maybe Text)
cChannelId
  = lens _cChannelId (\ s a -> s{_cChannelId = a})

-- | The comment\'s original raw text as initially posted or last updated.
-- The original text will only be returned if it is accessible to the
-- viewer, which is only guaranteed if the viewer is the comment\'s author.
cTextOriginal :: Lens' CommentSnippet (Maybe Text)
cTextOriginal
  = lens _cTextOriginal
      (\ s a -> s{_cTextOriginal = a})

-- | The ID of the video the comment refers to, if any.
cVideoId :: Lens' CommentSnippet (Maybe Text)
cVideoId = lens _cVideoId (\ s a -> s{_cVideoId = a})

-- | The comment\'s text. The format is either plain text or HTML dependent
-- on what has been requested. Even the plain text representation may
-- differ from the text originally posted in that it may replace video
-- links with video titles etc.
cTextDisplay :: Lens' CommentSnippet (Maybe Text)
cTextDisplay
  = lens _cTextDisplay (\ s a -> s{_cTextDisplay = a})

-- | The URL for the avatar of the user who posted the comment.
cAuthorProFileImageURL :: Lens' CommentSnippet (Maybe Text)
cAuthorProFileImageURL
  = lens _cAuthorProFileImageURL
      (\ s a -> s{_cAuthorProFileImageURL = a})

-- | The name of the user who posted the comment.
cAuthorDisplayName :: Lens' CommentSnippet (Maybe Text)
cAuthorDisplayName
  = lens _cAuthorDisplayName
      (\ s a -> s{_cAuthorDisplayName = a})

-- | The date and time when was last updated . The value is specified in ISO
-- 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
cUpdatedAt :: Lens' CommentSnippet (Maybe UTCTime)
cUpdatedAt
  = lens _cUpdatedAt (\ s a -> s{_cUpdatedAt = a}) .
      mapping _DateTime

-- | The id of the author\'s YouTube channel, if any.
cAuthorChannelId :: Lens' CommentSnippet (Maybe JSONValue)
cAuthorChannelId
  = lens _cAuthorChannelId
      (\ s a -> s{_cAuthorChannelId = a})

-- | Whether the current viewer can rate this comment.
cCanRate :: Lens' CommentSnippet (Maybe Bool)
cCanRate = lens _cCanRate (\ s a -> s{_cCanRate = a})

-- | Link to the author\'s Google+ profile, if any.
cAuthorGoogleplusProFileURL :: Lens' CommentSnippet (Maybe Text)
cAuthorGoogleplusProFileURL
  = lens _cAuthorGoogleplusProFileURL
      (\ s a -> s{_cAuthorGoogleplusProFileURL = a})

-- | The unique id of the parent comment, only set for replies.
cParentId :: Lens' CommentSnippet (Maybe Text)
cParentId
  = lens _cParentId (\ s a -> s{_cParentId = a})

instance FromJSON CommentSnippet where
        parseJSON
          = withObject "CommentSnippet"
              (\ o ->
                 CommentSnippet' <$>
                   (o .:? "viewerRating") <*> (o .:? "publishedAt") <*>
                     (o .:? "authorChannelUrl")
                     <*> (o .:? "moderationStatus")
                     <*> (o .:? "likeCount")
                     <*> (o .:? "channelId")
                     <*> (o .:? "textOriginal")
                     <*> (o .:? "videoId")
                     <*> (o .:? "textDisplay")
                     <*> (o .:? "authorProfileImageUrl")
                     <*> (o .:? "authorDisplayName")
                     <*> (o .:? "updatedAt")
                     <*> (o .:? "authorChannelId")
                     <*> (o .:? "canRate")
                     <*> (o .:? "authorGoogleplusProfileUrl")
                     <*> (o .:? "parentId"))

instance ToJSON CommentSnippet where
        toJSON CommentSnippet'{..}
          = object
              (catMaybes
                 [("viewerRating" .=) <$> _cViewerRating,
                  ("publishedAt" .=) <$> _cPublishedAt,
                  ("authorChannelUrl" .=) <$> _cAuthorChannelURL,
                  ("moderationStatus" .=) <$> _cModerationStatus,
                  ("likeCount" .=) <$> _cLikeCount,
                  ("channelId" .=) <$> _cChannelId,
                  ("textOriginal" .=) <$> _cTextOriginal,
                  ("videoId" .=) <$> _cVideoId,
                  ("textDisplay" .=) <$> _cTextDisplay,
                  ("authorProfileImageUrl" .=) <$>
                    _cAuthorProFileImageURL,
                  ("authorDisplayName" .=) <$> _cAuthorDisplayName,
                  ("updatedAt" .=) <$> _cUpdatedAt,
                  ("authorChannelId" .=) <$> _cAuthorChannelId,
                  ("canRate" .=) <$> _cCanRate,
                  ("authorGoogleplusProfileUrl" .=) <$>
                    _cAuthorGoogleplusProFileURL,
                  ("parentId" .=) <$> _cParentId])

-- | Brief description of the live stream status.
--
-- /See:/ 'liveStreamStatus' smart constructor.
data LiveStreamStatus = LiveStreamStatus'
    { _lssStreamStatus :: !(Maybe LiveStreamStatusStreamStatus)
    , _lssHealthStatus :: !(Maybe LiveStreamHealthStatus)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiveStreamStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssStreamStatus'
--
-- * 'lssHealthStatus'
liveStreamStatus
    :: LiveStreamStatus
liveStreamStatus =
    LiveStreamStatus'
    { _lssStreamStatus = Nothing
    , _lssHealthStatus = Nothing
    }

lssStreamStatus :: Lens' LiveStreamStatus (Maybe LiveStreamStatusStreamStatus)
lssStreamStatus
  = lens _lssStreamStatus
      (\ s a -> s{_lssStreamStatus = a})

-- | The health status of the stream.
lssHealthStatus :: Lens' LiveStreamStatus (Maybe LiveStreamHealthStatus)
lssHealthStatus
  = lens _lssHealthStatus
      (\ s a -> s{_lssHealthStatus = a})

instance FromJSON LiveStreamStatus where
        parseJSON
          = withObject "LiveStreamStatus"
              (\ o ->
                 LiveStreamStatus' <$>
                   (o .:? "streamStatus") <*> (o .:? "healthStatus"))

instance ToJSON LiveStreamStatus where
        toJSON LiveStreamStatus'{..}
          = object
              (catMaybes
                 [("streamStatus" .=) <$> _lssStreamStatus,
                  ("healthStatus" .=) <$> _lssHealthStatus])

-- | Specifies suggestions on how to improve video content, including
-- encoding hints, tag suggestions, and editor suggestions.
--
-- /See:/ 'videoSuggestions' smart constructor.
data VideoSuggestions = VideoSuggestions'
    { _vsProcessingErrors   :: !(Maybe [VideoSuggestionsProcessingErrorsItem])
    , _vsProcessingHints    :: !(Maybe [VideoSuggestionsProcessingHintsItem])
    , _vsEditorSuggestions  :: !(Maybe [VideoSuggestionsEditorSuggestionsItem])
    , _vsProcessingWarnings :: !(Maybe [VideoSuggestionsProcessingWarningsItem])
    , _vsTagSuggestions     :: !(Maybe [VideoSuggestionsTagSuggestion])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoSuggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsProcessingErrors'
--
-- * 'vsProcessingHints'
--
-- * 'vsEditorSuggestions'
--
-- * 'vsProcessingWarnings'
--
-- * 'vsTagSuggestions'
videoSuggestions
    :: VideoSuggestions
videoSuggestions =
    VideoSuggestions'
    { _vsProcessingErrors = Nothing
    , _vsProcessingHints = Nothing
    , _vsEditorSuggestions = Nothing
    , _vsProcessingWarnings = Nothing
    , _vsTagSuggestions = Nothing
    }

-- | A list of errors that will prevent YouTube from successfully processing
-- the uploaded video video. These errors indicate that, regardless of the
-- video\'s current processing status, eventually, that status will almost
-- certainly be failed.
vsProcessingErrors :: Lens' VideoSuggestions [VideoSuggestionsProcessingErrorsItem]
vsProcessingErrors
  = lens _vsProcessingErrors
      (\ s a -> s{_vsProcessingErrors = a})
      . _Default
      . _Coerce

-- | A list of suggestions that may improve YouTube\'s ability to process the
-- video.
vsProcessingHints :: Lens' VideoSuggestions [VideoSuggestionsProcessingHintsItem]
vsProcessingHints
  = lens _vsProcessingHints
      (\ s a -> s{_vsProcessingHints = a})
      . _Default
      . _Coerce

-- | A list of video editing operations that might improve the video quality
-- or playback experience of the uploaded video.
vsEditorSuggestions :: Lens' VideoSuggestions [VideoSuggestionsEditorSuggestionsItem]
vsEditorSuggestions
  = lens _vsEditorSuggestions
      (\ s a -> s{_vsEditorSuggestions = a})
      . _Default
      . _Coerce

-- | A list of reasons why YouTube may have difficulty transcoding the
-- uploaded video or that might result in an erroneous transcoding. These
-- warnings are generated before YouTube actually processes the uploaded
-- video file. In addition, they identify issues that are unlikely to cause
-- the video processing to fail but that might cause problems such as sync
-- issues, video artifacts, or a missing audio track.
vsProcessingWarnings :: Lens' VideoSuggestions [VideoSuggestionsProcessingWarningsItem]
vsProcessingWarnings
  = lens _vsProcessingWarnings
      (\ s a -> s{_vsProcessingWarnings = a})
      . _Default
      . _Coerce

-- | A list of keyword tags that could be added to the video\'s metadata to
-- increase the likelihood that users will locate your video when searching
-- or browsing on YouTube.
vsTagSuggestions :: Lens' VideoSuggestions [VideoSuggestionsTagSuggestion]
vsTagSuggestions
  = lens _vsTagSuggestions
      (\ s a -> s{_vsTagSuggestions = a})
      . _Default
      . _Coerce

instance FromJSON VideoSuggestions where
        parseJSON
          = withObject "VideoSuggestions"
              (\ o ->
                 VideoSuggestions' <$>
                   (o .:? "processingErrors" .!= mempty) <*>
                     (o .:? "processingHints" .!= mempty)
                     <*> (o .:? "editorSuggestions" .!= mempty)
                     <*> (o .:? "processingWarnings" .!= mempty)
                     <*> (o .:? "tagSuggestions" .!= mempty))

instance ToJSON VideoSuggestions where
        toJSON VideoSuggestions'{..}
          = object
              (catMaybes
                 [("processingErrors" .=) <$> _vsProcessingErrors,
                  ("processingHints" .=) <$> _vsProcessingHints,
                  ("editorSuggestions" .=) <$> _vsEditorSuggestions,
                  ("processingWarnings" .=) <$> _vsProcessingWarnings,
                  ("tagSuggestions" .=) <$> _vsTagSuggestions])

-- | Basic details about a playlist, including title, description and
-- thumbnails.
--
-- /See:/ 'playListItemSnippet' smart constructor.
data PlayListItemSnippet = PlayListItemSnippet'
    { _plisResourceId   :: !(Maybe ResourceId)
    , _plisPublishedAt  :: !(Maybe DateTime')
    , _plisChannelTitle :: !(Maybe Text)
    , _plisChannelId    :: !(Maybe Text)
    , _plisThumbnails   :: !(Maybe ThumbnailDetails)
    , _plisTitle        :: !(Maybe Text)
    , _plisPlayListId   :: !(Maybe Text)
    , _plisDescription  :: !(Maybe Text)
    , _plisPosition     :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayListItemSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plisResourceId'
--
-- * 'plisPublishedAt'
--
-- * 'plisChannelTitle'
--
-- * 'plisChannelId'
--
-- * 'plisThumbnails'
--
-- * 'plisTitle'
--
-- * 'plisPlayListId'
--
-- * 'plisDescription'
--
-- * 'plisPosition'
playListItemSnippet
    :: PlayListItemSnippet
playListItemSnippet =
    PlayListItemSnippet'
    { _plisResourceId = Nothing
    , _plisPublishedAt = Nothing
    , _plisChannelTitle = Nothing
    , _plisChannelId = Nothing
    , _plisThumbnails = Nothing
    , _plisTitle = Nothing
    , _plisPlayListId = Nothing
    , _plisDescription = Nothing
    , _plisPosition = Nothing
    }

-- | The id object contains information that can be used to uniquely identify
-- the resource that is included in the playlist as the playlist item.
plisResourceId :: Lens' PlayListItemSnippet (Maybe ResourceId)
plisResourceId
  = lens _plisResourceId
      (\ s a -> s{_plisResourceId = a})

-- | The date and time that the item was added to the playlist. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
plisPublishedAt :: Lens' PlayListItemSnippet (Maybe UTCTime)
plisPublishedAt
  = lens _plisPublishedAt
      (\ s a -> s{_plisPublishedAt = a})
      . mapping _DateTime

-- | Channel title for the channel that the playlist item belongs to.
plisChannelTitle :: Lens' PlayListItemSnippet (Maybe Text)
plisChannelTitle
  = lens _plisChannelTitle
      (\ s a -> s{_plisChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the user that added the
-- item to the playlist.
plisChannelId :: Lens' PlayListItemSnippet (Maybe Text)
plisChannelId
  = lens _plisChannelId
      (\ s a -> s{_plisChannelId = a})

-- | A map of thumbnail images associated with the playlist item. For each
-- object in the map, the key is the name of the thumbnail image, and the
-- value is an object that contains other information about the thumbnail.
plisThumbnails :: Lens' PlayListItemSnippet (Maybe ThumbnailDetails)
plisThumbnails
  = lens _plisThumbnails
      (\ s a -> s{_plisThumbnails = a})

-- | The item\'s title.
plisTitle :: Lens' PlayListItemSnippet (Maybe Text)
plisTitle
  = lens _plisTitle (\ s a -> s{_plisTitle = a})

-- | The ID that YouTube uses to uniquely identify the playlist that the
-- playlist item is in.
plisPlayListId :: Lens' PlayListItemSnippet (Maybe Text)
plisPlayListId
  = lens _plisPlayListId
      (\ s a -> s{_plisPlayListId = a})

-- | The item\'s description.
plisDescription :: Lens' PlayListItemSnippet (Maybe Text)
plisDescription
  = lens _plisDescription
      (\ s a -> s{_plisDescription = a})

-- | The order in which the item appears in the playlist. The value uses a
-- zero-based index, so the first item has a position of 0, the second item
-- has a position of 1, and so forth.
plisPosition :: Lens' PlayListItemSnippet (Maybe Word32)
plisPosition
  = lens _plisPosition (\ s a -> s{_plisPosition = a})
      . mapping _Coerce

instance FromJSON PlayListItemSnippet where
        parseJSON
          = withObject "PlayListItemSnippet"
              (\ o ->
                 PlayListItemSnippet' <$>
                   (o .:? "resourceId") <*> (o .:? "publishedAt") <*>
                     (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "playlistId")
                     <*> (o .:? "description")
                     <*> (o .:? "position"))

instance ToJSON PlayListItemSnippet where
        toJSON PlayListItemSnippet'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _plisResourceId,
                  ("publishedAt" .=) <$> _plisPublishedAt,
                  ("channelTitle" .=) <$> _plisChannelTitle,
                  ("channelId" .=) <$> _plisChannelId,
                  ("thumbnails" .=) <$> _plisThumbnails,
                  ("title" .=) <$> _plisTitle,
                  ("playlistId" .=) <$> _plisPlayListId,
                  ("description" .=) <$> _plisDescription,
                  ("position" .=) <$> _plisPosition])

-- | Project specific details about the content of a YouTube Video.
--
-- /See:/ 'videoProjectDetails' smart constructor.
newtype VideoProjectDetails = VideoProjectDetails'
    { _vpdTags :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoProjectDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vpdTags'
videoProjectDetails
    :: VideoProjectDetails
videoProjectDetails =
    VideoProjectDetails'
    { _vpdTags = Nothing
    }

-- | A list of project tags associated with the video during the upload.
vpdTags :: Lens' VideoProjectDetails [Text]
vpdTags
  = lens _vpdTags (\ s a -> s{_vpdTags = a}) . _Default
      . _Coerce

instance FromJSON VideoProjectDetails where
        parseJSON
          = withObject "VideoProjectDetails"
              (\ o ->
                 VideoProjectDetails' <$> (o .:? "tags" .!= mempty))

instance ToJSON VideoProjectDetails where
        toJSON VideoProjectDetails'{..}
          = object (catMaybes [("tags" .=) <$> _vpdTags])

-- | Ratings schemes. The country-specific ratings are mostly for movies and
-- shows. NEXT_ID: 67
--
-- /See:/ 'contentRating' smart constructor.
data ContentRating = ContentRating'
    { _crPefilmRating           :: !(Maybe ContentRatingPefilmRating)
    , _crCccRating              :: !(Maybe ContentRatingCccRating)
    , _crAnatelRating           :: !(Maybe ContentRatingAnatelRating)
    , _crMpaaRating             :: !(Maybe ContentRatingMpaaRating)
    , _crCceRating              :: !(Maybe ContentRatingCceRating)
    , _crMccaaRating            :: !(Maybe ContentRatingMccaaRating)
    , _crChfilmRating           :: !(Maybe ContentRatingChfilmRating)
    , _crIcaaRating             :: !(Maybe ContentRatingIcaaRating)
    , _crFcbmRating             :: !(Maybe ContentRatingFcbmRating)
    , _crBmukkRating            :: !(Maybe ContentRatingBmukkRating)
    , _crMoctwRating            :: !(Maybe ContentRatingMoctwRating)
    , _crNfvcbRating            :: !(Maybe ContentRatingNfvcbRating)
    , _crDjctqRatingReasons     :: !(Maybe [ContentRatingDjctqRatingReasonsItem])
    , _crAgcomRating            :: !(Maybe ContentRatingAgcomRating)
    , _crCnaRating              :: !(Maybe ContentRatingCnaRating)
    , _crCatvfrRating           :: !(Maybe ContentRatingCatvfrRating)
    , _crCbfcRating             :: !(Maybe ContentRatingCbfcRating)
    , _crKfcbRating             :: !(Maybe ContentRatingKfcbRating)
    , _crSmsaRating             :: !(Maybe ContentRatingSmsaRating)
    , _crChvrsRating            :: !(Maybe ContentRatingChvrsRating)
    , _crIncaaRating            :: !(Maybe ContentRatingIncaaRating)
    , _crNfrcRating             :: !(Maybe ContentRatingNfrcRating)
    , _crCsaRating              :: !(Maybe ContentRatingCsaRating)
    , _crMocRating              :: !(Maybe ContentRatingMocRating)
    , _crEirinRating            :: !(Maybe ContentRatingEirinRating)
    , _crFskRating              :: !(Maybe ContentRatingFskRating)
    , _crEefilmRating           :: !(Maybe ContentRatingEefilmRating)
    , _crRcnofRating            :: !(Maybe ContentRatingRcnofRating)
    , _crMekuRating             :: !(Maybe ContentRatingMekuRating)
    , _crIlfilmRating           :: !(Maybe ContentRatingIlfilmRating)
    , _crIfcoRating             :: !(Maybe ContentRatingIfcoRating)
    , _crNbcplRating            :: !(Maybe ContentRatingNbcplRating)
    , _crGrfilmRating           :: !(Maybe ContentRatingGrfilmRating)
    , _crRteRating              :: !(Maybe ContentRatingRteRating)
    , _crAcbRating              :: !(Maybe ContentRatingAcbRating)
    , _crCatvRating             :: !(Maybe ContentRatingCatvRating)
    , _crMdaRating              :: !(Maybe ContentRatingMdaRating)
    , _crDjctqRating            :: !(Maybe ContentRatingDjctqRating)
    , _crSmaisRating            :: !(Maybe ContentRatingSmaisRating)
    , _crCscfRating             :: !(Maybe ContentRatingCscfRating)
    , _crTvpgRating             :: !(Maybe ContentRatingTvpgRating)
    , _crRtcRating              :: !(Maybe ContentRatingRtcRating)
    , _crYtRating               :: !(Maybe ContentRatingYtRating)
    , _crBbfcRating             :: !(Maybe ContentRatingBbfcRating)
    , _crKijkwijzerRating       :: !(Maybe ContentRatingKijkwijzerRating)
    , _crMtrcbRating            :: !(Maybe ContentRatingMtrcbRating)
    , _crFcoRating              :: !(Maybe ContentRatingFcoRating)
    , _crCicfRating             :: !(Maybe ContentRatingCicfRating)
    , _crCzfilmRating           :: !(Maybe ContentRatingCzfilmRating)
    , _crNbcRating              :: !(Maybe ContentRatingNbcRating)
    , _crFmocRating             :: !(Maybe ContentRatingFmocRating)
    , _crRussiaRating           :: !(Maybe ContentRatingRussiaRating)
    , _crEgfilmRating           :: !(Maybe ContentRatingEgfilmRating)
    , _crResorteviolenciaRating :: !(Maybe ContentRatingResorteviolenciaRating)
    , _crMibacRating            :: !(Maybe ContentRatingMibacRating)
    , _crMedietilsynetRating    :: !(Maybe ContentRatingMedietilsynetRating)
    , _crMccypRating            :: !(Maybe ContentRatingMccypRating)
    , _crNkclvRating            :: !(Maybe ContentRatingNkclvRating)
    , _crFpbRating              :: !(Maybe ContentRatingFpbRating)
    , _crLsfRating              :: !(Maybe ContentRatingLsfRating)
    , _crBfvcRating             :: !(Maybe ContentRatingBfvcRating)
    , _crEcbmctRating           :: !(Maybe ContentRatingEcbmctRating)
    , _crCNCRating              :: !(Maybe ContentRatingCNCRating)
    , _crSkfilmRating           :: !(Maybe ContentRatingSkfilmRating)
    , _crOflcRating             :: !(Maybe ContentRatingOflcRating)
    , _crKmrbRating             :: !(Maybe ContentRatingKmrbRating)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContentRating' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crPefilmRating'
--
-- * 'crCccRating'
--
-- * 'crAnatelRating'
--
-- * 'crMpaaRating'
--
-- * 'crCceRating'
--
-- * 'crMccaaRating'
--
-- * 'crChfilmRating'
--
-- * 'crIcaaRating'
--
-- * 'crFcbmRating'
--
-- * 'crBmukkRating'
--
-- * 'crMoctwRating'
--
-- * 'crNfvcbRating'
--
-- * 'crDjctqRatingReasons'
--
-- * 'crAgcomRating'
--
-- * 'crCnaRating'
--
-- * 'crCatvfrRating'
--
-- * 'crCbfcRating'
--
-- * 'crKfcbRating'
--
-- * 'crSmsaRating'
--
-- * 'crChvrsRating'
--
-- * 'crIncaaRating'
--
-- * 'crNfrcRating'
--
-- * 'crCsaRating'
--
-- * 'crMocRating'
--
-- * 'crEirinRating'
--
-- * 'crFskRating'
--
-- * 'crEefilmRating'
--
-- * 'crRcnofRating'
--
-- * 'crMekuRating'
--
-- * 'crIlfilmRating'
--
-- * 'crIfcoRating'
--
-- * 'crNbcplRating'
--
-- * 'crGrfilmRating'
--
-- * 'crRteRating'
--
-- * 'crAcbRating'
--
-- * 'crCatvRating'
--
-- * 'crMdaRating'
--
-- * 'crDjctqRating'
--
-- * 'crSmaisRating'
--
-- * 'crCscfRating'
--
-- * 'crTvpgRating'
--
-- * 'crRtcRating'
--
-- * 'crYtRating'
--
-- * 'crBbfcRating'
--
-- * 'crKijkwijzerRating'
--
-- * 'crMtrcbRating'
--
-- * 'crFcoRating'
--
-- * 'crCicfRating'
--
-- * 'crCzfilmRating'
--
-- * 'crNbcRating'
--
-- * 'crFmocRating'
--
-- * 'crRussiaRating'
--
-- * 'crEgfilmRating'
--
-- * 'crResorteviolenciaRating'
--
-- * 'crMibacRating'
--
-- * 'crMedietilsynetRating'
--
-- * 'crMccypRating'
--
-- * 'crNkclvRating'
--
-- * 'crFpbRating'
--
-- * 'crLsfRating'
--
-- * 'crBfvcRating'
--
-- * 'crEcbmctRating'
--
-- * 'crCNCRating'
--
-- * 'crSkfilmRating'
--
-- * 'crOflcRating'
--
-- * 'crKmrbRating'
contentRating
    :: ContentRating
contentRating =
    ContentRating'
    { _crPefilmRating = Nothing
    , _crCccRating = Nothing
    , _crAnatelRating = Nothing
    , _crMpaaRating = Nothing
    , _crCceRating = Nothing
    , _crMccaaRating = Nothing
    , _crChfilmRating = Nothing
    , _crIcaaRating = Nothing
    , _crFcbmRating = Nothing
    , _crBmukkRating = Nothing
    , _crMoctwRating = Nothing
    , _crNfvcbRating = Nothing
    , _crDjctqRatingReasons = Nothing
    , _crAgcomRating = Nothing
    , _crCnaRating = Nothing
    , _crCatvfrRating = Nothing
    , _crCbfcRating = Nothing
    , _crKfcbRating = Nothing
    , _crSmsaRating = Nothing
    , _crChvrsRating = Nothing
    , _crIncaaRating = Nothing
    , _crNfrcRating = Nothing
    , _crCsaRating = Nothing
    , _crMocRating = Nothing
    , _crEirinRating = Nothing
    , _crFskRating = Nothing
    , _crEefilmRating = Nothing
    , _crRcnofRating = Nothing
    , _crMekuRating = Nothing
    , _crIlfilmRating = Nothing
    , _crIfcoRating = Nothing
    , _crNbcplRating = Nothing
    , _crGrfilmRating = Nothing
    , _crRteRating = Nothing
    , _crAcbRating = Nothing
    , _crCatvRating = Nothing
    , _crMdaRating = Nothing
    , _crDjctqRating = Nothing
    , _crSmaisRating = Nothing
    , _crCscfRating = Nothing
    , _crTvpgRating = Nothing
    , _crRtcRating = Nothing
    , _crYtRating = Nothing
    , _crBbfcRating = Nothing
    , _crKijkwijzerRating = Nothing
    , _crMtrcbRating = Nothing
    , _crFcoRating = Nothing
    , _crCicfRating = Nothing
    , _crCzfilmRating = Nothing
    , _crNbcRating = Nothing
    , _crFmocRating = Nothing
    , _crRussiaRating = Nothing
    , _crEgfilmRating = Nothing
    , _crResorteviolenciaRating = Nothing
    , _crMibacRating = Nothing
    , _crMedietilsynetRating = Nothing
    , _crMccypRating = Nothing
    , _crNkclvRating = Nothing
    , _crFpbRating = Nothing
    , _crLsfRating = Nothing
    , _crBfvcRating = Nothing
    , _crEcbmctRating = Nothing
    , _crCNCRating = Nothing
    , _crSkfilmRating = Nothing
    , _crOflcRating = Nothing
    , _crKmrbRating = Nothing
    }

-- | The video\'s rating in Peru.
crPefilmRating :: Lens' ContentRating (Maybe ContentRatingPefilmRating)
crPefilmRating
  = lens _crPefilmRating
      (\ s a -> s{_crPefilmRating = a})

-- | The video\'s Consejo de Calificación Cinematográfica (Chile) rating.
crCccRating :: Lens' ContentRating (Maybe ContentRatingCccRating)
crCccRating
  = lens _crCccRating (\ s a -> s{_crCccRating = a})

-- | The video\'s Anatel (Asociación Nacional de Televisión) rating for
-- Chilean television.
crAnatelRating :: Lens' ContentRating (Maybe ContentRatingAnatelRating)
crAnatelRating
  = lens _crAnatelRating
      (\ s a -> s{_crAnatelRating = a})

-- | The video\'s Motion Picture Association of America (MPAA) rating.
crMpaaRating :: Lens' ContentRating (Maybe ContentRatingMpaaRating)
crMpaaRating
  = lens _crMpaaRating (\ s a -> s{_crMpaaRating = a})

-- | The video\'s rating from Portugal\'s Comissão de Classificação de
-- Espect´culos.
crCceRating :: Lens' ContentRating (Maybe ContentRatingCceRating)
crCceRating
  = lens _crCceRating (\ s a -> s{_crCceRating = a})

-- | The video\'s rating from Malta\'s Film Age-Classification Board.
crMccaaRating :: Lens' ContentRating (Maybe ContentRatingMccaaRating)
crMccaaRating
  = lens _crMccaaRating
      (\ s a -> s{_crMccaaRating = a})

-- | The video\'s rating in Switzerland.
crChfilmRating :: Lens' ContentRating (Maybe ContentRatingChfilmRating)
crChfilmRating
  = lens _crChfilmRating
      (\ s a -> s{_crChfilmRating = a})

-- | The video\'s Instituto de la Cinematografía y de las Artes Audiovisuales
-- (ICAA - Spain) rating.
crIcaaRating :: Lens' ContentRating (Maybe ContentRatingIcaaRating)
crIcaaRating
  = lens _crIcaaRating (\ s a -> s{_crIcaaRating = a})

-- | The video\'s rating from Malaysia\'s Film Censorship Board.
crFcbmRating :: Lens' ContentRating (Maybe ContentRatingFcbmRating)
crFcbmRating
  = lens _crFcbmRating (\ s a -> s{_crFcbmRating = a})

-- | The video\'s rating from the Austrian Board of Media Classification
-- (Bundesministerium für Unterricht, Kunst und Kultur).
crBmukkRating :: Lens' ContentRating (Maybe ContentRatingBmukkRating)
crBmukkRating
  = lens _crBmukkRating
      (\ s a -> s{_crBmukkRating = a})

-- | The video\'s rating from Taiwan\'s Ministry of Culture (文化部).
crMoctwRating :: Lens' ContentRating (Maybe ContentRatingMoctwRating)
crMoctwRating
  = lens _crMoctwRating
      (\ s a -> s{_crMoctwRating = a})

-- | The video\'s rating from Nigeria\'s National Film and Video Censors
-- Board.
crNfvcbRating :: Lens' ContentRating (Maybe ContentRatingNfvcbRating)
crNfvcbRating
  = lens _crNfvcbRating
      (\ s a -> s{_crNfvcbRating = a})

-- | Reasons that explain why the video received its DJCQT (Brazil) rating.
crDjctqRatingReasons :: Lens' ContentRating [ContentRatingDjctqRatingReasonsItem]
crDjctqRatingReasons
  = lens _crDjctqRatingReasons
      (\ s a -> s{_crDjctqRatingReasons = a})
      . _Default
      . _Coerce

-- | The video\'s rating from Italy\'s Autorità per le Garanzie nelle
-- Comunicazioni (AGCOM).
crAgcomRating :: Lens' ContentRating (Maybe ContentRatingAgcomRating)
crAgcomRating
  = lens _crAgcomRating
      (\ s a -> s{_crAgcomRating = a})

-- | The video\'s rating from Romania\'s CONSILIUL NATIONAL AL
-- AUDIOVIZUALULUI (CNA).
crCnaRating :: Lens' ContentRating (Maybe ContentRatingCnaRating)
crCnaRating
  = lens _crCnaRating (\ s a -> s{_crCnaRating = a})

-- | The video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian French-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
crCatvfrRating :: Lens' ContentRating (Maybe ContentRatingCatvfrRating)
crCatvfrRating
  = lens _crCatvfrRating
      (\ s a -> s{_crCatvfrRating = a})

-- | The video\'s Central Board of Film Certification (CBFC - India) rating.
crCbfcRating :: Lens' ContentRating (Maybe ContentRatingCbfcRating)
crCbfcRating
  = lens _crCbfcRating (\ s a -> s{_crCbfcRating = a})

-- | The video\'s rating from the Kenya Film Classification Board.
crKfcbRating :: Lens' ContentRating (Maybe ContentRatingKfcbRating)
crKfcbRating
  = lens _crKfcbRating (\ s a -> s{_crKfcbRating = a})

-- | The video\'s rating from Statens medieråd (Sweden\'s National Media
-- Council).
crSmsaRating :: Lens' ContentRating (Maybe ContentRatingSmsaRating)
crSmsaRating
  = lens _crSmsaRating (\ s a -> s{_crSmsaRating = a})

-- | The video\'s Canadian Home Video Rating System (CHVRS) rating.
crChvrsRating :: Lens' ContentRating (Maybe ContentRatingChvrsRating)
crChvrsRating
  = lens _crChvrsRating
      (\ s a -> s{_crChvrsRating = a})

-- | The video\'s INCAA (Instituto Nacional de Cine y Artes Audiovisuales -
-- Argentina) rating.
crIncaaRating :: Lens' ContentRating (Maybe ContentRatingIncaaRating)
crIncaaRating
  = lens _crIncaaRating
      (\ s a -> s{_crIncaaRating = a})

-- | The video\'s rating from the Bulgarian National Film Center.
crNfrcRating :: Lens' ContentRating (Maybe ContentRatingNfrcRating)
crNfrcRating
  = lens _crNfrcRating (\ s a -> s{_crNfrcRating = a})

-- | The video\'s rating from France\'s Conseil supérieur de l?audiovisuel,
-- which rates broadcast content.
crCsaRating :: Lens' ContentRating (Maybe ContentRatingCsaRating)
crCsaRating
  = lens _crCsaRating (\ s a -> s{_crCsaRating = a})

-- | The video\'s Ministerio de Cultura (Colombia) rating.
crMocRating :: Lens' ContentRating (Maybe ContentRatingMocRating)
crMocRating
  = lens _crMocRating (\ s a -> s{_crMocRating = a})

-- | The video\'s Eirin (映倫) rating. Eirin is the Japanese rating system.
crEirinRating :: Lens' ContentRating (Maybe ContentRatingEirinRating)
crEirinRating
  = lens _crEirinRating
      (\ s a -> s{_crEirinRating = a})

-- | The video\'s Freiwillige Selbstkontrolle der Filmwirtschaft (FSK -
-- Germany) rating.
crFskRating :: Lens' ContentRating (Maybe ContentRatingFskRating)
crFskRating
  = lens _crFskRating (\ s a -> s{_crFskRating = a})

-- | The video\'s rating in Estonia.
crEefilmRating :: Lens' ContentRating (Maybe ContentRatingEefilmRating)
crEefilmRating
  = lens _crEefilmRating
      (\ s a -> s{_crEefilmRating = a})

-- | The video\'s rating from the Hungarian Nemzeti Filmiroda, the Rating
-- Committee of the National Office of Film.
crRcnofRating :: Lens' ContentRating (Maybe ContentRatingRcnofRating)
crRcnofRating
  = lens _crRcnofRating
      (\ s a -> s{_crRcnofRating = a})

-- | The video\'s rating from Finland\'s Kansallinen Audiovisuaalinen
-- Instituutti (National Audiovisual Institute).
crMekuRating :: Lens' ContentRating (Maybe ContentRatingMekuRating)
crMekuRating
  = lens _crMekuRating (\ s a -> s{_crMekuRating = a})

-- | The video\'s rating in Israel.
crIlfilmRating :: Lens' ContentRating (Maybe ContentRatingIlfilmRating)
crIlfilmRating
  = lens _crIlfilmRating
      (\ s a -> s{_crIlfilmRating = a})

-- | The video\'s Irish Film Classification Office (IFCO - Ireland) rating.
-- See the IFCO website for more information.
crIfcoRating :: Lens' ContentRating (Maybe ContentRatingIfcoRating)
crIfcoRating
  = lens _crIfcoRating (\ s a -> s{_crIfcoRating = a})

-- | The video\'s rating in Poland.
crNbcplRating :: Lens' ContentRating (Maybe ContentRatingNbcplRating)
crNbcplRating
  = lens _crNbcplRating
      (\ s a -> s{_crNbcplRating = a})

-- | The video\'s rating in Greece.
crGrfilmRating :: Lens' ContentRating (Maybe ContentRatingGrfilmRating)
crGrfilmRating
  = lens _crGrfilmRating
      (\ s a -> s{_crGrfilmRating = a})

-- | The video\'s rating from Ireland\'s Raidió Teilifís Éireann.
crRteRating :: Lens' ContentRating (Maybe ContentRatingRteRating)
crRteRating
  = lens _crRteRating (\ s a -> s{_crRteRating = a})

-- | The video\'s Australian Classification Board (ACB) or Australian
-- Communications and Media Authority (ACMA) rating. ACMA ratings are used
-- to classify children\'s television programming.
crAcbRating :: Lens' ContentRating (Maybe ContentRatingAcbRating)
crAcbRating
  = lens _crAcbRating (\ s a -> s{_crAcbRating = a})

-- | Rating system for Canadian TV - Canadian TV Classification System The
-- video\'s rating from the Canadian Radio-Television and
-- Telecommunications Commission (CRTC) for Canadian English-language
-- broadcasts. For more information, see the Canadian Broadcast Standards
-- Council website.
crCatvRating :: Lens' ContentRating (Maybe ContentRatingCatvRating)
crCatvRating
  = lens _crCatvRating (\ s a -> s{_crCatvRating = a})

-- | The video\'s rating from Singapore\'s Media Development Authority (MDA)
-- and, specifically, it\'s Board of Film Censors (BFC).
crMdaRating :: Lens' ContentRating (Maybe ContentRatingMdaRating)
crMdaRating
  = lens _crMdaRating (\ s a -> s{_crMdaRating = a})

-- | The video\'s Departamento de Justiça, Classificação, Qualificação e
-- Títulos (DJCQT - Brazil) rating.
crDjctqRating :: Lens' ContentRating (Maybe ContentRatingDjctqRating)
crDjctqRating
  = lens _crDjctqRating
      (\ s a -> s{_crDjctqRating = a})

-- | The video\'s rating in Iceland.
crSmaisRating :: Lens' ContentRating (Maybe ContentRatingSmaisRating)
crSmaisRating
  = lens _crSmaisRating
      (\ s a -> s{_crSmaisRating = a})

-- | The video\'s rating from Luxembourg\'s Commission de surveillance de la
-- classification des films (CSCF).
crCscfRating :: Lens' ContentRating (Maybe ContentRatingCscfRating)
crCscfRating
  = lens _crCscfRating (\ s a -> s{_crCscfRating = a})

-- | The video\'s TV Parental Guidelines (TVPG) rating.
crTvpgRating :: Lens' ContentRating (Maybe ContentRatingTvpgRating)
crTvpgRating
  = lens _crTvpgRating (\ s a -> s{_crTvpgRating = a})

-- | The video\'s General Directorate of Radio, Television and Cinematography
-- (Mexico) rating.
crRtcRating :: Lens' ContentRating (Maybe ContentRatingRtcRating)
crRtcRating
  = lens _crRtcRating (\ s a -> s{_crRtcRating = a})

-- | A rating that YouTube uses to identify age-restricted content.
crYtRating :: Lens' ContentRating (Maybe ContentRatingYtRating)
crYtRating
  = lens _crYtRating (\ s a -> s{_crYtRating = a})

-- | The video\'s British Board of Film Classification (BBFC) rating.
crBbfcRating :: Lens' ContentRating (Maybe ContentRatingBbfcRating)
crBbfcRating
  = lens _crBbfcRating (\ s a -> s{_crBbfcRating = a})

-- | voor de Classificatie van Audiovisuele Media (Netherlands).
crKijkwijzerRating :: Lens' ContentRating (Maybe ContentRatingKijkwijzerRating)
crKijkwijzerRating
  = lens _crKijkwijzerRating
      (\ s a -> s{_crKijkwijzerRating = a})

-- | The video\'s rating from the Movie and Television Review and
-- Classification Board (Philippines).
crMtrcbRating :: Lens' ContentRating (Maybe ContentRatingMtrcbRating)
crMtrcbRating
  = lens _crMtrcbRating
      (\ s a -> s{_crMtrcbRating = a})

-- | The video\'s rating from Hong Kong\'s Office for Film, Newspaper and
-- Article Administration.
crFcoRating :: Lens' ContentRating (Maybe ContentRatingFcoRating)
crFcoRating
  = lens _crFcoRating (\ s a -> s{_crFcoRating = a})

-- | The video\'s rating from the Commission de Contrôle des Films (Belgium).
crCicfRating :: Lens' ContentRating (Maybe ContentRatingCicfRating)
crCicfRating
  = lens _crCicfRating (\ s a -> s{_crCicfRating = a})

-- | The video\'s rating in the Czech Republic.
crCzfilmRating :: Lens' ContentRating (Maybe ContentRatingCzfilmRating)
crCzfilmRating
  = lens _crCzfilmRating
      (\ s a -> s{_crCzfilmRating = a})

-- | The video\'s rating from the Maldives National Bureau of Classification.
crNbcRating :: Lens' ContentRating (Maybe ContentRatingNbcRating)
crNbcRating
  = lens _crNbcRating (\ s a -> s{_crNbcRating = a})

-- | This property has been deprecated. Use the
-- contentDetails.contentRating.cncRating instead.
crFmocRating :: Lens' ContentRating (Maybe ContentRatingFmocRating)
crFmocRating
  = lens _crFmocRating (\ s a -> s{_crFmocRating = a})

-- | The video\'s National Film Registry of the Russian Federation (MKRF -
-- Russia) rating.
crRussiaRating :: Lens' ContentRating (Maybe ContentRatingRussiaRating)
crRussiaRating
  = lens _crRussiaRating
      (\ s a -> s{_crRussiaRating = a})

-- | The video\'s rating in Egypt.
crEgfilmRating :: Lens' ContentRating (Maybe ContentRatingEgfilmRating)
crEgfilmRating
  = lens _crEgfilmRating
      (\ s a -> s{_crEgfilmRating = a})

-- | The video\'s rating in Venezuela.
crResorteviolenciaRating :: Lens' ContentRating (Maybe ContentRatingResorteviolenciaRating)
crResorteviolenciaRating
  = lens _crResorteviolenciaRating
      (\ s a -> s{_crResorteviolenciaRating = a})

-- | The video\'s rating from the Ministero dei Beni e delle Attività
-- Culturali e del Turismo (Italy).
crMibacRating :: Lens' ContentRating (Maybe ContentRatingMibacRating)
crMibacRating
  = lens _crMibacRating
      (\ s a -> s{_crMibacRating = a})

-- | The video\'s rating from Medietilsynet, the Norwegian Media Authority.
crMedietilsynetRating :: Lens' ContentRating (Maybe ContentRatingMedietilsynetRating)
crMedietilsynetRating
  = lens _crMedietilsynetRating
      (\ s a -> s{_crMedietilsynetRating = a})

-- | The video\'s rating from the Danish Film Institute\'s (Det Danske
-- Filminstitut) Media Council for Children and Young People.
crMccypRating :: Lens' ContentRating (Maybe ContentRatingMccypRating)
crMccypRating
  = lens _crMccypRating
      (\ s a -> s{_crMccypRating = a})

-- | The video\'s rating from the Nacionãlais Kino centrs (National Film
-- Centre of Latvia).
crNkclvRating :: Lens' ContentRating (Maybe ContentRatingNkclvRating)
crNkclvRating
  = lens _crNkclvRating
      (\ s a -> s{_crNkclvRating = a})

-- | The video\'s rating from South Africa\'s Film and Publication Board.
crFpbRating :: Lens' ContentRating (Maybe ContentRatingFpbRating)
crFpbRating
  = lens _crFpbRating (\ s a -> s{_crFpbRating = a})

-- | The video\'s rating from Indonesia\'s Lembaga Sensor Film.
crLsfRating :: Lens' ContentRating (Maybe ContentRatingLsfRating)
crLsfRating
  = lens _crLsfRating (\ s a -> s{_crLsfRating = a})

-- | The video\'s rating from Thailand\'s Board of Film and Video Censors.
crBfvcRating :: Lens' ContentRating (Maybe ContentRatingBfvcRating)
crBfvcRating
  = lens _crBfvcRating (\ s a -> s{_crBfvcRating = a})

-- | Rating system in Turkey - Evaluation and Classification Board of the
-- Ministry of Culture and Tourism
crEcbmctRating :: Lens' ContentRating (Maybe ContentRatingEcbmctRating)
crEcbmctRating
  = lens _crEcbmctRating
      (\ s a -> s{_crEcbmctRating = a})

-- | Rating system in France - Commission de classification cinematographique
crCNCRating :: Lens' ContentRating (Maybe ContentRatingCNCRating)
crCNCRating
  = lens _crCNCRating (\ s a -> s{_crCNCRating = a})

-- | The video\'s rating in Slovakia.
crSkfilmRating :: Lens' ContentRating (Maybe ContentRatingSkfilmRating)
crSkfilmRating
  = lens _crSkfilmRating
      (\ s a -> s{_crSkfilmRating = a})

-- | The video\'s Office of Film and Literature Classification (OFLC - New
-- Zealand) rating.
crOflcRating :: Lens' ContentRating (Maybe ContentRatingOflcRating)
crOflcRating
  = lens _crOflcRating (\ s a -> s{_crOflcRating = a})

-- | The video\'s Korea Media Rating Board (영상물등급위원회) rating. The
-- KMRB rates videos in South Korea.
crKmrbRating :: Lens' ContentRating (Maybe ContentRatingKmrbRating)
crKmrbRating
  = lens _crKmrbRating (\ s a -> s{_crKmrbRating = a})

instance FromJSON ContentRating where
        parseJSON
          = withObject "ContentRating"
              (\ o ->
                 ContentRating' <$>
                   (o .:? "pefilmRating") <*> (o .:? "cccRating") <*>
                     (o .:? "anatelRating")
                     <*> (o .:? "mpaaRating")
                     <*> (o .:? "cceRating")
                     <*> (o .:? "mccaaRating")
                     <*> (o .:? "chfilmRating")
                     <*> (o .:? "icaaRating")
                     <*> (o .:? "fcbmRating")
                     <*> (o .:? "bmukkRating")
                     <*> (o .:? "moctwRating")
                     <*> (o .:? "nfvcbRating")
                     <*> (o .:? "djctqRatingReasons" .!= mempty)
                     <*> (o .:? "agcomRating")
                     <*> (o .:? "cnaRating")
                     <*> (o .:? "catvfrRating")
                     <*> (o .:? "cbfcRating")
                     <*> (o .:? "kfcbRating")
                     <*> (o .:? "smsaRating")
                     <*> (o .:? "chvrsRating")
                     <*> (o .:? "incaaRating")
                     <*> (o .:? "nfrcRating")
                     <*> (o .:? "csaRating")
                     <*> (o .:? "mocRating")
                     <*> (o .:? "eirinRating")
                     <*> (o .:? "fskRating")
                     <*> (o .:? "eefilmRating")
                     <*> (o .:? "rcnofRating")
                     <*> (o .:? "mekuRating")
                     <*> (o .:? "ilfilmRating")
                     <*> (o .:? "ifcoRating")
                     <*> (o .:? "nbcplRating")
                     <*> (o .:? "grfilmRating")
                     <*> (o .:? "rteRating")
                     <*> (o .:? "acbRating")
                     <*> (o .:? "catvRating")
                     <*> (o .:? "mdaRating")
                     <*> (o .:? "djctqRating")
                     <*> (o .:? "smaisRating")
                     <*> (o .:? "cscfRating")
                     <*> (o .:? "tvpgRating")
                     <*> (o .:? "rtcRating")
                     <*> (o .:? "ytRating")
                     <*> (o .:? "bbfcRating")
                     <*> (o .:? "kijkwijzerRating")
                     <*> (o .:? "mtrcbRating")
                     <*> (o .:? "fcoRating")
                     <*> (o .:? "cicfRating")
                     <*> (o .:? "czfilmRating")
                     <*> (o .:? "nbcRating")
                     <*> (o .:? "fmocRating")
                     <*> (o .:? "russiaRating")
                     <*> (o .:? "egfilmRating")
                     <*> (o .:? "resorteviolenciaRating")
                     <*> (o .:? "mibacRating")
                     <*> (o .:? "medietilsynetRating")
                     <*> (o .:? "mccypRating")
                     <*> (o .:? "nkclvRating")
                     <*> (o .:? "fpbRating")
                     <*> (o .:? "lsfRating")
                     <*> (o .:? "bfvcRating")
                     <*> (o .:? "ecbmctRating")
                     <*> (o .:? "cncRating")
                     <*> (o .:? "skfilmRating")
                     <*> (o .:? "oflcRating")
                     <*> (o .:? "kmrbRating"))

instance ToJSON ContentRating where
        toJSON ContentRating'{..}
          = object
              (catMaybes
                 [("pefilmRating" .=) <$> _crPefilmRating,
                  ("cccRating" .=) <$> _crCccRating,
                  ("anatelRating" .=) <$> _crAnatelRating,
                  ("mpaaRating" .=) <$> _crMpaaRating,
                  ("cceRating" .=) <$> _crCceRating,
                  ("mccaaRating" .=) <$> _crMccaaRating,
                  ("chfilmRating" .=) <$> _crChfilmRating,
                  ("icaaRating" .=) <$> _crIcaaRating,
                  ("fcbmRating" .=) <$> _crFcbmRating,
                  ("bmukkRating" .=) <$> _crBmukkRating,
                  ("moctwRating" .=) <$> _crMoctwRating,
                  ("nfvcbRating" .=) <$> _crNfvcbRating,
                  ("djctqRatingReasons" .=) <$> _crDjctqRatingReasons,
                  ("agcomRating" .=) <$> _crAgcomRating,
                  ("cnaRating" .=) <$> _crCnaRating,
                  ("catvfrRating" .=) <$> _crCatvfrRating,
                  ("cbfcRating" .=) <$> _crCbfcRating,
                  ("kfcbRating" .=) <$> _crKfcbRating,
                  ("smsaRating" .=) <$> _crSmsaRating,
                  ("chvrsRating" .=) <$> _crChvrsRating,
                  ("incaaRating" .=) <$> _crIncaaRating,
                  ("nfrcRating" .=) <$> _crNfrcRating,
                  ("csaRating" .=) <$> _crCsaRating,
                  ("mocRating" .=) <$> _crMocRating,
                  ("eirinRating" .=) <$> _crEirinRating,
                  ("fskRating" .=) <$> _crFskRating,
                  ("eefilmRating" .=) <$> _crEefilmRating,
                  ("rcnofRating" .=) <$> _crRcnofRating,
                  ("mekuRating" .=) <$> _crMekuRating,
                  ("ilfilmRating" .=) <$> _crIlfilmRating,
                  ("ifcoRating" .=) <$> _crIfcoRating,
                  ("nbcplRating" .=) <$> _crNbcplRating,
                  ("grfilmRating" .=) <$> _crGrfilmRating,
                  ("rteRating" .=) <$> _crRteRating,
                  ("acbRating" .=) <$> _crAcbRating,
                  ("catvRating" .=) <$> _crCatvRating,
                  ("mdaRating" .=) <$> _crMdaRating,
                  ("djctqRating" .=) <$> _crDjctqRating,
                  ("smaisRating" .=) <$> _crSmaisRating,
                  ("cscfRating" .=) <$> _crCscfRating,
                  ("tvpgRating" .=) <$> _crTvpgRating,
                  ("rtcRating" .=) <$> _crRtcRating,
                  ("ytRating" .=) <$> _crYtRating,
                  ("bbfcRating" .=) <$> _crBbfcRating,
                  ("kijkwijzerRating" .=) <$> _crKijkwijzerRating,
                  ("mtrcbRating" .=) <$> _crMtrcbRating,
                  ("fcoRating" .=) <$> _crFcoRating,
                  ("cicfRating" .=) <$> _crCicfRating,
                  ("czfilmRating" .=) <$> _crCzfilmRating,
                  ("nbcRating" .=) <$> _crNbcRating,
                  ("fmocRating" .=) <$> _crFmocRating,
                  ("russiaRating" .=) <$> _crRussiaRating,
                  ("egfilmRating" .=) <$> _crEgfilmRating,
                  ("resorteviolenciaRating" .=) <$>
                    _crResorteviolenciaRating,
                  ("mibacRating" .=) <$> _crMibacRating,
                  ("medietilsynetRating" .=) <$>
                    _crMedietilsynetRating,
                  ("mccypRating" .=) <$> _crMccypRating,
                  ("nkclvRating" .=) <$> _crNkclvRating,
                  ("fpbRating" .=) <$> _crFpbRating,
                  ("lsfRating" .=) <$> _crLsfRating,
                  ("bfvcRating" .=) <$> _crBfvcRating,
                  ("ecbmctRating" .=) <$> _crEcbmctRating,
                  ("cncRating" .=) <$> _crCNCRating,
                  ("skfilmRating" .=) <$> _crSkfilmRating,
                  ("oflcRating" .=) <$> _crOflcRating,
                  ("kmrbRating" .=) <$> _crKmrbRating])

-- | A playlist resource represents a YouTube playlist. A playlist is a
-- collection of videos that can be viewed sequentially and shared with
-- other users. A playlist can contain up to 200 videos, and YouTube does
-- not limit the number of playlists that each user creates. By default,
-- playlists are publicly visible to other users, but playlists can be
-- public or private. YouTube also uses playlists to identify special
-- collections of videos for a channel, such as: - uploaded videos -
-- favorite videos - positively rated (liked) videos - watch history -
-- watch later To be more specific, these lists are associated with a
-- channel, which is a collection of a person, group, or company\'s videos,
-- playlists, and other YouTube information. You can retrieve the playlist
-- IDs for each of these lists from the channel resource for a given
-- channel. You can then use the playlistItems.list method to retrieve any
-- of those lists. You can also add or remove items from those lists by
-- calling the playlistItems.insert and playlistItems.delete methods.
--
-- /See:/ 'playList' smart constructor.
data PlayList = PlayList'
    { _plStatus         :: !(Maybe PlayListStatus)
    , _plEtag           :: !(Maybe Text)
    , _plSnippet        :: !(Maybe PlayListSnippet)
    , _plKind           :: !Text
    , _plContentDetails :: !(Maybe PlayListContentDetails)
    , _plId             :: !(Maybe Text)
    , _plLocalizations  :: !(Maybe PlayListLocalizations)
    , _plPlayer         :: !(Maybe PlayListPlayer)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plStatus'
--
-- * 'plEtag'
--
-- * 'plSnippet'
--
-- * 'plKind'
--
-- * 'plContentDetails'
--
-- * 'plId'
--
-- * 'plLocalizations'
--
-- * 'plPlayer'
playList
    :: PlayList
playList =
    PlayList'
    { _plStatus = Nothing
    , _plEtag = Nothing
    , _plSnippet = Nothing
    , _plKind = "youtube#playlist"
    , _plContentDetails = Nothing
    , _plId = Nothing
    , _plLocalizations = Nothing
    , _plPlayer = Nothing
    }

-- | The status object contains status information for the playlist.
plStatus :: Lens' PlayList (Maybe PlayListStatus)
plStatus = lens _plStatus (\ s a -> s{_plStatus = a})

-- | Etag of this resource.
plEtag :: Lens' PlayList (Maybe Text)
plEtag = lens _plEtag (\ s a -> s{_plEtag = a})

-- | The snippet object contains basic details about the playlist, such as
-- its title and description.
plSnippet :: Lens' PlayList (Maybe PlayListSnippet)
plSnippet
  = lens _plSnippet (\ s a -> s{_plSnippet = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"youtube#playlist\".
plKind :: Lens' PlayList Text
plKind = lens _plKind (\ s a -> s{_plKind = a})

-- | The contentDetails object contains information like video count.
plContentDetails :: Lens' PlayList (Maybe PlayListContentDetails)
plContentDetails
  = lens _plContentDetails
      (\ s a -> s{_plContentDetails = a})

-- | The ID that YouTube uses to uniquely identify the playlist.
plId :: Lens' PlayList (Maybe Text)
plId = lens _plId (\ s a -> s{_plId = a})

-- | Localizations for different languages
plLocalizations :: Lens' PlayList (Maybe PlayListLocalizations)
plLocalizations
  = lens _plLocalizations
      (\ s a -> s{_plLocalizations = a})

-- | The player object contains information that you would use to play the
-- playlist in an embedded player.
plPlayer :: Lens' PlayList (Maybe PlayListPlayer)
plPlayer = lens _plPlayer (\ s a -> s{_plPlayer = a})

instance FromJSON PlayList where
        parseJSON
          = withObject "PlayList"
              (\ o ->
                 PlayList' <$>
                   (o .:? "status") <*> (o .:? "etag") <*>
                     (o .:? "snippet")
                     <*> (o .:? "kind" .!= "youtube#playlist")
                     <*> (o .:? "contentDetails")
                     <*> (o .:? "id")
                     <*> (o .:? "localizations")
                     <*> (o .:? "player"))

instance ToJSON PlayList where
        toJSON PlayList'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _plStatus,
                  ("etag" .=) <$> _plEtag,
                  ("snippet" .=) <$> _plSnippet,
                  Just ("kind" .= _plKind),
                  ("contentDetails" .=) <$> _plContentDetails,
                  ("id" .=) <$> _plId,
                  ("localizations" .=) <$> _plLocalizations,
                  ("player" .=) <$> _plPlayer])

-- | Branding properties for the channel view.
--
-- /See:/ 'channelSettings' smart constructor.
data ChannelSettings = ChannelSettings'
    { _cShowRelatedChannels        :: !(Maybe Bool)
    , _cDefaultTab                 :: !(Maybe Text)
    , _cFeaturedChannelsTitle      :: !(Maybe Text)
    , _cCountry                    :: !(Maybe Text)
    , _cProFileColor               :: !(Maybe Text)
    , _cModerateComments           :: !(Maybe Bool)
    , _cKeywords                   :: !(Maybe Text)
    , _cUnsubscribedTrailer        :: !(Maybe Text)
    , _cTrackingAnalyticsAccountId :: !(Maybe Text)
    , _cFeaturedChannelsURLs       :: !(Maybe [Text])
    , _cShowBrowseView             :: !(Maybe Bool)
    , _cTitle                      :: !(Maybe Text)
    , _cDescription                :: !(Maybe Text)
    , _cDefaultLanguage            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cShowRelatedChannels'
--
-- * 'cDefaultTab'
--
-- * 'cFeaturedChannelsTitle'
--
-- * 'cCountry'
--
-- * 'cProFileColor'
--
-- * 'cModerateComments'
--
-- * 'cKeywords'
--
-- * 'cUnsubscribedTrailer'
--
-- * 'cTrackingAnalyticsAccountId'
--
-- * 'cFeaturedChannelsURLs'
--
-- * 'cShowBrowseView'
--
-- * 'cTitle'
--
-- * 'cDescription'
--
-- * 'cDefaultLanguage'
channelSettings
    :: ChannelSettings
channelSettings =
    ChannelSettings'
    { _cShowRelatedChannels = Nothing
    , _cDefaultTab = Nothing
    , _cFeaturedChannelsTitle = Nothing
    , _cCountry = Nothing
    , _cProFileColor = Nothing
    , _cModerateComments = Nothing
    , _cKeywords = Nothing
    , _cUnsubscribedTrailer = Nothing
    , _cTrackingAnalyticsAccountId = Nothing
    , _cFeaturedChannelsURLs = Nothing
    , _cShowBrowseView = Nothing
    , _cTitle = Nothing
    , _cDescription = Nothing
    , _cDefaultLanguage = Nothing
    }

-- | Whether related channels should be proposed.
cShowRelatedChannels :: Lens' ChannelSettings (Maybe Bool)
cShowRelatedChannels
  = lens _cShowRelatedChannels
      (\ s a -> s{_cShowRelatedChannels = a})

-- | Which content tab users should see when viewing the channel.
cDefaultTab :: Lens' ChannelSettings (Maybe Text)
cDefaultTab
  = lens _cDefaultTab (\ s a -> s{_cDefaultTab = a})

-- | Title for the featured channels tab.
cFeaturedChannelsTitle :: Lens' ChannelSettings (Maybe Text)
cFeaturedChannelsTitle
  = lens _cFeaturedChannelsTitle
      (\ s a -> s{_cFeaturedChannelsTitle = a})

-- | The country of the channel.
cCountry :: Lens' ChannelSettings (Maybe Text)
cCountry = lens _cCountry (\ s a -> s{_cCountry = a})

-- | A prominent color that can be rendered on this channel page.
cProFileColor :: Lens' ChannelSettings (Maybe Text)
cProFileColor
  = lens _cProFileColor
      (\ s a -> s{_cProFileColor = a})

-- | Whether user-submitted comments left on the channel page need to be
-- approved by the channel owner to be publicly visible.
cModerateComments :: Lens' ChannelSettings (Maybe Bool)
cModerateComments
  = lens _cModerateComments
      (\ s a -> s{_cModerateComments = a})

-- | Lists keywords associated with the channel, comma-separated.
cKeywords :: Lens' ChannelSettings (Maybe Text)
cKeywords
  = lens _cKeywords (\ s a -> s{_cKeywords = a})

-- | The trailer of the channel, for users that are not subscribers.
cUnsubscribedTrailer :: Lens' ChannelSettings (Maybe Text)
cUnsubscribedTrailer
  = lens _cUnsubscribedTrailer
      (\ s a -> s{_cUnsubscribedTrailer = a})

-- | The ID for a Google Analytics account to track and measure traffic to
-- the channels.
cTrackingAnalyticsAccountId :: Lens' ChannelSettings (Maybe Text)
cTrackingAnalyticsAccountId
  = lens _cTrackingAnalyticsAccountId
      (\ s a -> s{_cTrackingAnalyticsAccountId = a})

-- | The list of featured channels.
cFeaturedChannelsURLs :: Lens' ChannelSettings [Text]
cFeaturedChannelsURLs
  = lens _cFeaturedChannelsURLs
      (\ s a -> s{_cFeaturedChannelsURLs = a})
      . _Default
      . _Coerce

-- | Whether the tab to browse the videos should be displayed.
cShowBrowseView :: Lens' ChannelSettings (Maybe Bool)
cShowBrowseView
  = lens _cShowBrowseView
      (\ s a -> s{_cShowBrowseView = a})

-- | Specifies the channel title.
cTitle :: Lens' ChannelSettings (Maybe Text)
cTitle = lens _cTitle (\ s a -> s{_cTitle = a})

-- | Specifies the channel description.
cDescription :: Lens' ChannelSettings (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

cDefaultLanguage :: Lens' ChannelSettings (Maybe Text)
cDefaultLanguage
  = lens _cDefaultLanguage
      (\ s a -> s{_cDefaultLanguage = a})

instance FromJSON ChannelSettings where
        parseJSON
          = withObject "ChannelSettings"
              (\ o ->
                 ChannelSettings' <$>
                   (o .:? "showRelatedChannels") <*>
                     (o .:? "defaultTab")
                     <*> (o .:? "featuredChannelsTitle")
                     <*> (o .:? "country")
                     <*> (o .:? "profileColor")
                     <*> (o .:? "moderateComments")
                     <*> (o .:? "keywords")
                     <*> (o .:? "unsubscribedTrailer")
                     <*> (o .:? "trackingAnalyticsAccountId")
                     <*> (o .:? "featuredChannelsUrls" .!= mempty)
                     <*> (o .:? "showBrowseView")
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "defaultLanguage"))

instance ToJSON ChannelSettings where
        toJSON ChannelSettings'{..}
          = object
              (catMaybes
                 [("showRelatedChannels" .=) <$>
                    _cShowRelatedChannels,
                  ("defaultTab" .=) <$> _cDefaultTab,
                  ("featuredChannelsTitle" .=) <$>
                    _cFeaturedChannelsTitle,
                  ("country" .=) <$> _cCountry,
                  ("profileColor" .=) <$> _cProFileColor,
                  ("moderateComments" .=) <$> _cModerateComments,
                  ("keywords" .=) <$> _cKeywords,
                  ("unsubscribedTrailer" .=) <$> _cUnsubscribedTrailer,
                  ("trackingAnalyticsAccountId" .=) <$>
                    _cTrackingAnalyticsAccountId,
                  ("featuredChannelsUrls" .=) <$>
                    _cFeaturedChannelsURLs,
                  ("showBrowseView" .=) <$> _cShowBrowseView,
                  ("title" .=) <$> _cTitle,
                  ("description" .=) <$> _cDescription,
                  ("defaultLanguage" .=) <$> _cDefaultLanguage])

-- | Basic details about a subscription, including title, description and
-- thumbnails of the subscribed item.
--
-- /See:/ 'subscriptionSnippet' smart constructor.
data SubscriptionSnippet = SubscriptionSnippet'
    { _ssResourceId   :: !(Maybe ResourceId)
    , _ssPublishedAt  :: !(Maybe DateTime')
    , _ssChannelTitle :: !(Maybe Text)
    , _ssChannelId    :: !(Maybe Text)
    , _ssThumbnails   :: !(Maybe ThumbnailDetails)
    , _ssTitle        :: !(Maybe Text)
    , _ssDescription  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssResourceId'
--
-- * 'ssPublishedAt'
--
-- * 'ssChannelTitle'
--
-- * 'ssChannelId'
--
-- * 'ssThumbnails'
--
-- * 'ssTitle'
--
-- * 'ssDescription'
subscriptionSnippet
    :: SubscriptionSnippet
subscriptionSnippet =
    SubscriptionSnippet'
    { _ssResourceId = Nothing
    , _ssPublishedAt = Nothing
    , _ssChannelTitle = Nothing
    , _ssChannelId = Nothing
    , _ssThumbnails = Nothing
    , _ssTitle = Nothing
    , _ssDescription = Nothing
    }

-- | The id object contains information about the channel that the user
-- subscribed to.
ssResourceId :: Lens' SubscriptionSnippet (Maybe ResourceId)
ssResourceId
  = lens _ssResourceId (\ s a -> s{_ssResourceId = a})

-- | The date and time that the subscription was created. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
ssPublishedAt :: Lens' SubscriptionSnippet (Maybe UTCTime)
ssPublishedAt
  = lens _ssPublishedAt
      (\ s a -> s{_ssPublishedAt = a})
      . mapping _DateTime

-- | Channel title for the channel that the subscription belongs to.
ssChannelTitle :: Lens' SubscriptionSnippet (Maybe Text)
ssChannelTitle
  = lens _ssChannelTitle
      (\ s a -> s{_ssChannelTitle = a})

-- | The ID that YouTube uses to uniquely identify the subscriber\'s channel.
ssChannelId :: Lens' SubscriptionSnippet (Maybe Text)
ssChannelId
  = lens _ssChannelId (\ s a -> s{_ssChannelId = a})

-- | A map of thumbnail images associated with the video. For each object in
-- the map, the key is the name of the thumbnail image, and the value is an
-- object that contains other information about the thumbnail.
ssThumbnails :: Lens' SubscriptionSnippet (Maybe ThumbnailDetails)
ssThumbnails
  = lens _ssThumbnails (\ s a -> s{_ssThumbnails = a})

-- | The subscription\'s title.
ssTitle :: Lens' SubscriptionSnippet (Maybe Text)
ssTitle = lens _ssTitle (\ s a -> s{_ssTitle = a})

-- | The subscription\'s details.
ssDescription :: Lens' SubscriptionSnippet (Maybe Text)
ssDescription
  = lens _ssDescription
      (\ s a -> s{_ssDescription = a})

instance FromJSON SubscriptionSnippet where
        parseJSON
          = withObject "SubscriptionSnippet"
              (\ o ->
                 SubscriptionSnippet' <$>
                   (o .:? "resourceId") <*> (o .:? "publishedAt") <*>
                     (o .:? "channelTitle")
                     <*> (o .:? "channelId")
                     <*> (o .:? "thumbnails")
                     <*> (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON SubscriptionSnippet where
        toJSON SubscriptionSnippet'{..}
          = object
              (catMaybes
                 [("resourceId" .=) <$> _ssResourceId,
                  ("publishedAt" .=) <$> _ssPublishedAt,
                  ("channelTitle" .=) <$> _ssChannelTitle,
                  ("channelId" .=) <$> _ssChannelId,
                  ("thumbnails" .=) <$> _ssThumbnails,
                  ("title" .=) <$> _ssTitle,
                  ("description" .=) <$> _ssDescription])

-- | Details about the live streaming metadata.
--
-- /See:/ 'videoLiveStreamingDetails' smart constructor.
data VideoLiveStreamingDetails = VideoLiveStreamingDetails'
    { _vlsdActualEndTime      :: !(Maybe DateTime')
    , _vlsdConcurrentViewers  :: !(Maybe (Textual Word64))
    , _vlsdScheduledEndTime   :: !(Maybe DateTime')
    , _vlsdScheduledStartTime :: !(Maybe DateTime')
    , _vlsdActualStartTime    :: !(Maybe DateTime')
    , _vlsdActiveLiveChatId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoLiveStreamingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vlsdActualEndTime'
--
-- * 'vlsdConcurrentViewers'
--
-- * 'vlsdScheduledEndTime'
--
-- * 'vlsdScheduledStartTime'
--
-- * 'vlsdActualStartTime'
--
-- * 'vlsdActiveLiveChatId'
videoLiveStreamingDetails
    :: VideoLiveStreamingDetails
videoLiveStreamingDetails =
    VideoLiveStreamingDetails'
    { _vlsdActualEndTime = Nothing
    , _vlsdConcurrentViewers = Nothing
    , _vlsdScheduledEndTime = Nothing
    , _vlsdScheduledStartTime = Nothing
    , _vlsdActualStartTime = Nothing
    , _vlsdActiveLiveChatId = Nothing
    }

-- | The time that the broadcast actually ended. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be
-- available until the broadcast is over.
vlsdActualEndTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdActualEndTime
  = lens _vlsdActualEndTime
      (\ s a -> s{_vlsdActualEndTime = a})
      . mapping _DateTime

-- | The number of viewers currently watching the broadcast. The property and
-- its value will be present if the broadcast has current viewers and the
-- broadcast owner has not hidden the viewcount for the video. Note that
-- YouTube stops tracking the number of concurrent viewers for a broadcast
-- when the broadcast ends. So, this property would not identify the number
-- of viewers watching an archived video of a live broadcast that already
-- ended.
vlsdConcurrentViewers :: Lens' VideoLiveStreamingDetails (Maybe Word64)
vlsdConcurrentViewers
  = lens _vlsdConcurrentViewers
      (\ s a -> s{_vlsdConcurrentViewers = a})
      . mapping _Coerce

-- | The time that the broadcast is scheduled to end. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. If the value is empty or
-- the property is not present, then the broadcast is scheduled to continue
-- indefinitely.
vlsdScheduledEndTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdScheduledEndTime
  = lens _vlsdScheduledEndTime
      (\ s a -> s{_vlsdScheduledEndTime = a})
      . mapping _DateTime

-- | The time that the broadcast is scheduled to begin. The value is
-- specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
vlsdScheduledStartTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdScheduledStartTime
  = lens _vlsdScheduledStartTime
      (\ s a -> s{_vlsdScheduledStartTime = a})
      . mapping _DateTime

-- | The time that the broadcast actually started. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. This value will not be
-- available until the broadcast begins.
vlsdActualStartTime :: Lens' VideoLiveStreamingDetails (Maybe UTCTime)
vlsdActualStartTime
  = lens _vlsdActualStartTime
      (\ s a -> s{_vlsdActualStartTime = a})
      . mapping _DateTime

-- | The ID of the currently active live chat attached to this video. This
-- field is filled only if the video is a currently live broadcast that has
-- live chat. Once the broadcast transitions to complete this field will be
-- removed and the live chat closed down. For persistent broadcasts that
-- live chat id will no longer be tied to this video but rather to the new
-- video being displayed at the persistent page.
vlsdActiveLiveChatId :: Lens' VideoLiveStreamingDetails (Maybe Text)
vlsdActiveLiveChatId
  = lens _vlsdActiveLiveChatId
      (\ s a -> s{_vlsdActiveLiveChatId = a})

instance FromJSON VideoLiveStreamingDetails where
        parseJSON
          = withObject "VideoLiveStreamingDetails"
              (\ o ->
                 VideoLiveStreamingDetails' <$>
                   (o .:? "actualEndTime") <*>
                     (o .:? "concurrentViewers")
                     <*> (o .:? "scheduledEndTime")
                     <*> (o .:? "scheduledStartTime")
                     <*> (o .:? "actualStartTime")
                     <*> (o .:? "activeLiveChatId"))

instance ToJSON VideoLiveStreamingDetails where
        toJSON VideoLiveStreamingDetails'{..}
          = object
              (catMaybes
                 [("actualEndTime" .=) <$> _vlsdActualEndTime,
                  ("concurrentViewers" .=) <$> _vlsdConcurrentViewers,
                  ("scheduledEndTime" .=) <$> _vlsdScheduledEndTime,
                  ("scheduledStartTime" .=) <$>
                    _vlsdScheduledStartTime,
                  ("actualStartTime" .=) <$> _vlsdActualStartTime,
                  ("activeLiveChatId" .=) <$> _vlsdActiveLiveChatId])

--
-- /See:/ 'fanFundingEventSnippet' smart constructor.
data FanFundingEventSnippet = FanFundingEventSnippet'
    { _ffesDisplayString    :: !(Maybe Text)
    , _ffesSupporterDetails :: !(Maybe ChannelProFileDetails)
    , _ffesCreatedAt        :: !(Maybe DateTime')
    , _ffesAmountMicros     :: !(Maybe (Textual Word64))
    , _ffesChannelId        :: !(Maybe Text)
    , _ffesCommentText      :: !(Maybe Text)
    , _ffesCurrency         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FanFundingEventSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ffesDisplayString'
--
-- * 'ffesSupporterDetails'
--
-- * 'ffesCreatedAt'
--
-- * 'ffesAmountMicros'
--
-- * 'ffesChannelId'
--
-- * 'ffesCommentText'
--
-- * 'ffesCurrency'
fanFundingEventSnippet
    :: FanFundingEventSnippet
fanFundingEventSnippet =
    FanFundingEventSnippet'
    { _ffesDisplayString = Nothing
    , _ffesSupporterDetails = Nothing
    , _ffesCreatedAt = Nothing
    , _ffesAmountMicros = Nothing
    , _ffesChannelId = Nothing
    , _ffesCommentText = Nothing
    , _ffesCurrency = Nothing
    }

-- | A rendered string that displays the fund amount and currency (e.g.,
-- \"$1.00\"). The string is rendered for the given language.
ffesDisplayString :: Lens' FanFundingEventSnippet (Maybe Text)
ffesDisplayString
  = lens _ffesDisplayString
      (\ s a -> s{_ffesDisplayString = a})

-- | Details about the supporter. Only filled if the event was made public by
-- the user.
ffesSupporterDetails :: Lens' FanFundingEventSnippet (Maybe ChannelProFileDetails)
ffesSupporterDetails
  = lens _ffesSupporterDetails
      (\ s a -> s{_ffesSupporterDetails = a})

-- | The date and time when the funding occurred. The value is specified in
-- ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
ffesCreatedAt :: Lens' FanFundingEventSnippet (Maybe UTCTime)
ffesCreatedAt
  = lens _ffesCreatedAt
      (\ s a -> s{_ffesCreatedAt = a})
      . mapping _DateTime

-- | The amount of funding in micros of fund_currency. e.g., 1 is represented
ffesAmountMicros :: Lens' FanFundingEventSnippet (Maybe Word64)
ffesAmountMicros
  = lens _ffesAmountMicros
      (\ s a -> s{_ffesAmountMicros = a})
      . mapping _Coerce

-- | Channel id where the funding event occurred.
ffesChannelId :: Lens' FanFundingEventSnippet (Maybe Text)
ffesChannelId
  = lens _ffesChannelId
      (\ s a -> s{_ffesChannelId = a})

-- | The text contents of the comment left by the user.
ffesCommentText :: Lens' FanFundingEventSnippet (Maybe Text)
ffesCommentText
  = lens _ffesCommentText
      (\ s a -> s{_ffesCommentText = a})

-- | The currency in which the fund was made. ISO 4217.
ffesCurrency :: Lens' FanFundingEventSnippet (Maybe Text)
ffesCurrency
  = lens _ffesCurrency (\ s a -> s{_ffesCurrency = a})

instance FromJSON FanFundingEventSnippet where
        parseJSON
          = withObject "FanFundingEventSnippet"
              (\ o ->
                 FanFundingEventSnippet' <$>
                   (o .:? "displayString") <*>
                     (o .:? "supporterDetails")
                     <*> (o .:? "createdAt")
                     <*> (o .:? "amountMicros")
                     <*> (o .:? "channelId")
                     <*> (o .:? "commentText")
                     <*> (o .:? "currency"))

instance ToJSON FanFundingEventSnippet where
        toJSON FanFundingEventSnippet'{..}
          = object
              (catMaybes
                 [("displayString" .=) <$> _ffesDisplayString,
                  ("supporterDetails" .=) <$> _ffesSupporterDetails,
                  ("createdAt" .=) <$> _ffesCreatedAt,
                  ("amountMicros" .=) <$> _ffesAmountMicros,
                  ("channelId" .=) <$> _ffesChannelId,
                  ("commentText" .=) <$> _ffesCommentText,
                  ("currency" .=) <$> _ffesCurrency])

-- | Details about a resource which is being promoted.
--
-- /See:/ 'activityContentDetailsPromotedItem' smart constructor.
data ActivityContentDetailsPromotedItem = ActivityContentDetailsPromotedItem'
    { _acdpiDestinationURL      :: !(Maybe Text)
    , _acdpiClickTrackingURL    :: !(Maybe Text)
    , _acdpiForecastingURL      :: !(Maybe [Text])
    , _acdpiDescriptionText     :: !(Maybe Text)
    , _acdpiCtaType             :: !(Maybe ActivityContentDetailsPromotedItemCtaType)
    , _acdpiVideoId             :: !(Maybe Text)
    , _acdpiAdTag               :: !(Maybe Text)
    , _acdpiCreativeViewURL     :: !(Maybe Text)
    , _acdpiImpressionURL       :: !(Maybe [Text])
    , _acdpiCustomCtaButtonText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivityContentDetailsPromotedItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdpiDestinationURL'
--
-- * 'acdpiClickTrackingURL'
--
-- * 'acdpiForecastingURL'
--
-- * 'acdpiDescriptionText'
--
-- * 'acdpiCtaType'
--
-- * 'acdpiVideoId'
--
-- * 'acdpiAdTag'
--
-- * 'acdpiCreativeViewURL'
--
-- * 'acdpiImpressionURL'
--
-- * 'acdpiCustomCtaButtonText'
activityContentDetailsPromotedItem
    :: ActivityContentDetailsPromotedItem
activityContentDetailsPromotedItem =
    ActivityContentDetailsPromotedItem'
    { _acdpiDestinationURL = Nothing
    , _acdpiClickTrackingURL = Nothing
    , _acdpiForecastingURL = Nothing
    , _acdpiDescriptionText = Nothing
    , _acdpiCtaType = Nothing
    , _acdpiVideoId = Nothing
    , _acdpiAdTag = Nothing
    , _acdpiCreativeViewURL = Nothing
    , _acdpiImpressionURL = Nothing
    , _acdpiCustomCtaButtonText = Nothing
    }

-- | The URL the client should direct the user to, if the user chooses to
-- visit the advertiser\'s website.
acdpiDestinationURL :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiDestinationURL
  = lens _acdpiDestinationURL
      (\ s a -> s{_acdpiDestinationURL = a})

-- | The URL the client should ping to indicate that the user clicked through
-- on this promoted item.
acdpiClickTrackingURL :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiClickTrackingURL
  = lens _acdpiClickTrackingURL
      (\ s a -> s{_acdpiClickTrackingURL = a})

-- | The list of forecasting URLs. The client should ping all of these URLs
-- when a promoted item is not available, to indicate that a promoted item
-- could have been shown.
acdpiForecastingURL :: Lens' ActivityContentDetailsPromotedItem [Text]
acdpiForecastingURL
  = lens _acdpiForecastingURL
      (\ s a -> s{_acdpiForecastingURL = a})
      . _Default
      . _Coerce

-- | The text description to accompany the promoted item.
acdpiDescriptionText :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiDescriptionText
  = lens _acdpiDescriptionText
      (\ s a -> s{_acdpiDescriptionText = a})

-- | The type of call-to-action, a message to the user indicating action that
-- can be taken.
acdpiCtaType :: Lens' ActivityContentDetailsPromotedItem (Maybe ActivityContentDetailsPromotedItemCtaType)
acdpiCtaType
  = lens _acdpiCtaType (\ s a -> s{_acdpiCtaType = a})

-- | The ID that YouTube uses to uniquely identify the promoted video.
acdpiVideoId :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiVideoId
  = lens _acdpiVideoId (\ s a -> s{_acdpiVideoId = a})

-- | The URL the client should fetch to request a promoted item.
acdpiAdTag :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiAdTag
  = lens _acdpiAdTag (\ s a -> s{_acdpiAdTag = a})

-- | The URL the client should ping to indicate that the user was shown this
-- promoted item.
acdpiCreativeViewURL :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiCreativeViewURL
  = lens _acdpiCreativeViewURL
      (\ s a -> s{_acdpiCreativeViewURL = a})

-- | The list of impression URLs. The client should ping all of these URLs to
-- indicate that the user was shown this promoted item.
acdpiImpressionURL :: Lens' ActivityContentDetailsPromotedItem [Text]
acdpiImpressionURL
  = lens _acdpiImpressionURL
      (\ s a -> s{_acdpiImpressionURL = a})
      . _Default
      . _Coerce

-- | The custom call-to-action button text. If specified, it will override
-- the default button text for the cta_type.
acdpiCustomCtaButtonText :: Lens' ActivityContentDetailsPromotedItem (Maybe Text)
acdpiCustomCtaButtonText
  = lens _acdpiCustomCtaButtonText
      (\ s a -> s{_acdpiCustomCtaButtonText = a})

instance FromJSON ActivityContentDetailsPromotedItem
         where
        parseJSON
          = withObject "ActivityContentDetailsPromotedItem"
              (\ o ->
                 ActivityContentDetailsPromotedItem' <$>
                   (o .:? "destinationUrl") <*>
                     (o .:? "clickTrackingUrl")
                     <*> (o .:? "forecastingUrl" .!= mempty)
                     <*> (o .:? "descriptionText")
                     <*> (o .:? "ctaType")
                     <*> (o .:? "videoId")
                     <*> (o .:? "adTag")
                     <*> (o .:? "creativeViewUrl")
                     <*> (o .:? "impressionUrl" .!= mempty)
                     <*> (o .:? "customCtaButtonText"))

instance ToJSON ActivityContentDetailsPromotedItem
         where
        toJSON ActivityContentDetailsPromotedItem'{..}
          = object
              (catMaybes
                 [("destinationUrl" .=) <$> _acdpiDestinationURL,
                  ("clickTrackingUrl" .=) <$> _acdpiClickTrackingURL,
                  ("forecastingUrl" .=) <$> _acdpiForecastingURL,
                  ("descriptionText" .=) <$> _acdpiDescriptionText,
                  ("ctaType" .=) <$> _acdpiCtaType,
                  ("videoId" .=) <$> _acdpiVideoId,
                  ("adTag" .=) <$> _acdpiAdTag,
                  ("creativeViewUrl" .=) <$> _acdpiCreativeViewURL,
                  ("impressionUrl" .=) <$> _acdpiImpressionURL,
                  ("customCtaButtonText" .=) <$>
                    _acdpiCustomCtaButtonText])

--
-- /See:/ 'sponsorSnippet' smart constructor.
data SponsorSnippet = SponsorSnippet'
    { _sChannelId      :: !(Maybe Text)
    , _sSponsorDetails :: !(Maybe ChannelProFileDetails)
    , _sSponsorSince   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SponsorSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sChannelId'
--
-- * 'sSponsorDetails'
--
-- * 'sSponsorSince'
sponsorSnippet
    :: SponsorSnippet
sponsorSnippet =
    SponsorSnippet'
    { _sChannelId = Nothing
    , _sSponsorDetails = Nothing
    , _sSponsorSince = Nothing
    }

-- | The id of the channel being sponsored.
sChannelId :: Lens' SponsorSnippet (Maybe Text)
sChannelId
  = lens _sChannelId (\ s a -> s{_sChannelId = a})

-- | Details about the sponsor.
sSponsorDetails :: Lens' SponsorSnippet (Maybe ChannelProFileDetails)
sSponsorDetails
  = lens _sSponsorDetails
      (\ s a -> s{_sSponsorDetails = a})

-- | The date and time when the user became a sponsor. The value is specified
-- in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
sSponsorSince :: Lens' SponsorSnippet (Maybe UTCTime)
sSponsorSince
  = lens _sSponsorSince
      (\ s a -> s{_sSponsorSince = a})
      . mapping _DateTime

instance FromJSON SponsorSnippet where
        parseJSON
          = withObject "SponsorSnippet"
              (\ o ->
                 SponsorSnippet' <$>
                   (o .:? "channelId") <*> (o .:? "sponsorDetails") <*>
                     (o .:? "sponsorSince"))

instance ToJSON SponsorSnippet where
        toJSON SponsorSnippet'{..}
          = object
              (catMaybes
                 [("channelId" .=) <$> _sChannelId,
                  ("sponsorDetails" .=) <$> _sSponsorDetails,
                  ("sponsorSince" .=) <$> _sSponsorSince])

-- | Geographical coordinates of a point, in WGS84.
--
-- /See:/ 'geoPoint' smart constructor.
data GeoPoint = GeoPoint'
    { _gpLatitude  :: !(Maybe (Textual Double))
    , _gpAltitude  :: !(Maybe (Textual Double))
    , _gpLongitude :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GeoPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpLatitude'
--
-- * 'gpAltitude'
--
-- * 'gpLongitude'
geoPoint
    :: GeoPoint
geoPoint =
    GeoPoint'
    { _gpLatitude = Nothing
    , _gpAltitude = Nothing
    , _gpLongitude = Nothing
    }

-- | Latitude in degrees.
gpLatitude :: Lens' GeoPoint (Maybe Double)
gpLatitude
  = lens _gpLatitude (\ s a -> s{_gpLatitude = a}) .
      mapping _Coerce

-- | Altitude above the reference ellipsoid, in meters.
gpAltitude :: Lens' GeoPoint (Maybe Double)
gpAltitude
  = lens _gpAltitude (\ s a -> s{_gpAltitude = a}) .
      mapping _Coerce

-- | Longitude in degrees.
gpLongitude :: Lens' GeoPoint (Maybe Double)
gpLongitude
  = lens _gpLongitude (\ s a -> s{_gpLongitude = a}) .
      mapping _Coerce

instance FromJSON GeoPoint where
        parseJSON
          = withObject "GeoPoint"
              (\ o ->
                 GeoPoint' <$>
                   (o .:? "latitude") <*> (o .:? "altitude") <*>
                     (o .:? "longitude"))

instance ToJSON GeoPoint where
        toJSON GeoPoint'{..}
          = object
              (catMaybes
                 [("latitude" .=) <$> _gpLatitude,
                  ("altitude" .=) <$> _gpAltitude,
                  ("longitude" .=) <$> _gpLongitude])

-- | Comments written in (direct or indirect) reply to the top level comment.
--
-- /See:/ 'commentThreadReplies' smart constructor.
newtype CommentThreadReplies = CommentThreadReplies'
    { _ctrComments :: Maybe [Comment]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadReplies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctrComments'
commentThreadReplies
    :: CommentThreadReplies
commentThreadReplies =
    CommentThreadReplies'
    { _ctrComments = Nothing
    }

-- | A limited number of replies. Unless the number of replies returned
-- equals total_reply_count in the snippet the returned replies are only a
-- subset of the total number of replies.
ctrComments :: Lens' CommentThreadReplies [Comment]
ctrComments
  = lens _ctrComments (\ s a -> s{_ctrComments = a}) .
      _Default
      . _Coerce

instance FromJSON CommentThreadReplies where
        parseJSON
          = withObject "CommentThreadReplies"
              (\ o ->
                 CommentThreadReplies' <$>
                   (o .:? "comments" .!= mempty))

instance ToJSON CommentThreadReplies where
        toJSON CommentThreadReplies'{..}
          = object
              (catMaybes [("comments" .=) <$> _ctrComments])

-- | ChannelSection localization setting
--
-- /See:/ 'channelSectionLocalization' smart constructor.
newtype ChannelSectionLocalization = ChannelSectionLocalization'
    { _cslTitle :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelSectionLocalization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslTitle'
channelSectionLocalization
    :: ChannelSectionLocalization
channelSectionLocalization =
    ChannelSectionLocalization'
    { _cslTitle = Nothing
    }

-- | The localized strings for channel section\'s title.
cslTitle :: Lens' ChannelSectionLocalization (Maybe Text)
cslTitle = lens _cslTitle (\ s a -> s{_cslTitle = a})

instance FromJSON ChannelSectionLocalization where
        parseJSON
          = withObject "ChannelSectionLocalization"
              (\ o ->
                 ChannelSectionLocalization' <$> (o .:? "title"))

instance ToJSON ChannelSectionLocalization where
        toJSON ChannelSectionLocalization'{..}
          = object (catMaybes [("title" .=) <$> _cslTitle])

--
-- /See:/ 'videoAbuseReportSecondaryReason' smart constructor.
data VideoAbuseReportSecondaryReason = VideoAbuseReportSecondaryReason'
    { _varsrId    :: !(Maybe Text)
    , _varsrLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VideoAbuseReportSecondaryReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'varsrId'
--
-- * 'varsrLabel'
videoAbuseReportSecondaryReason
    :: VideoAbuseReportSecondaryReason
videoAbuseReportSecondaryReason =
    VideoAbuseReportSecondaryReason'
    { _varsrId = Nothing
    , _varsrLabel = Nothing
    }

-- | The ID of this abuse report secondary reason.
varsrId :: Lens' VideoAbuseReportSecondaryReason (Maybe Text)
varsrId = lens _varsrId (\ s a -> s{_varsrId = a})

-- | The localized label for this abuse report secondary reason.
varsrLabel :: Lens' VideoAbuseReportSecondaryReason (Maybe Text)
varsrLabel
  = lens _varsrLabel (\ s a -> s{_varsrLabel = a})

instance FromJSON VideoAbuseReportSecondaryReason
         where
        parseJSON
          = withObject "VideoAbuseReportSecondaryReason"
              (\ o ->
                 VideoAbuseReportSecondaryReason' <$>
                   (o .:? "id") <*> (o .:? "label"))

instance ToJSON VideoAbuseReportSecondaryReason where
        toJSON VideoAbuseReportSecondaryReason'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _varsrId,
                  ("label" .=) <$> _varsrLabel])

-- | The contentOwnerDetails object encapsulates channel data that is
-- relevant for YouTube Partners linked with the channel.
--
-- /See:/ 'channelContentOwnerDetails' smart constructor.
data ChannelContentOwnerDetails = ChannelContentOwnerDetails'
    { _ccodTimeLinked   :: !(Maybe DateTime')
    , _ccodContentOwner :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChannelContentOwnerDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccodTimeLinked'
--
-- * 'ccodContentOwner'
channelContentOwnerDetails
    :: ChannelContentOwnerDetails
channelContentOwnerDetails =
    ChannelContentOwnerDetails'
    { _ccodTimeLinked = Nothing
    , _ccodContentOwner = Nothing
    }

-- | The date and time of when the channel was linked to the content owner.
-- The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
ccodTimeLinked :: Lens' ChannelContentOwnerDetails (Maybe UTCTime)
ccodTimeLinked
  = lens _ccodTimeLinked
      (\ s a -> s{_ccodTimeLinked = a})
      . mapping _DateTime

-- | The ID of the content owner linked to the channel.
ccodContentOwner :: Lens' ChannelContentOwnerDetails (Maybe Text)
ccodContentOwner
  = lens _ccodContentOwner
      (\ s a -> s{_ccodContentOwner = a})

instance FromJSON ChannelContentOwnerDetails where
        parseJSON
          = withObject "ChannelContentOwnerDetails"
              (\ o ->
                 ChannelContentOwnerDetails' <$>
                   (o .:? "timeLinked") <*> (o .:? "contentOwner"))

instance ToJSON ChannelContentOwnerDetails where
        toJSON ChannelContentOwnerDetails'{..}
          = object
              (catMaybes
                 [("timeLinked" .=) <$> _ccodTimeLinked,
                  ("contentOwner" .=) <$> _ccodContentOwner])

-- | Basic details about an i18n language, such as language code and
-- human-readable name.
--
-- /See:/ 'i18nLanguageSnippet' smart constructor.
data I18nLanguageSnippet = I18nLanguageSnippet'
    { _ilsHl   :: !(Maybe Text)
    , _ilsName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'I18nLanguageSnippet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilsHl'
--
-- * 'ilsName'
i18nLanguageSnippet
    :: I18nLanguageSnippet
i18nLanguageSnippet =
    I18nLanguageSnippet'
    { _ilsHl = Nothing
    , _ilsName = Nothing
    }

-- | A short BCP-47 code that uniquely identifies a language.
ilsHl :: Lens' I18nLanguageSnippet (Maybe Text)
ilsHl = lens _ilsHl (\ s a -> s{_ilsHl = a})

-- | The human-readable name of the language in the language itself.
ilsName :: Lens' I18nLanguageSnippet (Maybe Text)
ilsName = lens _ilsName (\ s a -> s{_ilsName = a})

instance FromJSON I18nLanguageSnippet where
        parseJSON
          = withObject "I18nLanguageSnippet"
              (\ o ->
                 I18nLanguageSnippet' <$>
                   (o .:? "hl") <*> (o .:? "name"))

instance ToJSON I18nLanguageSnippet where
        toJSON I18nLanguageSnippet'{..}
          = object
              (catMaybes
                 [("hl" .=) <$> _ilsHl, ("name" .=) <$> _ilsName])

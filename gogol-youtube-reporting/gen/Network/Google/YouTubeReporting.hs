{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeReporting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules reporting jobs and downloads the resulting bulk data reports
-- about YouTube channels, videos, etc. in the form of CSV files.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference>
module Network.Google.YouTubeReporting
    (
    -- * Service Configuration
      youTubeReportingService

    -- * OAuth Scopes
    , youTubeAnalyticsReadOnlyScope
    , youTubeAnalyticsMonetaryReadOnlyScope

    -- * API Declaration
    , YouTubeReportingAPI

    -- * Resources

    -- ** youtubereporting.jobs.create
    , module Network.Google.Resource.YouTubeReporting.Jobs.Create

    -- ** youtubereporting.jobs.delete
    , module Network.Google.Resource.YouTubeReporting.Jobs.Delete

    -- ** youtubereporting.jobs.get
    , module Network.Google.Resource.YouTubeReporting.Jobs.Get

    -- ** youtubereporting.jobs.list
    , module Network.Google.Resource.YouTubeReporting.Jobs.List

    -- ** youtubereporting.jobs.reports.get
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get

    -- ** youtubereporting.jobs.reports.list
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.List

    -- ** youtubereporting.media.download
    , module Network.Google.Resource.YouTubeReporting.Media.Download

    -- ** youtubereporting.reportTypes.list
    , module Network.Google.Resource.YouTubeReporting.ReportTypes.List

    -- * Types

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports

    -- ** Empty
    , Empty
    , empty

    -- ** Report
    , Report
    , report
    , rJobId
    , rStartTime
    , rDownloadURL
    , rEndTime
    , rId
    , rCreateTime

    -- ** ListReportTypesResponse
    , ListReportTypesResponse
    , listReportTypesResponse
    , lrtrNextPageToken
    , lrtrReportTypes

    -- ** Media
    , Media
    , media
    , mResourceName

    -- ** Job
    , Job
    , job
    , jName
    , jId
    , jSystemManaged
    , jReportTypeId
    , jCreateTime

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** ReportType
    , ReportType
    , reportType
    , rtName
    , rtId
    , rtSystemManaged
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.YouTubeReporting.Jobs.Create
import           Network.Google.Resource.YouTubeReporting.Jobs.Delete
import           Network.Google.Resource.YouTubeReporting.Jobs.Get
import           Network.Google.Resource.YouTubeReporting.Jobs.List
import           Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get
import           Network.Google.Resource.YouTubeReporting.Jobs.Reports.List
import           Network.Google.Resource.YouTubeReporting.Media.Download
import           Network.Google.Resource.YouTubeReporting.ReportTypes.List
import           Network.Google.YouTubeReporting.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the YouTube Reporting API service.
type YouTubeReportingAPI =
     JobsReportsListResource :<|> JobsReportsGetResource
       :<|> JobsListResource
       :<|> JobsGetResource
       :<|> JobsCreateResource
       :<|> JobsDeleteResource
       :<|> MediaDownloadResource
       :<|> ReportTypesListResource

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudTrace.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudTrace.Types.Product where

import           Network.Google.CloudTrace.Types.Sum
import           Network.Google.Prelude

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Collection of labels associated with the span.
--
-- /See:/ 'traceSpanLabels' smart constructor.
newtype TraceSpanLabels = TraceSpanLabels'
    { _tslAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TraceSpanLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tslAddtional'
traceSpanLabels
    :: HashMap Text Text -- ^ 'tslAddtional'
    -> TraceSpanLabels
traceSpanLabels pTslAddtional_ =
    TraceSpanLabels'
    { _tslAddtional = _Coerce # pTslAddtional_
    }

tslAddtional :: Lens' TraceSpanLabels (HashMap Text Text)
tslAddtional
  = lens _tslAddtional (\ s a -> s{_tslAddtional = a})
      . _Coerce

instance FromJSON TraceSpanLabels where
        parseJSON
          = withObject "TraceSpanLabels"
              (\ o -> TraceSpanLabels' <$> (parseJSONObject o))

instance ToJSON TraceSpanLabels where
        toJSON = toJSON . _tslAddtional

-- | List of new or updated traces.
--
-- /See:/ 'traces' smart constructor.
newtype Traces = Traces'
    { _tTraces :: Maybe [Trace]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Traces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTraces'
traces
    :: Traces
traces =
    Traces'
    { _tTraces = Nothing
    }

-- | List of traces.
tTraces :: Lens' Traces [Trace]
tTraces
  = lens _tTraces (\ s a -> s{_tTraces = a}) . _Default
      . _Coerce

instance FromJSON Traces where
        parseJSON
          = withObject "Traces"
              (\ o -> Traces' <$> (o .:? "traces" .!= mempty))

instance ToJSON Traces where
        toJSON Traces'{..}
          = object (catMaybes [("traces" .=) <$> _tTraces])

-- | A span represents a single timed event within a trace. Spans can be
-- nested and form a trace tree. Often, a trace contains a root span that
-- describes the end-to-end latency of an operation and, optionally, one or
-- more subspans for its suboperations. Spans do not need to be contiguous.
-- There may be gaps between spans in a trace.
--
-- /See:/ 'traceSpan' smart constructor.
data TraceSpan = TraceSpan'
    { _tsStartTime    :: !(Maybe Text)
    , _tsKind         :: !(Maybe Text)
    , _tsName         :: !(Maybe Text)
    , _tsEndTime      :: !(Maybe Text)
    , _tsLabels       :: !(Maybe TraceSpanLabels)
    , _tsParentSpanId :: !(Maybe (Textual Word64))
    , _tsSpanId       :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TraceSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsStartTime'
--
-- * 'tsKind'
--
-- * 'tsName'
--
-- * 'tsEndTime'
--
-- * 'tsLabels'
--
-- * 'tsParentSpanId'
--
-- * 'tsSpanId'
traceSpan
    :: TraceSpan
traceSpan =
    TraceSpan'
    { _tsStartTime = Nothing
    , _tsKind = Nothing
    , _tsName = Nothing
    , _tsEndTime = Nothing
    , _tsLabels = Nothing
    , _tsParentSpanId = Nothing
    , _tsSpanId = Nothing
    }

-- | Start time of the span in nanoseconds from the UNIX epoch.
tsStartTime :: Lens' TraceSpan (Maybe Text)
tsStartTime
  = lens _tsStartTime (\ s a -> s{_tsStartTime = a})

-- | Distinguishes between spans generated in a particular context. For
-- example, two spans with the same name may be distinguished using
-- \`RPC_CLIENT\` and \`RPC_SERVER\` to identify queueing latency
-- associated with the span.
tsKind :: Lens' TraceSpan (Maybe Text)
tsKind = lens _tsKind (\ s a -> s{_tsKind = a})

-- | Name of the trace. The trace name is sanitized and displayed in the
-- Cloud Trace tool in the Google Developers Console. The name may be a
-- method name or some other per-call site name. For the same executable
-- and the same call point, a best practice is to use a consistent name,
-- which makes it easier to correlate cross-trace spans.
tsName :: Lens' TraceSpan (Maybe Text)
tsName = lens _tsName (\ s a -> s{_tsName = a})

-- | End time of the span in nanoseconds from the UNIX epoch.
tsEndTime :: Lens' TraceSpan (Maybe Text)
tsEndTime
  = lens _tsEndTime (\ s a -> s{_tsEndTime = a})

-- | Collection of labels associated with the span.
tsLabels :: Lens' TraceSpan (Maybe TraceSpanLabels)
tsLabels = lens _tsLabels (\ s a -> s{_tsLabels = a})

-- | ID of the parent span, if any. Optional.
tsParentSpanId :: Lens' TraceSpan (Maybe Word64)
tsParentSpanId
  = lens _tsParentSpanId
      (\ s a -> s{_tsParentSpanId = a})
      . mapping _Coerce

-- | Identifier for the span. This identifier must be unique within a trace.
tsSpanId :: Lens' TraceSpan (Maybe Word64)
tsSpanId
  = lens _tsSpanId (\ s a -> s{_tsSpanId = a}) .
      mapping _Coerce

instance FromJSON TraceSpan where
        parseJSON
          = withObject "TraceSpan"
              (\ o ->
                 TraceSpan' <$>
                   (o .:? "startTime") <*> (o .:? "kind") <*>
                     (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "labels")
                     <*> (o .:? "parentSpanId")
                     <*> (o .:? "spanId"))

instance ToJSON TraceSpan where
        toJSON TraceSpan'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _tsStartTime,
                  ("kind" .=) <$> _tsKind, ("name" .=) <$> _tsName,
                  ("endTime" .=) <$> _tsEndTime,
                  ("labels" .=) <$> _tsLabels,
                  ("parentSpanId" .=) <$> _tsParentSpanId,
                  ("spanId" .=) <$> _tsSpanId])

-- | The response message for the \`ListTraces\` method.
--
-- /See:/ 'listTracesResponse' smart constructor.
data ListTracesResponse = ListTracesResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrTraces        :: !(Maybe [Trace])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTracesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrTraces'
listTracesResponse
    :: ListTracesResponse
listTracesResponse =
    ListTracesResponse'
    { _ltrNextPageToken = Nothing
    , _ltrTraces = Nothing
    }

-- | If defined, indicates that there are more traces that match the request
-- and that this value should be passed to the next request to continue
-- retrieving additional traces.
ltrNextPageToken :: Lens' ListTracesResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | List of trace records returned.
ltrTraces :: Lens' ListTracesResponse [Trace]
ltrTraces
  = lens _ltrTraces (\ s a -> s{_ltrTraces = a}) .
      _Default
      . _Coerce

instance FromJSON ListTracesResponse where
        parseJSON
          = withObject "ListTracesResponse"
              (\ o ->
                 ListTracesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "traces" .!= mempty))

instance ToJSON ListTracesResponse where
        toJSON ListTracesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("traces" .=) <$> _ltrTraces])

-- | A trace describes how long it takes for an application to perform an
-- operation. It consists of a set of spans, each of which represent a
-- single timed event within the operation.
--
-- /See:/ 'trace' smart constructor.
data Trace = Trace'
    { _tTraceId   :: !(Maybe Text)
    , _tSpans     :: !(Maybe [TraceSpan])
    , _tProjectId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Trace' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTraceId'
--
-- * 'tSpans'
--
-- * 'tProjectId'
trace
    :: Trace
trace =
    Trace'
    { _tTraceId = Nothing
    , _tSpans = Nothing
    , _tProjectId = Nothing
    }

-- | Globally unique identifier for the trace. This identifier is a 128-bit
-- numeric value formatted as a 32-byte hex string.
tTraceId :: Lens' Trace (Maybe Text)
tTraceId = lens _tTraceId (\ s a -> s{_tTraceId = a})

-- | Collection of spans in the trace.
tSpans :: Lens' Trace [TraceSpan]
tSpans
  = lens _tSpans (\ s a -> s{_tSpans = a}) . _Default .
      _Coerce

-- | Project ID of the Cloud project where the trace data is stored.
tProjectId :: Lens' Trace (Maybe Text)
tProjectId
  = lens _tProjectId (\ s a -> s{_tProjectId = a})

instance FromJSON Trace where
        parseJSON
          = withObject "Trace"
              (\ o ->
                 Trace' <$>
                   (o .:? "traceId") <*> (o .:? "spans" .!= mempty) <*>
                     (o .:? "projectId"))

instance ToJSON Trace where
        toJSON Trace'{..}
          = object
              (catMaybes
                 [("traceId" .=) <$> _tTraceId,
                  ("spans" .=) <$> _tSpans,
                  ("projectId" .=) <$> _tProjectId])

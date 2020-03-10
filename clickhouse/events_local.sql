CREATE TABLE events.events_local ON CLUSTER '{cluster}' (dt Date DEFAULT toDate(ts), ts DateTime, gender String, age Integer, path String, browser String, os String) ENGINE = ReplicatedMergeTree('/clickhouse/{cluster}/{shard}/events/events_local', '{replica}', dt, (dt, ts), 8192);

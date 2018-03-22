drop table if exists callbacks;
drop type if exists callback_type;
CREATE TYPE callback_type AS ENUM ('data/uplink', 'data/downlink', 'service/geoloc');

create table if not exists callbacks(
  id serial primary key,
  device varchar(16) not null,
  deviceType varchar(32) not null,
  requestTime varchar(32) not null,
  duplicate boolean,
  snr float,
  station varchar(16) not null,
  data varchar(128),
  avgSnr float,
  lat float,
  lng float,
  rssi float,
  seqNumber integer,
  channelPartner varchar(32) not null,
  type callback_type not null
);

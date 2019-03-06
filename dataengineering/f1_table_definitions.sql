create table gtc_carmotion_v2(
  carindex INTEGER,
  frameidentifier INTEGER,
  gforcelateral DOUBLE,
  gforcelongitudinal DOUBLE,
  gforcevertical DOUBLE,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  pitch DOUBLE,
  playercarindex INTEGER,
  playerscar BOOLEAN,
  roll DOUBLE,
  sessiontime DOUBLE,
  sessionuid TEXT ENCODING DICT(16),
  worldforwarddirx DOUBLE,
  worldforwarddiry DOUBLE,
  worldforwarddirz DOUBLE,
  worldpositionx DOUBLE,
  worldpositiony DOUBLE,
  worldpositionz DOUBLE,
  worldrightdirx DOUBLE,
  worldrightdiry DOUBLE,
  worldrightdirz DOUBLE,
  worldvelocityx DOUBLE,
  worldvelocityy DOUBLE,
  worldvelocityz DOUBLE,
  yaw	DOUBLE
)

create table gtc_motion_v2(
  angularaccelerationx DOUBLE,
  angularaccelerationy DOUBLE,
  angularaccelerationz DOUBLE,
  angularvelocityx DOUBLE,
  angularvelocityy DOUBLE,
  angularvelocityz DOUBLE,
  frameidentifier INTEGER,
  frontwheelsangle DOUBLE,
  localvelocityx DOUBLE,
  localvelocityy DOUBLE,
  localvelocityz DOUBLE,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  playercarindex INTEGER,
  sessiontime DOUBLE,
  sessionuid TEXT,
  suspensionaccelerationfronright DOUBLE,
  suspensionaccelerationfrontleft DOUBLE,
  suspensionaccelerationrearleft DOUBLE,
  suspensionaccelerationrearright DOUBLE,
  suspensionpositionfrontleft DOUBLE,
  suspensionpositionfrontright DOUBLE,
  suspensionpositionrearleft DOUBLE,
  suspensionpositionrearright DOUBLE,
  suspensionvelocityfrontleft DOUBLE,
  suspensionvelocityfrontright DOUBLE,
  suspensionvelocityrearleft DOUBLE,
  suspensionvelocityrearright DOUBLE,
  wheelslipfrontleft DOUBLE,
  wheelslipfrontright DOUBLE,
  wheelsliprearleft DOUBLE,
  wheelsliprearright DOUBLE,
  wheelspeedfrontleft DOUBLE,
  wheelspeedfrontright DOUBLE,
  wheelspeedrearleft DOUBLE,
  wheelspeedrearright DOUBLE,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_lap_v2(
  bestlaptime DOUBLE,
  carindex DOUBLE,
  carposition INTEGER,
  currentlapinvalid BOOLEAN,
  currentlapnumber INTEGER,
  currentlaptime DOUBLE,
  driverstatus TEXT ENCODING DICT(8),
  frameidentifier INTEGER,
  gridposition INTEGER,
  lapdistance DOUBLE,
  lastlaptime DOUBLE,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  penalties INTEGER,
  pitstatus TEXT ENCODING DICT(8),
  playercarindex INTEGER,
  playerscar BOOLEAN,
  resultstatus TEXT ENCODING DICT(8),
  safetycardelta DOUBLE,
  sector INTEGER,
  sector1time DOUBLE,
  sector2time DOUBLE,
  sessiontime DOUBLE,
  sessionuid TEXT,
  totaldistance DOUBLE,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_cartelemetry_v2(
  brake INTEGER,
  braketemperaturefrontleft INTEGER,
  braketemperaturefrontright INTEGER,
  braketemperaturerearleft INTEGER,
  braketemperaturerearright INTEGER,
  circlebpressed BOOLEAN,
  clutch INTEGER,
  crossapressed BOOLEAN,
  dpaddownpressed BOOLEAN,
  dpadleftpressed BOOLEAN,
  dpadrightpressed BOOLEAN,
  dpaduppressed BOOLEAN,
  drs BOOLEAN,
  enginerpm INTEGER,
  enginetemperature INTEGER,
  frameidentifier INTEGER,
  gear INTEGER,
  l1lbpressed BOOLEAN,
  l2ltpressed BOOLEAN,
  leftstickpressed BOOLEAN,
  optionsmenupressed BOOLEAN,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  playercarindex INTEGER,
  r1rbpressed BOOLEAN,
  r2rtpressed BOOLEAN,
  revlightspercent INTEGER,
  rightstickpressed BOOLEAN,
  sessiontime DOUBLE,
  sessionuid TEXT,
  speed INTEGER,
  squarexpressed BOOLEAN,
  steer INTEGER,
  throttle INTEGER,
  tireinnertemperaturefrontleft INTEGER,
  tireinnertemperaturefrontright INTEGER,
  tireinnertemperaturerearleft INTEGER,
  tireinnertemperaturerearright INTEGER,
  tirepressurefrontleft DOUBLE,
  tirepressurefrontright DOUBLE,
  tirepressurerearleft DOUBLE,
  tirepressurerearright DOUBLE,
  tiresurfacetemperaturefrontleft INTEGER,
  tiresurfacetemperaturefrontright INTEGER,
  tiresurfacetemperaturerearleft INTEGER,
  tiresurfacetemperaturerearright INTEGER,
  triangleypressed BOOLEAN,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_carstatus_v2(
  antilockbrakes BOOLEAN,
  drsallowed INTEGER,
  enginedamage INTEGER,
  ersdeployedthislap DOUBLE,
  ersdeploymode INTEGER,
  ersharvestedthislapmguh DOUBLE,
  ersharvestedthislapmguk DOUBLE,
  ersstoreenergy DOUBLE,
  exhaustdamage INTEGER,
  frameidentifier INTEGER,
  frontbrakebias INTEGER,
  frontleftwheeldamage INTEGER,
  frontrightwingdamage INTEGER,
  fuelcapacity DOUBLE,
  fuelintank DOUBLE,
  fuelmix INTEGER,
  gearboxdamage INTEGER,
  idlerpm INTEGER,
  maxgears INTEGER,
  maxrpm INTEGER,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  pitlimiteron BOOLEAN,
  playercarindex INTEGER,
  rearwingdamage INTEGER,
  sessiontime DOUBLE,
  sessionuid TEXT,
  tirecompound INTEGER,
  tiresdamagefrontleft INTEGER,
  tiresdamagefrontright INTEGER,
  tiresdamagerearleft INTEGER,
  tiresdamagerearright INTEGER,
  tireswearfrontleft INTEGER,
  tireswearfrontright INTEGER,
  tireswearrearleft INTEGER,
  tireswearrearright INTEGER,
  tractioncontrol INTEGER,
  vehiclefiaflags INTEGER,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_session_v2 (
  airtemperature INTEGER,
  era TEXT ENCODING DICT(8),
  frameidentifier INTEGER,
  gamepaused BOOLEAN,
  marshalzoneszoneflag TEXT ENCODING DICT(8),
  marshalzoneszonestart DOUBLE,
  networkgame BOOLEAN,
  nummarshalzones INTEGER,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  pitspeedlimit INTEGER,
  playercarindex INTEGER,
  safetycarstatus	TEXT ENCODING DICT(8),
  sessionduration INTEGER,
  sessiontime DOUBLE,
  sessiontimeleft INTEGER,
  sessiontype TEXT ENCODING DICT(8),
  sessionuid TEXT,
  slipronativesupport BOOLEAN,
  spectating BOOLEAN,
  spectatorcarindex INTEGER,
  totallaps INTEGER,
  trackid INTEGER,
  tracklength INTEGER,
  tracktemperature INTEGER,
  weather TEXT ENCODING DICT(8),
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_carsetup_v2 (
  ballast INTEGER,
  brakebias INTEGER,
  brakepressure INTEGER,
  frameidentifier INTEGER,
  frontantirollbar INTEGER,
  frontcamber DOUBLE,
  frontsuspension INTEGER,
  frontsuspensionheight INTEGER,
  fronttirepressure DOUBLE,
  fronttoe DOUBLE,
  frontwing INTEGER,
  fuelload DOUBLE,
  offthrottle INTEGER,
  onthrottle INTEGER,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  playercarindex INTEGER,
  rearantirollbar INTEGER,
  rearcamber DOUBLE,
  rearsuspension INTEGER,
  rearsuspensionheight INTEGER,
  reartirepressure DOUBLE,
  reartoe DOUBLE,
  rearwing INTEGER,
  sessiontime DOUBLE,
  sessionuid TEXT,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_participant_v2 (
  aicontrolled BOOLEAN,
  driverid INTEGER,
  frameidentifier INTEGER,
  name TEXT ENCODING DICT(8),
  nationality INTEGER,
  numcars INTEGER,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  playercarindex INTEGER,
  racenumber INTEGER,
  sessiontime DOUBLE,
  sessionuid TEXT,
  teamid INTEGER,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

create table gtc_event_v2 (
  eventcode TEXT ENCODING DICT(8),
  frameidentifier INTEGER,
  packetformat INTEGER,
  packetid INTEGER,
  packettime TIMESTAMP(0) ENCODING FIXED(32),
  packetversion INTEGER,
  playercarindex INTEGER,
  sessiontime DOUBLE,
  sessionuid TEXT,
  SHARED DICTIONARY (sessionuid) REFERENCES gtc_carmotion_v2(sessionuid)
)

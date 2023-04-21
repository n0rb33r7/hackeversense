.class public Lcom/senseonics/model/TransmitterStateModel;
.super Ljava/lang/Object;
.source "TransmitterStateModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I = 0x0

.field private static CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I = 0x0

.field private static final DEFAULT_CALIBRATION_MADE_THIS_PHASE:I = -0x1

.field static final DEFAULT_SAMPLING_INTERVAL:I

.field private static final POST_CALIBRATION_NO_OF_SAMPLINGS:I = 0x3

.field private static communicationProtocolVersion_Static:Ljava/lang/String;

.field private static mmaFeatures_Static:I


# instance fields
.field private EEP24MSP:F

.field private MEPSavedDriftMetric:F

.field private MEPSavedLowRefMetric:F

.field private MEPSavedRefChannelMetric:F

.field private MEPSavedSpike:F

.field private MEPSavedValue:F

.field private accelTemp:S

.field private accelValues:S

.field private alertRecordRange:Lcom/senseonics/util/Range;

.field private algorithmParameterFormatVersion:I

.field private atccalCrcRegisterExists:Z

.field private atccalSramResultRegisterExists:Z

.field private batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

.field private batteryVoltage:F

.field private bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private calibrationsMadeInThisPhase:I

.field private clinicalMode:Z

.field private communicationProtocolVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

.field private currentCountdown:J

.field private currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

.field private dayStartTimeHour:I

.field private dayStartTimeMinute:I

.field private delayBLEDisconnectionAlarm:I

.field private doNotDisturbMode:Z

.field private eveningCalibrationLocalTimeHour:I

.field private eveningCalibrationLocalTimeMinute:I

.field private eveningCalibrationTimeHour:I

.field private eveningCalibrationTimeMinute:I

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private glucoseLevel:I

.field private glucoseTimestamp:Ljava/util/Calendar;

.field private glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field private highGlucoseAlarmRepeatIntervalDayTime:I

.field private highGlucoseAlarmRepeatIntervalNightTime:I

.field private highGlucoseAlarmThreshold:I

.field private highGlucoseAlarmsEnabled:Z

.field private highGlucoseAlertThreshold:I

.field private highGlucoseTarget:I

.field private hysteresisHighGlocosePercent:I

.field private hysteresisHighPredictiveGlocosePercent:I

.field private hysteresisLowGlucoseValueMgDl:I

.field private hysteresisLowPredictiveGlucoseValueMgDl:I

.field private isBluetoothEnabled:Z

.field private isGlucoseStale:Z

.field private isOneCalPhaseRegisterExists:Z

.field private isOneCalPhaseValue:I

.field private keepAliveAlertActive:Z

.field private lastCalibrationDateAndTime:Ljava/util/Calendar;

.field private lastGlucoseSyncedMaxRecordTimestamp:J

.field private lastReadTransmitterDatetimeTimestamp:J

.field private linkedSensorId:Ljava/lang/String;

.field private lowGlucoseAlarmRepeatIntervalDayTime:I

.field private lowGlucoseAlarmRepeatIntervalNightTime:I

.field private lowGlucoseAlarmThreshold:I

.field private lowGlucoseAlertThreshold:I

.field private lowGlucoseTarget:I

.field private maxCalibrationThreshold:I

.field private maxSyncedAlertRecord:I

.field private maxSyncedBloodGlucoseRecord:I

.field private maxSyncedSensorRecord:I

.field private minCalibrationThreshold:I

.field private minutesAfterNextCalibrationTime:I

.field private minutesBeforeNextCalibrationTime:I

.field private minutesRemainingUntilCalibrationAllowed:I

.field private mmaFeatures:I

.field private morningCalibrationLocalTimeHour:I

.field private morningCalibrationLocalTimeMinute:I

.field private morningCalibrationTimeHour:I

.field private morningCalibrationTimeMinute:I

.field private mostRecentGlucoseDateTime:Ljava/util/Calendar;

.field private mostRecentGlucoseRegisterValue:I

.field private nextScheduledCalibration:Ljava/util/Calendar;

.field private nightStartTimeHour:I

.field private nightStartTimeMinute:I

.field private placementModeInProgress:Z

.field private predictiveAlertsActivated:Z

.field private predictiveFallingRateAlertMinuteInterval:I

.field private predictiveHighAlertsActivated:Z

.field private predictiveLowAlertsActivated:Z

.field private predictiveRisingRateAlertMinuteInterval:I

.field private preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

.field private rateAlertFallingThreshold:F

.field private rateAlertRisingThreshold:F

.field private rateAlertsActivated:Z

.field private rateFallingAlertsActivated:Z

.field private rateRisingAlertsActivated:Z

.field private rawDataValue1:I

.field private rawDataValue2:I

.field private rawDataValue3:I

.field private rawDataValue4:I

.field private rawDataValue5:I

.field private rawDataValue6:I

.field private rawDataValue7:I

.field private rawDataValue8:I

.field private readyForCalibrationState:I

.field responseIdToParsedResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private samplingIntervalInSeconds:I

.field private sensorGlucoseAlertStatus:[I

.field private sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private sensorInsertionDateAndTime:Ljava/util/Calendar;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field private signalStrengthIntValue:I

.field private signalStrengthRawIntValue:I

.field private signalStrengthRawRegisterExists:Z

.field private startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

.field private supportForDelayBLEDisconnectionAlarm:Z

.field private supportForHighGluAlarmPredRateHighLowSettings:Z

.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;

.field private transmitterAddress:Ljava/lang/String;

.field private transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private transmitterModelNumber:Ljava/lang/String;

.field private transmitterName:Ljava/lang/String;

.field private transmitterSerialNumber:Ljava/lang/String;

.field private transmitterTime:J

.field private transmitterVersionExtensionNumber:Ljava/lang/String;

.field private transmitterVersionNumber:Ljava/lang/String;

.field private unLinkedSensorId:Ljava/lang/String;

.field private vibrateMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcountDownTimer(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventBus(Lcom/senseonics/model/TransmitterStateModel;)Lde/greenrobot/event/EventBus;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcountDownTimer(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    const/4 v0, 0x4

    .line 80
    sput v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I

    const/4 v0, 0x2

    .line 81
    sput v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/DefaultedHashMap;Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/model/DefaultedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            "Lcom/senseonics/util/PreferenceObjectSaverRetriver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 124
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 238
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 239
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    .line 240
    iput-object p3, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 241
    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    .line 242
    iput-object p5, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    .line 243
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    const/4 p2, 0x0

    .line 248
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 249
    sget-object p4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string p4, "TransmitterAddress"

    .line 250
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    const-string p4, "TransmitterName"

    .line 251
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    const-string p4, "TransmitterSerialNumber"

    .line 252
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    const-string p4, "ModelNumber"

    .line 253
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    const-string p4, "FirmwareVersion"

    .line 254
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    const-string p4, "ExtensionNumber"

    .line 255
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    const-string p4, "TransmitterTime"

    const-wide/16 v1, 0x0

    .line 256
    invoke-interface {p3, p4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 257
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 258
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 260
    sget-object p4, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {p4}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    .line 261
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    .line 262
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    .line 263
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    .line 264
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    const-string p4, "MinCalibrationThreshold"

    const/16 v3, 0x28

    .line 265
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    const-string p4, "MaxCalibrationThreshold"

    const/16 v3, 0x190

    .line 266
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 269
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    const-string p4, "SensorId"

    .line 270
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    const-string p4, "UnlinkedSensorId"

    .line 271
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    .line 274
    sget p4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    const p4, 0xffff

    .line 275
    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    .line 276
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getMostRecentGlucoseDateTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    .line 277
    sget-object p4, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 278
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    const-string p4, "SignalStrengthRawRegisterExists"

    .line 279
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    .line 280
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    .line 281
    sget-object p4, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string p4, "TransmitterBatteryVoltage"

    const/4 v3, 0x0

    .line 282
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    .line 283
    sget-object p4, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {p4}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object p4

    const-string v3, "TransmitterBatterylevel"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/model/BATTERY_LEVEL;->valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 284
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 285
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 286
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    .line 287
    sget-object p4, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object p4

    const-string v3, "CurrentCalibrationPhase"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string p4, "CalibrationsMadeInThisPhase"

    .line 288
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 290
    sget p4, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    const-string v3, "prefSamplingInterval"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    const-string p4, "prefAlgorithmParameterFormatVersion"

    .line 292
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    const-string p4, "prefCommunicationProtocolVersion"

    .line 294
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 295
    sput-object p2, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    .line 297
    iput-wide v1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    const-string p2, "glucoseTargetHigh"

    const/16 p4, 0x8c

    .line 306
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    const-string p2, "glucoseTargetLow"

    const/16 p4, 0x50

    .line 307
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    const-string p2, "glucoseAlarmHigh"

    const/16 p4, 0xc8

    .line 308
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    const-string p2, "glucoseAlarmLow"

    const/16 p4, 0x46

    .line 309
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const/16 p2, 0x127

    .line 311
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    const/16 p2, 0x3c

    .line 312
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    const-string p2, "predictiveAlertsActivated"

    .line 314
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    const-string p2, "predictiveLowAlertsActivated"

    .line 315
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    const-string p2, "predictiveHighAlertsActivated"

    .line 316
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    const-string p2, "predictiveMinutes"

    const/16 p4, 0x14

    .line 317
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    const-string p2, "predictiveRisingMinutes"

    .line 318
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    const-string p2, "rateAlertValue"

    const/high16 p4, 0x40200000    # 2.5f

    .line 319
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    const-string p2, "rateAlertRisingValue"

    .line 320
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    const-string p2, "rateAlertsActivated"

    .line 321
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    const-string p2, "rateFallingAlertsActivated"

    .line 322
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    const-string p2, "rateRisingAlertsActivated"

    .line 323
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    const-string p2, "supportForHighGluAlarmPredRateHighLowSettings"

    const/4 p4, 0x1

    .line 324
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    const-string p2, "HysteresisPercent"

    .line 326
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    const-string p2, "HysteresisValue"

    .line 327
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    const-string p2, "HysteresisPredictivePercent"

    .line 329
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    const-string p2, "HysteresisPredictiveValue"

    .line 330
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    const-string p2, "DelayBLEDisconnectionAlarm"

    const/16 v3, 0xb4

    .line 332
    invoke-interface {p3, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    const-string p2, "SupportForDelayBLEDisconnectionAlarm"

    .line 333
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    const-string p2, "VibrationMode"

    .line 335
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 337
    sget p2, Lcom/senseonics/util/Utils;->morningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->morningCalibrationMinuteDefault:I

    invoke-static {p2, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    .line 338
    aget v3, p2, p1

    const-string v4, "MorningCalHour"

    invoke-interface {p3, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    .line 339
    aget p2, p2, p4

    const-string v3, "MorningCalMinute"

    invoke-interface {p3, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 341
    sget p2, Lcom/senseonics/util/Utils;->eveningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->eveningCalibrationMinuteDefault:I

    invoke-static {p2, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    .line 342
    aget v3, p2, p1

    const-string v4, "EveningCalHour"

    invoke-interface {p3, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    .line 343
    aget p2, p2, p4

    const-string v3, "EveningCalMinute"

    invoke-interface {p3, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    const-string p2, "MorningCalLocalHour"

    .line 346
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    const-string p2, "MorningCalLocalMinute"

    .line 347
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    const-string p2, "EveningCalLocalHour"

    .line 348
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    const-string p2, "EveningCalLocalMinute"

    .line 349
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    const-string p2, "MEPSavedValue"

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 352
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: MEPSavedValue:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "NewRegisters"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedRefChannelMetric"

    .line 354
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedRefChannelMetric:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedDriftMetric"

    .line 356
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedDriftMetric:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedLowRefMetric"

    .line 358
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedLowRefMetric:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MEPSavedSpike"

    .line 360
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: MEPSavedSpike:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EEP24MSP"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 362
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: EEP24MSP:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LowGlucoseAlarmRepeatIntervalDayTime"

    const/16 v0, 0xf

    .line 366
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: Day Low:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "HighGlucoseAlarmRepeatIntervalDayTime"

    const/16 v4, 0x1e

    .line 369
    invoke-interface {p3, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model init: Day High:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v5, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LowGlucoseAlarmRepeatIntervalNightTime"

    .line 372
    invoke-interface {p3, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    .line 373
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: Night Low:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "HighGlucoseAlarmRepeatIntervalNightTime"

    .line 375
    invoke-interface {p3, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: Night High:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget p2, Lcom/senseonics/util/Utils;->dayStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->dayStartTimeMinuteDefault:I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    .line 379
    aget v0, p2, p1

    const-string v4, "DayStartTimeHour"

    invoke-interface {p3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    .line 380
    aget p2, p2, p4

    const-string v0, "DayStartTimeMinute"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: dayStartTimeHour:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: dayStartTimeMinute:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget p2, Lcom/senseonics/util/Utils;->nightStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->nightStartTimeMinuteDefault:I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p2

    .line 385
    aget v0, p2, p1

    const-string v4, "NightStartTimeHour"

    invoke-interface {p3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    .line 386
    aget p2, p2, p4

    const-string p4, "NightStartTimeMinute"

    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Model init: nightStartTimeHour:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Model init: nightStartTimeMinute:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LastGlucoseSyncedMaxRecordTimestamp"

    .line 390
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 392
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "SensorGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "SensorGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 393
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "AlertRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "AlertRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 394
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "BloodGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "BloodGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    const-string p2, "MaxSyncedSensorRecord"

    .line 396
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    const-string p2, "MaxSyncedAlertRecord"

    .line 397
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    const-string p2, "MaxSyncedBloodGlucoseRecord"

    .line 398
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 401
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    .line 402
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    .line 403
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    .line 404
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    .line 405
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    .line 406
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    .line 407
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    .line 408
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    .line 409
    iput-short p1, p0, Lcom/senseonics/model/TransmitterStateModel;->accelValues:S

    .line 410
    iput-short p1, p0, Lcom/senseonics/model/TransmitterStateModel;->accelTemp:S

    const-string p2, "LastReadTransmitterDatetimeTimestamp"

    .line 412
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    const-string p2, "KeepAliveAlertActive"

    .line 414
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    const-string p2, "IsGlucoseStale"

    .line 415
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    const-string p2, "SensorGlucoseAlertStatus"

    .line 416
    invoke-virtual {p5, p2}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->getSensorGlucoseAlertStatus(Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    const-string p2, "AtccalCrcRegisterExists"

    .line 417
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    const-string p2, "AtccalSramResultRegisterExists"

    .line 418
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    const-string p2, "IsOneCalPhaseRegisterExists"

    .line 420
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    const-string p2, "IsOneCalPhaseValue"

    const/16 p4, 0xfe

    .line 421
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    const-string p2, "MmaFeatures"

    .line 423
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    .line 424
    sput p1, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    return-void
.end method

.method private fireChangeEvent()V
    .locals 2

    .line 2201
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ModelChangedEvent;

    invoke-direct {v1, p0}, Lcom/senseonics/model/ModelChangedEvent;-><init>(Lcom/senseonics/model/TransmitterStateModel;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireGlucoseSettingsChangedEvent()V
    .locals 2

    .line 2212
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/GlucoseSettingsChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/GlucoseSettingsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private fireMessageCodeChangedEvent()V
    .locals 2

    .line 2216
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/MessageCodeChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/MessageCodeChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireRefreshGraphEvent()V
    .locals 2

    .line 2208
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public static getCommunicationProtocolVersion_Static()F
    .locals 1

    .line 1398
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1400
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getMmaFeatures_Static()I
    .locals 1

    .line 2187
    sget v0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    return v0
.end method

.method private getTransmitterVersionExtensionNumber()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getTransmitterVersionNumber()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static setCommunicationProtocolVersion_Static(Ljava/lang/String;)V
    .locals 0

    .line 1409
    sput-object p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    return-void
.end method

.method private updateTransmitterAddressInPreference()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    const-string v1, "TransmitterAddress"

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private updateTransmitterNameInPreference()V
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    const-string v1, "TransmitterName"

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustLastReadDateTimeWhenSendingReadCommand()V
    .locals 7

    .line 428
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getLastReadTransmitterDatetimeTimestamp()J

    move-result-wide v0

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 435
    invoke-virtual {p0, v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    goto :goto_0

    .line 437
    :cond_0
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v4, v4, 0x5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 439
    invoke-virtual {p0, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canCurrentAppAlertCodeBeReasonForBlinded()Z
    .locals 1

    .line 2090
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public canCurrentMessageCodeBeReasonForBlinded()Z
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public cancelOngoingCalibration()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calibrationDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 681
    iput-wide v2, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 682
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 685
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public checkIfNonGlucoseShowingPhase()Z
    .locals 3

    .line 1195
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public checkIfStaleData()Z
    .locals 4

    .line 2068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2073
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, -0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fireReadyForCalibrationChangedEvent()V
    .locals 2

    .line 2220
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public fireSignalStrengthChangedEvent()V
    .locals 2

    .line 2224
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SignalStrengthChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SignalStrengthChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccelTemp()S
    .locals 1

    .line 2040
    iget-short v0, p0, Lcom/senseonics/model/TransmitterStateModel;->accelTemp:S

    return v0
.end method

.method public getAccelValues()S
    .locals 1

    .line 2032
    iget-short v0, p0, Lcom/senseonics/model/TransmitterStateModel;->accelValues:S

    return v0
.end method

.method public getAlertRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model alertRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getAlgorithmParameterFormatVersion()I
    .locals 1

    .line 1375
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    return v0
.end method

.method public getBackgroundColorForGlucose(I)I
    .locals 1

    .line 2290
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2292
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f06006b

    return p1

    :cond_2
    :goto_0
    const p1, 0x7f060074

    return p1

    :cond_3
    :goto_1
    const p1, 0x7f060070

    return p1
.end method

.method public getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method

.method public getBatteryLife()Ljava/lang/String;
    .locals 2

    .line 1147
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getBatteryPercentStringForLevel(Lcom/senseonics/model/BATTERY_LEVEL;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 1126
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    return v0
.end method

.method public getBloodGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model bloodGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getCalibrationDurationMinutes()I
    .locals 2

    .line 1419
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getCalibrationDurationSeconds()I
    .locals 1

    .line 1430
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getCalibrationsMadeInThisPhase()I
    .locals 1

    .line 1340
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    return v0
.end method

.method public getCalibrationsRemaining()I
    .locals 2

    .line 1344
    sget v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCommunicationProtocolVersion()F
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1388
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 2

    .line 2077
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 2079
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getKeepAliveAlertActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2080
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsGlucoseStale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2083
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_1
    return-object v0
.end method

.method public getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method

.method public getCurrentCountdown()J
    .locals 2

    .line 1348
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-wide v0
.end method

.method public getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public getCurrentPhase()Ljava/lang/String;
    .locals 3

    .line 1258
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f110210

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f110169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v2, 0x7f1100ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseRegisterExists()Z

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/AccountConfigurations;->enableOneCalSwitch(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1266
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f1100ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1268
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1269
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_3
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f110358

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getCurrentPhaseNotTranslated()Ljava/lang/String;
    .locals 2

    .line 1293
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Not Available"

    goto :goto_0

    :pswitch_0
    const-string v0, "Dropout"

    goto :goto_0

    :pswitch_1
    const-string v0, "Debug/Test"

    goto :goto_0

    :pswitch_2
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_3
    const-string v0, "Suspicious Fingerstick"

    goto :goto_0

    :pswitch_4
    const-string v0, "Initialization"

    goto :goto_0

    .line 1300
    :pswitch_5
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseRegisterExists()Z

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->enableOneCalSwitch(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2 Daily Calibrations"

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "1 Daily Calibration"

    goto :goto_0

    :cond_1
    const-string v0, "Daily Calibration"

    goto :goto_0

    :pswitch_6
    const-string v0, "Warm Up"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 2232
    aget v3, p1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    aget v3, p1, v0

    aput v3, v1, v2

    .line 2233
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v1

    new-array v0, v0, [I

    const/4 v3, 0x3

    .line 2234
    aget v3, p1, v3

    aput v3, v0, v4

    const/4 v3, 0x4

    aget p1, p1, v3

    aput p1, v0, v2

    .line 2235
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p1

    .line 2237
    invoke-static {v1, p1}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getDayStartTimeHour()I
    .locals 1

    .line 1903
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    return v0
.end method

.method public getDayStartTimeMinute()I
    .locals 1

    .line 1913
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    return v0
.end method

.method public getDelayBLEDisconnectionAlarm()I
    .locals 1

    .line 1464
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    return v0
.end method

.method public getEEP24MSP()F
    .locals 1

    .line 1892
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    return v0
.end method

.method public getEveningCalibrationLocalTimeHour()I
    .locals 1

    .line 1823
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getEveningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1832
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getEveningCalibrationTimeHour()I
    .locals 1

    .line 1787
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    return v0
.end method

.method public getEveningCalibrationTimeMinute()I
    .locals 1

    .line 1798
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    return v0
.end method

.method public getFormattedTransmitterVersionNumber()Ljava/lang/String;
    .locals 4

    .line 845
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionExtensionNumber()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "."

    .line 850
    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->countOccurrancesInString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 1170
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    return v0
.end method

.method public getGlucoseLevelAlertText(I)I
    .locals 3

    .line 2255
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    const p1, 0x7f11012a

    return p1

    .line 2257
    :cond_0
    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-ge p1, v1, :cond_1

    const p1, 0x7f11012e

    return p1

    .line 2259
    :cond_1
    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v2, :cond_2

    if-gt p1, v0, :cond_2

    const p1, 0x7f11012b

    return p1

    :cond_2
    if-lt p1, v1, :cond_3

    .line 2262
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-ge p1, v0, :cond_3

    const p1, 0x7f11012f

    return p1

    :cond_3
    if-gt p1, v2, :cond_4

    .line 2265
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_4

    const p1, 0x7f110135

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getGlucoseTimestamp()J
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1943
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1954
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getHighGlucoseAlarmThreshold()I
    .locals 1

    .line 1588
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    return v0
.end method

.method public getHighGlucoseAlertThreshold()I
    .locals 1

    .line 1592
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    return v0
.end method

.method public getHighGlucoseTarget()I
    .locals 1

    .line 1542
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    return v0
.end method

.method public getHoursLeftForWarmupPhase()I
    .locals 4

    .line 1441
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    .line 1442
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1445
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0x18

    .line 1446
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1448
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 1450
    div-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    long-to-int v0, v2

    div-int/lit8 v0, v0, 0x3c

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHysteresisHighGlocosePercent()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    return v0
.end method

.method public getHysteresisHighPredictiveGlocosePercent()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    return v0
.end method

.method public getHysteresisLowGlucoseValueMgDl()I
    .locals 1

    .line 544
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    return v0
.end method

.method public getHysteresisLowPredictiveGlucoseValueMgDl()I
    .locals 1

    .line 562
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    return v0
.end method

.method public getIsGlucoseStale()Z
    .locals 1

    .line 2058
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    return v0
.end method

.method public getIsOneCalPhaseRegisterExists()Z
    .locals 1

    .line 2169
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    return v0
.end method

.method public getIsOneCalPhaseValue()I
    .locals 1

    .line 2178
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    return v0
.end method

.method public getKeepAliveAlertActive()Z
    .locals 1

    .line 2048
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    return v0
.end method

.method public getLastGlucoseSyncedMaxRecordTimestamp()J
    .locals 2

    .line 456
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    return-wide v0
.end method

.method public getLastReadTransmitterDatetimeTimestamp()J
    .locals 2

    .line 447
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    return-wide v0
.end method

.method public getLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1507
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1964
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1975
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getLowGlucoseAlarmThreshold()I
    .locals 1

    .line 1619
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    return v0
.end method

.method public getLowGlucoseAlertThreshold()I
    .locals 1

    .line 1596
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    return v0
.end method

.method public getLowGlucoseTarget()I
    .locals 1

    .line 1565
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    return v0
.end method

.method public getMEPSavedDriftMetric()F
    .locals 1

    .line 1862
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    return v0
.end method

.method public getMEPSavedLowRefMetric()F
    .locals 1

    .line 1872
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    return v0
.end method

.method public getMEPSavedRefChannelMetric()F
    .locals 1

    .line 1852
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    return v0
.end method

.method public getMEPSavedSpike()F
    .locals 1

    .line 1882
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    return v0
.end method

.method public getMEPSavedValue()F
    .locals 1

    .line 1842
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    return v0
.end method

.method public getMaxCalibrationThreshold()I
    .locals 1

    .line 1021
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    return v0
.end method

.method public getMaxGlucoseRecordsToSync()I
    .locals 2

    .line 1434
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v0

    const/16 v1, 0xe10

    div-int/2addr v1, v0

    .line 1435
    sget v0, Lcom/senseonics/util/Utils;->DAYS_TO_FETCH_FOR_SYNC:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMaxSyncedAlertRecord()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    return v0
.end method

.method public getMaxSyncedBloodGlucoseRecord()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    return v0
.end method

.method public getMaxSyncedSensorRecord()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    return v0
.end method

.method public getMinCalibrationThreshold()I
    .locals 1

    .line 1012
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    return v0
.end method

.method public getMinutesAfterNextCalibrationTime()I
    .locals 1

    .line 996
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return v0
.end method

.method public getMinutesBeforeNextCalibrationTime()I
    .locals 1

    .line 988
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return v0
.end method

.method public getMinutesRemainingUntilCalibrationAllowed()I
    .locals 1

    .line 1004
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return v0
.end method

.method public getMmaFeatures()I
    .locals 1

    .line 2191
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeHour()I
    .locals 1

    .line 1805
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1814
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getMorningCalibrationTimeHour()I
    .locals 1

    .line 1765
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    return v0
.end method

.method public getMorningCalibrationTimeMinute()I
    .locals 1

    .line 1776
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    return v0
.end method

.method public getMostRecentGlucoseDateTime()Ljava/util/Calendar;
    .locals 4

    .line 2122
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 2123
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MostRecentGlucoseDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2127
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2128
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getMostRecentGlucoseRegisterValue()I
    .locals 1

    .line 1178
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return v0
.end method

.method public getNextScheduledCalibration()Ljava/util/Calendar;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNightStartTimeHour()I
    .locals 1

    .line 1923
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    return v0
.end method

.method public getNightStartTimeMinute()I
    .locals 1

    .line 1933
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    return v0
.end method

.method public getNotificationIconForGlucose(I)I
    .locals 2

    .line 2281
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const v1, 0x7f080060

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2283
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0801cb

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getPredictiveFallingRateAlertMinuteInterval()I
    .locals 1

    .line 1674
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    return v0
.end method

.method public getPredictiveRisingRateAlertMinuteInterval()I
    .locals 1

    .line 1685
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    return v0
.end method

.method public getRateAlertFallingThreshold()F
    .locals 1

    .line 1696
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    return v0
.end method

.method public getRateAlertRisingThreshold()F
    .locals 1

    .line 1707
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    return v0
.end method

.method public getRawDataValues()[I
    .locals 3

    .line 1988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RawValue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1989
    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 953
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    invoke-static {v0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingIntervalInMinutes()I
    .locals 2

    .line 1365
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getSamplingIntervalInSeconds()I
    .locals 1

    .line 1356
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    return v0
.end method

.method public getSensorGlucoseAlertStatus()[I
    .locals 3

    .line 2094
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    sget v1, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->STATUS_FLAGS_COUNT:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->expandIntArrayToSize([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getSensorGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model sensorGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getSensorInsertionDateAndTime()Ljava/util/Calendar;
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SensorInsertionDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 728
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 729
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method

.method public getSignalStrengthIntValue()I
    .locals 1

    .line 1091
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    return v0
.end method

.method public getSignalStrengthRawIntValue()I
    .locals 1

    .line 1108
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    return v0
.end method

.method public getSignalStrengthRawRegisterExists()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    return v0
.end method

.method public getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CalibrationStartDate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 893
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 894
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public getTextColorForGlucose(I)I
    .locals 1

    .line 2274
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f06006d

    return p1

    :cond_1
    :goto_0
    const p1, 0x7f060073

    return p1
.end method

.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method

.method public getTransmitterAddress()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method

.method public getTransmitterModelNumber()Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterName()Ljava/lang/String;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterSerialNumber()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .line 879
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    return-wide v0
.end method

.method public getUnLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getlastCalibrationDateAndTime()Ljava/util/Calendar;
    .locals 4

    .line 938
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "LastCalibration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 943
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 944
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public hasSupportForDelayBLEDisconnectionAlarm()Z
    .locals 1

    .line 1475
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDisconnectDelaySetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1479
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    return v0
.end method

.method public hasSupportForHighGluAlarmPredRateHighLowSettings()Z
    .locals 1

    .line 1751
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableMoreGlucoseSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1754
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    return v0
.end method

.method public isAtccalCrcRegisterExists()Z
    .locals 1

    .line 2108
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    return v0
.end method

.method public isAtccalSramResultRegisterExists()Z
    .locals 1

    .line 2117
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return v0
.end method

.method public isClinicalMode()Z
    .locals 1

    .line 1239
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    return v0
.end method

.method public isFormattedTransmitterVersionXL()Z
    .locals 3

    .line 827
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlucoseLevelWithinRange()Z
    .locals 2

    .line 1191
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighGlucoseAlarmsEnabled()Z
    .locals 1

    .line 1630
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    return v0
.end method

.method public isPlacementModeInProgress()Z
    .locals 1

    .line 1227
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    return v0
.end method

.method public isPredictiveAlertsActivated()Z
    .locals 1

    .line 1641
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    return v0
.end method

.method public isPredictiveHighAlertsActivated()Z
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    return v0
.end method

.method public isPredictiveLowAlertsActivated()Z
    .locals 1

    .line 1652
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    return v0
.end method

.method public isRateAlertsActivated()Z
    .locals 1

    .line 1718
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    return v0
.end method

.method public isRateFallingAlertsActivated()Z
    .locals 1

    .line 1729
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    return v0
.end method

.method public isRateRisingAlertsActivated()Z
    .locals 1

    .line 1740
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    return v0
.end method

.method public isTransmitterConnected()Z
    .locals 2

    .line 2228
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidDate(Ljava/util/Calendar;)Z
    .locals 5

    .line 2241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 2242
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2243
    sget v2, Lcom/senseonics/util/Utils;->kNumberOfDaysToFetch:I

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 2245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2246
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2248
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isVibrateMode()Z
    .locals 1

    .line 1483
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    return v0
.end method

.method public noCalEventInSpecificTimeRange()Z
    .locals 11

    .line 1033
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "calibrationDateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "GMT"

    .line 1035
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 1036
    invoke-static {v4}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v5

    const/16 v7, 0x10

    .line 1037
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    .line 1038
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long/2addr v9, v7

    .line 1041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimestamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TimeChange"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestampCalib:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calibMinsInMillis:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0x249f00

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "diff:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v9, v0

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v9, v6

    if-gtz v0, :cond_1

    cmp-long v0, v9, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1051
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noCalEventInSpecificTimeRange?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;)V
    .locals 0

    .line 689
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    .line 690
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 8

    .line 609
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with old state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipping disconnect from another tx "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 618
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 622
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 623
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterAddress(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterName(Ljava/lang/String;)V

    .line 628
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 630
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_3

    .line 631
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 632
    sget-object p1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 633
    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    .line 634
    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    .line 635
    sget-object p1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    :cond_3
    const-string p1, "GMT"

    .line 638
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 639
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v0

    const/16 v2, 0x10

    .line 640
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    .line 641
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    .line 642
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result p1

    int-to-long v0, p1

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v0, v2

    .line 644
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "calibrationDateTime"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_4

    .line 645
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_2

    :cond_4
    move-wide v2, v6

    :goto_2
    sub-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-gtz p1, :cond_5

    cmp-long p1, v4, v6

    if-ltz p1, :cond_5

    sub-long/2addr v0, v4

    .line 650
    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    goto :goto_3

    .line 652
    :cond_5
    iput-wide v6, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 654
    :goto_3
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 655
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    cmp-long p1, v0, v6

    if-lez p1, :cond_6

    .line 656
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->startCountDownTimer(J)V

    :cond_6
    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 5

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransmitterStateModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/ParsedResponse;

    .line 574
    instance-of v2, v0, Lcom/senseonics/model/NoOpParsedResponse;

    if-eqz v2, :cond_0

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was not handled. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-static {v3}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsed response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/model/ParsedResponse;->check([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/senseonics/model/ParsedResponse;->apply([ILcom/senseonics/model/TransmitterStateModel;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/CalibrationCountdownEvent;)V
    .locals 2

    .line 694
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 696
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->getCurrentCountdownMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 697
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/RegisterNotFoundEvent;)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Lcom/senseonics/events/RegisterNotFoundEvent;->getRequestData()[I

    move-result-object p1

    .line 704
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForHighGluAlarmPredRateHighLowSettings(Z)V

    goto :goto_0

    .line 706
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xb4

    .line 707
    invoke-virtual {p0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setDelayBLEDisconnectionAlarm(I)V

    .line 708
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForDelayBLEDisconnectionAlarm(Z)V

    goto :goto_0

    .line 709
    :cond_1
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalCrcRegisterExists(Z)V

    goto :goto_0

    .line 711
    :cond_2
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalSramResultAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalSramResultRegisterExists(Z)V

    goto :goto_0

    .line 713
    :cond_3
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->IsOneCalPhaseAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 714
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setIsOneCalPhaseRegisterExists(Z)V

    goto :goto_0

    .line 715
    :cond_4
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentRawAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 716
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSignalStrengthRawRegisterExists(Z)V

    goto :goto_0

    .line 717
    :cond_5
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->MmaFeaturesAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xff

    .line 718
    invoke-virtual {p0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setMmaFeatures(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public resetSyncRecordNumbersIfNeeded()V
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " preparesync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--- resetSyncRecordNumbersIfNeeded ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    .line 530
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    .line 531
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    return-void
.end method

.method public setAccelTemp(S)V
    .locals 0

    .line 2044
    iput-short p1, p0, Lcom/senseonics/model/TransmitterStateModel;->accelTemp:S

    return-void
.end method

.method public setAccelValues(S)V
    .locals 0

    .line 2036
    iput-short p1, p0, Lcom/senseonics/model/TransmitterStateModel;->accelValues:S

    return-void
.end method

.method public setAlertRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 481
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 482
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "AlertRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 483
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "AlertRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAlgorithmParameterFormatVersion(I)V
    .locals 2

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Algo format version"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    .line 1381
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefAlgorithmParameterFormatVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAtccalCrcRegisterExists(Z)V
    .locals 2

    .line 2103
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    .line 2104
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AtccalCrcRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAtccalSramResultRegisterExists(Z)V
    .locals 2

    .line 2112
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    .line 2113
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AtccalSramResultRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)V
    .locals 3

    .line 1140
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 1141
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransmitterBatterylevel"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1142
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;-><init>(Lcom/senseonics/model/BATTERY_LEVEL;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1143
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setBatteryVoltage(F)V
    .locals 2

    .line 1130
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    .line 1131
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterBatteryVoltage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1132
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/BatteryVoltageEvent;

    invoke-direct {v0}, Lcom/senseonics/events/BatteryVoltageEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setBloodGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 492
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 493
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "BloodGlucoseRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "BloodGlucoseRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCalibrationPhaseStartDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 916
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 917
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 918
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "CalibrationStartDate"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 922
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 925
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 926
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 927
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 928
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 929
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 930
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 931
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 932
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setCalibrationsMadeInThisPhase(I)V
    .locals 2

    .line 1334
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 1335
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CalibrationsMadeInThisPhase"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1336
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setClinicalMode(Z)V
    .locals 2

    .line 1231
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    .line 1233
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ClinicalMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1234
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1235
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedClinicalModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedClinicalModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCommunicationProtocolVersion(Ljava/lang/String;)V
    .locals 2

    .line 1413
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 1414
    sput-object p1, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    .line 1415
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefCommunicationProtocolVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V
    .locals 3

    .line 1247
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    .line 1248
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrentCalibrationPhase"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1249
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1250
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;-><init>(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentCountdown(J)V
    .locals 0

    .line 1352
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-void
.end method

.method public setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1205
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1206
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireMessageCodeChangedEvent()V

    return-void
.end method

.method public setDayStartTimeHour(I)V
    .locals 2

    .line 1907
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    .line 1908
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day Start Time Hour:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDayStartTimeMinute(I)V
    .locals 2

    .line 1917
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    .line 1918
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day Start Time Minute:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDelayBLEDisconnectionAlarm(I)V
    .locals 2

    .line 1457
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    .line 1458
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1459
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1460
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoNotDisturbMode(Z)V
    .locals 2

    .line 1494
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->doNotDisturbMode:Z

    .line 1495
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1496
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setEEP24MSP(F)V
    .locals 2

    .line 1896
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    .line 1897
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EEP24MSP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EEP24 MSP:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEveningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1827
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    .line 1828
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1836
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    .line 1837
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationTimeHour(I)V
    .locals 2

    .line 1780
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    .line 1781
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1782
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1783
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setEveningCalibrationTimeMinute(I)V
    .locals 2

    .line 1791
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    .line 1792
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1793
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1794
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setGlucoseLevel(I)V
    .locals 2

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGlucoseLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#3640"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 1165
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1166
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    return-void
.end method

.method public setGlucoseTimestamp(Ljava/util/Calendar;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    return-void
.end method

.method public setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 1183
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 1947
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    .line 1948
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "High Day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewRegisters"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1958
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    .line 1959
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1960
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "High Night:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHighGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1569
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1570
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    .line 1573
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1576
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1578
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1581
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1584
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmsEnabled(Z)V
    .locals 2

    .line 1623
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    .line 1624
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glucoseAlarmHighEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1625
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1626
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseTarget(I)V
    .locals 4

    .line 1523
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1524
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    .line 1527
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1530
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1532
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1535
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1538
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHysteresisHighGlocosePercent(I)V
    .locals 2

    .line 539
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    .line 540
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisHighPredictiveGlocosePercent(I)V
    .locals 2

    .line 557
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    .line 558
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictivePercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowGlucoseValueMgDl(I)V
    .locals 2

    .line 548
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    .line 549
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowPredictiveGlucoseValueMgDl(I)V
    .locals 2

    .line 566
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    .line 567
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictiveValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsBluetoothEnabled(Z)V
    .locals 0

    .line 779
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return-void
.end method

.method public setIsGlucoseStale(Z)V
    .locals 2

    .line 2062
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    .line 2063
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsGlucoseStale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2064
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setIsOneCalPhaseRegisterExists(Z)V
    .locals 2

    .line 2173
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    .line 2174
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsOneCalPhaseRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsOneCalPhaseValue(I)V
    .locals 2

    .line 2182
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    .line 2183
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsOneCalPhaseValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setKeepAliveAlertActive(Z)V
    .locals 2

    .line 2052
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    .line 2053
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KeepAliveAlertActive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2054
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastCalibrationDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 1057
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    const-string v0, "LastCalibration"

    if-nez p1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1066
    :goto_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1067
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastGlucoseSyncedMaxRecordTimestamp(J)V
    .locals 2

    .line 460
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 461
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastGlucoseSyncedMaxRecordTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastReadTransmitterDatetimeTimestamp(J)V
    .locals 2

    .line 451
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    .line 452
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastReadTransmitterDatetimeTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1500
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1502
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1503
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 1968
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    .line 1969
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Low Day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewRegisters"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1979
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    .line 1980
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Low Night:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLowGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1600
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1601
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    .line 1604
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1607
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1609
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1612
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1615
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setLowGlucoseTarget(I)V
    .locals 4

    .line 1546
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1547
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    .line 1550
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1553
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1555
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1558
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1561
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setMEPSavedDriftMetric(F)V
    .locals 2

    .line 1866
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    .line 1867
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedDriftMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Drift Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedLowRefMetric(F)V
    .locals 2

    .line 1876
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    .line 1877
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedLowRefMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Low Ref Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedRefChannelMetric(F)V
    .locals 2

    .line 1856
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    .line 1857
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedRefChannelMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1858
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Ref Channel Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedSpike(F)V
    .locals 2

    .line 1886
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    .line 1887
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedSpike"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Spike:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedValue(F)V
    .locals 2

    .line 1846
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    .line 1847
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMaxCalibrationThreshold(I)V
    .locals 2

    .line 1025
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 1026
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedAlertRecord(I)V
    .locals 3

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedAlertRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    .line 514
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedAlertRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedBloodGlucoseRecord(I)V
    .locals 3

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedBloodGlucoseRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 524
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedBloodGlucoseRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedSensorRecord(I)V
    .locals 3

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransmitterStateModel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedSensorRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    .line 504
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedSensorRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinCalibrationThreshold(I)V
    .locals 2

    .line 1016
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    .line 1017
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MinCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinutesAfterNextCalibrationTime(I)V
    .locals 0

    .line 1000
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return-void
.end method

.method public setMinutesBeforeNextCalibrationTime(I)V
    .locals 0

    .line 992
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return-void
.end method

.method public setMinutesRemainingUntilCalibrationAllowed(I)V
    .locals 0

    .line 1008
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return-void
.end method

.method public setMmaFeatures(I)V
    .locals 2

    .line 2195
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    .line 2196
    sput p1, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    .line 2197
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MmaFeatures"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1809
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    .line 1810
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1818
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    .line 1819
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationTimeHour(I)V
    .locals 2

    .line 1758
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    .line 1759
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1760
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1761
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMorningCalibrationTimeMinute(I)V
    .locals 2

    .line 1769
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 1770
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1771
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1772
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMostRecentGlucoseDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 2149
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 2150
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    .line 2151
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "MostRecentGlucoseDateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2153
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 2155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 2157
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2158
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 2159
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 2160
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2161
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2162
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 2163
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 2164
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setMostRecentGlucoseDateTime(Ljava/util/Calendar;)V
    .locals 4

    .line 2137
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    const-string v0, "MostRecentGlucoseDateTime"

    if-nez p1, :cond_0

    .line 2140
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2142
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2145
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMostRecentGlucoseRegisterValue(I)V
    .locals 0

    .line 1174
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return-void
.end method

.method public setNextScheduledCalibration(Ljava/util/Calendar;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-void
.end method

.method public setNextScheduledCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 969
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 970
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    goto :goto_0

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 974
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 976
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 977
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 978
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 979
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 980
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 981
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 982
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 983
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setNightStartTimeHour(I)V
    .locals 2

    .line 1927
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    .line 1928
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1929
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Night Start Time Hour:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightStartTimeMinute(I)V
    .locals 2

    .line 1937
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    .line 1938
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1939
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Night Start Time Minute:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlacementModeInProgress(Z)V
    .locals 1

    .line 1218
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 1219
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    if-eq v0, p1, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public setPredictiveAlertsActivated(Z)V
    .locals 2

    .line 1634
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    .line 1635
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1636
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1637
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveFallingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1667
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    .line 1668
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1669
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1670
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveHighAlertsActivated(Z)V
    .locals 2

    .line 1656
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    .line 1657
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveHighAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1658
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1659
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveLowAlertsActivated(Z)V
    .locals 2

    .line 1645
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    .line 1646
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveLowAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1647
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1648
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveRisingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1678
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    .line 1679
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveRisingMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1680
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1681
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertFallingThreshold(F)V
    .locals 2

    .line 1689
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    .line 1690
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1691
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1692
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertRisingThreshold(F)V
    .locals 2

    .line 1700
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    .line 1701
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertRisingValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1702
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1703
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertsActivated(Z)V
    .locals 2

    .line 1711
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    .line 1712
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1713
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1714
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateFallingAlertsActivated(Z)V
    .locals 2

    .line 1722
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    .line 1723
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateFallingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1724
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1725
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateRisingAlertsActivated(Z)V
    .locals 2

    .line 1733
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    .line 1734
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateRisingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1735
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1736
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;I)V
    .locals 1

    .line 1996
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2026
    :pswitch_0
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    goto :goto_0

    .line 2022
    :pswitch_1
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    goto :goto_0

    .line 2018
    :pswitch_2
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    goto :goto_0

    .line 2014
    :pswitch_3
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    goto :goto_0

    .line 2010
    :pswitch_4
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    goto :goto_0

    .line 2006
    :pswitch_5
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    goto :goto_0

    .line 2002
    :pswitch_6
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    goto :goto_0

    .line 1998
    :pswitch_7
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setReadyForCalibrationState(I)V
    .locals 0

    .line 957
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    return-void
.end method

.method public setSamplingIntervalInSeconds(I)V
    .locals 2

    .line 1360
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    .line 1361
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefSamplingInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorGlucoseAlertStatus([I)V
    .locals 2

    .line 2098
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    .line 2099
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "SensorGlucoseAlertStatus"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveSensorGlucoseAlertStatus(Ljava/lang/String;[I)V

    return-void
.end method

.method public setSensorGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 470
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 471
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "SensorGlucoseRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "SensorGlucoseRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorInsertionDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 738
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    const-string v0, "SensorInsertionDateTime"

    if-nez p1, :cond_0

    .line 741
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const-string p1, "Insertion Debug"

    const-string v0, "fire change event"

    .line 746
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 748
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSensorInsertionDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 752
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 753
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    .line 754
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "SensorInsertionDateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 758
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 761
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 762
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 763
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 764
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 765
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 766
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 767
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const-string p1, "Insertion Debug"

    const-string v0, "set date only"

    .line 769
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 1121
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1122
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireSignalStrengthChangedEvent()V

    return-void
.end method

.method public setSignalStrengthIntValue(I)V
    .locals 0

    .line 1095
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    return-void
.end method

.method public setSignalStrengthRawIntValue(I)V
    .locals 0

    .line 1112
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    return-void
.end method

.method public setSignalStrengthRawRegisterExists(Z)V
    .locals 2

    .line 1103
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    .line 1104
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SignalStrengthRawRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStartCalibrationPhaseDateAndTime(Ljava/util/Calendar;)V
    .locals 3

    .line 903
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    const-string v0, "CalibrationStartDate"

    if-nez p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 908
    :cond_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 911
    :goto_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 912
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setSupportForDelayBLEDisconnectionAlarm(Z)V
    .locals 2

    .line 1468
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    .line 1469
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SupportForDelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1470
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1471
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSupportForHighGluAlarmPredRateHighLowSettings(Z)V
    .locals 2

    .line 1744
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    .line 1745
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supportForHighGluAlarmPredRateHighLowSettings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1746
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1747
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setTransmitterAddress(Ljava/lang/String;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    .line 801
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterAddressInPreference()V

    return-void
.end method

.method public setTransmitterConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method public setTransmitterModelNumber(Ljava/lang/String;)V
    .locals 3

    .line 820
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    .line 821
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    const-string v2, "ModelNumber"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 822
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 823
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterName(Ljava/lang/String;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    .line 792
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterNameInPreference()V

    return-void
.end method

.method public setTransmitterSerialNumber(Ljava/lang/String;)V
    .locals 2

    .line 809
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    .line 810
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    const-string v1, "TransmitterSerialNumber"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 811
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 812
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterTime(J)V
    .locals 2

    .line 883
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 884
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    const-string p2, "TransmitterTime"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionExtensionNumber(Ljava/lang/String;)V
    .locals 2

    .line 874
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExtensionNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionNumber(Ljava/lang/String;)V
    .locals 3

    .line 867
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    const-string v2, "FirmwareVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 870
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setUnLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1511
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 1512
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UnlinkedSensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1513
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1514
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setVibrateMode(Z)V
    .locals 2

    .line 1487
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 1488
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VibrationMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1489
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1490
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedVibrateModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedVibrateModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setlastCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 1071
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 1072
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 1073
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "LastCalibration"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 1077
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 1079
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1080
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1081
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1082
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 1083
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1084
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1085
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1086
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public startCountDownTimer(J)V
    .locals 2

    .line 661
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 662
    new-instance v1, Lcom/senseonics/model/TransmitterStateModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/model/TransmitterStateModel$1;-><init>(Lcom/senseonics/model/TransmitterStateModel;J)V

    .line 676
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

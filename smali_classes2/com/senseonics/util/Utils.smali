.class public Lcom/senseonics/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/Utils$ALERT_TYPE;,
        Lcom/senseonics/util/Utils$EVENT_TYPE;,
        Lcom/senseonics/util/Utils$STATISTIC_TYPE2;,
        Lcom/senseonics/util/Utils$MLCheckResult;,
        Lcom/senseonics/util/Utils$ARROW_TYPE;,
        Lcom/senseonics/util/Utils$CAL_PHASE;,
        Lcom/senseonics/util/Utils$GLUCOSE_TYPE;,
        Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
    }
.end annotation


# static fields
.field public static ADD_EDIT_EVENT_MAX_DAYS_AGO:I = 0x1e

.field public static BATTERY_EVENT_TAG:Ljava/lang/String; = "BATTERY"

.field public static final BLUETOOTH_PERMISSION_REQUEST_CODE:I = 0x2711

.field private static final CAL_NOTE_DIVISOR:I = 0x3e8

.field public static final CAL_REMINDER_1_REQUEST_CODE:I = 0x4e21

.field public static final CAL_REMINDER_2_REQUEST_CODE:I = 0x4e22

.field public static final CONTACTS_PERMISSION_REQUEST_CODE:I = 0x2713

.field public static final CONTACT_PICKER_REQUEST_CODE:I = 0x7532

.field public static final CRCLength:I = 0x2

.field public static final DAILY_CALIBRATION_SAVE_RESULT_CODE:I = 0x9c42

.field public static DAYS_TO_FETCH_FOR_SYNC:I = 0x3

.field public static DEFAULT_SYNC_DAYS:I = 0x1

.field public static EVENT_POSITION:I = 0x14

.field public static GLUCOSE_DEFAULT_LEVEL:I = 0x64

.field public static GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String; = null

.field public static GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String; = null

.field public static GLUCOSE_LEVEL_UNKNOWN:I = 0x0

.field public static GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String; = null

.field public static GLUCOSE_MAX:I = 0x190

.field public static GLUCOSE_MIN:I = 0x0

.field public static GLUCOSE_MIN_Y:I = 0x14

.field public static GLUCOSE_VALID_MAX:I = 0x190

.field public static GLUCOSE_VALID_MIN:I = 0x28

.field public static GRAPH_GLUCOSE_MAX:I = 0x19a

.field public static GRAPH_GLUCOSE_MIN:I = 0x0

.field public static INT_MAX:I = 0xffff

.field public static final LOG_OUT_BACK_RESULT_CODE:I = 0x9c41

.field public static NO_OF_ALARMS_TO_SYNC:I = 0x0

.field public static NO_OF_EVENTS_TO_SYNC:I = 0x0

.field public static final PLACEMENT_BACK_RESULT_CODE:I = 0x9c43

.field public static SHARED_PREF:Ljava/lang/String; = "SenseonicsPref"

.field public static STATISTICS_GLUCOSE_MAX:I = 0x190

.field public static STATISTICS_GLUCOSE_MIN:I = 0x28

.field public static final STORAGE_PERMISSION_REQUEST_CODE:I = 0x2712

.field public static final TAP_HEADER_BACK_REQUEST_CODE:I = 0x7531

.field public static VERSION_RELEASE_DATE:Ljava/lang/String; = "01/25/2023"

.field public static calibrationServer:Ljava/lang/String; = "https://sensordataserver.s4ms.com/CalibrationServer9/CalibrationService.svc"

.field public static clinicalModeDuration:J = 0x0L

.field public static currentDate:Ljava/util/Calendar; = null

.field public static currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT; = null

.field public static currentUnknownErrorCode:I = 0x0

.field public static dayStartTimeHourDefaultLocal:I = 0x8

.field public static dayStartTimeMinuteDefault:I = 0x0

.field public static daySubviewWidth:F = -1.0f

.field public static daysCount:I = 0x3c

.field public static enableGlucoseUnitPanel:Z = false

.field public static endDate:Ljava/util/Calendar; = null

.field public static endDateFinished:Ljava/util/Calendar; = null

.field public static eveningCalibrationHourDefaultLocal:I = 0x12

.field public static eveningCalibrationMinuteDefault:I = 0x0

.field public static isDosingIntroShowing:Z = false

.field public static kAppFWCompatibilityCheckWebserviceFunctionCall:Ljava/lang/String; = "http://tempuri.org/ITransferService/AppFWCompatibilityCheck"

.field public static kNumberOfDaysMax:I = 0x5a

.field public static kNumberOfDaysToFetch:I = 0x3

.field public static maxBloodGlucose:I = 0x258

.field public static minBloodGlucose:I = 0x14

.field public static morningCalibrationHourDefaultLocal:I = 0x8

.field public static morningCalibrationMinuteDefault:I = 0x0

.field public static nightStartTimeHourDefaultLocal:I = 0x14

.field public static nightStartTimeMinuteDefault:I = 0x0

.field public static final prefAcceptedEULAVersion:Ljava/lang/String; = "acceptedEULAVersion"

.field public static final prefAccountAccessToken:Ljava/lang/String; = "AccountAccessToken"

.field public static prefAccountAccessTokenTime:Ljava/lang/String; = "AccountAccessTokenDate"

.field public static final prefAccountDiagnosticDataLastSyncedOnDateTime:Ljava/lang/String; = "AccountDiagnosticDataLastSyncedOnDateTime"

.field public static final prefAccountEnableAutoSync:Ljava/lang/String; = "AccountEnableAutoSync"

.field public static final prefAccountFirstName:Ljava/lang/String; = "AccountFirstName"

.field public static final prefAccountIsLoggedIn:Ljava/lang/String; = "AccountIsLoggedIn"

.field public static final prefAccountLastName:Ljava/lang/String; = "AccountLastName"

.field public static final prefAccountLastSyncedOnDateTime:Ljava/lang/String; = "AccountLastSyncedOnDateTime"

.field public static final prefAccountLastSyncedStartDateTime:Ljava/lang/String; = "AccountLastSyncedStartDateTime"

.field public static prefAccountMemberList:Ljava/lang/String; = "AccountMemberList"

.field public static final prefAccountMigrationPasswordUpdated:Ljava/lang/String; = "AccountMigrationPasswordUpdated"

.field public static final prefAccountProfileImage:Ljava/lang/String; = "AccountProfileImage"

.field public static final prefAccountRefreshToken:Ljava/lang/String; = "AccountRefreshToken"

.field public static final prefAccountSyncDays:Ljava/lang/String; = "AccountSyncDays"

.field public static final prefAccountSyncInterval:Ljava/lang/String; = "AccountSyncInterval"

.field public static final prefAccountUserID:Ljava/lang/String; = "AccountUserID"

.field public static final prefAccountUserName:Ljava/lang/String; = "AccountUserName"

.field public static final prefAccountUserPassword:Ljava/lang/String; = "AccountUserPassword"

.field public static final prefAlarmHigh:Ljava/lang/String; = "glucoseAlarmHigh"

.field public static final prefAlarmHighEnabled:Ljava/lang/String; = "glucoseAlarmHighEnabled"

.field public static final prefAlarmLow:Ljava/lang/String; = "glucoseAlarmLow"

.field public static final prefAlgorithmParameterFormatVersion:Ljava/lang/String; = "prefAlgorithmParameterFormatVersion"

.field public static final prefAppUpdateLastCheckedDateTime:Ljava/lang/String; = "AppUpdateLastCheckedDateTime"

.field public static final prefAtccalCrcRegisterExists:Ljava/lang/String; = "AtccalCrcRegisterExists"

.field public static final prefAtccalSramResultRegisterExists:Ljava/lang/String; = "AtccalSramResultRegisterExists"

.field public static final prefCalibrationDateTime:Ljava/lang/String; = "calibrationDateTime"

.field public static final prefClinicalMode:Ljava/lang/String; = "ClinicalMode"

.field public static final prefClinicalModeDuration:Ljava/lang/String; = "ClinicalModeDuration"

.field public static final prefClinicalModeStartTime:Ljava/lang/String; = "ClinicalModeStartTime"

.field public static final prefCommunicationProtocolVersion:Ljava/lang/String; = "prefCommunicationProtocolVersion"

.field public static final prefCurrentCalibrationPhase:Ljava/lang/String; = "CurrentCalibrationPhase"

.field public static final prefDayStartTimeHour:Ljava/lang/String; = "DayStartTimeHour"

.field public static final prefDayStartTimeMinute:Ljava/lang/String; = "DayStartTimeMinute"

.field public static final prefDelayBLEDisconnectionAlarm:Ljava/lang/String; = "DelayBLEDisconnectionAlarm"

.field public static final prefDisclosurePopupShown:Ljava/lang/String; = "DisclosurePopupShown"

.field public static final prefEEP24MSP:Ljava/lang/String; = "EEP24MSP"

.field public static final prefEveningCalHour:Ljava/lang/String; = "EveningCalHour"

.field public static final prefEveningCalLocalHour:Ljava/lang/String; = "EveningCalLocalHour"

.field public static final prefEveningCalLocalMinute:Ljava/lang/String; = "EveningCalLocalMinute"

.field public static final prefEveningCalMinute:Ljava/lang/String; = "EveningCalMinute"

.field public static final prefFirstRun:Ljava/lang/String; = "firstRun"

.field public static final prefFirstRunForCompatibility:Ljava/lang/String; = "firstRunForCompatibility"

.field public static final prefGlucoseUnit:Ljava/lang/String; = "currentGlucoseUnit"

.field public static final prefHighGlucoseAlarmRepeatIntervalDayTime:Ljava/lang/String; = "HighGlucoseAlarmRepeatIntervalDayTime"

.field public static final prefHighGlucoseAlarmRepeatIntervalNightTime:Ljava/lang/String; = "HighGlucoseAlarmRepeatIntervalNightTime"

.field public static final prefHysteresisPercent:Ljava/lang/String; = "HysteresisPercent"

.field public static final prefHysteresisPredictivePercent:Ljava/lang/String; = "HysteresisPredictivePercent"

.field public static final prefHysteresisPredictiveValue:Ljava/lang/String; = "HysteresisPredictiveValue"

.field public static final prefHysteresisValue:Ljava/lang/String; = "HysteresisValue"

.field public static final prefIamInvalidCredential:Ljava/lang/String; = "IamInvalidCredential"

.field public static final prefIamUnlockTime:Ljava/lang/String; = "IamUnlockTime"

.field public static final prefIsDosingIntroCompleted:Ljava/lang/String; = "isDosingIntroCompleted"

.field public static final prefIsEulaAccepted:Ljava/lang/String; = "isEulaAccepted"

.field public static final prefIsGlucoseStale:Ljava/lang/String; = "IsGlucoseStale"

.field public static final prefIsOneCalPhaseRegisterExists:Ljava/lang/String; = "IsOneCalPhaseRegisterExists"

.field public static final prefIsOneCalPhaseValue:Ljava/lang/String; = "IsOneCalPhaseValue"

.field public static final prefIsOverridePhoneSettingLowGlucoseAlarmEnabled:Ljava/lang/String; = "IsOverridePhoneSettingLowGlucoseAlarmEnabled"

.field public static final prefKeepAliveAlertActive:Ljava/lang/String; = "KeepAliveAlertActive"

.field public static final prefLastGlucoseSyncedMaxRecordTimestamp:Ljava/lang/String; = "LastGlucoseSyncedMaxRecordTimestamp"

.field public static final prefLastReadTransmitterDatetimeTimestamp:Ljava/lang/String; = "LastReadTransmitterDatetimeTimestamp"

.field public static final prefLastSyncingMillis:Ljava/lang/String; = "last_syncing_gmt_millis"

.field public static final prefLowGlucoseAlarmRepeatIntervalDayTime:Ljava/lang/String; = "LowGlucoseAlarmRepeatIntervalDayTime"

.field public static final prefLowGlucoseAlarmRepeatIntervalNightTime:Ljava/lang/String; = "LowGlucoseAlarmRepeatIntervalNightTime"

.field public static final prefMEPSavedDriftMetric:Ljava/lang/String; = "MEPSavedDriftMetric"

.field public static final prefMEPSavedLowRefMetric:Ljava/lang/String; = "MEPSavedLowRefMetric"

.field public static final prefMEPSavedRefChannelMetric:Ljava/lang/String; = "MEPSavedRefChannelMetric"

.field public static final prefMEPSavedSpike:Ljava/lang/String; = "MEPSavedSpike"

.field public static final prefMEPSavedValue:Ljava/lang/String; = "MEPSavedValue"

.field public static final prefMaxCalibrationThreshold:Ljava/lang/String; = "MaxCalibrationThreshold"

.field public static final prefMaxSyncedAlertRecord:Ljava/lang/String; = "MaxSyncedAlertRecord"

.field public static final prefMaxSyncedBloodGlucoseRecord:Ljava/lang/String; = "MaxSyncedBloodGlucoseRecord"

.field public static final prefMaxSyncedSensorRecord:Ljava/lang/String; = "MaxSyncedSensorRecord"

.field public static final prefMemberListLastFetchedOnDateTime:Ljava/lang/String; = "MemberListLastFetchedOnDateTime"

.field public static final prefMigrateSecurePrefsAndLogoutIfNeededOnce:Ljava/lang/String; = "MigrateSecurePrefsAndLogoutIfNeededOnce"

.field public static final prefMinCalibrationThreshold:Ljava/lang/String; = "MinCalibrationThreshold"

.field public static final prefMmaFeatures:Ljava/lang/String; = "MmaFeatures"

.field public static final prefMorningCalHour:Ljava/lang/String; = "MorningCalHour"

.field public static final prefMorningCalLocalHour:Ljava/lang/String; = "MorningCalLocalHour"

.field public static final prefMorningCalLocalMinute:Ljava/lang/String; = "MorningCalLocalMinute"

.field public static final prefMorningCalMinute:Ljava/lang/String; = "MorningCalMinute"

.field public static final prefMostRecentGlucoseDateTime:Ljava/lang/String; = "MostRecentGlucoseDateTime"

.field public static final prefNightStartTimeHour:Ljava/lang/String; = "NightStartTimeHour"

.field public static final prefNightStartTimeMinute:Ljava/lang/String; = "NightStartTimeMinute"

.field public static final prefPredictiveAlertsActivated:Ljava/lang/String; = "predictiveAlertsActivated"

.field public static final prefPredictiveHighAlertsActivated:Ljava/lang/String; = "predictiveHighAlertsActivated"

.field public static final prefPredictiveLowAlertsActivated:Ljava/lang/String; = "predictiveLowAlertsActivated"

.field public static final prefPredictiveMinutes:Ljava/lang/String; = "predictiveMinutes"

.field public static final prefPredictiveRisingMinutes:Ljava/lang/String; = "predictiveRisingMinutes"

.field public static final prefRateAlertsActivated:Ljava/lang/String; = "rateAlertsActivated"

.field public static final prefRateFallingAlertsActivated:Ljava/lang/String; = "rateFallingAlertsActivated"

.field public static final prefRateRisingAlertsActivated:Ljava/lang/String; = "rateRisingAlertsActivated"

.field public static final prefRateRisingValue:Ljava/lang/String; = "rateAlertRisingValue"

.field public static final prefRateValue:Ljava/lang/String; = "rateAlertValue"

.field public static final prefSamplingInterval:Ljava/lang/String; = "prefSamplingInterval"

.field public static final prefSensorGlucoseAlertStatus:Ljava/lang/String; = "SensorGlucoseAlertStatus"

.field public static final prefSensorId:Ljava/lang/String; = "SensorId"

.field public static final prefSensorInsertionDateTime:Ljava/lang/String; = "SensorInsertionDateTime"

.field public static final prefSignalStrengthRawRegisterExists:Ljava/lang/String; = "SignalStrengthRawRegisterExists"

.field public static final prefSupportForDelayBLEDisconnectionAlarm:Ljava/lang/String; = "SupportForDelayBLEDisconnectionAlarm"

.field public static final prefSupportForHighGluAlarmPredRateHighLowSettings:Ljava/lang/String; = "supportForHighGluAlarmPredRateHighLowSettings"

.field public static final prefTargetHigh:Ljava/lang/String; = "glucoseTargetHigh"

.field public static final prefTargetLow:Ljava/lang/String; = "glucoseTargetLow"

.field public static final prefTransmitterAddress:Ljava/lang/String; = "TransmitterAddress"

.field public static final prefTransmitterBatteryLevel:Ljava/lang/String; = "TransmitterBatterylevel"

.field public static final prefTransmitterBatteryVoltage:Ljava/lang/String; = "TransmitterBatteryVoltage"

.field public static final prefTransmitterCalibrationStartDate:Ljava/lang/String; = "CalibrationStartDate"

.field public static final prefTransmitterCalibrationsMadeInThisPhase:Ljava/lang/String; = "CalibrationsMadeInThisPhase"

.field public static final prefTransmitterConnectedTime:Ljava/lang/String; = "TransmitterConnectedTime"

.field public static final prefTransmitterFirmwareVersion:Ljava/lang/String; = "FirmwareVersion"

.field public static final prefTransmitterLastCalibration:Ljava/lang/String; = "LastCalibration"

.field public static final prefTransmitterModelNumber:Ljava/lang/String; = "ModelNumber"

.field public static final prefTransmitterName:Ljava/lang/String; = "TransmitterName"

.field public static final prefTransmitterSerialNumber:Ljava/lang/String; = "TransmitterSerialNumber"

.field public static final prefTransmitterTime:Ljava/lang/String; = "TransmitterTime"

.field public static final prefTransmitterVersionExtensionNumber:Ljava/lang/String; = "ExtensionNumber"

.field public static final prefUnlinkedSensorId:Ljava/lang/String; = "UnlinkedSensorId"

.field public static final prefUuidSalt:Ljava/lang/String; = "UuidSalt"

.field public static final prefVibrationMode:Ljava/lang/String; = "VibrationMode"

.field public static final prefalertRecordRangeFrom:Ljava/lang/String; = "AlertRecordRangeFrom"

.field public static final prefalertRecordRangeTo:Ljava/lang/String; = "AlertRecordRangeTo"

.field public static final prefbloodGlucoseRecordRangeFrom:Ljava/lang/String; = "BloodGlucoseRecordRangeFrom"

.field public static final prefbloodGlucoseRecordRangeTo:Ljava/lang/String; = "BloodGlucoseRecordRangeTo"

.field public static final prefsensorGlucoseRecordRangeFrom:Ljava/lang/String; = "SensorGlucoseRecordRangeFrom"

.field public static final prefsensorGlucoseRecordRangeTo:Ljava/lang/String; = "SensorGlucoseRecordRangeTo"

.field public static final pushNotificationDateTimeLength:I = 0x4

.field public static final pushNotificationFWBound:Ljava/lang/String; = "5.12"

.field public static screenHeight:I = 0x0

.field public static screenWidth:I = 0x0

.field public static showToast:Z = false

.field public static startDate:Ljava/util/Calendar; = null

.field public static threeDaysAgo:Ljava/util/Calendar; = null

.field public static transmitterName:Ljava/lang/String; = null

.field public static transmitterNameContainer:Ljava/lang/String; = null

.field public static unknownTime:Ljava/lang/String; = "-"

.field public static final unlinkedSensorValue:J = 0xffffffffL

.field public static webserviceFunction:Ljava/lang/String; = "http://tempuri.org/ITransferService/FetchCalibrationDataWithChecksum"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0xf

    .line 112
    sput v1, Lcom/senseonics/util/Utils;->NO_OF_EVENTS_TO_SYNC:I

    mul-int/lit8 v0, v0, 0x14

    .line 113
    sput v0, Lcom/senseonics/util/Utils;->NO_OF_ALARMS_TO_SYNC:I

    .line 251
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const-wide/32 v0, 0x5943900

    .line 261
    sput-wide v0, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    const/4 v0, -0x1

    .line 263
    sput v0, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    const/16 v0, -0x65

    .line 337
    sput v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    const-string v0, "---"

    .line 338
    sput-object v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    const-string v0, "HI"

    .line 339
    sput-object v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String;

    const-string v0, "LO"

    .line 340
    sput-object v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String;

    const/4 v0, 0x0

    .line 343
    sput-object v0, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    .line 344
    sput-object v0, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1422
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File name => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1426
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/"

    if-lez v0, :cond_0

    .line 1427
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 1429
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1430
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1431
    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1432
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1434
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1435
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1438
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "tag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static GetCRCValue([B)I
    .locals 4

    .line 1654
    array-length v0, p0

    .line 1655
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1657
    aget-byte v3, p0, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1659
    :cond_0
    invoke-static {v1}, Lcom/senseonics/util/Utils;->GetCRCValue([I)I

    move-result p0

    return p0
.end method

.method public static GetCRCValue([I)I
    .locals 5

    const/4 v0, 0x0

    const v1, 0xffff

    move v2, v0

    .line 1668
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1669
    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    xor-int/2addr v1, v3

    :goto_1
    if-lez v4, :cond_1

    const v3, 0x8000

    and-int/2addr v3, v1

    if-lez v3, :cond_0

    shl-int/lit8 v1, v1, 0x1

    const v3, 0x11021

    xor-int/2addr v1, v3

    goto :goto_2

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    xor-int/lit8 p0, v1, 0x0

    return p0
.end method

.method public static areArraysEqual([I[I)Z
    .locals 4

    .line 978
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 981
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 982
    aget v1, p0, v0

    aget v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static calculateEndDateFinished()Ljava/util/Calendar;
    .locals 5

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method private static checkIfDosingIntroCompleted(Landroid/content/Context;)Z
    .locals 2

    .line 1524
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isDosingIntroCompleted"

    .line 1525
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkIfEulaAccepted(Landroid/content/Context;)Z
    .locals 2

    .line 1502
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isEulaAccepted"

    .line 1503
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static checkIfFirstRun(Landroid/content/Context;)Z
    .locals 2

    .line 1478
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "firstRun"

    .line 1479
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIfFirstRunForCompatibility(Landroid/content/Context;)Z
    .locals 2

    .line 1490
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "firstRunForCompatibility"

    .line 1491
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkIfInitialLaunch(Landroid/content/Context;)Z
    .locals 2

    .line 1533
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1534
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabledFrom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1535
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1539
    :cond_1
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/senseonics/util/Utils;->isDosingIntroShowing:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static convertHourFromGMTtoLocal(II)[I
    .locals 4

    .line 1583
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 1584
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1585
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const-string p1, "GMT"

    .line 1586
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1587
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1590
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1591
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1592
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1593
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public static convertHourFromLocaltoGMT(II)[I
    .locals 4

    .line 1600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 1601
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1602
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1603
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1604
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string p1, "GMT"

    .line 1607
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1608
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1609
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 1610
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method private static convertIntegerListToArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1699
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 1700
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1702
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1457
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1462
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1469
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1471
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1466
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1469
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1474
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1469
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 1471
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1473
    :goto_3
    throw v0
.end method

.method public static copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 590
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 592
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1445
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 1446
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static countOccurrancesInString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1389
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static createCalAlertNote(II)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1745
    :cond_0
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v0

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_1

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr p0, p1

    .line 1746
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static expandIntArrayToSize([III)[I
    .locals 4

    .line 1683
    array-length v0, p0

    if-lt v0, p1, :cond_0

    return-object p0

    .line 1687
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 1690
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1692
    :cond_1
    :goto_1
    array-length p1, p0

    if-ge v1, p1, :cond_2

    .line 1693
    aget p1, p0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1695
    :cond_2
    invoke-static {v0}, Lcom/senseonics/util/Utils;->convertIntegerListToArray(Ljava/util/List;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getAcceptedEULAVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1511
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "acceptedEULAVersion"

    const-string v1, ""

    .line 1512
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBatteryPercentForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I
    .locals 1

    .line 930
    sget-object v0, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x55

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x4b

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    const/4 v0, 0x5

    :goto_0
    :pswitch_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static getBatteryPercentStringForLevel(Lcom/senseonics/model/BATTERY_LEVEL;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f110220

    .line 879
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 881
    sget-object v2, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "100%"

    goto :goto_0

    :pswitch_1
    const-string v1, "95%"

    goto :goto_0

    :pswitch_2
    const-string v1, "85%"

    goto :goto_0

    :pswitch_3
    const-string v1, "75%"

    goto :goto_0

    :pswitch_4
    const-string v1, "65%"

    goto :goto_0

    :pswitch_5
    const-string v1, "55%"

    goto :goto_0

    :pswitch_6
    const-string v1, "45%"

    goto :goto_0

    :pswitch_7
    const-string v1, "35%"

    goto :goto_0

    :pswitch_8
    const-string v1, "25%"

    goto :goto_0

    :pswitch_9
    const-string v1, "10%"

    goto :goto_0

    :pswitch_a
    const-string v1, "5%"

    goto :goto_0

    :pswitch_b
    const-string v1, "0%"

    goto :goto_0

    .line 883
    :pswitch_c
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static getCalModeFromCalAlertNote(Ljava/lang/String;)I
    .locals 0

    .line 1757
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1758
    div-int/lit16 p0, p0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public static getCalPhaseFromCalAlertNote(Ljava/lang/String;)I
    .locals 0

    .line 1769
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1770
    rem-int/lit16 p0, p0, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public static getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 579
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 580
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/4 v1, 0x0

    .line 581
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 582
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 583
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 584
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getEndDate()Ljava/util/Calendar;
    .locals 3

    .line 557
    sget-object v0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    return-object v0

    .line 560
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 561
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 562
    sget-object v0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public static getEndDateFinished()Ljava/util/Calendar;
    .locals 1

    .line 570
    sget-object v0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    return-object v0

    .line 573
    :cond_0
    invoke-static {}, Lcom/senseonics/util/Utils;->calculateEndDateFinished()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getEventImageForCalibration(Lcom/senseonics/events/EventPoint;)I
    .locals 4

    .line 726
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibrationIconColorChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    instance-of v0, p0, Lcom/senseonics/events/CalibrationEventPoint;

    if-eqz v0, :cond_1

    .line 728
    check-cast p0, Lcom/senseonics/events/CalibrationEventPoint;

    .line 729
    invoke-virtual {p0}, Lcom/senseonics/events/CalibrationEventPoint;->getRecordNumber()J

    move-result-wide v0

    .line 730
    invoke-virtual {p0}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 733
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v0

    if-ne p0, v0, :cond_1

    const p0, 0x7f0800f5

    goto :goto_0

    :cond_0
    const p0, 0x7f0800f6

    goto :goto_0

    :cond_1
    const p0, 0x7f0800f4

    :goto_0
    return p0
.end method

.method public static getEventImageResId(Lcom/senseonics/events/EventPoint;)I
    .locals 3

    .line 683
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 684
    sget-object v1, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x7f080060

    const v2, 0x7f0800f9

    packed-switch v0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 717
    :pswitch_0
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/senseonics/util/TransmitterMessageCode;->getIcon()I

    move-result p0

    return p0

    :pswitch_1
    const p0, 0x7f080061

    return p0

    :pswitch_2
    const p0, 0x7f08005d

    return p0

    :pswitch_3
    const p0, 0x7f0800fc

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    :pswitch_6
    const p0, 0x7f0800f7

    return p0

    :pswitch_7
    const p0, 0x7f0800fd

    return p0

    :pswitch_8
    const p0, 0x7f0800ff

    return p0

    :pswitch_9
    const p0, 0x7f080101

    return p0

    :pswitch_a
    return v2

    .line 686
    :pswitch_b
    invoke-static {p0}, Lcom/senseonics/util/Utils;->getEventImageForCalibration(Lcom/senseonics/events/EventPoint;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 1

    .line 610
    sget-object v0, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f110021

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const p1, 0x7f110264

    .line 639
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f110259

    .line 636
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f110074

    .line 633
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f110079

    .line 631
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f11006d

    .line 629
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :pswitch_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 624
    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f110119

    .line 622
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f11013c

    .line 620
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f11016d

    .line 618
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f1101c8

    .line 616
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const p1, 0x7f110130

    .line 614
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const p1, 0x7f11006f

    .line 612
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEventNameNotTranslated(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;
    .locals 0

    .line 647
    sget-object p0, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const-string p0, "Rate Alerts"

    return-object p0

    :pswitch_1
    const-string p0, "Predictive Alerts"

    return-object p0

    :pswitch_2
    const-string p0, "Calibration Expired"

    return-object p0

    :pswitch_3
    const-string p0, "Calibration Past Due"

    return-object p0

    :pswitch_4
    const-string p0, "Calibrate Now"

    return-object p0

    :pswitch_5
    const-string p0, "Alarm"

    return-object p0

    :pswitch_6
    const-string p0, "Alert"

    return-object p0

    :pswitch_7
    const-string p0, "Exercise"

    return-object p0

    :pswitch_8
    const-string p0, "Health"

    return-object p0

    :pswitch_9
    const-string p0, "Insulin"

    return-object p0

    :pswitch_a
    const-string p0, "Meal"

    return-object p0

    :pswitch_b
    const-string p0, "Glucose"

    return-object p0

    :pswitch_c
    const-string p0, "Calibration"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGMTCalendarFrom([I[I)Ljava/util/Calendar;
    .locals 8

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 455
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 456
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 457
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 459
    aget v3, p0, v2

    const/4 v4, 0x1

    .line 460
    aget v5, p0, v4

    const/4 v6, 0x2

    .line 461
    aget p0, p0, v6

    .line 462
    aget v2, p1, v2

    .line 463
    aget v7, p1, v4

    .line 464
    aget p1, p1, v6

    .line 466
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v5, v4

    .line 467
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 468
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 469
    invoke-virtual {v0, p0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 470
    invoke-virtual {v0, p0, v7}, Ljava/util/Calendar;->set(II)V

    .line 471
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getGlucoseLevelFloatValue(I)F
    .locals 2

    .line 792
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    int-to-float p0, p0

    return p0

    :cond_0
    int-to-float p0, p0

    .line 795
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    return p0
.end method

.method public static getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 802
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p0

    .line 804
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object p1

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValue(F)Ljava/lang/String;
    .locals 5

    .line 771
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "%.1f"

    if-ne v0, v1, :cond_0

    .line 772
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 774
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 775
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValue(I)Ljava/lang/String;
    .locals 3

    .line 760
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 761
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-float p0, p0

    .line 763
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 764
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.1f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseLevelValueNoDecs(F)Ljava/lang/String;
    .locals 4

    .line 781
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 782
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.0f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 784
    :cond_0
    invoke-static {p0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p0

    .line 785
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.1f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 746
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;
    .locals 1

    .line 752
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_0

    const p1, 0x7f1101d0

    .line 753
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1101d7

    .line 755
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIamUnlockTime(Landroid/content/Context;)J
    .locals 2

    const-string v0, "IamUnlockTime"

    .line 1574
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getImageForBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I
    .locals 1

    .line 833
    sget-object v0, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$model$BATTERY_LEVEL:[I

    invoke-virtual {p0}, Lcom/senseonics/model/BATTERY_LEVEL;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    goto :goto_0

    :pswitch_0
    const p0, 0x7f0800e0

    goto :goto_0

    :pswitch_1
    const p0, 0x7f0800e9

    goto :goto_0

    :pswitch_2
    const p0, 0x7f0800e8

    goto :goto_0

    :pswitch_3
    const p0, 0x7f0800e7

    goto :goto_0

    :pswitch_4
    const p0, 0x7f0800e6

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0800e5

    goto :goto_0

    :pswitch_6
    const p0, 0x7f0800e3

    goto :goto_0

    :pswitch_7
    const p0, 0x7f0800e2

    goto :goto_0

    :pswitch_8
    const p0, 0x7f0800e1

    goto :goto_0

    :pswitch_9
    const p0, 0x7f0800df

    goto :goto_0

    :pswitch_a
    const p0, 0x7f0800e4

    goto :goto_0

    :pswitch_b
    const p0, 0x7f0800ea

    goto :goto_0

    :pswitch_c
    const p0, 0x7f0800de

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static getImageForSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)I
    .locals 1

    .line 811
    sget-object v0, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    invoke-virtual {p0}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f0801a1

    return p0

    :pswitch_1
    const p0, 0x7f0801a3

    return p0

    :pswitch_2
    const p0, 0x7f0801a4

    return p0

    :pswitch_3
    const p0, 0x7f0801a0

    return p0

    :pswitch_4
    const p0, 0x7f08019f

    return p0

    :pswitch_5
    const p0, 0x7f08019e

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getItemPosition(Ljava/util/ArrayList;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1071
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1072
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-static {v1}, Lcom/senseonics/util/Utils;->isFloat(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getItemPosition(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1053
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1054
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-static {v1}, Lcom/senseonics/util/Utils;->isFloat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1063
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1064
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getLocalTimeInMillisAdjustedToGMT()J
    .locals 5

    .line 440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public static getSensorGlucoseAlertRecordTypeID(Lcom/senseonics/util/Utils$EVENT_TYPE;III)I
    .locals 2

    .line 1305
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_6

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 1307
    :cond_2
    :goto_0
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    aget-object p2, v0, p2

    .line 1309
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_3

    .line 1310
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1313
    :cond_3
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_4

    .line 1314
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1317
    :cond_4
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_5

    .line 1318
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1321
    :cond_5
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne p2, v0, :cond_6

    .line 1322
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1329
    :cond_6
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_7

    .line 1330
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1333
    :cond_7
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_8

    .line 1334
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1337
    :cond_8
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_9

    .line 1338
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1341
    :cond_9
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_a

    .line 1342
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1345
    :cond_a
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_b

    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p2

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, v0, :cond_b

    .line 1346
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1349
    :cond_b
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_c

    .line 1350
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1353
    :cond_c
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_d

    .line 1354
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1357
    :cond_d
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_e

    .line 1358
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1361
    :cond_e
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_11

    if-eq p3, v1, :cond_f

    return v1

    .line 1366
    :cond_f
    invoke-static {p1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 1368
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_10

    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_10

    .line 1370
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    .line 1373
    :cond_10
    sget-object p2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p0, p2, :cond_11

    sget-object p0, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p0, :cond_11

    .line 1375
    sget-object p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {p0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getTypeCode()I

    move-result p0

    return p0

    :cond_11
    return v1
.end method

.method public static getSettings(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1101
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    .line 1103
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1127
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1129
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSettingsFloatValueForKey(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2

    .line 1141
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1142
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getSettingsForDefault(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 1095
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1097
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 1160
    :try_start_0
    sget-object v2, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1162
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v0
.end method

.method public static getSettingsForString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1107
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 1109
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsForStringWithDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1113
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1115
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsIntValueForKey(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 1146
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1147
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStartDate()Ljava/util/Calendar;
    .locals 7

    .line 536
    sget-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    return-object v0

    .line 539
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget v3, Lcom/senseonics/util/Utils;->kNumberOfDaysMax:I

    int-to-long v3, v3

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get default start date:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMS"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getStartDateNew()Ljava/util/Calendar;
    .locals 1

    .line 549
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDate()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getThreeByteRecordNumberResponseComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation

    .line 1708
    new-instance v0, Lcom/senseonics/util/Utils$3;

    invoke-direct {v0}, Lcom/senseonics/util/Utils$3;-><init>()V

    return-object v0
.end method

.method public static getTimeZoneOffset(Ljava/util/Calendar;)J
    .locals 4

    .line 433
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    .line 435
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int p0, v0

    int-to-long v0, p0

    .line 436
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation

    .line 1721
    new-instance v0, Lcom/senseonics/util/Utils$4;

    invoke-direct {v0}, Lcom/senseonics/util/Utils$4;-><init>()V

    return-object v0
.end method

.method public static hasNewEULA(Landroid/content/Context;)Z
    .locals 2

    .line 1516
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/senseonics/account/GermanyManager;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->getAcceptedEULAVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static haveNetworkConnection(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 599
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 600
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static initDates(J)V
    .locals 6

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current milli:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEarliest"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "earliest GMT timestamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 493
    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    .line 497
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    sget v1, Lcom/senseonics/util/Utils;->kNumberOfDaysToFetch:I

    neg-int v1, v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 501
    invoke-static {v0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 504
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 505
    sget v4, Lcom/senseonics/util/Utils;->kNumberOfDaysMax:I

    neg-int v4, v4

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 506
    invoke-static {v3}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 507
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, p0, v0

    if-lez v5, :cond_0

    .line 510
    sget-object p0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    cmp-long v5, p0, v3

    if-gez v5, :cond_1

    .line 512
    sget-object p0, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 514
    :cond_1
    sget-object v3, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-virtual {v3, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 518
    :goto_0
    sget-object p0, Lcom/senseonics/util/Utils;->threeDaysAgo:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 521
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    sput-object p0, Lcom/senseonics/util/Utils;->endDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 522
    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 524
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    sput-object p0, Lcom/senseonics/util/Utils;->endDateFinished:Ljava/util/Calendar;

    .line 525
    sget-object p1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static isAndroid10OrAbove()Z
    .locals 2

    .line 1822
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid11OrAbove()Z
    .locals 2

    .line 1826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid12BluetoothPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    .line 1844
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid12OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isBluetoothPermissionGranted(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAndroid12OrAbove()Z
    .locals 2

    .line 1830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid6OrAbove()Z
    .locals 2

    .line 1802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid7OrAbove()Z
    .locals 2

    .line 1806
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid8OrAbove()Z
    .locals 2

    .line 1810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid9OrAbove()Z
    .locals 2

    .line 1814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid9OrBelow()Z
    .locals 2

    .line 1818
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBluetoothPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 1839
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 1840
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFloat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isIamInvalidCredential(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "IamInvalidCredential"

    .line 1566
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLoggedIn(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AccountIsLoggedIn"

    .line 1550
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSystemTimeBehind(Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 1785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1786
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1787
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidSensorID(J)Z
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadGlucoseUnit(Landroid/content/Context;)V
    .locals 6

    .line 1620
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "currentGlucoseUnit"

    .line 1624
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1625
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->values()[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    move-result-object v3

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1626
    invoke-virtual {v5}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v3, v0

    .line 1627
    sget-object v3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-eq v0, v3, :cond_0

    move v1, v4

    goto :goto_0

    .line 1631
    :cond_0
    sput-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    :goto_0
    move v4, v1

    :cond_1
    if-eqz v4, :cond_4

    .line 1639
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_US"

    .line 1640
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "de_DE"

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "it_IT"

    .line 1642
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1646
    :cond_2
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1647
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 1643
    :cond_3
    :goto_1
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 1644
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1241
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static makeToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1235
    sget-boolean v0, Lcom/senseonics/util/Utils;->showToast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1236
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static printLongLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1293
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    if-gt v0, v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x3e8

    .line 1296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1297
    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ")"

    const-string v1, "("

    const-string v2, "(%@)"

    if-eqz p1, :cond_1

    const-string v3, ""

    .line 1220
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1221
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x7f110220

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1229
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "%d"

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 477
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xe

    const/4 v1, 0x0

    .line 478
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 479
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 480
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 481
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static saveAcceptedEULAVersion(Landroid/content/Context;)V
    .locals 2

    .line 1507
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acceptedEULAVersion"

    invoke-static {p0, v1, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveFirstRunForCompatibility(Landroid/content/Context;)V
    .locals 2

    const-string v0, "firstRunForCompatibility"

    const/4 v1, 0x0

    .line 1486
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveIsDosingIntroCompleted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isDosingIntroCompleted"

    .line 1520
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveIsEulaAccepted(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "isEulaAccepted"

    .line 1498
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 2

    .line 1133
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1135
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1136
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1087
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1089
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1090
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 1151
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1153
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1154
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1169
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1171
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1172
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1173
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1119
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1121
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1122
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIamInvalidCredential(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "IamInvalidCredential"

    .line 1570
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setIamUnlockTime(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "IamUnlockTime"

    .line 1578
    invoke-static {p0, v0, p1, p2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLoggedIn(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "AccountIsLoggedIn"

    .line 1554
    invoke-static {p0, v0, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1558
    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->setIamInvalidCredential(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static setPortraitScreenWidthHeight(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1406
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1407
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1408
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1409
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1412
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    if-eqz v1, :cond_1

    sget v1, Lcom/senseonics/util/Utils;->screenHeight:I

    if-eqz v1, :cond_1

    if-le p0, v0, :cond_1

    return-void

    .line 1416
    :cond_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/senseonics/util/Utils;->screenWidth:I

    .line 1417
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/senseonics/util/Utils;->screenHeight:I

    return-void
.end method

.method public static shouldShowDosingIntro(Landroid/content/Context;)Z
    .locals 1

    .line 1529
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfDosingIntroCompleted(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showCalibrationConfirmationPage(Landroid/content/Context;ILandroid/text/Spanned;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    .line 1180
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1181
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c005f

    const/4 v3, 0x0

    .line 1182
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903cf

    .line 1185
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1186
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0903af

    .line 1189
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1190
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900c9

    .line 1193
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1194
    new-instance p2, Lcom/senseonics/util/Utils$1;

    invoke-direct {p2, v0}, Lcom/senseonics/util/Utils$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ba

    .line 1202
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1102f8

    .line 1203
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    new-instance p0, Lcom/senseonics/util/Utils$2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/util/Utils$2;-><init>(Landroid/view/View$OnClickListener;Landroid/app/Dialog;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1214
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public static showEventDetails(Landroid/app/Fragment;Lcom/senseonics/events/EventPoint;)V
    .locals 4

    .line 991
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 994
    sget-object v1, Lcom/senseonics/util/Utils$5;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1030
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/NotificationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1025
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/NotificationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1017
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/AlertEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1002
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/ExerciseEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1011
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/HealthEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1008
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/InsulinEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 1005
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/MealEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 999
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/GlucoseEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 996
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/senseonics/events/CalibrationEventActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    if-eqz v0, :cond_0

    .line 1037
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "edit"

    .line 1038
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "eventPoint"

    .line 1039
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1042
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v2, 0x5

    .line 1043
    sget v3, Lcom/senseonics/util/Utils;->ADD_EDIT_EVENT_MAX_DAYS_AGO:I

    neg-int v3, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const-string v2, "startdate"

    .line 1044
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1046
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const-string v2, "enddate"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1047
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1048
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static turnOffClinicalModeIfNeeded(Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 10

    if-eqz p2, :cond_1

    .line 1246
    sget-object p2, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p2, "ClinicalModeStartTime"

    .line 1249
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ClinicalModeDuration"

    .line 1250
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ClinicalMode"

    .line 1251
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1252
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-wide/16 v2, -0x1

    .line 1258
    invoke-interface {p0, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 1261
    invoke-static {p2}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1265
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    add-long v6, v4, v1

    .line 1270
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "last saved start: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ; last saved duration: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " | duration expired at: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ; NOW: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Clinical"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, v6, v8

    if-gtz p0, :cond_0

    .line 1279
    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteClinicalModeRequest(Z)V

    const-string p0, "Should TURN OFF"

    .line 1280
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Still ON: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " left"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

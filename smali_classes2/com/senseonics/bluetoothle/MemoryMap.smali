.class public Lcom/senseonics/bluetoothle/MemoryMap;
.super Ljava/lang/Object;
.source "MemoryMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;
    }
.end annotation


# static fields
.field public static final ATCCALParameterStartAddress:I = 0x1200

.field public static final AccelerometerTempAddress:[I

.field public static final AccelerometerValuesAddress:[I

.field public static final AtccalCrcAddress:[I

.field public static final AtccalCrcRawAddress:[I

.field public static final AtccalCrcRawAddressBytes:I = 0x2

.field public static final AtccalCrcRawAddress_Algo7:[I

.field public static final AtccalSramResultAddress:[I

.field public static final EEPROMParameterStartAddress:I = 0xa24

.field public static final IsOneCalPhaseAddress:[I

.field public static final MmaFeaturesAddress:[I

.field public static final RawDataValue1Address:[I

.field public static final RawDataValue2Address:[I

.field public static final RawDataValue3Address:[I

.field public static final RawDataValue4Address:[I

.field public static final RawDataValue5Address:[I

.field public static final RawDataValue6Address:[I

.field public static final RawDataValue7Address:[I

.field public static final RawDataValue8Address:[I

.field public static final algorithmParameterFormatVersion:[I

.field public static final appVersionAddress:[I

.field public static final batteryPercentageAddress:[I

.field public static final batteryVoltageAddress:[I

.field public static final calibrationsMadeInThisPhaseAddress:[I

.field public static final clinicalMode:[I

.field public static final clinicalModeDuration:[I

.field public static final communicationProtocolVersionAddress:[I

.field public static final currentCalibrationPhaseAddress:[I

.field public static final dayStartTimeAddress:[I

.field public static final delayBLEDisconnectAlarmAddress:[I

.field public static final doNotDisturbMode:[I

.field public static final eep24MSPAddress:[I

.field public static final eveningCalibrationTime:[I

.field public static final highGlucoseAlarmEnabled:[I

.field public static final highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

.field public static final highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

.field public static final highGlucoseAlarmThreshold:[I

.field public static final highGlucoseTarget:[I

.field public static final hysteresisPercentageAddress:[I

.field public static final hysteresisPredictivePercentageAddress:[I

.field public static final hysteresisPredictiveValueAddress:[I

.field public static final hysteresisValueAddress:[I

.field public static final linkedSensorIDAddress:[I

.field public static final lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

.field public static final lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

.field public static final lowGlucoseAlarmThreshold:[I

.field public static final lowGlucoseTarget:[I

.field public static final maxCalibrationThreshold:[I

.field public static final mepSavedDriftMetricAddress:[I

.field public static final mepSavedLowRefMetricAddress:[I

.field public static final mepSavedRefChannelMetricAddress:[I

.field public static final mepSavedSpikeAddress:[I

.field public static final mepSavedValueAddress:[I

.field public static final minCalibrationThreshold:[I

.field public static final minutesAfterNextCalibrationTime:[I

.field public static final minutesBeforeNextCalibrationTime:[I

.field public static final minutesRemainingUntilCalibrationAllowed:[I

.field public static final morningCalibrationTime:[I

.field public static final mostRecentCalibrationDateAddress:[I

.field public static final mostRecentCalibrationTimeAddress:[I

.field public static final mostRecentGlucoseDateAddress:[I

.field public static final mostRecentGlucoseTimeAddress:[I

.field public static final mostRecentGlucoseValueAddress:[I

.field public static final nextCalibrationDate:[I

.field public static final nextCalibrationTime:[I

.field public static final nightStartTimeAddress:[I

.field public static final predictiveAlert:[I

.field public static final predictiveFallingTime:[I

.field public static final predictiveHighAlert:[I

.field public static final predictiveLowAlert:[I

.field public static final predictiveRisingTime:[I

.field public static final rateAlert:[I

.field public static final rateAlertFallingThreshold:[I

.field public static final rateAlertRisingThreshold:[I

.field public static final rateFallingAlert:[I

.field public static final rateRisingAlert:[I

.field public static final readyForCalibrationAddress:[I

.field public static final sensorFieldCurrentAddress:[I

.field public static final sensorFieldCurrentRawAddress:[I

.field public static final sensorGlucoseSamplingInterval:[I

.field public static final sensorInsertionDateAddress:[I

.field public static final sensorInsertionTimeAddress:[I

.field public static final startDateOfCalibrationPhaseAddress:[I

.field public static final startTimeOfCalibrationPhaseAddress:[I

.field public static final transmitterModelNumberAddress:[I

.field public static final transmitterNameFirst4Byte:[I

.field public static final transmitterNameLast4Byte:[I

.field public static final transmitterSoftwareVersionAddress:[I

.field public static final transmitterSoftwareVersionExtAddress:[I

.field public static final unlinkedSensorIDAddress:[I

.field public static final vibrateMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 25
    fill-array-data v1, :array_0

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentAddress:[I

    new-array v1, v0, [I

    .line 26
    fill-array-data v1, :array_1

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentRawAddress:[I

    new-array v1, v0, [I

    .line 27
    fill-array-data v1, :array_2

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->batteryVoltageAddress:[I

    new-array v1, v0, [I

    .line 28
    fill-array-data v1, :array_3

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->batteryPercentageAddress:[I

    new-array v1, v0, [I

    .line 29
    fill-array-data v1, :array_4

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->readyForCalibrationAddress:[I

    new-array v1, v0, [I

    .line 30
    fill-array-data v1, :array_5

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->calibrationsMadeInThisPhaseAddress:[I

    new-array v1, v0, [I

    .line 31
    fill-array-data v1, :array_6

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationDateAddress:[I

    new-array v1, v0, [I

    .line 32
    fill-array-data v1, :array_7

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationTimeAddress:[I

    new-array v1, v0, [I

    .line 33
    fill-array-data v1, :array_8

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterModelNumberAddress:[I

    new-array v1, v0, [I

    .line 34
    fill-array-data v1, :array_9

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionAddress:[I

    new-array v1, v0, [I

    .line 35
    fill-array-data v1, :array_a

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionExtAddress:[I

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_b

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedValueAddress:[I

    new-array v1, v0, [I

    .line 39
    fill-array-data v1, :array_c

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedRefChannelMetricAddress:[I

    new-array v1, v0, [I

    .line 40
    fill-array-data v1, :array_d

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedDriftMetricAddress:[I

    new-array v1, v0, [I

    .line 41
    fill-array-data v1, :array_e

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedLowRefMetricAddress:[I

    new-array v1, v0, [I

    .line 42
    fill-array-data v1, :array_f

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedSpikeAddress:[I

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_10

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startDateOfCalibrationPhaseAddress:[I

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_11

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startTimeOfCalibrationPhaseAddress:[I

    new-array v1, v0, [I

    .line 46
    fill-array-data v1, :array_12

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->currentCalibrationPhaseAddress:[I

    new-array v1, v0, [I

    .line 47
    fill-array-data v1, :array_13

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_14

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->unlinkedSensorIDAddress:[I

    new-array v1, v0, [I

    .line 49
    fill-array-data v1, :array_15

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionDateAddress:[I

    new-array v1, v0, [I

    .line 50
    fill-array-data v1, :array_16

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionTimeAddress:[I

    new-array v1, v0, [I

    .line 51
    fill-array-data v1, :array_17

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorGlucoseSamplingInterval:[I

    new-array v1, v0, [I

    .line 54
    fill-array-data v1, :array_18

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPercentageAddress:[I

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_19

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisValueAddress:[I

    new-array v1, v0, [I

    .line 58
    fill-array-data v1, :array_1a

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictivePercentageAddress:[I

    new-array v1, v0, [I

    .line 59
    fill-array-data v1, :array_1b

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictiveValueAddress:[I

    new-array v1, v0, [I

    .line 62
    fill-array-data v1, :array_1c

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minCalibrationThreshold:[I

    new-array v1, v0, [I

    .line 63
    fill-array-data v1, :array_1d

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->maxCalibrationThreshold:[I

    new-array v1, v0, [I

    .line 66
    fill-array-data v1, :array_1e

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eep24MSPAddress:[I

    new-array v1, v0, [I

    .line 68
    fill-array-data v1, :array_1f

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseTarget:[I

    new-array v1, v0, [I

    .line 69
    fill-array-data v1, :array_20

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseTarget:[I

    new-array v1, v0, [I

    .line 71
    fill-array-data v1, :array_21

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmThreshold:[I

    new-array v1, v0, [I

    .line 72
    fill-array-data v1, :array_22

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    new-array v1, v0, [I

    .line 74
    fill-array-data v1, :array_23

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveAlert:[I

    new-array v1, v0, [I

    .line 75
    fill-array-data v1, :array_24

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveFallingTime:[I

    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_25

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveRisingTime:[I

    new-array v1, v0, [I

    .line 78
    fill-array-data v1, :array_26

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlert:[I

    new-array v1, v0, [I

    .line 79
    fill-array-data v1, :array_27

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    new-array v1, v0, [I

    .line 80
    fill-array-data v1, :array_28

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertRisingThreshold:[I

    new-array v1, v0, [I

    .line 83
    fill-array-data v1, :array_29

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    new-array v1, v0, [I

    .line 84
    fill-array-data v1, :array_2a

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveLowAlert:[I

    new-array v1, v0, [I

    .line 85
    fill-array-data v1, :array_2b

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveHighAlert:[I

    new-array v1, v0, [I

    .line 86
    fill-array-data v1, :array_2c

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    new-array v1, v0, [I

    .line 87
    fill-array-data v1, :array_2d

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateRisingAlert:[I

    new-array v1, v0, [I

    .line 90
    fill-array-data v1, :array_2e

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    new-array v1, v0, [I

    .line 91
    fill-array-data v1, :array_2f

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    new-array v1, v0, [I

    .line 92
    fill-array-data v1, :array_30

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    new-array v1, v0, [I

    .line 93
    fill-array-data v1, :array_31

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    new-array v1, v0, [I

    .line 94
    fill-array-data v1, :array_32

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    new-array v1, v0, [I

    .line 95
    fill-array-data v1, :array_33

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nightStartTimeAddress:[I

    new-array v1, v0, [I

    .line 97
    fill-array-data v1, :array_34

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationDate:[I

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_35

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationTime:[I

    new-array v1, v0, [I

    .line 99
    fill-array-data v1, :array_36

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesBeforeNextCalibrationTime:[I

    new-array v1, v0, [I

    .line 100
    fill-array-data v1, :array_37

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesAfterNextCalibrationTime:[I

    new-array v1, v0, [I

    .line 101
    fill-array-data v1, :array_38

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesRemainingUntilCalibrationAllowed:[I

    new-array v1, v0, [I

    .line 103
    fill-array-data v1, :array_39

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->algorithmParameterFormatVersion:[I

    new-array v1, v0, [I

    .line 104
    fill-array-data v1, :array_3a

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->communicationProtocolVersionAddress:[I

    new-array v1, v0, [I

    .line 106
    fill-array-data v1, :array_3b

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    new-array v1, v0, [I

    .line 107
    fill-array-data v1, :array_3c

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eveningCalibrationTime:[I

    new-array v1, v0, [I

    .line 109
    fill-array-data v1, :array_3d

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameFirst4Byte:[I

    new-array v1, v0, [I

    .line 110
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameLast4Byte:[I

    new-array v1, v0, [I

    .line 112
    fill-array-data v1, :array_3f

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    new-array v1, v0, [I

    .line 113
    fill-array-data v1, :array_40

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalModeDuration:[I

    new-array v1, v0, [I

    .line 115
    fill-array-data v1, :array_41

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->vibrateMode:[I

    new-array v1, v0, [I

    .line 116
    fill-array-data v1, :array_42

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->doNotDisturbMode:[I

    new-array v1, v0, [I

    .line 118
    fill-array-data v1, :array_43

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->appVersionAddress:[I

    new-array v1, v0, [I

    .line 124
    fill-array-data v1, :array_44

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue1Address:[I

    new-array v1, v0, [I

    .line 125
    fill-array-data v1, :array_45

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue2Address:[I

    new-array v1, v0, [I

    .line 126
    fill-array-data v1, :array_46

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue3Address:[I

    new-array v1, v0, [I

    .line 127
    fill-array-data v1, :array_47

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue4Address:[I

    new-array v1, v0, [I

    .line 128
    fill-array-data v1, :array_48

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue5Address:[I

    new-array v1, v0, [I

    .line 129
    fill-array-data v1, :array_49

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue6Address:[I

    new-array v1, v0, [I

    .line 130
    fill-array-data v1, :array_4a

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue7Address:[I

    new-array v1, v0, [I

    .line 131
    fill-array-data v1, :array_4b

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue8Address:[I

    new-array v1, v0, [I

    .line 133
    fill-array-data v1, :array_4c

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AccelerometerValuesAddress:[I

    new-array v1, v0, [I

    .line 134
    fill-array-data v1, :array_4d

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AccelerometerTempAddress:[I

    new-array v1, v0, [I

    .line 136
    fill-array-data v1, :array_4e

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    new-array v1, v0, [I

    .line 138
    fill-array-data v1, :array_4f

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseDateAddress:[I

    new-array v1, v0, [I

    .line 139
    fill-array-data v1, :array_50

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseTimeAddress:[I

    new-array v1, v0, [I

    .line 140
    fill-array-data v1, :array_51

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseValueAddress:[I

    new-array v1, v0, [I

    .line 142
    fill-array-data v1, :array_52

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcAddress:[I

    new-array v1, v0, [I

    .line 143
    fill-array-data v1, :array_53

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcRawAddress:[I

    new-array v1, v0, [I

    .line 144
    fill-array-data v1, :array_54

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcRawAddress_Algo7:[I

    new-array v1, v0, [I

    .line 146
    fill-array-data v1, :array_55

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalSramResultAddress:[I

    new-array v1, v0, [I

    .line 148
    fill-array-data v1, :array_56

    sput-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->IsOneCalPhaseAddress:[I

    new-array v0, v0, [I

    .line 150
    fill-array-data v0, :array_57

    sput-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->MmaFeaturesAddress:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x9d
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x4
        0x6
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x4
        0xa
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x8
        0xa1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x8
        0xa3
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x8
        0xa5
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0xa
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0xa2
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0xb3
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0xb7
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0xbb
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0xbf
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0xc3
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x8
        0x9d
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x8
        0x9f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x8
        0x9c
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x8
        0x8c
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x4
        0x16
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x8
        0x90
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x8
        0x92
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
        0x93
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x94
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x95
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x0
        0x96
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x9
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x9
        0x14
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0xa
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x11
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x11
        0x4
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x11
        0xa
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x11
        0xc
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x10
        0x20
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x10
        0x21
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x10
        0x22
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x10
        0x10
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x10
        0x11
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x10
        0x12
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x10
        0x29
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x10
        0x27
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x10
        0x28
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x10
        0x25
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x10
        0x26
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x10
        0x32
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x10
        0x33
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x11
        0xe
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x11
        0xf
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x11
        0x10
    .end array-data

    :array_33
    .array-data 4
        0x0
        0x11
        0x12
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x4
        0x70
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x4
        0x72
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x4
        0x74
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x4
        0x76
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x4
        0x78
    .end array-data

    :array_39
    .array-data 4
        0x0
        0x4
        0x80
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0x0
        0xe
    .end array-data

    :array_3b
    .array-data 4
        0x0
        0x8
        0x98
    .end array-data

    :array_3c
    .array-data 4
        0x0
        0x8
        0x9a
    .end array-data

    :array_3d
    .array-data 4
        0x0
        0x8
        0xa7
    .end array-data

    :array_3e
    .array-data 4
        0x0
        0x8
        0xab
    .end array-data

    :array_3f
    .array-data 4
        0x0
        0xb
        0x49
    .end array-data

    :array_40
    .array-data 4
        0x0
        0x0
        0x98
    .end array-data

    :array_41
    .array-data 4
        0x0
        0x9
        0x2
    .end array-data

    :array_42
    .array-data 4
        0x0
        0xb
        0x4a
    .end array-data

    :array_43
    .array-data 4
        0x0
        0xb
        0x4b
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x4
        0x1a
    .end array-data

    :array_45
    .array-data 4
        0x0
        0x4
        0x1c
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x4
        0x1e
    .end array-data

    :array_47
    .array-data 4
        0x0
        0x4
        0x20
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x4
        0x22
    .end array-data

    :array_49
    .array-data 4
        0x0
        0x4
        0x24
    .end array-data

    :array_4a
    .array-data 4
        0x0
        0x4
        0x26
    .end array-data

    :array_4b
    .array-data 4
        0x0
        0x4
        0x28
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0x4
        0x2a
    .end array-data

    :array_4d
    .array-data 4
        0x0
        0x4
        0x30
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x8
        0xb2
    .end array-data

    :array_4f
    .array-data 4
        0x0
        0x4
        0x10
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x4
        0x12
    .end array-data

    :array_51
    .array-data 4
        0x0
        0x4
        0x14
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x4
        0x8c
    .end array-data

    :array_53
    .array-data 4
        0x0
        0x1f
        0xfe
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x25
        0xfe
    .end array-data

    :array_55
    .array-data 4
        0x0
        0x4
        0x8e
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x4
        0x96
    .end array-data

    :array_57
    .array-data 4
        0x0
        0x1
        0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

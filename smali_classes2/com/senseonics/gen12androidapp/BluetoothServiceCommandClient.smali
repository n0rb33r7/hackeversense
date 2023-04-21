.class public Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
.super Ljava/lang/Object;
.source "BluetoothServiceCommandClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    return-void
.end method

.method private contextStartService(Landroid/content/Intent;)V
    .locals 1

    .line 537
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid8OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;
    .locals 3

    .line 531
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private postBloodGlucoseRecordRange()V
    .locals 1

    .line 247
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_BLOOD_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postCompletedCalibrationsCountRequest()V
    .locals 1

    .line 489
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_COMPLETED_CALIBRATIONS_COUNT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 490
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postCurrentPhase()V
    .locals 1

    .line 494
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CURRENT_CALIBRATION_PHASE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 495
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postIsOneCalPhase()V
    .locals 1

    .line 484
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_IS_ONE_CAL_PHASE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationDateRequest()V
    .locals 1

    .line 428
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 429
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationTimeRequest()V
    .locals 1

    .line 433
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 434
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postPhaseStartDate()V
    .locals 1

    .line 468
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_PHASE_START_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postPhaseStartTime()V
    .locals 1

    .line 473
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_PHASE_START_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadAccelerometerInfo()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadAccelerometerValues()V

    .line 108
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadAccelerometerTemp()V

    return-void
.end method

.method private postReadAccelerometerTemp()V
    .locals 1

    .line 117
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_ACCELEROMETER_TEMP:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadAccelerometerValues()V
    .locals 1

    .line 112
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_ACCELEROMETER_VALUES:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadGlucoseData()V
    .locals 1

    .line 82
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_DATA:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseDate()V
    .locals 1

    .line 92
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseDateTime()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDate()V

    .line 88
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseTime()V

    return-void
.end method

.method private postReadMostRecentGlucoseTime()V
    .locals 1

    .line 97
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseValue()V
    .locals 1

    .line 102
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue1()V
    .locals 1

    .line 136
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_1:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue2()V
    .locals 1

    .line 141
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_2:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue3()V
    .locals 1

    .line 146
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_3:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue4()V
    .locals 1

    .line 151
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_4:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue5()V
    .locals 1

    .line 156
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_5:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue6()V
    .locals 1

    .line 161
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_6:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue7()V
    .locals 1

    .line 166
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_7:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue8()V
    .locals 1

    .line 171
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_8:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValues()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue1()V

    .line 126
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue2()V

    .line 127
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue3()V

    .line 128
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue4()V

    .line 129
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue5()V

    .line 130
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue6()V

    .line 131
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue7()V

    .line 132
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue8()V

    return-void
.end method

.method private postSensorGlucoseAlertRecordRange()V
    .locals 1

    .line 241
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERT_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postSensorGlucoseRecordRange()V
    .locals 1

    .line 235
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SENSOR_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postVersionNumber()V
    .locals 1

    .line 458
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_VERSION_NUMBER:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 459
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postVersionNumberExtension()V
    .locals 1

    .line 453
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_VERSION_NUMBER_EXTENSION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 454
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private readCurrentTransmitterDateAndTime()V
    .locals 1

    .line 184
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CURRENT_TRANSMITTER_DATE_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public postAtccalSramResult()V
    .locals 1

    .line 504
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_ATCCAL_SRAM_RESULT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postBatteryLifeRequest()V
    .locals 1

    .line 499
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_BATTERY_LEVEL:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 500
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postCurrentCalibrationPhaseRequest()V
    .locals 0

    .line 478
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postIsOneCalPhase()V

    .line 479
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCompletedCalibrationsCountRequest()V

    .line 480
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentPhase()V

    return-void
.end method

.method public postEEP24MSP()V
    .locals 1

    .line 220
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_EEP24_MSP:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postEnterDiagnosticMode()V
    .locals 1

    .line 516
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->ENTER_DIAGNOSTIC_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 517
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postExerciseVibration()V
    .locals 1

    .line 509
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportXLNewCommands()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->EXERCISE_VIBRATION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 511
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public postExitDiagnosticMode()V
    .locals 1

    .line 521
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->EXIT_DIAGNOSTIC_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 522
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postGetModelRequest()V
    .locals 1

    .line 443
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MODEL:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 444
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postGetRangesForSyncing()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseRecordRange()V

    .line 255
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseAlertRecordRange()V

    .line 261
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postBloodGlucoseRecordRange()V

    return-void
.end method

.method public postLastCalibrationDateTimeRequest()V
    .locals 0

    .line 423
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateRequest()V

    .line 424
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationTimeRequest()V

    return-void
.end method

.method public postMEPMSPInfo()V
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMEPSavedValue()V

    .line 226
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedRefChannelMetric()V

    .line 227
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedDriftMetric()V

    .line 228
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedLowRefMetric()V

    .line 229
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedSpike()V

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postEEP24MSP()V

    return-void
.end method

.method public postMEPSavedDriftMetric()V
    .locals 1

    .line 205
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_DRIFT_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedLowRefMetric()V
    .locals 1

    .line 210
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_LOW_REF_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 211
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedRefChannelMetric()V
    .locals 1

    .line 200
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_REF_CHANNEL_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedSpike()V
    .locals 1

    .line 215
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_SPIKE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMarkPatientEventDeleted(J)V
    .locals 2

    .line 59
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->MARK_PATIENT_EVENT_RECORD_DELETED:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "record number"

    .line 60
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postPhaseStartDateTimeRequest()V
    .locals 0

    .line 463
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartDate()V

    .line 464
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartTime()V

    return-void
.end method

.method public postPingRequest()V
    .locals 1

    .line 438
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->PING:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 439
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadClinicalModeDuration()V
    .locals 1

    .line 27
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CLINICAL_MODE_DURATION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadCurrentTransmitterDateAndTime()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDateTime()V

    .line 180
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->readCurrentTransmitterDateAndTime()V

    return-void
.end method

.method public postReadMEPSavedValue()V
    .locals 1

    .line 195
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadRawDataAndGlucoseData()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValues()V

    .line 75
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadAccelerometerInfo()V

    .line 76
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDateTime()V

    .line 77
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseValue()V

    .line 78
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadGlucoseData()V

    return-void
.end method

.method public postReadSensorGlucoseAlertsAndStatus()V
    .locals 1

    .line 382
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERTS_AND_STATUS:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadSignalStrengthRequest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 526
    sget-object p1, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SIGNAL_STRENGTH_RAW:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SIGNAL_STRENGTH:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object p1

    .line 527
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSendCurrentDateAndTimeToTransmitter()V
    .locals 1

    .line 190
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SEND_CURRENT_DATE_TIME_TO_TRANSMITTER:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSnooze(I)V
    .locals 2

    .line 31
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SNOOZE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PushNotificationMessageCode"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SYNC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    const-string v2, "expected response id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v1

    const-string v2, "record number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result p1

    const-string v1, "expected response count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postVersionNumberRequest()V
    .locals 0

    .line 448
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumberExtension()V

    .line 449
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumber()V

    return-void
.end method

.method public postWriteClinicalModeRequest(Z)V
    .locals 2

    .line 53
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_CLINICAL_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is clinical mode"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteDelayBLEDisconnectAlarmAddressRequest(I)V
    .locals 2

    .line 417
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_BLE_DISCONNECT_DELAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 418
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteEveningCalibrationTime(II)V
    .locals 2

    .line 375
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_EVENING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 376
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;)V
    .locals 4

    .line 37
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_GLUCOSE_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v1

    const-string v3, "milliseconds"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getGlucoseLevel()I

    move-result p1

    const-string v1, "glucose level"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmEnabledRequest(Z)V
    .locals 2

    .line 359
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 360
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 405
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 406
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 411
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 412
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRequest(I)V
    .locals 2

    .line 283
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 284
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseTarget(I)V
    .locals 2

    .line 271
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 272
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 393
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 394
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 399
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 400
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRequest(I)V
    .locals 2

    .line 277
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseTargetRequest(I)V
    .locals 2

    .line 265
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 266
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteMorningCalibrationTime(II)V
    .locals 2

    .line 368
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_MORNING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 369
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 370
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePatientEvent(Lcom/senseonics/events/PatientEventPoint;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PATIENT_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->quantity()I

    move-result v1

    const-string v2, "event quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventSubTypeId()I

    move-result v1

    const-string v2, "event sub type id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventTypeId()I

    move-result v1

    const-string v2, "event type id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->getTimestamp()J

    move-result-wide v1

    const-string p1, "milliseconds"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveAlertsRequest(Z)V
    .locals 2

    .line 289
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 290
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighAlertsRequest(Z)V
    .locals 2

    .line 300
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 301
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighTimeIntervalRequest(I)V
    .locals 2

    .line 306
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 307
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowAlertsRequest(Z)V
    .locals 2

    .line 312
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 313
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowTimeIntervalRequest(I)V
    .locals 2

    .line 318
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 319
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveTimeIntervalRequest(I)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveHighTimeIntervalRequest(I)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveLowTimeIntervalRequest(I)V

    return-void
.end method

.method public postWriteRateAlert(Z)V
    .locals 2

    .line 324
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 325
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateAlertThresholdRequest(I)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateFallingAlertThresholdRequest(I)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateRisingAlertThresholdRequest(I)V

    return-void
.end method

.method public postWriteRateFallingAlert(Z)V
    .locals 2

    .line 335
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 336
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateFallingAlertThresholdRequest(I)V
    .locals 2

    .line 341
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlert(Z)V
    .locals 2

    .line 347
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 348
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlertThresholdRequest(I)V
    .locals 2

    .line 353
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 354
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteVibrateModeRequest(Z)V
    .locals 2

    .line 387
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_VIBRATION_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 388
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

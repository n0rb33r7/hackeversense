.class public Lcom/senseonics/gen12androidapp/MessageCoder;
.super Ljava/lang/Object;
.source "MessageCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageCodeForCalibrationSwitchFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 352
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TwoCal:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 348
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->OneCal:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 369
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 366
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 385
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 381
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 78
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 246
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspicious2Alert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 242
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 238
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 234
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 228
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 224
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 220
    :cond_6
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 291
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 287
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 283
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 279
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 275
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 271
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 266
    :cond_6
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 262
    :cond_7
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 151
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 147
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 143
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 139
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 135
    :cond_6
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->HighAmbientLightAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 131
    :cond_7
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    .line 127
    :cond_8
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_1
    return-object p1
.end method

.method public messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 205
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 201
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 197
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 193
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 189
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 185
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 181
    :cond_6
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 177
    :cond_7
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForSensorReplacementFlags2(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 333
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 111
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->BatteryErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 107
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 102
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 98
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 318
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL395:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 314
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL330:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 310
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL366:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 306
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

.method public messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 57
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->VibrationCurrentAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 50
    :cond_3
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidClockAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 46
    :cond_4
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 40
    :cond_5
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :goto_0
    return-object p1
.end method

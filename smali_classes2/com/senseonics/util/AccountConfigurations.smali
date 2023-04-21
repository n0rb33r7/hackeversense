.class public Lcom/senseonics/util/AccountConfigurations;
.super Ljava/lang/Object;
.source "AccountConfigurations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMyAccountPage()Z
    .locals 1

    .line 329
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static addTodayDate()Z
    .locals 1

    .line 238
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static calibratePageAddPhase()Z
    .locals 1

    .line 230
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static calibratePageCalInProgress()Z
    .locals 1

    .line 226
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static calibrationIconColorChange()Z
    .locals 1

    .line 313
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static calibrationReminders()Z
    .locals 1

    .line 317
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableAtccalCrcCheck()Z
    .locals 1

    .line 354
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableAtccalSramResultCheck()Z
    .locals 1

    .line 345
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableDosing()Z
    .locals 1

    .line 394
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableExpandCollapseGlucoseSetting()Z
    .locals 1

    .line 426
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 429
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableExpandCollapseMyTransmitter()Z
    .locals 1

    .line 242
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableKeepAliveCheck()Z
    .locals 1

    .line 450
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 453
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableMoreGlucoseSetting()Z
    .locals 1

    .line 418
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 421
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableOneCalSwitch(Z)Z
    .locals 0

    return p0
.end method

.method public static enableOtw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static enableRemoteMonitoring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static enableRichForegroundNotification()Z
    .locals 1

    .line 295
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableStaleGlucoseCheck()Z
    .locals 1

    .line 442
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 445
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static enableTimeRollbackCheck()Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static fixTypoCalRejectMsgNotEnoughData()Z
    .locals 1

    .line 213
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static getCalibrateLayout()I
    .locals 1

    const v0, 0x7f0c0076

    return v0
.end method

.method static getCriticalFaultFetchLimit()I
    .locals 1

    .line 53
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method static getCriticalFaultTypes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 26
    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v7, v0, v5

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v5, v0, v4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v4, v0, v3

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v3, v0, v2

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v6, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 41
    sget-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v6, v0, v5

    sget-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v5, v0, v4

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v4, v0, v3

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v3, v0, v2

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDMS_Upload_Allow_Next_Operation_Seconds()I
    .locals 1

    .line 73
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    return v0
.end method

.method public static getDMS_Upload_Interval()I
    .locals 1

    .line 69
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public static getDocumentLanguageToDisplay(Z)Ljava/lang/String;
    .locals 6

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/senseonics/gen12androidapp/BuildConfig;->DOCUMENTS_LANGUAGES:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 81
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    sget-object v1, Lcom/senseonics/gen12androidapp/BuildConfig;->DOCUMENTS_LANGUAGES_EULA_DE:[Ljava/lang/String;

    const-string p0, "en_DE"

    goto :goto_0

    :cond_0
    const-string p0, "en"

    .line 86
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static getEventLogLayout()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method

.method public static getExerciseLayout()I
    .locals 1

    const v0, 0x7f0c0060

    return v0
.end method

.method public static getGlucoseLayout()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public static getGlucoseSettingLayout(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f0c0028

    return p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0c0027

    goto :goto_0

    :cond_1
    const p0, 0x7f0c0029

    :goto_0
    return p0
.end method

.method public static getHealthLayout()I
    .locals 1

    const v0, 0x7f0c0064

    return v0
.end method

.method public static getInsulinLayout()I
    .locals 1

    const v0, 0x7f0c0067

    return v0
.end method

.method public static getLoginActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 65
    const-class v0, Lcom/senseonics/authentication/UserLoginActivity;

    return-object v0
.end method

.method public static getMealLayout()I
    .locals 1

    const v0, 0x7f0c0069

    return v0
.end method

.method public static getTempProfileLayout(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const p0, 0x7f0c0088

    goto :goto_0

    :cond_0
    const p0, 0x7f0c0089

    :goto_0
    return p0
.end method

.method public static hideDailyCal()Z
    .locals 1

    .line 386
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 389
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static isLoginActivity(Landroid/content/Context;)Z
    .locals 0

    .line 58
    instance-of p0, p0, Lcom/senseonics/authentication/UserLoginActivity;

    return p0
.end method

.method public static isUS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isUSXLorOUSXL2()Z
    .locals 4

    .line 195
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getMmaFeatures_Static()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xff

    if-eq v0, v3, :cond_1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method public static overrideDndCriticalAlertSettings()Z
    .locals 1

    .line 341
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static relinkSensor()Z
    .locals 1

    .line 309
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static removeAlertHelp()Z
    .locals 1

    .line 410
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 413
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static removeMealTime()Z
    .locals 1

    .line 490
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 493
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static removeStaleTrend()Z
    .locals 1

    .line 466
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 469
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static setSwitchStyle(Landroid/widget/Switch;)V
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TAG_SWITCH_STYLE_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08009c

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbResource(I)V

    const v0, 0x7f08009d

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 156
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static showCalFileNotFoundAlerts()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static showCollectingData()Z
    .locals 1

    .line 482
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 485
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static showDisconnectDelaySetting()Z
    .locals 1

    .line 434
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 437
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static showDndIcon()Z
    .locals 1

    .line 402
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 405
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static showNoSensorDetectedPopup()Z
    .locals 1

    .line 474
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 477
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static showPlacementGuideDetail(Z)Z
    .locals 0

    return p0
.end method

.method public static supportRollingCal()Z
    .locals 4

    .line 163
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion_Static()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 166
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static supportXLNewCommands()Z
    .locals 3

    .line 182
    invoke-static {}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion_Static()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x40833333    # 4.1f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public static suspiciousCalAlertsNewEc()Z
    .locals 1

    .line 305
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportXLNewCommands()Z

    move-result v0

    return v0
.end method

.method public static suspiciousFsIsCalibration()Z
    .locals 1

    .line 370
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static tempProfileNewUi()Z
    .locals 1

    .line 458
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 461
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateCalibrationGraceAlertText()Z
    .locals 1

    .line 255
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateCalibrationReadyTooSoonText()Z
    .locals 1

    .line 263
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateCalibrationSuspiciousAlertText()Z
    .locals 1

    .line 259
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateInternetDisconnectedAlertText()Z
    .locals 1

    .line 280
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateSensorLinkFileErrorText()Z
    .locals 1

    .line 271
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateSensorLinkStep1Text()Z
    .locals 1

    .line 251
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateSensorPrematurePopupText()Z
    .locals 1

    .line 267
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateSensorSignalIconColor()Z
    .locals 1

    .line 234
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static updateToHcp()Z
    .locals 1

    .line 512
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static useNewBgmLogConversion()Z
    .locals 1

    .line 378
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 381
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static useNewCalAcceptRejectText()Z
    .locals 1

    .line 362
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 365
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

.method public static useUsxlOusxl2ProductInfo()Z
    .locals 1

    .line 503
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    return v0
.end method

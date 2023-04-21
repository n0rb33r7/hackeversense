.class public Lcom/senseonics/util/StateModelUploadUtility_SOAP;
.super Ljava/lang/Object;
.source "StateModelUploadUtility_SOAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final APP_ACTIVE:Z

.field private final SENSOR_ACTIVE:Z

.field private final TRANSMITTER_ACTIVE:Z

.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field public final kStateModelUploadAppInfoWebserviceFunctionCall:Ljava/lang/String;

.field public final kStateModelUploadSensorInfoWebserviceFunctionCall:Ljava/lang/String;

.field public final kStateModelUploadThresholdInfoWebserviceFunctionCall:Ljava/lang/String;

.field public final kStateModelUploadTransmitterInfoWebserviceFunctionCall:Ljava/lang/String;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->TRANSMITTER_ACTIVE:Z

    .line 35
    iput-boolean v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->SENSOR_ACTIVE:Z

    .line 36
    iput-boolean v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->APP_ACTIVE:Z

    const-string v0, "http://tempuri.org/IAgentServerService/UploadTransmitterInfo"

    .line 38
    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->kStateModelUploadTransmitterInfoWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/UploadSensorInfo"

    .line 39
    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->kStateModelUploadSensorInfoWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/UploadThresholds_CareApp"

    .line 40
    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->kStateModelUploadThresholdInfoWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "http://tempuri.org/IAgentServerService/UploadAppInfo"

    .line 41
    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->kStateModelUploadAppInfoWebserviceFunctionCall:Ljava/lang/String;

    const-string v0, "DMS(StateModelUploadUtility_SOAP)"

    .line 43
    iput-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->Tag:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 56
    iput-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->context:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.1f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 471
    :cond_0
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    .line 472
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.2f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private boolToInt(Z)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 487
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 493
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    move v4, v1

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_3

    aget-char v6, p0, v4

    if-eqz v5, :cond_1

    .line 494
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v1

    goto :goto_1

    .line 498
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v2

    .line 501
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static getCountryInformation()Ljava/lang/String;
    .locals 5

    .line 507
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 514
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 515
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceName()Ljava/lang/String;
    .locals 3

    .line 478
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 479
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 480
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-static {v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;
    .locals 11

    const-string v0, ")"

    const-string v1, " ("

    .line 202
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 204
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    move-object v5, v2

    .line 207
    new-instance v2, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;

    .line 210
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v6

    .line 211
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 214
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->getCountryInformation()Ljava/lang/String;

    move-result-object v10

    const-string v4, "Android OS"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v2
.end method

.method public fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;
    .locals 12

    .line 93
    new-instance v9, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 94
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 95
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 96
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 97
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 100
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 101
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedRefChannelMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 102
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedDriftMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 103
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedLowRefMetric()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 104
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedSpike()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v11, 0x4

    aput-object v7, v6, v11

    const-string v7, "%.4f,%.4f,%.4f,%.4f,%.4f"

    .line 99
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 106
    invoke-virtual {v10}, Lcom/senseonics/model/TransmitterStateModel;->getEEP24MSP()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v8

    const-string v8, "%.4f"

    invoke-static {v0, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v9
.end method

.method public fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;
    .locals 29

    move-object/from16 v0, p0

    .line 114
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 115
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v5

    .line 116
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v6

    .line 117
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v7

    .line 118
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v8

    .line 119
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v9

    .line 120
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v10

    .line 121
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isHighGlucoseAlarmsEnabled()Z

    move-result v15

    .line 122
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v24

    .line 123
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v25

    .line 124
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalNightTime()I

    move-result v26

    .line 125
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalNightTime()I

    move-result v27

    .line 126
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    xor-int/lit8 v28, v1, 0x1

    .line 140
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result v1

    const-string v2, "-1"

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveHighAlertsActivated()Z

    move-result v1

    .line 146
    iget-object v12, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v12}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveLowAlertsActivated()Z

    move-result v12

    .line 147
    iget-object v13, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v13}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v13

    .line 148
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v14

    .line 149
    iget-object v3, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isRateFallingAlertsActivated()Z

    move-result v3

    .line 150
    iget-object v11, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v11}, Lcom/senseonics/model/TransmitterStateModel;->isRateRisingAlertsActivated()Z

    move-result v11

    move/from16 v18, v1

    .line 151
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .line 152
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    move/from16 v20, v3

    move/from16 v21, v11

    move/from16 v17, v12

    move/from16 v16, v18

    move-object/from16 v22, v19

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v18, v13

    move/from16 v19, v14

    const/4 v13, -0x1

    move-object v14, v2

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveAlertsActivated()Z

    move-result v1

    .line 155
    iget-object v3, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isRateAlertsActivated()Z

    move-result v3

    .line 156
    iget-object v11, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v11}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v11

    .line 157
    iget-object v12, v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v12}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v12

    invoke-direct {v0, v12}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v2

    move-object/from16 v23, v22

    move v13, v11

    move-object v14, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v11, v1

    move v12, v3

    .line 168
    :goto_0
    new-instance v1, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;

    move-object v2, v1

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v3

    invoke-direct/range {v2 .. v28}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;-><init>(Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;IIIIIIIZZILjava/lang/String;ZZZIIZZLjava/lang/String;Ljava/lang/String;IIIIZ)V

    return-object v1
.end method

.method public fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;
    .locals 15

    .line 73
    new-instance v14, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 74
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 75
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v4

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 78
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 79
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 81
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v8

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 82
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 83
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastCriticalFaults()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 84
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 85
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v12

    const-string v3, ""

    const-string v7, ""

    const/4 v13, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v14
.end method

.method public fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountUserIDFromPreference()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getAccountPasswordFromPreference()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2, v1}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v3, v1}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants;->getAccountUsernameFromPreference()Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public generateStateModelAppInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;)Ljava/lang/String;
    .locals 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction%</wsa:Action><wsa:To>%wsaTo%</wsa:To></soap:Header>\n<soap:Body>\n<tem:UploadAppInfo>\n<tem:AppOS>%AppOS%</tem:AppOS>\n<tem:AppVersion>%AppVersion%</tem:AppVersion>\n<tem:UserID>%UserID%</tem:UserID>\n<tem:PasswordHash>%pwdHash%</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary%</tem:PasswordBinary>\n<tem:DeviceType>%DeviceType%</tem:DeviceType>\n<tem:AppOSVersion>%AppOSVersion%</tem:AppOSVersion>\n<tem:CountryLanguage>%CountryLanguage%</tem:CountryLanguage>\n<tem:AppActive>%AppActive%</tem:AppActive>\n</tem:UploadAppInfo>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction%"

    const-string v2, "http://tempuri.org/IAgentServerService/UploadAppInfo"

    .line 436
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 437
    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%wsaTo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getAppOS()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%AppOS%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%AppVersion%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%UserID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWHash()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdHash%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWBinary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdBinary%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%DeviceType%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getAppOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%AppOSVersion%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->getCountryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%CountryLanguage%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;->isAppActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%AppActive%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMS(StateModelUploadUtility_SOAP)"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateStateModelSensorInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;)Ljava/lang/String;
    .locals 3

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction%</wsa:Action><wsa:To>%wsaTo%</wsa:To></soap:Header>\n<soap:Body>\n<tem:UploadSensorInfo>\n<tem:SnSNo>%SnSNo%</tem:SnSNo>\n<tem:SNLnkdSNID>%SNLnkdSNID%</tem:SNLnkdSNID>\n<tem:SNUNLnkdSNID>%SNUNLnkdSNID%</tem:SNUNLnkdSNID>\n<tem:SNInsertionDT>%SNInsertionDT%</tem:SNInsertionDT>\n<tem:UserID>%UserID%</tem:UserID>\n<tem:PasswordHash>%pwdHash%</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary%</tem:PasswordBinary>\n<tem:SNMEP>%SNMEP%</tem:SNMEP>\n<tem:SNMSP>%SNMSP%</tem:SNMSP>\n<tem:SnActive>%SnActive%</tem:SnActive>\n</tem:UploadSensorInfo>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction%"

    const-string v2, "http://tempuri.org/IAgentServerService/UploadSensorInfo"

    .line 311
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 312
    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%wsaTo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getSensorID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SnSNo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getLinkedSensorID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SNLnkdSNID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getUnlinkedSensorID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SNUNLnkdSNID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getSensorInsertionDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SNInsertionDT%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%UserID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWHash()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdHash%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWBinary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdBinary%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getMEP()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SNMEP%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getMSP()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%SNMSP%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->isSensorActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%SnActive%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENSOR Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMS(StateModelUploadUtility_SOAP)"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateStateModelThresholdInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;)Ljava/lang/String;
    .locals 4

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction%</wsa:Action><wsa:To>%wsaTo%</wsa:To></soap:Header>\n<soap:Body>\n<tem:UploadThresholds_CareApp>\n<tem:UserID>%userID%</tem:UserID>\n<tem:PasswordHash>%pwdHash%</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary%</tem:PasswordBinary>\n<tem:GlucoseUnitOfMeasure>%GlucoseUnitOfMeasure%</tem:GlucoseUnitOfMeasure>\n<tem:GlucoseLowThreshold>%GlucoseLowThreshold%</tem:GlucoseLowThreshold>\n<tem:GlucoseHighThreshold>%GlucoseHighThreshold%</tem:GlucoseHighThreshold>\n<tem:GlucoseAlertLowThreshold>%GlucoseAlertLowThreshold%</tem:GlucoseAlertLowThreshold>\n<tem:GlucoseAlertHighThreshold>%GlucoseAlertHighThreshold%</tem:GlucoseAlertHighThreshold>\n<tem:GlucoseAlarmLowThreshold>%GlucoseAlarmLowThreshold%</tem:GlucoseAlarmLowThreshold>\n<tem:GlucoseAlarmHighThreshold>%GlucoseAlarmHighThreshold%</tem:GlucoseAlarmHighThreshold>\n<tem:PredectiveFlag>%PredectiveFlag%</tem:PredectiveFlag>\n<tem:RateFlag>%RateFlag%</tem:RateFlag>\n<tem:PredectiveMins>%PredectiveMins%</tem:PredectiveMins>\n<tem:RateOfChange>%RateOfChange%</tem:RateOfChange>\n<tem:HighAlertFlag>%HighAlertFlag%</tem:HighAlertFlag>\n<tem:PredectiveHighFlag>%PredectiveHighFlag%</tem:PredectiveHighFlag>\n<tem:PredectiveHighMins>%PredectiveHighMins%</tem:PredectiveHighMins>\n<tem:PredectiveLowFlag>%PredectiveLowFlag%</tem:PredectiveLowFlag>\n<tem:PredectiveLowMins>%PredectiveLowMins%</tem:PredectiveLowMins>\n<tem:RateFallingFlag>%RateFallingFlag%</tem:RateFallingFlag>\n<tem:RateOfChangeFalling>%RateOfChangeFalling%</tem:RateOfChangeFalling>\n<tem:RateRisingFlag>%RateRisingFlag%</tem:RateRisingFlag>\n<tem:RateOfChangeRising>%RateOfChangeRising%</tem:RateOfChangeRising>\n<tem:LowGlucoseRepeatIntervalDayTime>%LowGlucoseRepeatIntervalDayTime%</tem:LowGlucoseRepeatIntervalDayTime>\n<tem:HighGlucoseRepeatIntervalDayTime>%HighGlucoseRepeatIntervalDayTime%</tem:HighGlucoseRepeatIntervalDayTime>\n<tem:LowGlucoseRepeatIntervalNightTime>%LowGlucoseRepeatIntervalNightTime%</tem:LowGlucoseRepeatIntervalNightTime>\n<tem:HighGlucoseRepeatIntervalNightTime>%HighGlucoseRepeatIntervalNightTime%</tem:HighGlucoseRepeatIntervalNightTime>\n<tem:DoNotDisturbFlag>%DoNotDisturbFlag%</tem:DoNotDisturbFlag>\n</tem:UploadThresholds_CareApp>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction%"

    const-string v2, "http://tempuri.org/IAgentServerService/UploadThresholds_CareApp"

    .line 374
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 375
    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%wsaTo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%userID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWHash()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdHash%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWBinary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdBinary%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getGlucoseUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseUnitOfMeasure%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getTargetLow()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseLowThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getTargetHigh()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseHighThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getAlertLow()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseAlertLowThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getAlertHigh()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseAlertHighThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getAlarmLow()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseAlarmLowThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getAlarmHigh()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%GlucoseAlarmHighThreshold%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isPredictiveAlertEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isRateAlertEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getPredictiveMins()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveMins%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getRateSlope()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateOfChange%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isHighAlertFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%HighAlertFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isPredictiveHighFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveHighFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getPredictiveHighMins()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveHighMins%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isPredictiveLowFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveLowFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getPredictiveLowMins()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%PredectiveLowMins%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isRateFallingFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateFallingFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getRateOfChangeFalling()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateOfChangeFalling%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isRateRisingFlag()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateRisingFlag%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getRateOfChangeRising()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%RateOfChangeRising%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getLowGlucoseRepeatIntervalDayTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%LowGlucoseRepeatIntervalDayTime%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getHighGlucoseRepeatIntervalDayTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%HighGlucoseRepeatIntervalDayTime%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getLowGlucoseRepeatIntervalNightTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%LowGlucoseRepeatIntervalNightTime%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->getHighGlucoseRepeatIntervalNightTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%HighGlucoseRepeatIntervalNightTime%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;->isDoNotDisturbFlag()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%DoNotDisturbFlag%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "THRESHOLD Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMS(StateModelUploadUtility_SOAP)"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public generateStateModelTransmitterInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;)Ljava/lang/String;
    .locals 4

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soap:Envelope xmlns:soap=\"http://www.w3.org/2003/05/soap-envelope\" xmlns:tem=\"http://tempuri.org/\">\n<soap:Header xmlns:wsa=\"http://www.w3.org/2005/08/addressing\"><wsa:Action>%wsaAction%</wsa:Action><wsa:To>%wsaTo%</wsa:To></soap:Header>\n<soap:Body>\n<tem:UploadTransmitterInfo>\n<tem:TxSNo>%TxSNo%</tem:TxSNo>\n<tem:TxName>%TxName%</tem:TxName>\n<tem:TxAddress>%TxAddress%</tem:TxAddress>\n<tem:userID>%userID%</tem:userID>\n<tem:PasswordHash>%pwdHash%</tem:PasswordHash>\n<tem:PasswordBinary>%pwdBinary%</tem:PasswordBinary>\n<tem:pw>%pw%</tem:pw>\n<tem:TxModelNo>%TxModelNo%</tem:TxModelNo>\n<tem:TxVersion>%TxVersion%</tem:TxVersion>\n<tem:TxVersionExtn>%TxVersionExtn%</tem:TxVersionExtn>\n<tem:TxFormatVersion>%TxFormatVersion%</tem:TxFormatVersion>\n<tem:TxStartCalibrationPhaseDt>%TxStartCalibrationPhaseDt%</tem:TxStartCalibrationPhaseDt>\n<tem:TxLastFaultCritical>%TxLastFaultCritical%</tem:TxLastFaultCritical>\n<tem:TXCurrentCalibPhase>%TXCurrentCalibPhase%</tem:TXCurrentCalibPhase>\n<tem:TxSamplingInterval>%TxSamplingInterval%</tem:TxSamplingInterval>\n<tem:TxActive>%TxActive%</tem:TxActive>\n</tem:UploadTransmitterInfo>\n</soap:Body>\n</soap:Envelope>\n"

    const-string v1, "%wsaAction%"

    const-string v2, "http://tempuri.org/IAgentServerService/UploadTransmitterInfo"

    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 263
    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%wsaTo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxSNo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxName%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxAddress%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%userID%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWHash()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdHash%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWBinary()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%pwdBinary%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxModel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxModelNo%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxVersion%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxSoftwareVersionExt()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%TxVersionExtn%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getAlgoFormatVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%TxFormatVersion%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getDateOfCurrentCalibrationPhase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%TxStartCalibrationPhaseDt%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getLastCriticalFault()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%TxLastFaultCritical%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getCurrentCalibrationPhase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%TXCurrentCalibPhase%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getSamplingInterval()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%TxSamplingInterval%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->isTxActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->boolToInt(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "%TxActive%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRANSMITTER Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMS(StateModelUploadUtility_SOAP)"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

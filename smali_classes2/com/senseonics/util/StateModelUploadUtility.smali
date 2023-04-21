.class public Lcom/senseonics/util/StateModelUploadUtility;
.super Ljava/lang/Object;
.source "StateModelUploadUtility.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final APP_ACTIVE:I

.field private final SENSOR_ACTIVE:I

.field private final TRANSMITTER_ACTIVE:I

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->TRANSMITTER_ACTIVE:I

    .line 28
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->SENSOR_ACTIVE:I

    .line 29
    iput v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->APP_ACTIVE:I

    .line 41
    iput-object p1, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 42
    iput-object p2, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v0

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%.1f"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    .line 239
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
    .locals 0

    return p1
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 257
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 260
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

    .line 261
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
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

    .line 265
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v2

    .line 268
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

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 282
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    .line 284
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

    .line 245
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 246
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-static {v1}, Lcom/senseonics/util/StateModelUploadUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/senseonics/util/StateModelUploadUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

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
.method public fetchPublicUserInfo()Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;
    .locals 9

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;

    move-result-object v1

    .line 89
    new-instance v8, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;

    .line 90
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->getTxID()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->getTxSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->getSensorID()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->getSensorInsertionDate()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v8
.end method

.method public fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;
    .locals 11

    const-string v0, ")"

    const-string v1, " ("

    .line 187
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/util/StateModelUploadUtility;->context:Landroid/content/Context;

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

    .line 189
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, ""

    .line 192
    :goto_0
    new-instance v10, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;

    .line 194
    invoke-direct {p0, v2}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 198
    invoke-static {}, Lcom/senseonics/util/StateModelUploadUtility;->getCountryInformation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Android OS"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v10
.end method

.method public fetchStateModelAppInfo2(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;
    .locals 2

    .line 205
    new-instance v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;-><init>(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public fetchStateModelCurrentValueInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    .line 210
    invoke-static {v0, v1}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromMillis(J)Ljava/lang/String;

    move-result-object v4

    .line 212
    new-instance v0, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;

    .line 213
    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v1

    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/senseonics/util/Utils;->INT_MAX:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 215
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$ARROW_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 216
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 217
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getBatteryPercentForLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;
    .locals 11

    .line 67
    new-instance v8, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 68
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 69
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 70
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 71
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 73
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 74
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedRefChannelMetric()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 75
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedDriftMetric()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v10, 0x2

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 76
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedLowRefMetric()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 77
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMEPSavedSpike()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const-string v6, "%.4f,%.4f,%.4f,%.4f,%.4f"

    .line 72
    invoke-static {v0, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 79
    invoke-virtual {v10}, Lcom/senseonics/model/TransmitterStateModel;->getEEP24MSP()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v6, v7

    const-string v7, "%.4f"

    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v8
.end method

.method public fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;
    .locals 48

    move-object/from16 v0, p0

    .line 100
    iget-object v1, v0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->getGlucoseUnit()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 101
    iget-object v2, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v2

    .line 102
    iget-object v3, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v3

    .line 103
    iget-object v4, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v4

    .line 104
    iget-object v5, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v5

    .line 105
    iget-object v6, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v6

    .line 106
    iget-object v7, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v7

    .line 107
    iget-object v8, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->isHighGlucoseAlarmsEnabled()Z

    move-result v8

    invoke-direct {v0, v8}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v8

    .line 108
    iget-object v9, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v9

    .line 109
    iget-object v10, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v10}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v10

    .line 110
    iget-object v11, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v11}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalNightTime()I

    move-result v11

    .line 111
    iget-object v12, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v12}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalNightTime()I

    move-result v12

    .line 112
    iget-object v13, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v13}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    invoke-direct {v0, v13}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v13

    .line 126
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result v14

    const-string v15, "-1"

    const/16 v16, -0x1

    const/16 v17, 0x0

    if-eqz v14, :cond_0

    .line 131
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveHighAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v18, v14

    .line 132
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveLowAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v19, v14

    .line 133
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v20, v14

    .line 134
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v21, v14

    .line 135
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isRateFallingAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v22, v14

    .line 136
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isRateRisingAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v23, v14

    .line 137
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v14

    .line 138
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v41, v14

    move-object/from16 v32, v15

    move/from16 v15, v19

    move/from16 v14, v21

    move/from16 v38, v22

    move/from16 v39, v23

    move-object/from16 v40, v24

    move/from16 v19, v17

    goto :goto_0

    .line 140
    :cond_0
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v18, v14

    .line 141
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->isRateAlertsActivated()Z

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->boolToInt(Z)I

    move-result v14

    move/from16 v19, v14

    .line 142
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v14

    move/from16 v20, v14

    .line 143
    iget-object v14, v0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v14}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->GetRateValueWithoutUnitsLabel(F)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v32, v14

    move-object/from16 v40, v15

    move-object/from16 v41, v40

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v38, v15

    move/from16 v39, v38

    move/from16 v16, v20

    move/from16 v20, v14

    move/from16 v17, v18

    move/from16 v18, v39

    .line 154
    :goto_0
    new-instance v47, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;

    move-object/from16 v21, v47

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 160
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 161
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 162
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 163
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 164
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 166
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 167
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 168
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    .line 169
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 170
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 171
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    .line 172
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 175
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    .line 176
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    .line 177
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    .line 178
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    .line 179
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-direct/range {v21 .. v46}, Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v47
.end method

.method public fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;
    .locals 14

    .line 48
    new-instance v13, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 49
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 50
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 52
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 53
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 55
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 56
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 57
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastCriticalFaults()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 58
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/util/StateModelUploadUtility;->replaceNullStringWithEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/senseonics/util/StateModelUploadUtility;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 59
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v3, ""

    const-string v6, ""

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v13
.end method

.class public Lcom/senseonics/bluetoothle/BleHealthUpload;
.super Ljava/lang/Object;
.source "BleHealthUpload.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final ALERT_ID:Ljava/lang/String;

.field private final ALERT_NAME:Ljava/lang/String;

.field private final BLE_HEALTH_COUNTDOWN_INTERVAL:J

.field private final BLE_HEALTH_UPLOAD_INTERVAL:J

.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

.field private cTimer:Landroid/os/CountDownTimer;

.field private context:Landroid/content/Context;

.field private startTime:J

.field private startTimeTicker:J

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/senseonics/bluetoothle/BleHealthUpload;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcTimer(Lcom/senseonics/bluetoothle/BleHealthUpload;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartTime(Lcom/senseonics/bluetoothle/BleHealthUpload;)J
    .locals 2

    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstartTimeTicker(Lcom/senseonics/bluetoothle/BleHealthUpload;)J
    .locals 2

    iget-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputstartTime(Lcom/senseonics/bluetoothle/BleHealthUpload;J)V
    .locals 0

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartTimeTicker(Lcom/senseonics/bluetoothle/BleHealthUpload;J)V
    .locals 0

    iput-wide p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBleHealthSync(Lcom/senseonics/bluetoothle/BleHealthUpload;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->startBleHealthSync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTimer(Lcom/senseonics/bluetoothle/BleHealthUpload;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/bluetoothle/BleHealthMonitor;Landroid/os/Handler;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BleHealthUpload"

    .line 24
    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v0, "1010"

    .line 25
    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->ALERT_ID:Ljava/lang/String;

    const-string v0, "BLELogging"

    .line 26
    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->ALERT_NAME:Ljava/lang/String;

    const-wide/32 v0, 0xdbba0

    .line 29
    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->BLE_HEALTH_UPLOAD_INTERVAL:J

    const-wide/16 v0, 0x7530

    .line 30
    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->BLE_HEALTH_COUNTDOWN_INTERVAL:J

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    .line 51
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 53
    iput-object p3, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 54
    iput-object p4, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

    .line 56
    new-instance p1, Lcom/senseonics/bluetoothle/BleHealthUpload$1;

    invoke-direct {p1, p0}, Lcom/senseonics/bluetoothle/BleHealthUpload$1;-><init>(Lcom/senseonics/bluetoothle/BleHealthUpload;)V

    invoke-virtual {p5, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startBleHealthSync()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: No Internet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: No Valid Account Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, ">>> Sync BLE health Now <<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formattedGMTDateAndTimeStringFromCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BleHealthMonitor;->snapshot()Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    const-string v3, "1010"

    const-string v4, "BLELogging"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository;->putBleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: Initial Launch | not loggin in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTimer()V
    .locals 8

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTime:J

    .line 67
    iput-wide v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimeTicker:J

    .line 69
    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x7530

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/bluetoothle/BleHealthUpload$2;-><init>(Lcom/senseonics/bluetoothle/BleHealthUpload;JJ)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload;->cTimer:Landroid/os/CountDownTimer;

    .line 92
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

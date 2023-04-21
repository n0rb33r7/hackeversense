.class public Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "MyTransmitterExpandablePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;",
        ">;"
    }
.end annotation


# static fields
.field static final SHOW_RSSI:Z = false


# instance fields
.field private final DEMO_EXECUTION_TIME:J

.field private final DEMO_TIMER_INTERVAL:J

.field private client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private demoTimer:Ljava/util/Timer;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private final prefLastExerciseVibrationTime:Ljava/lang/String;

.field private rssiTimer:Ljava/util/Timer;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fgetclient(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastExerciseVibrationTime(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setLastExerciseVibrationTime(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldEnableDemo(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->shouldEnableDemo()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;Lcom/senseonics/bluetoothle/FwUpdateChecker;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_TIMER_INTERVAL:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_EXECUTION_TIME:J

    const-string v0, "lastExerciseVibrationTime"

    .line 34
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->prefLastExerciseVibrationTime:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    .line 58
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 59
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 60
    iput-object p5, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    iput-object p6, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    return-void
.end method

.method private fetchTransmitterInfo()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshViews()V

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshRssi(I)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->showProgress()V

    .line 89
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->postRequests()V

    .line 90
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startRssiTimer()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->hideProgress()V

    :goto_0
    return-void
.end method

.method private getDemoOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 242
    new-instance v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    return-object v0
.end method

.method private getFwUpdateListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 230
    new-instance v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    return-object v0
.end method

.method private getHeaderClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 257
    new-instance v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;I)V

    return-object v0
.end method

.method private getLastExerciseVibrationTime()J
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lastExerciseVibrationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private postRequests()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPingRequest()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetModelRequest()V

    .line 101
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumberRequest()V

    .line 102
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateTimeRequest()V

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentCalibrationPhaseRequest()V

    .line 104
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postBatteryLifeRequest()V

    .line 106
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartDateTimeRequest()V

    return-void
.end method

.method private refreshRssi(I)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const v1, 0x7f110220

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_0

    .line 207
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {p1, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->refreshRssi(Ljava/lang/String;)V

    return-void
.end method

.method private refreshViews()V
    .locals 19

    move-object/from16 v0, p0

    .line 180
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const v2, 0x7f110220

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v4

    .line 183
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v5

    .line 184
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/senseonics/util/StyleManager;->getButtonTextColorForState(Landroid/content/Context;Z)I

    move-result v6

    .line 186
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 187
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 188
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 189
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 190
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->hasFwUpdateAvailable()Z

    move-result v2

    const/16 v17, 0x0

    const/16 v18, 0x8

    if-eqz v2, :cond_0

    move/from16 v11, v17

    goto :goto_0

    :cond_0
    move/from16 v11, v18

    .line 191
    :goto_0
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v2

    sget-object v3, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object v12, v1

    .line 193
    :goto_1
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object v13, v1

    .line 194
    :goto_2
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object v14, v1

    .line 195
    :goto_3
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object v15, v1

    .line 196
    :goto_4
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v2, v3, :cond_5

    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object/from16 v16, v1

    .line 198
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface/range {v3 .. v16}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->refreshViews(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportXLNewCommands()Z

    move-result v1

    .line 201
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v2, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v3, 0x7f090289

    const v4, 0x7f090118

    if-eqz v1, :cond_6

    move/from16 v1, v17

    goto :goto_5

    :cond_6
    move/from16 v1, v18

    :goto_5
    invoke-interface {v2, v3, v4, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setViewVisibilityByID(III)V

    return-void
.end method

.method private setLastExerciseVibrationTime(J)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastExerciseVibrationTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setupCalInfoLayout()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f0900c7

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    return-void
.end method

.method private setupDemoLayout()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f090118

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    .line 226
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getDemoOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupDemoOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupDeviceInfoLayout()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const v1, 0x7f090123

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupSectionExpandCollapse(IZ)V

    .line 215
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getFwUpdateListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setupFwUpdateListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupViews()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupDeviceInfoLayout()V

    .line 175
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupCalInfoLayout()V

    .line 176
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupDemoLayout()V

    return-void
.end method

.method private shouldEnableDemo()Z
    .locals 4

    .line 150
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getLastExerciseVibrationTime()J

    move-result-wide v0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_EXECUTION_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startDemoTimer()V
    .locals 6

    .line 132
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopDemoTimer()V

    .line 134
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    .line 135
    new-instance v1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V

    iget-wide v4, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->DEMO_TIMER_INTERVAL:J

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startRssiTimer()V
    .locals 0

    return-void
.end method

.method private stopDemoTimer()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->demoTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private stopRssiTimer()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->rssiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->rssiTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->setupViews()V

    .line 70
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fetchTransmitterInfo()V

    .line 71
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startDemoTimer()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopRssiTimer()V

    .line 80
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->stopDemoTimer()V

    return-void
.end method

.method synthetic lambda$getFwUpdateListener$0$com-senseonics-gen12androidapp-MyTransmitterExpandablePresenter(Landroid/view/View;)V
    .locals 6

    .line 231
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "eversensedms.com"

    aput-object v3, v1, v2

    const v2, 0x7f11032e

    .line 233
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f11032d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 231
    invoke-interface/range {v0 .. v5}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->fetchTransmitterInfo()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;)V
    .locals 0

    .line 166
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->getRSSIValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshRssi(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/FwUpdateRequestCompleteEvent;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->hideProgress()V

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->refreshViews()V

    return-void
.end method

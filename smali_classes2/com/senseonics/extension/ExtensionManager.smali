.class public Lcom/senseonics/extension/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;,
        Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lde/greenrobot/event/EventBus;Lcom/senseonics/util/NotificationContentIntentHelper;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 75
    iput-object p3, p0, Lcom/senseonics/extension/ExtensionManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 76
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    iput-object p4, p0, Lcom/senseonics/extension/ExtensionManager;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    .line 78
    iput-object p5, p0, Lcom/senseonics/extension/ExtensionManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 79
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 80
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateExtension()V

    return-void
.end method

.method private getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;
    .locals 4

    .line 396
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    const v0, 0x7f110220

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object p1

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    const v1, 0x7f110039

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCollapseLayoutBackgroundColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I
    .locals 1

    .line 230
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$1;->$SwitchMap$com$senseonics$extension$ExtensionManager$HEADER_STATUS:[I

    invoke-virtual {p1}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f060292

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f06006b

    goto :goto_0

    :pswitch_1
    const v0, 0x7f060074

    goto :goto_0

    :pswitch_2
    const v0, 0x7f060070

    .line 262
    :goto_0
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCollapseLayoutTextColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I
    .locals 2

    .line 192
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$1;->$SwitchMap$com$senseonics$extension$ExtensionManager$HEADER_STATUS:[I

    invoke-virtual {p1}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f060021

    const v1, 0x7f060291

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const v0, 0x7f060089

    .line 224
    :goto_0
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getCommonTextColor(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I
    .locals 1

    .line 403
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f060291

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f060089

    .line 409
    :goto_1
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getGlucoseDisplay()Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto/16 :goto_1

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-ne v0, v1, :cond_1

    .line 433
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_2

    .line 435
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_3

    .line 437
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 444
    :cond_6
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->checkIfStaleData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 447
    :cond_7
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->VALID:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    goto :goto_1

    .line 441
    :cond_8
    :goto_0
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    :goto_1
    return-object v0
.end method

.method private getGlucoseString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;
    .locals 1

    .line 350
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v0, :cond_1

    .line 353
    sget-object p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String;

    goto :goto_1

    .line 354
    :cond_1
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v0, :cond_2

    .line 355
    sget-object p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String;

    goto :goto_1

    .line 357
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseValue()I

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 351
    :cond_3
    :goto_0
    sget-object p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method private getGlucoseUnit()Lcom/senseonics/util/Utils$GLUCOSE_UNIT;
    .locals 1

    .line 420
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    return-object v0
.end method

.method private getGlucoseValue()I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v0

    return v0
.end method

.method private getHeaderString(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)Ljava/lang/String;
    .locals 1

    .line 268
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$1;->$SwitchMap$com$senseonics$extension$ExtensionManager$HEADER_STATUS:[I

    invoke-virtual {p1}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f110135

    goto :goto_0

    :pswitch_1
    const p1, 0x7f11012f

    goto :goto_0

    :pswitch_2
    const p1, 0x7f11012b

    goto :goto_0

    :pswitch_3
    const p1, 0x7f11012e

    goto :goto_0

    :pswitch_4
    const p1, 0x7f11012a

    goto :goto_0

    :pswitch_5
    const p1, 0x7f110215

    goto :goto_0

    :pswitch_6
    const p1, 0x7f11021e

    :goto_0
    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHeaderTextColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I
    .locals 1

    .line 312
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$1;->$SwitchMap$com$senseonics$extension$ExtensionManager$HEADER_STATUS:[I

    invoke-virtual {p1}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f060291

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f06006b

    goto :goto_0

    :pswitch_1
    const v0, 0x7f060074

    goto :goto_0

    :pswitch_2
    const v0, 0x7f060070

    goto :goto_0

    :pswitch_3
    const v0, 0x7f060089

    .line 344
    :goto_0
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHighAlarmLevel()I
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    return v0
.end method

.method private getHighTargetLevel()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v0

    return v0
.end method

.method private getLowAlarmLevel()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    return v0
.end method

.method private getLowTargetLevel()I
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v0

    return v0
.end method

.method private getStatusHeaderStatus()Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
    .locals 8

    .line 465
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->UNKNOWN:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 467
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getHighAlarmLevel()I

    move-result v1

    .line 468
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getLowAlarmLevel()I

    move-result v2

    .line 469
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getHighTargetLevel()I

    move-result v3

    .line 470
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getLowTargetLevel()I

    move-result v4

    .line 471
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseValue()I

    move-result v5

    .line 472
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseDisplay()Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    move-result-object v6

    .line 474
    sget-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne v6, v7, :cond_0

    .line 475
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    .line 476
    :cond_0
    sget-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne v6, v7, :cond_1

    .line 477
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    .line 478
    :cond_1
    sget-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne v6, v7, :cond_2

    .line 479
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    .line 480
    :cond_2
    sget-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->HI:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne v6, v7, :cond_3

    .line 481
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    .line 482
    :cond_3
    sget-object v7, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->LO:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne v6, v7, :cond_4

    .line 483
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    .line 485
    :cond_4
    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v5, v6, :cond_9

    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v5, v6, :cond_9

    if-le v5, v1, :cond_5

    .line 487
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    :cond_5
    if-ge v5, v2, :cond_6

    .line 489
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    :cond_6
    if-le v5, v3, :cond_7

    if-gt v5, v1, :cond_7

    .line 491
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    :cond_7
    if-lt v5, v2, :cond_8

    if-ge v5, v4, :cond_8

    .line 493
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    goto :goto_0

    :cond_8
    if-gt v5, v3, :cond_9

    if-lt v5, v4, :cond_9

    .line 495
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    :cond_9
    :goto_0
    return-object v0
.end method

.method private getTrend()Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    return-object v0
.end method

.method private getTrendAlpha(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I
    .locals 2

    .line 373
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getTrendBlindness()Z

    move-result v0

    .line 374
    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/16 p1, 0x66

    goto :goto_0

    :cond_2
    const/16 p1, 0xff

    :goto_0
    return p1
.end method

.method private getTrendBlindness()Z
    .locals 2

    .line 454
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getTrend()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 455
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 456
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 457
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 458
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 459
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 460
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 461
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->checkIfStaleData()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private getTrendImage(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I
    .locals 2

    .line 364
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getTrend()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    if-ne p1, v1, :cond_0

    .line 366
    sget-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 369
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/util/Utils$ARROW_TYPE;->getImageId()I

    move-result p1

    return p1
.end method

.method private getTrendVisibility(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I
    .locals 2

    .line 382
    invoke-direct {p0, p1}, Lcom/senseonics/extension/ExtensionManager;->getTrendAlpha(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result p1

    .line 384
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeStaleTrend()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    if-ge p1, v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    return v1
.end method

.method private getUnitString()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetView()Landroid/widget/RemoteViews;
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/senseonics/extension/ExtensionManager;->getForegroundNotificationExpandedView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/senseonics/extension/ExtensionManager;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Lcom/senseonics/util/NotificationContentIntentHelper;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f090306

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method private updateExtension()V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateForegroundServiceNotification()V

    .line 167
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateWidget()V

    return-void
.end method

.method private updateForegroundServiceNotification()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/UpdateForegroundServiceNotificationEvent;

    invoke-direct {v1}, Lcom/senseonics/events/UpdateForegroundServiceNotificationEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private updateWidget()V
    .locals 4

    .line 175
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getWidgetView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    const-class v3, Lcom/senseonics/extension/MyAppWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    iget-object v2, p0, Lcom/senseonics/extension/ExtensionManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public getForegroundNotificationCollapsedView()Landroid/widget/RemoteViews;
    .locals 6

    .line 87
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00aa

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 89
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseDisplay()Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    move-result-object v1

    .line 90
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getStatusHeaderStatus()Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    move-result-object v2

    .line 92
    invoke-direct {p0, v2}, Lcom/senseonics/extension/ExtensionManager;->getCollapseLayoutBackgroundColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I

    move-result v3

    const v4, 0x7f090197

    const-string v5, "setBackgroundColor"

    invoke-virtual {v0, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 94
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0903f3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0, v2}, Lcom/senseonics/extension/ExtensionManager;->getCollapseLayoutTextColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 97
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendImage(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v3

    const v4, 0x7f0901eb

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 98
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendAlpha(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v3

    const-string v5, "setImageAlpha"

    invoke-virtual {v0, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 99
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendVisibility(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getUnitString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903f9

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0, v2}, Lcom/senseonics/extension/ExtensionManager;->getCollapseLayoutTextColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v0
.end method

.method public getForegroundNotificationExpandedView()Landroid/widget/RemoteViews;
    .locals 5

    .line 108
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/senseonics/extension/ExtensionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c00ab

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseDisplay()Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    move-result-object v1

    .line 111
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getStatusHeaderStatus()Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    move-result-object v2

    .line 113
    invoke-direct {p0, v2}, Lcom/senseonics/extension/ExtensionManager;->getHeaderString(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0903f4

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0, v2}, Lcom/senseonics/extension/ExtensionManager;->getHeaderTextColor(Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 116
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0903f3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getCommonTextColor(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 119
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendImage(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v2

    const v3, 0x7f0901eb

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 120
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendAlpha(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v2

    const-string v4, "setImageAlpha"

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 121
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getTrendVisibility(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getUnitString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0903f9

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getCommonTextColor(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 126
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getBatteryString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0903f2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/senseonics/extension/ExtensionManager;->getCommonTextColor(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v0
.end method

.method public getForegroundNotificationTicker()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseDisplay()Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/senseonics/extension/ExtensionManager;->getGlucoseString(Lcom/senseonics/extension/ExtensionManager$GLUCOSE_DISPLAY;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 143
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    .line 144
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/senseonics/extension/ExtensionManager;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 148
    :goto_0
    iput-object p1, p0, Lcom/senseonics/extension/ExtensionManager;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateExtension()V

    :cond_2
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/MessageCodeChangedEvent;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateExtension()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/UpdateExtensionEvent;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/senseonics/extension/ExtensionManager;->updateExtension()V

    return-void
.end method

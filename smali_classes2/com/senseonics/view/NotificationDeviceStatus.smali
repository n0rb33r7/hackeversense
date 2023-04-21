.class public Lcom/senseonics/view/NotificationDeviceStatus;
.super Landroid/widget/LinearLayout;
.source "NotificationDeviceStatus.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clearStatusDisplay()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060021

    .line 132
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060073

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayNoSignal()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f110219

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060021

    .line 98
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060073

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 4

    .line 113
    sget-object v0, Lcom/senseonics/view/NotificationDeviceStatus$2;->$SwitchMap$com$senseonics$bluetoothle$Transmitter$CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060073

    const v2, 0x7f060021

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f11021e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 125
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f11009a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 119
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private getColorInt(I)I
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 345
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCollectingData()Z

    move-result v0

    const v1, 0x7f110243

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f110090

    new-array v0, v3, [Ljava/lang/Object;

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private varargs getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00e7

    .line 47
    invoke-static {p1, v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0903af

    .line 48
    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p1, 0x7f060021

    .line 49
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 50
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f060073

    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z
    .locals 1

    .line 337
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v0, :cond_1

    sget-object p1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private updateCalibrationCountdown(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 138
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 139
    div-long v2, p1, v0

    long-to-int v2, v2

    .line 140
    rem-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x7f110048

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060021

    .line 143
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 144
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p2, 0x7f060073

    invoke-direct {p0, p2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method


# virtual methods
.method enableDosing()Z
    .locals 1

    .line 366
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    return v0
.end method

.method public getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 151
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHoursLeftForWarmupPhase()I

    move-result p1

    const-string v0, ")"

    const/4 v1, 0x0

    const-string v2, " (< "

    if-nez p1, :cond_0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v2, 0x7f110183

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v2, 0x7f110152

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDisplayingConnectionState()Z
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f11003e

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f11021e

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f11009a

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isInitialLaunch()Z
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 65
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/senseonics/view/NotificationDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus$1;-><init>(Lcom/senseonics/view/NotificationDeviceStatus;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 16

    move-object/from16 v0, p0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/model/ModelChangedEvent;->getModel()Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 160
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v3

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->enableDosing()Z

    move-result v4

    const v5, 0x7f110243

    const-wide/16 v6, 0x0

    const v8, 0x7f11008f

    const v9, 0x7f110248

    const v10, 0x7f110328

    const v11, 0x7f11003e

    const-string v15, " "

    const v13, 0x7f060073

    const v12, 0x7f060021

    const/4 v14, 0x0

    if-eqz v4, :cond_10

    .line 165
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v11, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 168
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v4

    sget-object v11, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v4, v11, :cond_1

    .line 172
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto/16 :goto_0

    .line 175
    :cond_1
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v2, v4, :cond_2

    .line 176
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v10, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 178
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 180
    :cond_2
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->displayNoSignal()V

    goto/16 :goto_0

    .line 182
    :cond_3
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentAppAlertCodeBeReasonForBlinded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 186
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 187
    :cond_4
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPlacementModeInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 189
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v9, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 191
    :cond_5
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v8, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 194
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 195
    :cond_6
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v2, v3, :cond_7

    .line 196
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentMessageCodeBeReasonForBlinded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 197
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 200
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 203
    :cond_7
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 204
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 206
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 208
    :cond_8
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    .line 209
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->updateCalibrationCountdown(J)V

    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-ne v2, v3, :cond_a

    const v1, 0x7f060065

    .line 213
    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 214
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v2, 0x7f110349

    new-array v3, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 220
    :cond_a
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_b

    .line 221
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 222
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v5, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 225
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 226
    :cond_b
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_c

    .line 227
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 228
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v2

    sget v3, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    if-le v2, v3, :cond_c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11016a

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 233
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 234
    :cond_c
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 235
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 237
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 239
    :cond_d
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_e

    .line 240
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 242
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11016a

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 245
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 246
    :cond_e
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_f

    .line 247
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 249
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 251
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    goto/16 :goto_0

    .line 257
    :cond_10
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_11

    .line 258
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v11, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 260
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 263
    :cond_11
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v4

    sget-object v11, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v4, v11, :cond_12

    .line 264
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto/16 :goto_0

    .line 267
    :cond_12
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v2, v4, :cond_13

    .line 268
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v10, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 270
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 272
    :cond_13
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->displayNoSignal()V

    goto/16 :goto_0

    .line 274
    :cond_14
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentAppAlertCodeBeReasonForBlinded()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 275
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 276
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 278
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 279
    :cond_15
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPlacementModeInProgress()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 280
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 281
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v9, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 283
    :cond_16
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 284
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v8, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 286
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 287
    :cond_17
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v2, v3, :cond_18

    .line 288
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentMessageCodeBeReasonForBlinded()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 289
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 292
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 293
    :cond_18
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_19

    .line 294
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->updateCalibrationCountdown(J)V

    goto/16 :goto_0

    .line 299
    :cond_19
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1a

    .line 300
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 301
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v5, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 304
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 305
    :cond_1a
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1b

    .line 306
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 307
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v2

    sget v3, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    if-le v2, v3, :cond_1b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 309
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11016a

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 312
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 313
    :cond_1b
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 314
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 315
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 316
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :cond_1c
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1d

    .line 319
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 321
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11016a

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 324
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 325
    :cond_1d
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1e

    .line 326
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 328
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 330
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

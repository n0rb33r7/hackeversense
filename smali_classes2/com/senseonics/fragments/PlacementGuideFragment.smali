.class public Lcom/senseonics/fragments/PlacementGuideFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "PlacementGuideFragment.java"


# instance fields
.field private btnDetail:Landroid/widget/Button;

.field private detailLayout:Landroid/widget/LinearLayout;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private imageView:Landroid/widget/ImageView;

.field private onCreateViewCalled:Z

.field private placementGuideProcessTimer:Ljava/util/Timer;

.field private simpleLayout:Landroid/widget/RelativeLayout;

.field private tvDetailSignal:Landroid/widget/TextView;

.field private tvSignal:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private vBar:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetbtnDetail(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->btnDetail:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdetailLayout(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->detailLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplacementGuideProcessTimer(Lcom/senseonics/fragments/PlacementGuideFragment;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsimpleLayout(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->simpleLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartTimer(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->startTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msupportDetail(Lcom/senseonics/fragments/PlacementGuideFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->supportDetail()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private getBtnDetailOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 267
    new-instance v0, Lcom/senseonics/fragments/PlacementGuideFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$4;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    return-object v0
.end method

.method private setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;I)V
    .locals 6

    const v0, 0x7f1102e2

    .line 201
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    sget-object v2, Lcom/senseonics/fragments/PlacementGuideFragment$5;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    invoke-virtual {p1}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    const p1, 0x7f08019b

    const v1, 0x7f11021c

    .line 240
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1

    :cond_0
    const p1, 0x7f110118

    .line 232
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f080198

    .line 234
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f110136

    .line 226
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f080199

    .line 228
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f110193

    .line 220
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f08019a

    .line 222
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f11034d

    .line 214
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f08019d

    .line 216
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const p1, 0x7f11024d

    .line 208
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f08019c

    .line 210
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move v5, v2

    move-object v2, p1

    move p1, v5

    .line 246
    :goto_1
    iget-object v4, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvStatus:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 247
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_5
    iget-object v3, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    .line 250
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_6
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvSignal:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 253
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_7
    invoke-virtual {p0, p2}, Lcom/senseonics/fragments/PlacementGuideFragment;->getSensorSignalPercentage(I)I

    move-result p1

    .line 258
    iget-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvDetailSignal:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_8
    iget-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->vBar:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 262
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    mul-int/lit16 p1, p1, 0x2710

    div-int/lit8 p1, p1, 0x64

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_9
    return-void
.end method

.method private setupPlacementGuideProcess()V
    .locals 14

    .line 150
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    .line 151
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setPlacementModeInProgress(Z)V

    .line 153
    iget-object v2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v3, Lcom/senseonics/fragments/PlacementGuideFragment$1;

    invoke-direct {v3, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$1;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    .line 158
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    .line 153
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 160
    iget-object v8, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v9, Lcom/senseonics/fragments/PlacementGuideFragment$2;

    invoke-direct {v9, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$2;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    .line 164
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->supportDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    move-wide v12, v0

    const-wide/16 v10, 0x0

    .line 160
    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 166
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/fragments/PlacementGuideFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$3;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5a

    .line 194
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startTimer()V
    .locals 9

    .line 118
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-ne v0, v1, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    const v4, 0x7f11024a

    .line 127
    invoke-virtual {p0, v4}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f110249

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 128
    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInMinutes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->setupPlacementGuideProcess()V

    return-void
.end method

.method private stopSignalStrengthTimer()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    .line 144
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postExitDiagnosticMode()V

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setPlacementModeInProgress(Z)V

    :cond_0
    return-void
.end method

.method private supportDetail()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrengthRawRegisterExists()Z

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->showPlacementGuideDetail(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getSensorSignalPercentage(I)I
    .locals 2

    const/16 v0, 0x15e

    .line 287
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x7ff

    .line 288
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x386

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42960000    # 75.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x440a0000    # 552.0f

    div-float/2addr p1, v0

    .line 292
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr p1, v0

    const v0, 0x448f2000    # 1145.0f

    div-float/2addr p1, v0

    .line 295
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x4b

    :goto_0
    const/4 v0, 0x0

    .line 298
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x64

    .line 299
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    const p3, 0x7f0c007f

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090344

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->simpleLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0901cb

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f090369

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvStatus:Landroid/widget/TextView;

    const p2, 0x7f090341

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvSignal:Landroid/widget/TextView;

    const p2, 0x7f09011f

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->detailLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0903ea

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->tvDetailSignal:Landroid/widget/TextView;

    const p2, 0x7f09040e

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->vBar:Landroid/view/View;

    const p2, 0x7f0900c1

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->btnDetail:Landroid/widget/Button;

    const p3, 0x7f1102e1

    .line 76
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 77
    iget-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->btnDetail:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getBtnDetailOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->btnDetail:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->supportDetail()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/events/SignalStrengthChangedEvent;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrengthRawIntValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    .line 104
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->stopSignalStrengthTimer()V

    .line 105
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 106
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrengthRawIntValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;I)V

    .line 90
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->startTimer()V

    .line 93
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/DismissPlacementGuide;

    invoke-direct {v1}, Lcom/senseonics/events/DismissPlacementGuide;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnCreateViewCalled(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    return-void
.end method

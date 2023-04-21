.class public Lcom/senseonics/fragments/AboutFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "AboutFragment.java"


# instance fields
.field private aboutView:Landroid/view/View;

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private eula:Landroid/widget/LinearLayout;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private feedback:Landroid/widget/LinearLayout;

.field protected fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private help:Landroid/widget/LinearLayout;

.field private myAccount:Landroid/widget/LinearLayout;

.field private myAccountTextView:Landroid/widget/TextView;

.field private myProductInfo:Landroid/widget/LinearLayout;

.field private mySensor:Landroid/widget/LinearLayout;

.field private myTransmitter:Landroid/widget/LinearLayout;

.field private privacyStatement:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$mOpenHelpLink(Lcom/senseonics/fragments/AboutFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/AboutFragment;->OpenHelpLink(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private OpenHelpLink(Landroid/content/Context;)V
    .locals 2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://global.eversensediabetes.com/distributors/"

    .line 204
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private refreshFwUpdateImageView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->hasFwUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showAndLogGlucoseAlertPopups(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 7

    .line 396
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 399
    :cond_2
    :goto_0
    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_2

    .line 397
    :cond_3
    :goto_1
    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_2
    move-object v5, v0

    .line 402
    new-instance v0, Lcom/senseonics/events/AlertEventPoint;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x64

    sget-object v6, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    const-wide/16 v1, -0x1

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v0, v1}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 406
    invoke-virtual {v0, v1}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    .line 407
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    .line 409
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_4

    goto :goto_4

    .line 411
    :cond_4
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_6

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 414
    :cond_5
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/AlertOrAlarmEvent;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p1

    invoke-direct {v2, v0, p1}, Lcom/senseonics/events/AlertOrAlarmEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5

    .line 412
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/PredictiveRateAlertEvent;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p1

    invoke-direct {v2, v0, p1}, Lcom/senseonics/events/PredictiveRateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5

    .line 410
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RateAlertEvent;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p1

    invoke-direct {v2, v0, p1}, Lcom/senseonics/events/RateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method private showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private showTestPopups_MmaTriggered()V
    .locals 2

    .line 381
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->BatteryOptimization:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NewPasswordDetected:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorFile:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->IncompatibleTx:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 385
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SystemTime:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    return-void
.end method

.method private showTestPopups_TxTriggered()V
    .locals 3

    .line 354
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspicious2Alert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_8

    .line 355
    invoke-static {v0}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 357
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved1:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved2:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->Reserved3:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 360
    :cond_0
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    goto :goto_4

    .line 363
    :cond_1
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    if-lt v0, v2, :cond_2

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 364
    invoke-direct {p0, v1}, Lcom/senseonics/fragments/AboutFragment;->showAndLogGlucoseAlertPopups(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_4

    .line 369
    :cond_2
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 371
    :cond_3
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL366:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL330:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL395:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, ""

    goto :goto_3

    :cond_5
    :goto_1
    const-string v2, "0"

    goto :goto_3

    .line 370
    :cond_6
    :goto_2
    sget-object v2, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    .line 375
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/senseonics/fragments/AboutFragment;->showAndLogTestPopups(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->myTransmitter:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$1;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->myProductInfo:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$2;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->mySensor:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$3;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 153
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addMyAccountPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/senseonics/fragments/AboutFragment$4;

    invoke-direct {v2, p0}, Lcom/senseonics/fragments/AboutFragment$4;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->eula:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$5;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$5;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->privacyStatement:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$6;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$6;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->feedback:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$7;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$7;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->help:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/fragments/AboutFragment$8;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/AboutFragment$8;-><init>(Lcom/senseonics/fragments/AboutFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c0074

    const/4 p3, 0x0

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090273

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myTransmitter:Landroid/widget/LinearLayout;

    .line 76
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090271

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->mySensor:Landroid/widget/LinearLayout;

    .line 77
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09026c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccount:Landroid/widget/LinearLayout;

    .line 78
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09026d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myAccountTextView:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f090270

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->myProductInfo:Landroid/widget/LinearLayout;

    .line 80
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09016d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->eula:Landroid/widget/LinearLayout;

    .line 81
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f0902e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->privacyStatement:Landroid/widget/LinearLayout;

    .line 82
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f09017b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->feedback:Landroid/widget/LinearLayout;

    .line 85
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    const p2, 0x7f0901a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->help:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->initViews()V

    .line 88
    iget-object p1, p0, Lcom/senseonics/fragments/AboutFragment;->aboutView:Landroid/view/View;

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/senseonics/fragments/AboutFragment;->refreshFwUpdateImageView()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/FwUpdateRequestCompleteEvent;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/senseonics/fragments/AboutFragment;->refreshFwUpdateImageView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 108
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/senseonics/fragments/AboutFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/AboutFragment;->refreshFwUpdateImageView()V

    return-void
.end method

.method public startMailClientIfExists()V
    .locals 13

    const v0, 0x7f1100a0

    .line 213
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11009f

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\n\n\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-------------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v4, 0x7f11031f

    invoke-virtual {p0, v4}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f110220

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v6, 0x7f110209

    invoke-virtual {p0, v6}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f1102cf

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f1101da

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v5

    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f11034c

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v5

    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f110181

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v5

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f110242

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_5
    move-object v8, v5

    :goto_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f110094

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v8

    if-ltz v8, :cond_6

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object v8, v5

    :goto_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f1100ab

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v8

    sget-object v9, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    move-object v8, v5

    :goto_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v8, 0x7f110036

    invoke-virtual {p0, v8}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v8

    sget-object v9, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_8
    move-object v8, v5

    :goto_8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v9, 0x7f11028d

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v9, 0x7f1102d0

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_9
    move-object v9, v5

    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v9, 0x7f11016b

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v9}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_a
    move-object v9, v5

    :goto_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v9, 0x7f11016c

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_b
    move-object v9, v5

    :goto_b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v9, 0x7f1100d6

    invoke-virtual {p0, v9}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/senseonics/fragments/AboutFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object v9, v5

    :goto_c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    if-eqz v9, :cond_11

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f110029

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 270
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v3

    .line 272
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v11

    .line 275
    :goto_d
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 276
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 277
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v12, 0x7f1100d4

    invoke-virtual {p0, v12}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_e

    :cond_d
    move-object v3, v5

    :goto_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f1101b2

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_e

    goto :goto_f

    :cond_e
    move-object v4, v5

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f1101d9

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v8, :cond_f

    goto :goto_10

    :cond_f
    move-object v8, v5

    :goto_10
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f11002a

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v9, :cond_10

    move-object v5, v9

    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "mailto:"

    .line 296
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 297
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    .line 298
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 299
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 302
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f11009e

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 304
    :cond_12
    invoke-virtual {p0}, Lcom/senseonics/fragments/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "There are no email clients installed."

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_11
    return-void
.end method

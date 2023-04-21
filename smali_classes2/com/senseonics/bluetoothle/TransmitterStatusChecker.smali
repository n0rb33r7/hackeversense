.class public Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.super Ljava/lang/Object;
.source "TransmitterStatusChecker.java"


# instance fields
.field protected code:Lcom/senseonics/util/TransmitterMessageCode;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field model:Lcom/senseonics/model/TransmitterStateModel;

.field transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;


# direct methods
.method constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 24
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    .line 25
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 26
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected canFire()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method fireAlert()V
    .locals 5

    .line 45
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->canFire()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->getStateValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->shouldShowAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->updateStateValue(Z)V

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    if-eqz v0, :cond_3

    const-string v4, "1"

    goto :goto_0

    :cond_3
    const-string v4, "0"

    :goto_0
    invoke-direct {v2, v3, v4, v0}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected getStateValue()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowAlert()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 0

    return-void
.end method

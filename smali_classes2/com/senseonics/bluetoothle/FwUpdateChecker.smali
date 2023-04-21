.class public Lcom/senseonics/bluetoothle/FwUpdateChecker;
.super Ljava/lang/Object;
.source "FwUpdateChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private final prefFwUpdateAvailable:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private repository:Lcom/senseonics/otw/OtwRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgeteventBus(Lcom/senseonics/bluetoothle/FwUpdateChecker;)Lde/greenrobot/event/EventBus;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetFwUpdateAvailable(Lcom/senseonics/bluetoothle/FwUpdateChecker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->setFwUpdateAvailable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/senseonics/otw/OtwRepository;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fwUpdateAvailable"

    .line 24
    iput-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->prefFwUpdateAvailable:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->preferences:Landroid/content/SharedPreferences;

    .line 45
    iput-object p3, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->repository:Lcom/senseonics/otw/OtwRepository;

    .line 46
    iput-object p4, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 47
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    iput-object p5, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private check()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->repository:Lcom/senseonics/otw/OtwRepository;

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->getSuccessAction()Lrx/functions/Action1;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->getErrorAction()Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/otw/OtwRepository;->checkFwUpdate(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private getErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/senseonics/bluetoothle/FwUpdateChecker$2;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker$2;-><init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V

    return-object v0
.end method

.method private getFwUpdateAvailable()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fwUpdateAvailable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;-><init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private setFwUpdateAvailable(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fwUpdateAvailable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public hasFwUpdateAvailable()Z
    .locals 2

    .line 124
    invoke-static {}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableOtw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->getFwUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->check()V

    :cond_0
    return-void
.end method

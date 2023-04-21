.class public Lcom/senseonics/getSetting/GetSettingRepository;
.super Ljava/lang/Object;
.source "GetSettingRepository.java"


# instance fields
.field private mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/GetSettingService;

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/GetSettingService;Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/getSetting/GetSettingRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 24
    iput-object p2, p0, Lcom/senseonics/getSetting/GetSettingRepository;->service:Lcom/senseonics/api/GetSettingService;

    .line 25
    iput-object p3, p0, Lcom/senseonics/getSetting/GetSettingRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method


# virtual methods
.method public checkBatteryMonitorThreshold(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/senseonics/getSetting/GetSettingRepository;->service:Lcom/senseonics/api/GetSettingService;

    invoke-interface {v0}, Lcom/senseonics/api/GetSettingService;->checkBatteryMonitorThreshold()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/api/RetryObservable;

    iget-object v2, p0, Lcom/senseonics/getSetting/GetSettingRepository;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v1, v2}, Lcom/senseonics/api/RetryObservable;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 30
    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/getSetting/GetSettingRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 31
    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/senseonics/getSetting/GetSettingRepository$1;

    invoke-direct {v1, p0}, Lcom/senseonics/getSetting/GetSettingRepository$1;-><init>(Lcom/senseonics/getSetting/GetSettingRepository;)V

    .line 32
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

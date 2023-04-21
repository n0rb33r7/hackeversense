.class public Lcom/senseonics/gcm/GCMRepository;
.super Ljava/lang/Object;
.source "GCMRepository.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/GCMService;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/GCMService;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 21
    iput-object p2, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    return-void
.end method

.method private postGCMDataMessage(Lcom/senseonics/gcm/GCMDataMessage;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->formatDateString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-interface {v0, v2, v1, p1}, Lcom/senseonics/api/GCMService;->postGCMData(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMDataMessage;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 59
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/gcm/GCMRepository$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gcm/GCMRepository$3;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    new-instance v1, Lcom/senseonics/gcm/GCMRepository$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gcm/GCMRepository$4;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    .line 60
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private postGCMMessage(Lcom/senseonics/gcm/GCMMessage;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->formatDateString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-interface {v0, v2, v1, p1}, Lcom/senseonics/api/GCMService;->postGCM(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMMessage;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 75
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/gcm/GCMRepository$5;

    invoke-direct {v0, p0}, Lcom/senseonics/gcm/GCMRepository$5;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    new-instance v1, Lcom/senseonics/gcm/GCMRepository$6;

    invoke-direct {v1, p0}, Lcom/senseonics/gcm/GCMRepository$6;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    .line 76
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private postGCMNotificationMessage(Lcom/senseonics/gcm/GCMNotificationMessage;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->service:Lcom/senseonics/api/GCMService;

    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->formatDateString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-interface {v0, v2, v1, p1}, Lcom/senseonics/api/GCMService;->postGCMNotification(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMNotificationMessage;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gcm/GCMRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 43
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/senseonics/gcm/GCMRepository$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gcm/GCMRepository$1;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    new-instance v1, Lcom/senseonics/gcm/GCMRepository$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gcm/GCMRepository$2;-><init>(Lcom/senseonics/gcm/GCMRepository;)V

    .line 44
    invoke-virtual {p1, v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public postGCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/senseonics/gcm/GCMNotification;

    const-string v1, "default"

    invoke-direct {v0, p2, p3, v1}, Lcom/senseonics/gcm/GCMNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_0

    .line 30
    new-instance p2, Lcom/senseonics/gcm/GCMNotificationMessage;

    invoke-direct {p2, p1, v0}, Lcom/senseonics/gcm/GCMNotificationMessage;-><init>(Ljava/lang/String;Lcom/senseonics/gcm/GCMNotification;)V

    invoke-direct {p0, p2}, Lcom/senseonics/gcm/GCMRepository;->postGCMNotificationMessage(Lcom/senseonics/gcm/GCMNotificationMessage;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance p4, Lcom/senseonics/gcm/GCMData;

    invoke-direct {p4, p2, p3}, Lcom/senseonics/gcm/GCMData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/senseonics/gcm/GCMDataMessage;

    const-string p3, "high"

    invoke-direct {p2, p1, p3, p4}, Lcom/senseonics/gcm/GCMDataMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/gcm/GCMData;)V

    invoke-direct {p0, p2}, Lcom/senseonics/gcm/GCMRepository;->postGCMDataMessage(Lcom/senseonics/gcm/GCMDataMessage;)V

    :goto_0
    return-void
.end method

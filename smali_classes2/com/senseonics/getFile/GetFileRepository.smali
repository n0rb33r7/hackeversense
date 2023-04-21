.class public Lcom/senseonics/getFile/GetFileRepository;
.super Ljava/lang/Object;
.source "GetFileRepository.java"


# instance fields
.field private final mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private final service:Lcom/senseonics/api/GetFileService;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/GetFileService;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/senseonics/getFile/GetFileRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 18
    iput-object p2, p0, Lcom/senseonics/getFile/GetFileRepository;->service:Lcom/senseonics/api/GetFileService;

    return-void
.end method


# virtual methods
.method public getFile(Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrx/functions/Action1<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/senseonics/getFile/GetFileRepository;->service:Lcom/senseonics/api/GetFileService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/GetFileService;->getFile(Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/getFile/GetFileRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 23
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

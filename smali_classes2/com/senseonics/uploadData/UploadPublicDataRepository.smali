.class public Lcom/senseonics/uploadData/UploadPublicDataRepository;
.super Ljava/lang/Object;
.source "UploadPublicDataRepository.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

.field private service:Lcom/senseonics/api/UploadPublicUserInfoService;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/UploadPublicUserInfoService;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/senseonics/uploadData/UploadPublicDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 20
    iput-object p2, p0, Lcom/senseonics/uploadData/UploadPublicDataRepository;->service:Lcom/senseonics/api/UploadPublicUserInfoService;

    return-void
.end method


# virtual methods
.method public uploadPublicUserInfo(Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/senseonics/uploadData/UploadPublicDataRepository;->service:Lcom/senseonics/api/UploadPublicUserInfoService;

    invoke-interface {v0, p1}, Lcom/senseonics/api/UploadPublicUserInfoService;->uploadPublicUserInfo(Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/uploadData/UploadPublicDataRepository;->mainThreadScheduler:Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    .line 25
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;->getScheduler()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

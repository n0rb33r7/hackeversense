.class public final Lrx/android/schedulers/HandlerScheduler;
.super Lrx/android/schedulers/LooperScheduler;
.source "HandlerScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "handler == null"

    .line 34
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lrx/android/schedulers/HandlerScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createWorker()Lrx/Scheduler$Worker;
    .locals 1

    .line 25
    invoke-super {p0}, Lrx/android/schedulers/LooperScheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    return-object v0
.end method

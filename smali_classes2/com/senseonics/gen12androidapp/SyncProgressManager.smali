.class public Lcom/senseonics/gen12androidapp/SyncProgressManager;
.super Ljava/lang/Object;
.source "SyncProgressManager.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private layoutSyncBar:Landroid/widget/RelativeLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_0

    const p1, 0x7f0902ea

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBar:Landroid/widget/ProgressBar;

    .line 27
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 28
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 29
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private finish()V
    .locals 1

    const/16 v0, 0x64

    .line 55
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    .line 56
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->hideSyncBar()V

    return-void
.end method

.method private hideSyncBar()V
    .locals 2

    const/16 v0, 0x8

    .line 79
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateSyncBarVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private initSyncBar()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/senseonics/util/StyleManager;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    :cond_0
    return-void
.end method

.method private showSyncBar()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->initSyncBar()V

    .line 74
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateSyncBarVisibility(I)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateSyncBarVisibility(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/events/SyncingProgressUpdateEvent;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->update()V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->hideSyncBar()V

    .line 47
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->finish()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->showSyncBar()V

    .line 38
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->finish()V

    :goto_0
    return-void
.end method

.class Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;
.super Ljava/lang/Object;
.source "RemovedPeerMessageHandler.java"


# instance fields
.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 28
    iput-object p3, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 29
    iput-object p4, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private eventBusPostMemberRemovedEvent(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/senseonics/events/MyCircleMemberRemovedEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/MyCircleMemberRemovedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getMessageString(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    const-string p1, ""

    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v7, 0x7f110122

    new-array v6, v6, [Ljava/lang/Object;

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v1

    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    .line 69
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v3

    .line 70
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v4

    .line 71
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v6, v5

    .line 65
    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v6, 0x7f110126

    new-array v5, v5, [Ljava/lang/Object;

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v1

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v2

    .line 62
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v3

    .line 63
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v5, v4

    .line 58
    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v5, 0x7f11030a

    new-array v4, v4, [Ljava/lang/Object;

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v1

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    .line 56
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v4, v3

    .line 52
    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v4, 0x7f110333

    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v1

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    .line 47
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v3, 0x7f11022f

    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 43
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTitleString()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->resources:Landroid/content/res/Resources;

    const v1, 0x7f11035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method postMemberRemovedEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->getMessageString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-direct {p0}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/NotificationUtility;->createMemberRemovedNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->eventBusPostMemberRemovedEvent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method showRemovedPeersMessage(Ljava/util/List;Lcom/senseonics/view/DialogShowingView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/senseonics/view/DialogShowingView;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->getMessageString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f11035b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/view/DialogShowingView;->showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

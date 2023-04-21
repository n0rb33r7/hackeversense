.class public Lcom/senseonics/mycircle/home/MyCircleMemberManager;
.super Ljava/lang/Object;
.source "MyCircleMemberManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

.field private model:Lcom/senseonics/mycircle/model/MyCircleModel;

.field private repository:Lcom/senseonics/mycircle/home/MyCircleRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)Lcom/senseonics/mycircle/model/MyCircleModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monFetchListsComplete(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->onFetchListsComplete()V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/mycircle/home/MyCircleRepository;Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "(DMS)MemberManager"

    .line 22
    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->Tag:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 33
    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    .line 34
    iput-object p3, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    .line 35
    iput-object p4, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    .line 36
    iput-object p5, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->context:Landroid/content/Context;

    return-void
.end method

.method private fetchMemberListNow()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "(DMS)MemberManager"

    if-nez v0, :cond_0

    const-string v0, "PANIC: No Internet"

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PANIC: not logged in"

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->repository:Lcom/senseonics/mycircle/home/MyCircleRepository;

    new-instance v2, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$1;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;Ljava/util/List;)V

    new-instance v3, Lcom/senseonics/mycircle/home/MyCircleMemberManager$2;

    invoke-direct {v3, p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$2;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;)V

    new-instance v4, Lcom/senseonics/mycircle/home/MyCircleMemberManager$3;

    invoke-direct {v4, p0, v0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$3;-><init>(Lcom/senseonics/mycircle/home/MyCircleMemberManager;Ljava/util/List;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerLists(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    return-void
.end method

.method private onFetchListsComplete()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->model:Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/model/MyCircleModel;->getRemovedMemberNamesAndSaveMembers()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->messageHandler:Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    invoke-virtual {v1, v0}, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;->postMemberRemovedEvent(Ljava/util/List;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToMemberListLastFetchedOnInPreference()V

    return-void
.end method


# virtual methods
.method public startLoadingMemberList()V
    .locals 11

    .line 41
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getMemberListLastFetchedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "(DMS)MemberManager"

    if-nez v4, :cond_0

    const-string v0, "no last fetch time -> FETCH NOW"

    .line 45
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->fetchMemberListNow()V

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeInMills:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|lastFetchedTimeInMills:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v8, v2

    if-gez v0, :cond_1

    const-string v0, "Invalid time"

    .line 53
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetMemberListLastFetchedOnInPreference()V

    return-void

    :cond_1
    const/16 v0, 0x78

    int-to-long v1, v0

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    cmp-long v1, v8, v1

    if-gez v1, :cond_2

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Less than ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->fetchMemberListNow()V

    :goto_0
    return-void
.end method

.class public final Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MyCircleMemberManager$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/mycircle/home/MyCircleMemberManager;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private messageHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/model/MyCircleModel;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/MyCircleRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    const-string v1, "com.senseonics.mycircle.home.MyCircleMemberManager"

    const-string v2, "members/com.senseonics.mycircle.home.MyCircleMemberManager"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 45
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AccountConstants"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    .line 46
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.home.MyCircleRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    .line 47
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.model.MyCircleModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    .line 48
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.home.RemovedPeerMessageHandler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    .line 49
    const-class v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/mycircle/home/MyCircleMemberManager;
    .locals 7

    .line 71
    new-instance v6, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/mycircle/home/MyCircleRepository;

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/mycircle/model/MyCircleModel;

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/mycircle/home/MyCircleRepository;Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;Landroid/content/Context;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->get()Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 58
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

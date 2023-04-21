.class public final Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BitmapSenderActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/BitmapSenderActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapSender:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BitmapSender;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapUtil:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/BitmapUtil;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ObjectGraphActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    const-class v0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    const-string v1, "com.senseonics.gen12androidapp.BitmapSenderActivity"

    const-string v2, "members/com.senseonics.gen12androidapp.BitmapSenderActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 42
    const-class v0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.BitmapUtil"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BitmapSender"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapSender:Ldagger/internal/Binding;

    .line 44
    const-class v3, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.gen12androidapp.ObjectGraphActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/BitmapSenderActivity;
    .locals 1

    .line 64
    new-instance v0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;-><init>()V

    .line 65
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/BitmapSenderActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

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

    .line 53
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapSender:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/BitmapSenderActivity;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/BitmapUtil;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    .line 76
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->bitmapSender:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BitmapSender;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapSender:Lcom/senseonics/gen12androidapp/BitmapSender;

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/BitmapSenderActivity;)V

    return-void
.end method

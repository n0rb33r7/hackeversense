.class public final Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SoundSettingsSimplifiedActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private presenter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BaseMVPActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    const-string v1, "com.senseonics.gen12androidapp.SoundSettingsSimplifiedActivity"

    const-string v2, "members/com.senseonics.gen12androidapp.SoundSettingsSimplifiedActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 39
    const-class v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.SoundSettingsSimplifiedPresenter"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    .line 40
    const-class v3, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.gen12androidapp.BaseMVPActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;
    .locals 1

    .line 59
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

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

    .line 49
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    .line 71
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;)V

    return-void
.end method

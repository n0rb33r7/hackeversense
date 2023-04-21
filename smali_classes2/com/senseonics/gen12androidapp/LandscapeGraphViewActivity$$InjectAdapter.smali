.class public final Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "LandscapeGraphViewActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private emailer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/Emailer;",
            ">;"
        }
    .end annotation
.end field

.field private intentUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/IntentUtils;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    const-class v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const-string v1, "com.senseonics.gen12androidapp.LandscapeGraphViewActivity"

    const-string v2, "members/com.senseonics.gen12androidapp.LandscapeGraphViewActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 43
    const-class v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.Emailer"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->emailer:Ldagger/internal/Binding;

    .line 44
    const-class v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.IntentUtils"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->intentUtils:Ldagger/internal/Binding;

    .line 45
    const-class v3, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.gen12androidapp.BaseActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
    .locals 1

    .line 65
    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

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

    .line 54
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->emailer:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->intentUtils:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->emailer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Emailer;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->emailer:Lcom/senseonics/util/Emailer;

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->intentUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/IntentUtils;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->intentUtils:Lcom/senseonics/util/IntentUtils;

    .line 78
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    return-void
.end method

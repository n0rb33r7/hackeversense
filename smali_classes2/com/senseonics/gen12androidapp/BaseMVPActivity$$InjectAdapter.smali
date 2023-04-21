.class public final Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseMVPActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/BaseMVPActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private progressDialogFragment:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/view/ProgressDialogFragment;",
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

    .line 27
    const-class v0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;

    const/4 v1, 0x0

    const-string v2, "members/com.senseonics.gen12androidapp.BaseMVPActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 37
    const-class v0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.view.ProgressDialogFragment"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->progressDialogFragment:Ldagger/internal/Binding;

    .line 38
    const-class v3, Lcom/senseonics/gen12androidapp/BaseMVPActivity;

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

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
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

    .line 47
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->progressDialogFragment:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/BaseMVPActivity;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->progressDialogFragment:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/view/ProgressDialogFragment;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;

    .line 58
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/senseonics/gen12androidapp/BaseMVPActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/BaseMVPActivity;)V

    return-void
.end method

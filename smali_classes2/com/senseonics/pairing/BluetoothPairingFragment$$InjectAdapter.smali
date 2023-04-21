.class public final Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothPairingFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothPairingFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private presenter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private presenterUI:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingPresenterUI;",
            ">;"
        }
    .end annotation
.end field

.field private view:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    const-string v1, "com.senseonics.pairing.BluetoothPairingFragment"

    const-string v2, "members/com.senseonics.pairing.BluetoothPairingFragment"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothPairingPresenter"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothPairingView"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothPairingPresenterUI"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenterUI:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothPairingFragment;
    .locals 1

    .line 63
    new-instance v0, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {v0}, Lcom/senseonics/pairing/BluetoothPairingFragment;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothPairingFragment;

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

    .line 52
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenterUI:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/pairing/BluetoothPairingPresenter;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenter:Lcom/senseonics/pairing/BluetoothPairingPresenter;

    .line 75
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/pairing/BluetoothPairingView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingFragment;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    .line 76
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->presenterUI:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingFragment;->presenterUI:Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/pairing/BluetoothPairingFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingFragment;)V

    return-void
.end method

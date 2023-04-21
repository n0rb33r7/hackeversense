.class public final Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothPairingPresenterUI$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/pairing/BluetoothPairingPresenterUI;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private bus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private enabler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingModel;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/pairing/BluetoothPairingPresenter;",
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

    .line 42
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    const-string v1, "com.senseonics.pairing.BluetoothPairingPresenterUI"

    const-string v2, "members/com.senseonics.pairing.BluetoothPairingPresenterUI"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 52
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->bus:Ldagger/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothPairingModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->model:Ldagger/internal/Binding;

    .line 54
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothPairingView"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->view:Ldagger/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.pairing.BluetoothEnabler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    .line 57
    const-class v0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.app.Activity"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->activity:Ldagger/internal/Binding;

    .line 58
    const-class v3, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.pairing.BluetoothPairingPresenter"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/pairing/BluetoothPairingPresenterUI;
    .locals 8

    .line 82
    new-instance v7, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/pairing/BluetoothPairingModel;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/pairing/BluetoothEnabler;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->activity:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothPairingModel;Lcom/senseonics/pairing/BluetoothPairingView;Lcom/senseonics/pairing/BluetoothEnabler;Landroid/bluetooth/BluetoothAdapter;Landroid/app/Activity;)V

    .line 83
    invoke-virtual {p0, v7}, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingPresenterUI;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->get()Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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

    .line 67
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->view:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->enabler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->adapter:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->activity:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/pairing/BluetoothPairingPresenterUI;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;

    invoke-virtual {p0, p1}, Lcom/senseonics/pairing/BluetoothPairingPresenterUI$$InjectAdapter;->injectMembers(Lcom/senseonics/pairing/BluetoothPairingPresenterUI;)V

    return-void
.end method

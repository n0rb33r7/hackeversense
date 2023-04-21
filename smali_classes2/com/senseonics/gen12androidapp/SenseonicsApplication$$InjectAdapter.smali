.class public final Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SenseonicsApplication$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SenseonicsApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationForegroundState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManagerLazy:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ldagger/Lazy<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    const-class v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    const-string v1, "com.senseonics.gen12androidapp.SenseonicsApplication"

    const-string v2, "members/com.senseonics.gen12androidapp.SenseonicsApplication"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 44
    const-class v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "dagger.Lazy<com.senseonics.db.DatabaseManager>"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->databaseManagerLazy:Ldagger/internal/Binding;

    .line 45
    const-class v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->bluetoothServiceClient:Ldagger/internal/Binding;

    .line 46
    const-class v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ApplicationForegroundState"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SenseonicsApplication;
    .locals 1

    .line 66
    new-instance v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SenseonicsApplication;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SenseonicsApplication;

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

    .line 55
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->databaseManagerLazy:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->bluetoothServiceClient:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SenseonicsApplication;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->databaseManagerLazy:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/Lazy;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->databaseManagerLazy:Ldagger/Lazy;

    .line 78
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->bluetoothServiceClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->bluetoothServiceClient:Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    .line 79
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SenseonicsApplication$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SenseonicsApplication;)V

    return-void
.end method

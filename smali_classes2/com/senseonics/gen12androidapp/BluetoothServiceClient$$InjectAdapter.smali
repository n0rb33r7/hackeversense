.class public final Lcom/senseonics/gen12androidapp/BluetoothServiceClient$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothServiceClient$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/BluetoothServiceClient;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceConnection:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    const-string v1, "com.senseonics.gen12androidapp.BluetoothServiceClient"

    const-string v2, "members/com.senseonics.gen12androidapp.BluetoothServiceClient"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 34
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceConnection"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient$$InjectAdapter;->bluetoothServiceConnection:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;
    .locals 2

    .line 52
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient$$InjectAdapter;->bluetoothServiceConnection:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;

    invoke-direct {v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;-><init>(Lcom/senseonics/gen12androidapp/BluetoothServiceConnection;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

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

    .line 43
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceClient$$InjectAdapter;->bluetoothServiceConnection:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

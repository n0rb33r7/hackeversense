.class public final Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TimeChangedReceiver$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/TimeChangedReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    const-class v0, Lcom/senseonics/util/TimeChangedReceiver;

    const-string v1, "com.senseonics.util.TimeChangedReceiver"

    const-string v2, "members/com.senseonics.util.TimeChangedReceiver"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 41
    const-class v0, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    .line 42
    const-class v0, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/TimeChangedReceiver;
    .locals 1

    .line 61
    new-instance v0, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-direct {v0}, Lcom/senseonics/util/TimeChangedReceiver;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->get()Lcom/senseonics/util/TimeChangedReceiver;

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

    .line 51
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iput-object v0, p1, Lcom/senseonics/util/TimeChangedReceiver;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/TransmitterStateModel;

    iput-object v0, p1, Lcom/senseonics/util/TimeChangedReceiver;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/senseonics/util/TimeChangedReceiver;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/TimeChangedReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/TimeChangedReceiver;)V

    return-void
.end method

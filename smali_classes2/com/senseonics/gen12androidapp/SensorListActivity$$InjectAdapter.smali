.class public final Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SensorListActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private sensorLinkDMSStateModelSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private sramResultChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;",
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

.field private writeCalDataModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 36
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    const-string v1, "com.senseonics.gen12androidapp.SensorListActivity"

    const-string v2, "members/com.senseonics.gen12androidapp.SensorListActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 46
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.SensorLinkDMSStateModelSyncManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sensorLinkDMSStateModelSyncManager:Ldagger/internal/Binding;

    .line 47
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.SensorLinkWriteCalDataModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->writeCalDataModel:Ldagger/internal/Binding;

    .line 48
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.SensorLinkSramResultChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sramResultChecker:Ldagger/internal/Binding;

    .line 49
    const-class v3, Lcom/senseonics/gen12androidapp/SensorListActivity;

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

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SensorListActivity;
    .locals 1

    .line 70
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SensorListActivity;

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
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sensorLinkDMSStateModelSyncManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->writeCalDataModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sramResultChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sensorLinkDMSStateModelSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->writeCalDataModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    .line 83
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->sramResultChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    return-void
.end method

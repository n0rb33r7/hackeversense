.class public final Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;",
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

.field private calibrationHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/CalibrationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private databaseManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 41
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    const-string v1, "com.senseonics.model.SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse"

    const-string v2, "members/com.senseonics.model.SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 51
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.CalibrationHelper"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    .line 52
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 54
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    .line 56
    const-class v3, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.model.SendBloodGlucoseDataResponseParsedResponse"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;
    .locals 7

    .line 79
    new-instance v6, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/model/CalibrationHelper;

    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/db/DatabaseManager;

    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;-><init>(Lcom/senseonics/model/CalibrationHelper;Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V

    .line 80
    invoke-virtual {p0, v6}, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->injectMembers(Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

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

    .line 65
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    invoke-virtual {p0, p1}, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse$$InjectAdapter;->injectMembers(Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;)V

    return-void
.end method

.class public final Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterStaleGlucoseChecker$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
        ">;"
    }
.end annotation


# instance fields
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

.field private messageCoder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/MessageCoder;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
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
            "Lcom/senseonics/bluetoothle/TransmitterStatusChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 44
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    const-string v1, "com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    const-string v2, "members/com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 54
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterStatusAlertVisibilityKeeper"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 57
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    .line 58
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.MessageCoder"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    .line 59
    const-class v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    .line 60
    const-class v3, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.bluetoothle.TransmitterStatusChecker"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
    .locals 8

    .line 84
    new-instance v7, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/gen12androidapp/MessageCoder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/db/DatabaseManager;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/db/DatabaseManager;)V

    .line 85
    invoke-virtual {p0, v7}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V

    return-object v7
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

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

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->transmitterStatusAlertVisibilityKeeper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;)V

    return-void
.end method

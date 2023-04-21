.class public final Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "PushNotificationListener$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/PushNotificationListener;",
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

.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
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

.field private dialogUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
            ">;"
        }
    .end annotation
.end field

.field private dmsStateModelSyncManagerIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;",
            ">;"
        }
    .end annotation
.end field

.field private dmsSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private dmsSyncManagerSOAPIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;",
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

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
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

.field private myCircleMemberManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/MyCircleMemberManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationEventPersistor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationEventPersistor;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private registrationIDRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gcm/RegistrationIDRepository;",
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

.field private syncModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncModel;",
            ">;"
        }
    .end annotation
.end field

.field private tempProfileManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 75
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    const-string v1, "com.senseonics.bluetoothle.PushNotificationListener"

    const-string v2, "members/com.senseonics.bluetoothle.PushNotificationListener"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 85
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    .line 86
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 87
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ApplicationForegroundState"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    .line 88
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.NotificationUtility"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    .line 89
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    .line 90
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    .line 91
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.MessageCoder"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    .line 92
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    .line 93
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    .line 94
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DialogUtils"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    .line 95
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSSyncManager_SOAP"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    .line 96
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSSyncManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    .line 97
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSStateModelSyncManager_SOAP"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    .line 98
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DMSStateModelSyncManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    .line 99
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TempProfileManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    .line 100
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.SyncModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    .line 101
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gcm.RegistrationIDRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    .line 102
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.mycircle.home.MyCircleMemberManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    .line 103
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.NotificationEventPersistor"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    .line 104
    const-class v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.Handler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->handler:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/PushNotificationListener;
    .locals 24

    move-object/from16 v0, p0

    .line 141
    new-instance v22, Lcom/senseonics/bluetoothle/PushNotificationListener;

    move-object/from16 v1, v22

    iget-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    iget-object v4, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v5, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/util/NotificationUtility;

    iget-object v6, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/db/DatabaseManager;

    iget-object v7, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v8, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-virtual {v8}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/gen12androidapp/MessageCoder;

    iget-object v9, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v9}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v10, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v10}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/SharedPreferences;

    iget-object v11, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v11}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v12, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-virtual {v12}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    iget-object v13, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v13}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/senseonics/bluetoothle/DMSSyncManager;

    iget-object v14, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-virtual {v14}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

    iget-object v15, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    invoke-virtual {v15}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/senseonics/model/SyncModel;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/senseonics/gcm/RegistrationIDRepository;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/senseonics/util/NotificationEventPersistor;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/os/Handler;

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/senseonics/bluetoothle/PushNotificationListener;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSSyncManager;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/model/SyncModel;Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/mycircle/home/MyCircleMemberManager;Lcom/senseonics/util/NotificationEventPersistor;Landroid/os/Handler;)V

    return-object v22
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/PushNotificationListener;

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

    .line 113
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationEventPersistor:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class public Lcom/senseonics/gen12androidapp/AndroidModule;
.super Ljava/lang/Object;
.source "AndroidModule.java"


# annotations
.annotation runtime Ldagger/Module;
    injects = {
        Lcom/senseonics/gen12androidapp/SenseonicsApplication;
    }
    library = true
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method provideApplicationForegroundState()Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 77
    new-instance v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;-><init>()V

    return-object v0
.end method

.method protected provideAudioManager()Landroid/media/AudioManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method protected provideContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected provideDatabaseManager()Lcom/senseonics/db/DatabaseManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 44
    new-instance v0, Lcom/senseonics/db/DatabaseManager;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/senseonics/db/DatabaseManager;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->open()V

    return-object v0
.end method

.method protected provideEventBus()Lde/greenrobot/event/EventBus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 71
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    return-object v0
.end method

.method provideGraphCache(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)Lcom/senseonics/graph/GraphCache;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 83
    new-instance v0, Lcom/senseonics/graph/GraphCache;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/graph/GraphCache;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)V

    return-object v0
.end method

.method protected provideHandler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method protected provideNotificationManager()Landroid/app/NotificationManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method protected provideSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    sget-object v1, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected providesAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "alarm"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    return-object p1
.end method

.method protected providesAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    return-object v0
.end method

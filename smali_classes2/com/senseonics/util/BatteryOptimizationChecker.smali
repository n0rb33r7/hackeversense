.class public Lcom/senseonics/util/BatteryOptimizationChecker;
.super Ljava/lang/Object;
.source "BatteryOptimizationChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final prefBatteryOptimizationAlertTime:Ljava/lang/String; = "batteryOptimizationAlertTime"


# instance fields
.field private final ALERT_REPEAT_INTERVAL:J

.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->ALERT_REPEAT_INTERVAL:J

    .line 33
    iput-object p1, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->preferences:Landroid/content/SharedPreferences;

    .line 35
    iput-object p3, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 37
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private check()V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfInitialLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    invoke-direct {p0}, Lcom/senseonics/util/BatteryOptimizationChecker;->getBatteryOptimizationAlertTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 61
    iget-wide v4, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->ALERT_REPEAT_INTERVAL:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    return-void

    .line 64
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/senseonics/util/BatteryOptimizationChecker;->setBatteryOptimizationAlertTime(J)V

    .line 66
    iget-object v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->BatteryOptimization:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private getBatteryOptimizationAlertTime()J
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "batteryOptimizationAlertTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private setBatteryOptimizationAlertTime(J)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/BatteryOptimizationChecker;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "batteryOptimizationAlertTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/events/BackgroundToForegroundEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/senseonics/util/BatteryOptimizationChecker;->check()V

    return-void
.end method

.class public Lcom/senseonics/util/NotificationContentIntentHelper;
.super Ljava/lang/Object;
.source "NotificationContentIntentHelper.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private previousIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->context:Landroid/content/Context;

    return-void
.end method

.method private getDefaultIntent()Landroid/content/Intent;
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getPreviousIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 45
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 46
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    iget-object p1, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 55
    iput-object p1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->previousIntent:Landroid/content/Intent;

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->previousIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 63
    invoke-direct {p0}, Lcom/senseonics/util/NotificationContentIntentHelper;->getDefaultIntent()Landroid/content/Intent;

    move-result-object p1

    :cond_4
    return-object p1
.end method


# virtual methods
.method public getPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    invoke-direct {p0, v0}, Lcom/senseonics/util/NotificationContentIntentHelper;->getPreviousIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/senseonics/util/NotificationContentIntentHelper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

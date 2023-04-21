.class public Lcom/senseonics/bluetoothle/ApplicationForegroundState;
.super Ljava/lang/Object;
.source "ApplicationForegroundState.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private isActivityChangingConfigurations:Z

.field private resumedActivityCount:I

.field private startedActivityCount:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    .line 16
    iput v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    .line 17
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isActivityChangingConfigurations:Z

    return-void
.end method


# virtual methods
.method public isBackgroundToForeground()Z
    .locals 2

    .line 54
    iget v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isActivityChangingConfigurations:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isForeground()Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 34
    iget p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 30
    iget p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->resumedActivityCount:I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 41
    iget p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isActivityChangingConfigurations:Z

    .line 48
    iget p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->startedActivityCount:I

    return-void
.end method

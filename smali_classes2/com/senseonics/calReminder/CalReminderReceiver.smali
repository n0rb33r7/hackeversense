.class public Lcom/senseonics/calReminder/CalReminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalReminderReceiver.java"


# instance fields
.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->inject(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    const-string v0, "RequestCode"

    .line 27
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x4e21

    if-eq p1, p2, :cond_1

    const/16 p2, 0x4e22

    if-ne p1, p2, :cond_2

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/senseonics/calReminder/CalReminderReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/calReminder/CalReminderReceivedEvent;

    invoke-direct {v0, p1}, Lcom/senseonics/calReminder/CalReminderReceivedEvent;-><init>(I)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

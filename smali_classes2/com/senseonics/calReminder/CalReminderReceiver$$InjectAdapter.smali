.class public final Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "CalReminderReceiver$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/calReminder/CalReminderReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-class v0, Lcom/senseonics/calReminder/CalReminderReceiver;

    const-string v1, "com.senseonics.calReminder.CalReminderReceiver"

    const-string v2, "members/com.senseonics.calReminder.CalReminderReceiver"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 38
    const-class v0, Lcom/senseonics/calReminder/CalReminderReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/calReminder/CalReminderReceiver;
    .locals 1

    .line 56
    new-instance v0, Lcom/senseonics/calReminder/CalReminderReceiver;

    invoke-direct {v0}, Lcom/senseonics/calReminder/CalReminderReceiver;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/calReminder/CalReminderReceiver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->get()Lcom/senseonics/calReminder/CalReminderReceiver;

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

    .line 47
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/calReminder/CalReminderReceiver;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/calReminder/CalReminderReceiver;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/senseonics/calReminder/CalReminderReceiver;

    invoke-virtual {p0, p1}, Lcom/senseonics/calReminder/CalReminderReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/calReminder/CalReminderReceiver;)V

    return-void
.end method

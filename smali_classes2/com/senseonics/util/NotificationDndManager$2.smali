.class Lcom/senseonics/util/NotificationDndManager$2;
.super Ljava/lang/Object;
.source "NotificationDndManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/NotificationDndManager;->playCriticalAlarm(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/util/NotificationDndManager;


# direct methods
.method constructor <init>(Lcom/senseonics/util/NotificationDndManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetliveSessionCount(Lcom/senseonics/util/NotificationDndManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetaudioManager(Lcom/senseonics/util/NotificationDndManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v2}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetmusicVolume(Lcom/senseonics/util/NotificationDndManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 96
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetnotificationManager(Lcom/senseonics/util/NotificationDndManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v1}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetdnd(Lcom/senseonics/util/NotificationDndManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$2;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fgetliveSessionCount(Lcom/senseonics/util/NotificationDndManager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/senseonics/util/NotificationDndManager;->-$$Nest$fputliveSessionCount(Lcom/senseonics/util/NotificationDndManager;I)V

    return-void
.end method

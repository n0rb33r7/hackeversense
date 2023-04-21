.class Lcom/senseonics/fragments/NotificationsFragmentUI$1;
.super Ljava/lang/Object;
.source "NotificationsFragmentUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragmentUI;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragmentUI;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragmentUI;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI$1;->this$0:Lcom/senseonics/fragments/NotificationsFragmentUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI$1;->this$0:Lcom/senseonics/fragments/NotificationsFragmentUI;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragmentUI;->mNotifications:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Notification;

    .line 72
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI$1;->this$0:Lcom/senseonics/fragments/NotificationsFragmentUI;

    .line 73
    invoke-virtual {p1}, Lcom/senseonics/util/Notification;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->showEventDetails(Landroid/app/Fragment;Lcom/senseonics/events/EventPoint;)V

    return-void
.end method

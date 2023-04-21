.class Lcom/senseonics/calReminder/CalReminderPresenter$4;
.super Ljava/lang/Object;
.source "CalReminderPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder2TimeLayoutClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/calReminder/CalReminderPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/calReminder/CalReminderPresenter;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$4;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 143
    new-instance p1, Lcom/senseonics/calReminder/CalReminderPresenter$4$1;

    invoke-direct {p1, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$4$1;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter$4;)V

    .line 152
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter$4;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v0}, Lcom/senseonics/calReminder/CalReminderPresenter;->access$100(Lcom/senseonics/calReminder/CalReminderPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;

    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$4;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Hour()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/calReminder/CalReminderPresenter$4;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v2}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Minute()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/calReminder/CalReminderPresenter$4;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v3}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetcontext(Lcom/senseonics/calReminder/CalReminderPresenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11027e

    .line 155
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;->showTimePicker(IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)V

    return-void
.end method

.class Lcom/senseonics/calReminder/CalReminderPresenter$3;
.super Ljava/lang/Object;
.source "CalReminderPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder1TimeLayoutClickListener()Landroid/view/View$OnClickListener;
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

    .line 116
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 119
    new-instance p1, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;

    invoke-direct {p1, p0}, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;-><init>(Lcom/senseonics/calReminder/CalReminderPresenter$3;)V

    .line 128
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v0}, Lcom/senseonics/calReminder/CalReminderPresenter;->access$000(Lcom/senseonics/calReminder/CalReminderPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;

    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Hour()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v2}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Minute()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v3}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetcontext(Lcom/senseonics/calReminder/CalReminderPresenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f11027d

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;->showTimePicker(IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)V

    return-void
.end method

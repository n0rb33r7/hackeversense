.class Lcom/senseonics/calReminder/CalReminderPresenter$3$1;
.super Ljava/lang/Object;
.source "CalReminderPresenter.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/TimeDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/calReminder/CalReminderPresenter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/calReminder/CalReminderPresenter$3;


# direct methods
.method constructor <init>(Lcom/senseonics/calReminder/CalReminderPresenter$3;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;->this$1:Lcom/senseonics/calReminder/CalReminderPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;->this$1:Lcom/senseonics/calReminder/CalReminderPresenter$3;

    iget-object v0, v0, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {v0}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/senseonics/calReminder/CalReminderManager;->setCalReminder1Hour(I)V

    .line 123
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;->this$1:Lcom/senseonics/calReminder/CalReminderPresenter$3;

    iget-object p1, p1, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {p1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/senseonics/calReminder/CalReminderManager;->setCalReminder1Minute(I)V

    .line 124
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$3$1;->this$1:Lcom/senseonics/calReminder/CalReminderPresenter$3;

    iget-object p1, p1, Lcom/senseonics/calReminder/CalReminderPresenter$3;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {p1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$mupdateScheduleAndRefreshReminder1View(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-void
.end method

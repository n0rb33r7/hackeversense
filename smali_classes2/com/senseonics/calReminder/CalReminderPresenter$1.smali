.class Lcom/senseonics/calReminder/CalReminderPresenter$1;
.super Ljava/lang/Object;
.source "CalReminderPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/calReminder/CalReminderPresenter;->getReminder1CheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
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

    .line 94
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$1;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$1;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {p1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$fgetmanager(Lcom/senseonics/calReminder/CalReminderPresenter;)Lcom/senseonics/calReminder/CalReminderManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/senseonics/calReminder/CalReminderManager;->setCalReminder1Enabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderPresenter$1;->this$0:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-static {p1}, Lcom/senseonics/calReminder/CalReminderPresenter;->-$$Nest$mupdateScheduleAndRefreshReminder1View(Lcom/senseonics/calReminder/CalReminderPresenter;)V

    return-void
.end method

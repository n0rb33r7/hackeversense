.class Lcom/senseonics/fragments/CalibrateFragment$5;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->initTimePicker(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;

.field final synthetic val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 659
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fputcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V

    .line 660
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 661
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 664
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 665
    iget-object v3, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v3}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 666
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v3, 0xc

    const/16 v4, -0xa

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 667
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 668
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 670
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iget-object v0, p1, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    .line 671
    invoke-virtual {p1}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object v2

    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object v3

    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/fragments/CalibrateFragment$5;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    const/4 v6, 0x1

    .line 670
    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V

    return-void
.end method

.class Lcom/senseonics/fragments/NotificationsFragment$4;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;

.field final synthetic val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 195
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v0, p1, Lcom/senseonics/fragments/NotificationsFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {v1}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/NotificationsFragment;->minDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/NotificationsFragment;->maxDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fputdialog(Lcom/senseonics/fragments/NotificationsFragment;Landroid/app/Dialog;)V

    .line 200
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

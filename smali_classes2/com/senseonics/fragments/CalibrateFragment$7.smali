.class Lcom/senseonics/fragments/CalibrateFragment$7;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment;->initGlucosePicker(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;

.field final synthetic val$manager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 735
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 736
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetglucoseLevel(Lcom/senseonics/fragments/CalibrateFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$mgetPosition(Lcom/senseonics/fragments/CalibrateFragment;I)I

    move-result v6

    .line 740
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    iget-object v1, p1, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    const v3, 0x7f110130

    invoke-virtual {v0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetglucoseValues(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fputdialog(Lcom/senseonics/fragments/CalibrateFragment;Landroid/app/Dialog;)V

    .line 741
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$7;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

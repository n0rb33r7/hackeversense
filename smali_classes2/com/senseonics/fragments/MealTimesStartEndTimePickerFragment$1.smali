.class Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;
.super Ljava/lang/Object;
.source "MealTimesStartEndTimePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 61
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v0, p1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetstartHour(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {v3}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetstartMinute(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    .line 65
    invoke-virtual {v4}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1102f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fputdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;Landroid/app/Dialog;)V

    .line 67
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

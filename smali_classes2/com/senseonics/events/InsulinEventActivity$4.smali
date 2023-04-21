.class Lcom/senseonics/events/InsulinEventActivity$4;
.super Ljava/lang/Object;
.source "InsulinEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/InsulinEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/InsulinEventActivity;

.field final synthetic val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/InsulinEventActivity;Lcom/senseonics/util/dialogs/DoublePickerManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    iput-object p2, p0, Lcom/senseonics/events/InsulinEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 84
    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 88
    :cond_0
    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetselectedUnit(Lcom/senseonics/events/InsulinEventActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[.]"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    array-length v2, v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 92
    iget-object v2, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_integer(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v2

    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v5

    .line 93
    iget-object v2, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_decimal(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v1

    move v14, v1

    move v13, v5

    goto :goto_0

    :cond_1
    move v13, v5

    move v14, v13

    .line 96
    :goto_0
    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->access$000(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v6

    iget-object v7, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    const v2, 0x7f11033e

    .line 97
    invoke-virtual {v7, v2}, Lcom/senseonics/events/InsulinEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_integer(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v2, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_decimal(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/senseonics/events/InsulinEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 96
    invoke-virtual/range {v6 .. v16}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fputdialog(Lcom/senseonics/events/InsulinEventActivity;Landroid/app/Dialog;)V

    .line 99
    iget-object v1, v0, Lcom/senseonics/events/InsulinEventActivity$4;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

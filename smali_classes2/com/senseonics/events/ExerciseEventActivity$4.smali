.class Lcom/senseonics/events/ExerciseEventActivity$4;
.super Ljava/lang/Object;
.source "ExerciseEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/ExerciseEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/ExerciseEventActivity;

.field final synthetic val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/ExerciseEventActivity;Lcom/senseonics/util/dialogs/DoublePickerManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    iput-object p2, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 91
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetlist1(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetselectedHours(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    const v2, 0x7f110153

    invoke-virtual {v1, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v8

    .line 95
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetlist2(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetselectedMinute(Lcom/senseonics/events/ExerciseEventActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    const v2, 0x7f1101d2

    invoke-virtual {v1, v2}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v9

    .line 97
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->access$000(Lcom/senseonics/events/ExerciseEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    const v0, 0x7f1100f1

    .line 98
    invoke-virtual {v2, v0}, Lcom/senseonics/events/ExerciseEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetlist1(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetlist2(Lcom/senseonics/events/ExerciseEventActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 97
    invoke-virtual/range {v1 .. v11}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fputdialog(Lcom/senseonics/events/ExerciseEventActivity;Landroid/app/Dialog;)V

    .line 100
    iget-object p1, p0, Lcom/senseonics/events/ExerciseEventActivity$4;->this$0:Lcom/senseonics/events/ExerciseEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/ExerciseEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/ExerciseEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

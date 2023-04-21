.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupDurationLayoutOnClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

.field final synthetic val$listHour:Ljava/util/ArrayList;

.field final synthetic val$listMinute:Ljava/util/ArrayList;

.field final synthetic val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/util/dialogs/DoublePickerManager;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listHour:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listMinute:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 343
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result p1

    .line 348
    div-int/lit8 v0, p1, 0x3c

    .line 349
    rem-int/lit8 p1, p1, 0x3c

    .line 351
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listHour:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    const v3, 0x7f110153

    invoke-virtual {v2, v3}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v9

    .line 352
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listMinute:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    const v2, 0x7f1101d2

    invoke-virtual {v1, v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v10

    .line 354
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, p1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    const v1, 0x7f1100f1

    .line 355
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listHour:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$listMinute:Ljava/util/ArrayList;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->val$pickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 354
    invoke-virtual/range {v2 .. v12}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->-$$Nest$fputdialog(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Landroid/app/Dialog;)V

    .line 357
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->-$$Nest$fgetdialog(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

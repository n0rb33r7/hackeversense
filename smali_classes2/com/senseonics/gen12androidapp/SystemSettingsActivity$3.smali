.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addGlucoseUnitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

.field final synthetic val$unitPickerManager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->val$unitPickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 188
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 190
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v5

    .line 191
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    .line 192
    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {v3}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fgetunitValues(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->val$unitPickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fputdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/app/Dialog;)V

    .line 194
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->-$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

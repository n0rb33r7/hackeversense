.class Lcom/senseonics/events/MealEventActivity$4;
.super Ljava/lang/Object;
.source "MealEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/MealEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/MealEventActivity;

.field final synthetic val$manager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/MealEventActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    iput-object p2, p0, Lcom/senseonics/events/MealEventActivity$4;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 79
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetselectedCarbs(Lcom/senseonics/events/MealEventActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/senseonics/events/MealEventActivity;->getPosition(I)I

    move-result v6

    .line 83
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->access$100(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    const v0, 0x7f110084

    invoke-virtual {v2, v0}, Lcom/senseonics/events/MealEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {v0}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetcarbs(Lcom/senseonics/events/MealEventActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/events/MealEventActivity$4;->val$manager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fputdialog(Lcom/senseonics/events/MealEventActivity;Landroid/app/Dialog;)V

    .line 84
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity$4;->this$0:Lcom/senseonics/events/MealEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/MealEventActivity;->-$$Nest$fgetdialog(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

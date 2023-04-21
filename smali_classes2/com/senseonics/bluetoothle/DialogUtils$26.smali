.class Lcom/senseonics/bluetoothle/DialogUtils$26;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$datePicker:Lnet/simonvt/datepicker/DatePicker;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1132
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {p1}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result p1

    .line 1133
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v0

    .line 1134
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v1}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v1

    .line 1136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1137
    invoke-virtual {v2, v1, v0, p1}, Ljava/util/Calendar;->set(III)V

    const/16 p1, 0xb

    const/4 v0, 0x0

    .line 1138
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xa

    .line 1139
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1140
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1141
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1143
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-interface {p1, v2}, Lcom/senseonics/util/dialogs/DateDialogManager;->onDateSelected(Ljava/util/Calendar;)V

    .line 1144
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$26;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

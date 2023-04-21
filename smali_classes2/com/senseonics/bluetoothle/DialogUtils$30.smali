.class Lcom/senseonics/bluetoothle/DialogUtils$30;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V
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

.field final synthetic val$timePicker:Lnet/simonvt/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    iput-object p5, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1259
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {p1}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result p1

    .line 1260
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v0

    .line 1261
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v1}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v1

    .line 1263
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v2}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    .line 1264
    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v3}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    .line 1266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1267
    invoke-virtual {v4, v1, v0, p1}, Ljava/util/Calendar;->set(III)V

    .line 1268
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xb

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1269
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc

    invoke-virtual {v4, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1271
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-interface {p1, v4}, Lcom/senseonics/util/dialogs/DateDialogManager;->onDateSelected(Ljava/util/Calendar;)V

    .line 1272
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$30;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

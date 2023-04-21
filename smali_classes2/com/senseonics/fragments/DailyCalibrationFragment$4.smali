.class Lcom/senseonics/fragments/DailyCalibrationFragment$4;
.super Ljava/lang/Object;
.source "DailyCalibrationFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/TimeDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/DailyCalibrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgeteveningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$mcheckSettings(Lcom/senseonics/fragments/DailyCalibrationFragment;II)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;Z)V

    .line 315
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$mupdateText(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    .line 316
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetcalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;->settingsOk(Z)V

    .line 319
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputmorningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V

    .line 320
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputmorningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V

    .line 321
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$msetMorningTimeTextView(Lcom/senseonics/fragments/DailyCalibrationFragment;II)V

    return-void
.end method

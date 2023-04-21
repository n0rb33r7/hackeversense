.class Lcom/senseonics/fragments/DailyCalibrationFragment$5;
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

    .line 325
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetmorningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$mcheckSettings(Lcom/senseonics/fragments/DailyCalibrationFragment;II)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;Z)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$mupdateText(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    .line 331
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetcalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;->settingsOk(Z)V

    .line 334
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputeveningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V

    .line 335
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fputeveningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V

    .line 336
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$msetEveningTimeTextView(Lcom/senseonics/fragments/DailyCalibrationFragment;II)V

    return-void
.end method

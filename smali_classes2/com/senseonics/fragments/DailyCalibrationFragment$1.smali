.class Lcom/senseonics/fragments/DailyCalibrationFragment$1;
.super Ljava/lang/Object;
.source "DailyCalibrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/DailyCalibrationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 76
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 79
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetmorningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetmorningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 85
    aget v0, v0, v3

    .line 86
    iget-object v4, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetcalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    move-result-object v4

    invoke-interface {v4, v2, v0, p1}, Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;->onMorningCalibrationSelected(IIZ)V

    .line 88
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgeteveningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v0

    iget-object v2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgeteveningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object v0

    .line 89
    aget v1, v0, v1

    .line 90
    aget v0, v0, v3

    .line 91
    iget-object v2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetcalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;->onEveningCalibrationSelected(IIZ)V

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;

    .line 95
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;->goToUnitSelection()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->-$$Nest$fgetprogressDialog(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v0, Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment$1;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

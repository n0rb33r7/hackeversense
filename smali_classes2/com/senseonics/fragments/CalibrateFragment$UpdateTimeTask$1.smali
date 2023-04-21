.class Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;
.super Ljava/lang/Object;
.source "CalibrateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;->this$1:Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;->this$1:Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    iget-object v0, v0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$mfetchCalibrationStatus(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 929
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;->this$1:Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    iget-object v0, v0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$fputcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V

    .line 930
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;->this$1:Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    iget-object v0, v0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/CalibrateFragment;->-$$Nest$mupdateTimeTextView(Lcom/senseonics/fragments/CalibrateFragment;)V

    return-void
.end method

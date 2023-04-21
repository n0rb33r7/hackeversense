.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

.field final synthetic val$valueTvID:I

.field final synthetic val$viewID:I


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;II)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iput p3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$viewID:I

    iput p4, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$valueTvID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetthresholdsController(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/util/ThresholdsController;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v4

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgettempProfileManager(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetdialogUtils(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/DialogUtils;

    move-result-object v6

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSelectedValueFromPicker(ILcom/senseonics/util/ThresholdsController;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;)I

    move-result p1

    .line 319
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgettempProfileManager(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$viewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$valueTvID:I

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetcontext(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setTextViewWithText(IILjava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgettempProfileManager(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->setNonTempThreshold(ILcom/senseonics/bluetoothle/TempProfileManager;)V

    .line 322
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$mdisplayTempProfileEnabledWarning(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showProgress()V

    .line 325
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->val$setting:Lcom/senseonics/gen12androidapp/ThresholdSetting;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->-$$Nest$fgetbluetoothServiceCommandClient(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V

    :cond_1
    :goto_0
    return-void
.end method

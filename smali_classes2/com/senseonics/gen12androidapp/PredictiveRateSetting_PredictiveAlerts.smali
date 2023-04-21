.class public Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;
.super Lcom/senseonics/gen12androidapp/PredictiveRateSetting;
.source "PredictiveRateSetting_PredictiveAlerts.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;-><init>()V

    return-void
.end method

.method private getPredictiveMinutes()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/senseonics/util/Item;

    .line 80
    new-instance v2, Lcom/senseonics/util/Item;

    const/4 v3, 0x0

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/senseonics/util/Item;

    const/4 v3, 0x1

    const-string v4, "20"

    invoke-direct {v2, v3, v4}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/senseonics/util/Item;

    const/4 v3, 0x2

    const-string v4, "30"

    invoke-direct {v2, v3, v4}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public getAvailablePickerValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getPredictiveMinutes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getModelFloatValue(Lcom/senseonics/model/TransmitterStateModel;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 0

    .line 60
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result p1

    return p1
.end method

.method public getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z
    .locals 0

    .line 55
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isPredictiveAlertsActivated()Z

    move-result p1

    return p1
.end method

.method public getModelValueString(Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f110220

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPickerPosition(Lcom/senseonics/model/TransmitterStateModel;)I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getAvailablePickerValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getModelIntValue(Lcom/senseonics/model/TransmitterStateModel;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method public getSectionParentID()I
    .locals 1

    const v0, 0x7f0902e4

    return v0
.end method

.method public getSelectedValueFromPicker(I)I
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;->getAvailablePickerValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSwitchTitleID()I
    .locals 1

    const v0, 0x7f110259

    return v0
.end method

.method public getValueTitleID()I
    .locals 1

    const v0, 0x7f1101d3

    return v0
.end method

.method public getViewID()I
    .locals 1

    const v0, 0x7f0901f5

    return v0
.end method

.method public writePickerValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;I)V
    .locals 0

    .line 35
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveTimeIntervalRequest(I)V

    return-void
.end method

.method public writeSwitchValue(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V
    .locals 0

    .line 25
    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveAlertsRequest(Z)V

    return-void
.end method

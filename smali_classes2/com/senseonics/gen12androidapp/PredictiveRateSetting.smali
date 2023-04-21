.class public abstract Lcom/senseonics/gen12androidapp/PredictiveRateSetting;
.super Ljava/lang/Object;
.source "PredictiveRateSetting.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArrowImageID()I
    .locals 1

    const v0, 0x7f090089

    return v0
.end method

.method public abstract getAvailablePickerValues()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end method

.method public getBodySectionID()I
    .locals 1

    const v0, 0x7f0900b5

    return v0
.end method

.method public getHeaderSectionID()I
    .locals 1

    const v0, 0x7f0901a6

    return v0
.end method

.method public abstract getModelValueString(Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPickerPosition(Lcom/senseonics/model/TransmitterStateModel;)I
.end method

.method public abstract getSelectedValueFromPicker(I)I
.end method

.method public getSwitchID()I
    .locals 1

    const v0, 0x7f09005e

    return v0
.end method

.method public getSwitchTvID()I
    .locals 1

    const v0, 0x7f090061

    return v0
.end method

.method public getValueLabelTvID()I
    .locals 1

    const v0, 0x7f090410

    return v0
.end method

.method public getValueLayoutID()I
    .locals 1

    const v0, 0x7f090411

    return v0
.end method

.method public getValueTvID()I
    .locals 1

    const v0, 0x7f090412

    return v0
.end method

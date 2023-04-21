.class public Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;
.super Ljava/lang/Object;
.source "LegacyResponseHandlingEvent.java"


# instance fields
.field private final actualResponseId:I

.field private data:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->data:[I

    const/4 v0, 0x0

    .line 12
    aget p1, p1, v0

    iput p1, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId:I

    return-void
.end method


# virtual methods
.method public actualResponseId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId:I

    return v0
.end method

.method public getData()[I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->data:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId:I

    const-string v2, "actualResponseId"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->data:[I

    .line 27
    invoke-static {v1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

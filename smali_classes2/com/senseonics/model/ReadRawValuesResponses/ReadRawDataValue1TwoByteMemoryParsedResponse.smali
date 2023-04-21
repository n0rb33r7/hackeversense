.class public Lcom/senseonics/model/ReadRawValuesResponses/ReadRawDataValue1TwoByteMemoryParsedResponse;
.super Ljava/lang/Object;
.source "ReadRawDataValue1TwoByteMemoryParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "raw 1:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RawValue"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object p2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p3, p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 17
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->RawDataValue1Address:[I

    return-object v0
.end method

.class public Lcom/senseonics/model/AccelerometerTempTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "AccelerometerTempTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    int-to-short p1, p1

    .line 20
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setAccelTemp(S)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 14
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AccelerometerTempAddress:[I

    return-object v0
.end method

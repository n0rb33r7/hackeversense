.class public Lcom/senseonics/model/WriteNByteSerialFlashRegisterParsedResponse;
.super Ljava/lang/Object;
.source "WriteNByteSerialFlashRegisterParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/senseonics/model/WriteNByteSerialFlashRegisterParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    const/4 p2, 0x1

    .line 31
    aget p2, p1, p2

    const/4 v0, 0x2

    aget v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    const/4 v0, 0x3

    aget p1, p1, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p2

    .line 32
    iget-object p2, p0, Lcom/senseonics/model/WriteNByteSerialFlashRegisterParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/WriteNByteResponseReceivedEvent;

    invoke-direct {v0, p1}, Lcom/senseonics/events/WriteNByteResponseReceivedEvent;-><init>(I)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteNByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0xb1

    return v0
.end method

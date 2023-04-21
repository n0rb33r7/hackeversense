.class public Lcom/senseonics/model/ReadAtccalCrcTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadAtccalCrcTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/senseonics/model/ReadAtccalCrcTwoByteMemoryMapParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    const/4 p2, 0x1

    .line 26
    invoke-virtual {p3, p2}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalCrcRegisterExists(Z)V

    .line 27
    iget-object p2, p0, Lcom/senseonics/model/ReadAtccalCrcTwoByteMemoryMapParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/senseonics/events/AtccalCrcRecivedEvent;

    invoke-direct {p3, p1}, Lcom/senseonics/events/AtccalCrcRecivedEvent;-><init>(I)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 20
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcAddress:[I

    return-object v0
.end method

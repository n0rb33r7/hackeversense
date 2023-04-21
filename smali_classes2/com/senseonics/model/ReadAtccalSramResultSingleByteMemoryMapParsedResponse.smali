.class public Lcom/senseonics/model/ReadAtccalSramResultSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadAtccalSramResultSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


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
    iput-object p1, p0, Lcom/senseonics/model/ReadAtccalSramResultSingleByteMemoryMapParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, v0}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalSramResultRegisterExists(Z)V

    .line 26
    iget-object p2, p0, Lcom/senseonics/model/ReadAtccalSramResultSingleByteMemoryMapParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/AtccalSramResultRecivedEvent;

    invoke-direct {v0, p1}, Lcom/senseonics/events/AtccalSramResultRecivedEvent;-><init>(I)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 20
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalSramResultAddress:[I

    return-object v0
.end method

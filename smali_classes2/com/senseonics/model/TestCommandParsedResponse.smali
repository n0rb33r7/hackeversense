.class public Lcom/senseonics/model/TestCommandParsedResponse;
.super Ljava/lang/Object;
.source "TestCommandParsedResponse.java"

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
    iput-object p1, p0, Lcom/senseonics/model/TestCommandParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    .line 31
    iget-object p2, p0, Lcom/senseonics/model/TestCommandParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/TestCommandResponseReceivedEvent;

    invoke-direct {v0, p1}, Lcom/senseonics/events/TestCommandResponseReceivedEvent;-><init>([I)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isTestCommandResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0xe0

    return v0
.end method

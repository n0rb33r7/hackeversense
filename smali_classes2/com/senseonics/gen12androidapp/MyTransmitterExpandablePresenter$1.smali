.class Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$1;
.super Ljava/util/TimerTask;
.source "MyTransmitterExpandablePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startRssiTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->readRemoteRSSI()V

    :cond_0
    return-void
.end method

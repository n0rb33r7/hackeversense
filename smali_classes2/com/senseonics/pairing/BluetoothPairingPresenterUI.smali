.class public Lcom/senseonics/pairing/BluetoothPairingPresenterUI;
.super Lcom/senseonics/pairing/BluetoothPairingPresenter;
.source "BluetoothPairingPresenterUI.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private bus:Lde/greenrobot/event/EventBus;

.field private final enabler:Lcom/senseonics/pairing/BluetoothEnabler;

.field private model:Lcom/senseonics/pairing/BluetoothPairingModel;

.field private view:Lcom/senseonics/pairing/BluetoothPairingView;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothPairingModel;Lcom/senseonics/pairing/BluetoothPairingView;Lcom/senseonics/pairing/BluetoothEnabler;Landroid/bluetooth/BluetoothAdapter;Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/senseonics/pairing/BluetoothPairingPresenter;-><init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/pairing/BluetoothPairingModel;Lcom/senseonics/pairing/BluetoothPairingView;Lcom/senseonics/pairing/BluetoothEnabler;Landroid/bluetooth/BluetoothAdapter;Landroid/app/Activity;)V

    .line 31
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->model:Lcom/senseonics/pairing/BluetoothPairingModel;

    .line 32
    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    .line 33
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->bus:Lde/greenrobot/event/EventBus;

    .line 34
    iput-object p4, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->enabler:Lcom/senseonics/pairing/BluetoothEnabler;

    .line 35
    iput-object p5, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    iput-object p6, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    return-void
.end method

.method public onEvent(Lcom/senseonics/pairing/events/view/TransmitterPressed;)V
    .locals 4

    .line 58
    iget-object v0, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/Transmitter;->setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 61
    new-instance v1, Lcom/senseonics/bluetoothle/Transmitter;

    iget-object v2, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {p1, v0}, Lcom/senseonics/pairing/BluetoothPairingView;->setDevices(Ljava/util/List;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/Transmitter;->setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 66
    new-instance v1, Lcom/senseonics/bluetoothle/Transmitter;

    iget-object v2, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/senseonics/pairing/events/view/TransmitterPressed;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingPresenterUI;->view:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-virtual {p1, v0}, Lcom/senseonics/pairing/BluetoothPairingView;->setDevices(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

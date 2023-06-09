.class public Lcom/senseonics/pairing/BluetoothTransmitterCell;
.super Landroid/widget/RelativeLayout;
.source "BluetoothTransmitterCell.java"


# instance fields
.field blackColor:I
    .annotation runtime Lbutterknife/BindColor;
        value = 0x7f060021
    .end annotation
.end field

.field bluetoothImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b4
    .end annotation
.end field

.field deviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e6
    .end annotation
.end field

.field stateText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090366
    .end annotation
.end field

.field private final transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0125

    .line 33
    invoke-static {p1, v0, p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 36
    iput-object p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 37
    iput-object p3, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->handler:Landroid/os/Handler;

    .line 39
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    iget p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->blackColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    iget p2, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->blackColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public refresh(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 7

    .line 44
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    const v1, 0x7f11033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 52
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 53
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 54
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/bluetoothle/Transmitter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 60
    sget-object v0, Lcom/senseonics/pairing/BluetoothTransmitterCell$2;->$SwitchMap$com$senseonics$bluetoothle$Transmitter$CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ".."

    const/4 v1, 0x0

    const v2, 0x7f110099

    const v3, 0x7f060021

    const/16 v4, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 89
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110289

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 83
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 78
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 73
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 68
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 62
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110098

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/pairing/BluetoothTransmitterCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    move v1, v4

    .line 95
    :goto_2
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;

    invoke-direct {v0, p0, v1}, Lcom/senseonics/pairing/BluetoothTransmitterCell$1;-><init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

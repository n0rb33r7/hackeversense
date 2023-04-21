.class public Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "InitialBluetoothPairingActivity.java"


# instance fields
.field private bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private getNaviBarImage()I
    .locals 1

    .line 100
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->hideDailyCal()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080194

    goto :goto_0

    :cond_0
    const v0, 0x7f080191

    :goto_0
    return v0
.end method

.method private showNextButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateNaviBarImage()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getNaviBarImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 21
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->initializeLayout(I)Landroid/view/View;

    .line 23
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getNaviBarImage()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;-><init>(Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance p1, Lcom/senseonics/pairing/BluetoothPairingFragment;

    invoke-direct {p1}, Lcom/senseonics/pairing/BluetoothPairingFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    .line 47
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->bluetoothPairingFragment:Lcom/senseonics/pairing/BluetoothPairingFragment;

    const v1, 0x7f09018c

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->updateNaviBarImage()V

    .line 68
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->showNextButton(Z)V

    .line 70
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->updateNaviBarImage()V

    .line 58
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->showNextButton(Z)V

    return-void
.end method

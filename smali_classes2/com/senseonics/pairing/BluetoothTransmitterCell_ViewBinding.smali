.class public Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;
.super Ljava/lang/Object;
.source "BluetoothTransmitterCell_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/pairing/BluetoothTransmitterCell;


# direct methods
.method public constructor <init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;-><init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/pairing/BluetoothTransmitterCell;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090366

    const-string v2, "field \'stateText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900b4

    const-string v2, "field \'bluetoothImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    .line 32
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0902e6

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09028a

    const-string v2, "field \'deviceName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060021

    .line 36
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/senseonics/pairing/BluetoothTransmitterCell;->blackColor:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/senseonics/pairing/BluetoothTransmitterCell_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothTransmitterCell;

    .line 46
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->stateText:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->bluetoothImage:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->progressBar:Landroid/widget/ProgressBar;

    .line 49
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothTransmitterCell;->deviceName:Landroid/widget/TextView;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

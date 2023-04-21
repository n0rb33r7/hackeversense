.class public Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;
.super Ljava/lang/Object;
.source "BluetoothPairingView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/pairing/BluetoothPairingView;


# direct methods
.method public constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p1}, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;-><init>(Lcom/senseonics/pairing/BluetoothPairingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    .line 31
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f09020d

    const-string v2, "field \'listView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903cc

    const-string v2, "field \'connectLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectLayout:Landroid/widget/LinearLayout;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090091

    const-string v2, "field \'arrowConnect\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903cd

    const-string v2, "field \'tipsTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->tipsTextView:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903ce

    const-string v2, "field \'connectTextViewLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c5

    const-string v2, "field \'pairTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110315

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlInitialText:Ljava/lang/String;

    const v0, 0x7f110314

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectHtmlText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/senseonics/pairing/BluetoothPairingView_ViewBinding;->target:Lcom/senseonics/pairing/BluetoothPairingView;

    .line 51
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->listView:Landroid/widget/ListView;

    .line 52
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->connectLayout:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->tipsTextView:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, v0, Lcom/senseonics/pairing/BluetoothPairingView;->pairTitleTextView:Landroid/widget/TextView;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

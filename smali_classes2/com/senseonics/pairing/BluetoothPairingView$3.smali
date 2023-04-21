.class Lcom/senseonics/pairing/BluetoothPairingView$3;
.super Ljava/lang/Object;
.source "BluetoothPairingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/pairing/BluetoothPairingView;->initBottomLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/pairing/BluetoothPairingView;


# direct methods
.method constructor <init>(Lcom/senseonics/pairing/BluetoothPairingView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    const v0, 0x7f080111

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/BluetoothPairingView;->arrowConnect:Landroid/widget/ImageView;

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object p1, p0, Lcom/senseonics/pairing/BluetoothPairingView$3;->this$0:Lcom/senseonics/pairing/BluetoothPairingView;

    iget-object p1, p1, Lcom/senseonics/pairing/BluetoothPairingView;->connectTextViewLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

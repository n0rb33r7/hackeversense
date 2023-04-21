.class Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "BluetoothPairBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->showDisclosurePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->-$$Nest$mrequestLocationPermission(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.class Lcom/senseonics/fragments/PlacementGuideFragment$1;
.super Ljava/util/TimerTask;
.source "PlacementGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment;->setupPlacementGuideProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/PlacementGuideFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$1;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$1;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postEnterDiagnosticMode()V

    return-void
.end method

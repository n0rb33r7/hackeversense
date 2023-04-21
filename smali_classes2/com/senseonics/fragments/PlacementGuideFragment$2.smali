.class Lcom/senseonics/fragments/PlacementGuideFragment$2;
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

    .line 160
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$2;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$2;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$2;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->-$$Nest$msupportDetail(Lcom/senseonics/fragments/PlacementGuideFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadSignalStrengthRequest(Z)V

    return-void
.end method

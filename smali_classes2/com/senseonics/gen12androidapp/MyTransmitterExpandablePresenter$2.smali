.class Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;
.super Ljava/util/TimerTask;
.source "MyTransmitterExpandablePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->startDemoTimer()V
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

    .line 135
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$mshouldEnableDemo(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Z

    move-result v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$2;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setDemoButtonEnable(ZZ)V

    return-void
.end method

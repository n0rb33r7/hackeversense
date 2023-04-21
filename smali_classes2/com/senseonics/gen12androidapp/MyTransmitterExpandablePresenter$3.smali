.class Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;
.super Ljava/lang/Object;
.source "MyTransmitterExpandablePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getDemoOnClickListener()Landroid/view/View$OnClickListener;
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

    .line 242
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 245
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setDemoButtonEnable(ZZ)V

    .line 247
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$msetLastExerciseVibrationTime(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;J)V

    .line 248
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$3;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->-$$Nest$fgetclient(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postExerciseVibration()V

    return-void
.end method

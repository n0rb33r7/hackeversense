.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getDNDSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->-$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->showProgress()V

    .line 272
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->-$$Nest$fgetbluetoothServiceCommandClient(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteVibrateModeRequest(Z)V

    :cond_0
    return-void
.end method

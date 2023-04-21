.class public Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyTransmitterExpandableActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity_ViewBinding;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09028b

    const-string v2, "field \'nameText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->nameText:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090337

    const-string v2, "field \'serialNumberText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumberText:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090248

    const-string v2, "field \'modelNumberText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumberText:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090181

    const-string v2, "field \'firmwareVersionText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersionText:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090317

    const-string v2, "field \'rssiText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiText:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a7

    const-string v2, "field \'batteryLevelText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevelText:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901f0

    const-string v2, "field \'lastCalText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCalText:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d6

    const-string v2, "field \'phaseStartText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStartText:Landroid/widget/TextView;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900e6

    const-string v2, "field \'completedCalText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCalText:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090103

    const-string v2, "field \'currentPhaseText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhaseText:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090416

    const-string v2, "field \'vibrationText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibrationText:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09028a

    const-string v2, "field \'name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090336

    const-string v2, "field \'serialNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090247

    const-string v2, "field \'modelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090180

    const-string v2, "field \'firmwareVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090314

    const-string v2, "field \'rssi\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a6

    const-string v2, "field \'batteryLevel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ef

    const-string v2, "field \'lastCal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d5

    const-string v2, "field \'phaseStart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900e5

    const-string v2, "field \'completedCal\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090102

    const-string v2, "field \'currentPhase\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090414

    const-string v2, "field \'vibration\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090190

    const-string v2, "field \'fwUpdate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->fwUpdate:Landroid/widget/ImageView;

    .line 51
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090315

    const-string v2, "field \'rssiLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090316

    const-string v1, "field \'rssiLayoutDivider\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayoutDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    .line 62
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->nameText:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumberText:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumberText:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersionText:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiText:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevelText:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCalText:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStartText:Landroid/widget/TextView;

    .line 70
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCalText:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhaseText:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibrationText:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    .line 82
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    .line 83
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->fwUpdate:Landroid/widget/ImageView;

    .line 85
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayout:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayoutDivider:Landroid/view/View;

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

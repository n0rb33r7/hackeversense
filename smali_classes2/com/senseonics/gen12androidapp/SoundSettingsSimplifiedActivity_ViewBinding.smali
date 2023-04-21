.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    .line 29
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090213

    const-string v2, "field \'lowAlarmLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090214

    const-string v2, "field \'lowAlarmLeftText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090215

    const-string v2, "field \'lowAlarmRightText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09021f

    const-string v2, "field \'lowSnoozeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090220

    const-string v2, "field \'lowSnoozeLeftText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090221

    const-string v2, "field \'lowSnoozeRightText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901ac

    const-string v2, "field \'highAlarmLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ad

    const-string v2, "field \'highAlarmLeftText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ae

    const-string v2, "field \'highAlarmRightText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    .line 38
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901b8

    const-string v2, "field \'highSnoozeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901b9

    const-string v2, "field \'highSnoozeLeftText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901ba

    const-string v2, "field \'highSnoozeRightText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902c0

    const-string v2, "field \'overrideLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayout:Landroid/widget/LinearLayout;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c1

    const-string v2, "field \'overrideLayoutHeader\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayoutHeader:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090218

    const-string v2, "field \'lowGlucoseOverrideName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideName:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090219

    const-string v2, "field \'lowGlucoseOverrideSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    .line 45
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09012e

    const-string v2, "field \'disconnectLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    .line 46
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090131

    const-string v2, "field \'disconnectValueLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09012f

    const-string v2, "field \'disconnectMinutesLeftText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090130

    const-string v2, "field \'disconnectMinutesRightText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090137

    const-string v2, "field \'dndSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    .line 50
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090135

    const-string v2, "field \'dndTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity_ViewBinding;->target:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    .line 60
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    .line 70
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayoutHeader:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideName:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    .line 76
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    .line 81
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

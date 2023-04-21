.class public Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "MyTransmitterExpandableActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;


# instance fields
.field batteryLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field batteryLevelText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a7
    .end annotation
.end field

.field completedCal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e5
    .end annotation
.end field

.field completedCalText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e6
    .end annotation
.end field

.field currentPhase:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090102
    .end annotation
.end field

.field currentPhaseText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field firmwareVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090180
    .end annotation
.end field

.field firmwareVersionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field fwUpdate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field lastCal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ef
    .end annotation
.end field

.field lastCalText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f0
    .end annotation
.end field

.field modelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090247
    .end annotation
.end field

.field modelNumberText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090248
    .end annotation
.end field

.field name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field nameText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028b
    .end annotation
.end field

.field phaseStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d5
    .end annotation
.end field

.field phaseStartText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d6
    .end annotation
.end field

.field presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field rssi:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090314
    .end annotation
.end field

.field rssiLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090315
    .end annotation
.end field

.field rssiLayoutDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090316
    .end annotation
.end field

.field rssiText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090317
    .end annotation
.end field

.field serialNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090336
    .end annotation
.end field

.field serialNumberText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090337
    .end annotation
.end field

.field vibration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090414
    .end annotation
.end field

.field vibrationText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090416
    .end annotation
.end field

.field private wasDetached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->detach()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->wasDetached:Z

    return-void
.end method

.method public getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getViewVisibilityByID(II)I
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 86
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->initializeLayout(I)Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110208

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 92
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayoutDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public refreshRssi(Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshViews(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersionText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCalText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStartText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCalText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhaseText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibrationText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->fwUpdate:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 142
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->fwUpdate:Landroid/widget/ImageView;

    invoke-virtual {p2, p8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    invoke-virtual {p1, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    invoke-virtual {p1, p10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    invoke-virtual {p1, p11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    invoke-virtual {p1, p12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    invoke-virtual {p1, p13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public rotateImageViewByDegree(III)V
    .locals 7

    .line 208
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 211
    new-instance p2, Landroid/view/animation/RotateAnimation;

    int-to-float v2, p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x12c

    .line 212
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 213
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p3, 0x1

    .line 214
    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 215
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setDemoButtonEnable(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance p2, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;Z)V

    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageViewWithImage(III)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 203
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setViewVisibilityByID(III)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupDemoOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupFwUpdateListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->fwUpdate:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupSectionExpandCollapse(IZ)V
    .locals 3

    .line 223
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->wasDetached:Z

    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f060291

    .line 225
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0900b5

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090089

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const p2, 0x7f08010e

    goto :goto_1

    :cond_1
    const p2, 0x7f08010f

    .line 228
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 179
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901a6

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v0, 0x4

    .line 183
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 184
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.class public Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "GlucoseSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;


# instance fields
.field protected initialLayoutID:I

.field protected presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected presenterUI:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;
    .annotation runtime Ljavax/inject/Inject;
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

    .line 53
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->detach()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->wasDetached:Z

    return-void
.end method

.method public getViewVisibilityByID(II)I
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getLayoutID()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initializeLayout(I)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 45
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110130

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshGlucoseSection(IIIIZILjava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 133
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 136
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 137
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshHighGlucoseAlarmSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->refreshGlucoseSection(IIIIZILjava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move v1, p2

    .line 106
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move v2, p3

    .line 107
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 108
    invoke-static {v2}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    move v3, p6

    .line 109
    invoke-virtual {v0, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move/from16 v3, p9

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, p7

    .line 112
    invoke-virtual {v2, p7}, Landroid/widget/Switch;->setEnabled(Z)V

    move/from16 v1, p10

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move/from16 v0, p12

    .line 115
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    move-object/from16 v0, p13

    .line 116
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public refreshPredictiveRateSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 156
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    .line 157
    invoke-static {p3}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 158
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout;

    .line 159
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 162
    invoke-virtual {p2, p9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {p3, p7}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 164
    invoke-virtual {p4, p8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 165
    invoke-virtual {p5, p9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-virtual {p1, p10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-virtual {p1, p11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p3, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    invoke-virtual {p3, p12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    invoke-virtual {p3, p13}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public replaceLayout()V
    .locals 5

    const v0, 0x7f0900a4

    .line 69
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->presenter:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    invoke-virtual {v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getLayoutID()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    iget v3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->initialLayoutID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public rotateImageViewByDegree(III)V
    .locals 7

    .line 205
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 208
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

    .line 209
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 210
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p3, 0x1

    .line 211
    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 212
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setImageViewWithImage(III)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 200
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTextViewWithText(IILjava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewVisibilityByID(III)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 123
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupHighGlucoseAlarmSection(IIIIILandroid/view/View$OnClickListener;II)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupPredictiveRateSection(IIILandroid/view/View$OnClickListener;I)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 148
    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setupSectionExpandCollapse(IIIZ)V
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->wasDetached:Z

    if-nez v0, :cond_4

    .line 218
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableExpandCollapseGlucoseSetting()Z

    move-result v0

    .line 219
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    const v1, 0x7f060291

    goto :goto_0

    :cond_0
    const v1, 0x7f060290

    .line 220
    :goto_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    const p2, 0x7f08010e

    goto :goto_2

    :cond_2
    const p2, 0x7f08010f

    .line 223
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_3

    move v1, v2

    .line 224
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 p3, 0x4

    .line 180
    invoke-virtual {p2, p3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 181
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

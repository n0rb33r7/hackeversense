.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "SoundSettingsSimplifiedActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;


# instance fields
.field disconnectLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field disconnectMinutesLeftText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012f
    .end annotation
.end field

.field disconnectMinutesRightText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090130
    .end annotation
.end field

.field disconnectValueLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090131
    .end annotation
.end field

.field dndSwitch:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090137
    .end annotation
.end field

.field dndTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090135
    .end annotation
.end field

.field highAlarmLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ac
    .end annotation
.end field

.field highAlarmLeftText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ad
    .end annotation
.end field

.field highAlarmRightText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ae
    .end annotation
.end field

.field highSnoozeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b8
    .end annotation
.end field

.field highSnoozeLeftText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b9
    .end annotation
.end field

.field highSnoozeRightText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ba
    .end annotation
.end field

.field lowAlarmLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090213
    .end annotation
.end field

.field lowAlarmLeftText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090214
    .end annotation
.end field

.field lowAlarmRightText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090215
    .end annotation
.end field

.field lowGlucoseOverrideName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090218
    .end annotation
.end field

.field lowGlucoseOverrideSwitch:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090219
    .end annotation
.end field

.field lowSnoozeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09021f
    .end annotation
.end field

.field lowSnoozeLeftText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090220
    .end annotation
.end field

.field lowSnoozeRightText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090221
    .end annotation
.end field

.field overrideLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c0
    .end annotation
.end field

.field overrideLayoutHeader:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c1
    .end annotation
.end field

.field protected presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->presenter:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->detach()V

    return-void
.end method

.method public logBleDisconnectSettingEvent(Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Minutes"

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v1, "BLE_Disconnect_Setting"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0081

    .line 80
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->initializeLayout(I)Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public openNotificationPolicyAccessSettings()V
    .locals 2

    .line 174
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public refreshView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;ZI)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 111
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLeftText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p12}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 128
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideName:Landroid/widget/TextView;

    invoke-virtual {p12, p13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p12, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 131
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesLeftText:Landroid/widget/TextView;

    invoke-virtual {p12, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    invoke-virtual {p12, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-static {p12}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 135
    iget-object p12, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p12, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 136
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectMinutesRightText:Landroid/widget/TextView;

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowGlucoseOverrideSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->dndSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p9}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setDisconnectLayoutVisibility(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setOverrideLayoutVisibility(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;IILjava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highAlarmLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->lowSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->highSnoozeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->disconnectValueLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, p6}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->setDisconnectLayoutVisibility(I)V

    .line 104
    invoke-virtual {p0, p7}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->setOverrideLayoutVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->overrideLayoutHeader:Landroid/widget/TextView;

    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startSoundSelectionActivityWithKey(Ljava/lang/String;)V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "1"

    .line 156
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class public Lcom/senseonics/gen12androidapp/BaseActivity;
.super Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ServiceActivity;
.implements Lcom/senseonics/gen12androidapp/ActivityWithNavigationBar;


# instance fields
.field private naviBarLayout:Landroid/widget/RelativeLayout;

.field protected naviBarLeftItemTextView:Landroid/widget/TextView;

.field protected naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

.field public naviBarRightItemTextView:Landroid/widget/TextView;

.field protected naviBarTitle:Landroid/widget/TextView;

.field protected naviBarTitleImageView:Landroid/widget/ImageView;

.field private refreshButton:Landroid/widget/ImageButton;

.field protected statusBarDrawerButton:Landroid/widget/ImageView;

.field private statusBarLayout:Landroid/widget/LinearLayout;

.field private statusBarTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-nez p3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getRefreshButton()Landroid/widget/ImageButton;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public initializeLayout(I)Landroid/view/View;
    .locals 4

    const v0, 0x7f0900a4

    .line 111
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 117
    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method protected isThisActivityTop()Z
    .locals 6

    .line 145
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    const-string v0, "activity"

    .line 148
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getTaskId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 154
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "topActivity -----"

    .line 152
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "top"

    const-string v2, "true"

    .line 158
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 307
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7531

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 312
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    goto :goto_0

    :cond_0
    const p1, 0x9c41

    if-ne p2, p1, :cond_1

    .line 314
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 315
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    goto :goto_0

    :cond_1
    const p1, 0x9c43

    if-ne p2, p1, :cond_2

    .line 319
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "Activities"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const p1, 0x7f0c0040

    .line 63
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lcom/senseonics/util/Utils;->setPortraitScreenWidthHeight(Landroid/app/Activity;)V

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->overridePendingTransition(II)V

    const p1, 0x7f090063

    .line 79
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v0, -0xff0001

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const p1, 0x7f090145

    .line 82
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const v0, 0x7f0800c4

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/senseonics/gen12androidapp/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity$1;-><init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0903af

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarTextView:Landroid/widget/TextView;

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 95
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0901fc

    .line 98
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    const p1, 0x7f090293

    .line 101
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f09028f

    .line 102
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    const p1, 0x7f090290

    .line 103
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    const p1, 0x7f09028c

    .line 104
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLeftItemTextView:Landroid/widget/TextView;

    const p1, 0x7f09028e

    .line 105
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const p1, 0x7f0902f7

    .line 106
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshButton:Landroid/widget/ImageButton;

    const p1, 0x7f09028d

    .line 107
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 297
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V

    .line 219
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V

    .line 204
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getTransmitterMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_0

    instance-of v1, p0, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_1

    instance-of v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    if-eqz v1, :cond_1

    .line 228
    move-object p1, p0

    check-cast p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 234
    :goto_0
    instance-of p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    if-eqz p1, :cond_4

    .line 235
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, p1, :cond_2

    .line 236
    move-object p1, p0

    check-cast p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_1

    .line 237
    :cond_2
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, p1, :cond_3

    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, p1, :cond_4

    .line 242
    :cond_3
    move-object p1, p0

    check-cast p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 246
    :cond_4
    :goto_1
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PlacementToHomeEvent;)V
    .locals 0

    const p1, 0x9c43

    .line 255
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V

    .line 214
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V

    .line 209
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/StatusHeaderTapEvent;)V
    .locals 0

    const/4 p1, -0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 251
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onBackPressed()V

    .line 199
    :goto_0
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->overridePendingTransition(II)V

    .line 187
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onResume()V

    .line 174
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMS(BaseActivity)"

    const-string v1, "onResume NOT log in"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x9c41

    .line 177
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 277
    new-instance v0, Lcom/senseonics/gen12androidapp/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity$2;-><init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V

    return-object v0
.end method

.method public refreshNotifications(Landroid/app/Activity;)V
    .locals 1

    .line 138
    instance-of v0, p1, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    if-eqz v0, :cond_0

    .line 139
    check-cast p1, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->refresh()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7531

    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060021

    .line 327
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f06007c

    .line 329
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

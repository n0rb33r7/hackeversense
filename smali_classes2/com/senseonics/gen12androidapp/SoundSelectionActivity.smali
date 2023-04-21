.class public Lcom/senseonics/gen12androidapp/SoundSelectionActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SoundSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private ringTone:Landroid/media/Ringtone;

.field private soundListView:Landroid/widget/ListView;

.field private soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;


# direct methods
.method static bridge synthetic -$$Nest$fgetringTone(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Landroid/media/Ringtone;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsoundType(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputringTone(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;Landroid/media/Ringtone;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnullifyRingtone(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->nullifyRingtone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const-string v0, "SoundSettingSelect"

    .line 20
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private nullifyRingtone()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    .line 29
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f090352

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v2}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneList()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f0c010a

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "LowAlarmDay"

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "SoundSettingSelect"

    if-eqz v1, :cond_0

    const-string p1, "Is Low Alarm Day"

    .line 38
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    goto :goto_0

    :cond_0
    const-string v1, "HighAlarmDay"

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Is High Alarm Day"

    .line 42
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    .line 47
    :cond_1
    :goto_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const-string p1, ""

    move v2, v1

    goto :goto_1

    :cond_2
    const p1, 0x7f1102e6

    .line 53
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_3
    const p1, 0x7f1102e8

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, v1, p1, v3}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    .line 103
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->nullifyRingtone()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

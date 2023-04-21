.class public Lcom/senseonics/calReminder/CalReminderManager;
.super Ljava/lang/Object;
.source "CalReminderManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private pendingIntentFactory:Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;

.field private final prefCalReminder1Enabled:Ljava/lang/String;

.field private final prefCalReminder1Hour:Ljava/lang/String;

.field private final prefCalReminder1Minute:Ljava/lang/String;

.field private final prefCalReminder2Enabled:Ljava/lang/String;

.field private final prefCalReminder2Hour:Ljava/lang/String;

.field private final prefCalReminder2Minute:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Landroid/app/AlarmManager;Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "calReminder1Enabled"

    .line 30
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder1Enabled:Ljava/lang/String;

    const-string v0, "calReminder1Hour"

    .line 31
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder1Hour:Ljava/lang/String;

    const-string v0, "calReminder1Minute"

    .line 32
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder1Minute:Ljava/lang/String;

    const-string v0, "calReminder2Enabled"

    .line 33
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder2Enabled:Ljava/lang/String;

    const-string v0, "calReminder2Hour"

    .line 34
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder2Hour:Ljava/lang/String;

    const-string v0, "calReminder2Minute"

    .line 35
    iput-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->prefCalReminder2Minute:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/senseonics/calReminder/CalReminderManager;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/senseonics/calReminder/CalReminderManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 56
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    iput-object p3, p0, Lcom/senseonics/calReminder/CalReminderManager;->alarmManager:Landroid/app/AlarmManager;

    .line 58
    iput-object p4, p0, Lcom/senseonics/calReminder/CalReminderManager;->pendingIntentFactory:Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;

    .line 59
    iput-object p5, p0, Lcom/senseonics/calReminder/CalReminderManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 60
    iput-object p6, p0, Lcom/senseonics/calReminder/CalReminderManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 61
    iput-object p7, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    .line 63
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    return-void
.end method

.method private cancel(Landroid/app/PendingIntent;)V
    .locals 1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private fireNotification(I)V
    .locals 2

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Hour()I

    move-result p1

    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Minute()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/calReminder/CalReminderManager;->getNotificationTimeText(II)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_CAL_REMINDER_1:I

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/NotificationUtility;->createCalReminderNotification(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Hour()I

    move-result p1

    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Minute()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/calReminder/CalReminderManager;->getNotificationTimeText(II)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget v1, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_CAL_REMINDER_2:I

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/NotificationUtility;->createCalReminderNotification(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getNotificationTimeText(II)Ljava/lang/String;
    .locals 2

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 157
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 158
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 159
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTriggerAtMillis(II)J
    .locals 2

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 142
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 143
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 p2, 0x0

    .line 144
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 145
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    const/4 p2, 0x1

    .line 149
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method private schedule(Landroid/app/PendingIntent;J)V
    .locals 2

    .line 122
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid6OrAbove()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getCalReminder1Enabled()Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder1Enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getCalReminder1Hour()I
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder1Hour"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getCalReminder1Minute()I
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder1Minute"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getCalReminder2Enabled()Z
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder2Enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getCalReminder2Hour()I
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder2Hour"

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getCalReminder2Minute()I
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "calReminder2Minute"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/calReminder/CalReminderReceivedEvent;)V
    .locals 0

    .line 74
    invoke-virtual {p1}, Lcom/senseonics/calReminder/CalReminderReceivedEvent;->getRequestCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/calReminder/CalReminderManager;->fireNotification(I)V

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/BackgroundToForegroundEvent;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->updateSchedule()V

    return-void
.end method

.method setCalReminder1Enabled(Z)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder1Enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setCalReminder1Hour(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder1Hour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setCalReminder1Minute(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder1Minute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setCalReminder2Enabled(Z)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder2Enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setCalReminder2Hour(I)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder2Hour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method setCalReminder2Minute(I)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calReminder2Minute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method updateSchedule()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderManager;->pendingIntentFactory:Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;

    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderManager;->context:Landroid/content/Context;

    const/16 v2, 0x4e21

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;->getPendingIntentCalReminder(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/senseonics/calReminder/CalReminderManager;->pendingIntentFactory:Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;

    iget-object v2, p0, Lcom/senseonics/calReminder/CalReminderManager;->context:Landroid/content/Context;

    const/16 v3, 0x4e22

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/calReminder/CalReminderPendingIntentFactory;->getPendingIntentCalReminder(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 92
    invoke-direct {p0, v0}, Lcom/senseonics/calReminder/CalReminderManager;->cancel(Landroid/app/PendingIntent;)V

    .line 93
    invoke-direct {p0, v1}, Lcom/senseonics/calReminder/CalReminderManager;->cancel(Landroid/app/PendingIntent;)V

    .line 95
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibrationReminders()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Enabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Enabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 103
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Hour()I

    move-result v2

    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder1Minute()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/senseonics/calReminder/CalReminderManager;->getTriggerAtMillis(II)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/senseonics/calReminder/CalReminderManager;->schedule(Landroid/app/PendingIntent;J)V

    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Hour()I

    move-result v0

    invoke-virtual {p0}, Lcom/senseonics/calReminder/CalReminderManager;->getCalReminder2Minute()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/senseonics/calReminder/CalReminderManager;->getTriggerAtMillis(II)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/senseonics/calReminder/CalReminderManager;->schedule(Landroid/app/PendingIntent;J)V

    :cond_2
    return-void
.end method

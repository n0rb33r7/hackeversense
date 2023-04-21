.class public Lcom/senseonics/util/NotificationUtility;
.super Ljava/lang/Object;
.source "NotificationUtility.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private extensionManager:Lcom/senseonics/extension/ExtensionManager;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

.field private notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

.field private final shouldPreventUserClearAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/senseonics/util/AlarmRingtoneManager;Lde/greenrobot/event/EventBus;Lcom/senseonics/util/NotificationDndManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/extension/ExtensionManager;Lcom/senseonics/util/NotificationContentIntentHelper;Lcom/senseonics/util/NotificationMediaPlayer;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/senseonics/util/NotificationUtility;->shouldPreventUserClearAll:Z

    .line 61
    iput-object p1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    .line 63
    iput-object p3, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 64
    iput-object p4, p0, Lcom/senseonics/util/NotificationUtility;->eventBus:Lde/greenrobot/event/EventBus;

    .line 65
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 66
    iput-object p5, p0, Lcom/senseonics/util/NotificationUtility;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    .line 67
    iput-object p6, p0, Lcom/senseonics/util/NotificationUtility;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 68
    iput-object p7, p0, Lcom/senseonics/util/NotificationUtility;->extensionManager:Lcom/senseonics/extension/ExtensionManager;

    .line 69
    iput-object p8, p0, Lcom/senseonics/util/NotificationUtility;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    .line 70
    iput-object p9, p0, Lcom/senseonics/util/NotificationUtility;->notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

    .line 72
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationUtility;->createChannels()V

    return-void
.end method

.method private addDefaultVibrateLight(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x6

    .line 181
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private addPriority(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x2

    .line 188
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private createForegroundServiceNotification(I)Landroid/app/Notification;
    .locals 3

    .line 192
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    sget-object v2, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 193
    invoke-virtual {v2}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0800ce

    .line 194
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "Eversense CGM"

    .line 195
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 197
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    const/high16 v1, 0x4000000

    .line 198
    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationContentIntentHelper;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createRichForegroundServiceNotification()Landroid/app/Notification;
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->extensionManager:Lcom/senseonics/extension/ExtensionManager;

    invoke-virtual {v0}, Lcom/senseonics/extension/ExtensionManager;->getForegroundNotificationCollapsedView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->extensionManager:Lcom/senseonics/extension/ExtensionManager;

    invoke-virtual {v1}, Lcom/senseonics/extension/ExtensionManager;->getForegroundNotificationExpandedView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/senseonics/util/NotificationUtility;->extensionManager:Lcom/senseonics/extension/ExtensionManager;

    invoke-virtual {v2}, Lcom/senseonics/extension/ExtensionManager;->getForegroundNotificationTicker()Ljava/lang/String;

    move-result-object v2

    .line 208
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    sget-object v5, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 209
    invoke-virtual {v5}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0800ce

    .line 210
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 211
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 212
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    const/high16 v2, 0x4000000

    .line 215
    invoke-virtual {v1, v2}, Lcom/senseonics/util/NotificationContentIntentHelper;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    return-object p1
.end method

.method private getSoundUri(I)Landroid/net/Uri;
    .locals 1

    .line 169
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 170
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getUriforRingtone(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getUriforRingtone(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 174
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 125
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 126
    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 128
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationUtility;->addDefaultVibrateLight(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationUtility;->addPriority(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 134
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 135
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 138
    iget-object p2, p0, Lcom/senseonics/util/NotificationUtility;->notificationContentIntentHelper:Lcom/senseonics/util/NotificationContentIntentHelper;

    const/high16 p3, 0xc000000

    invoke-virtual {p2, p3}, Lcom/senseonics/util/NotificationContentIntentHelper;->getPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 140
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 143
    invoke-direct {p0, p5}, Lcom/senseonics/util/NotificationUtility;->getSoundUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 144
    iget-object p3, p0, Lcom/senseonics/util/NotificationUtility;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    invoke-virtual {p3, p5}, Lcom/senseonics/util/NotificationDndManager;->shouldPlayCriticalAlarm(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 145
    iget-object p3, p0, Lcom/senseonics/util/NotificationUtility;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    invoke-virtual {p3, p2}, Lcom/senseonics/util/NotificationDndManager;->playCriticalAlarm(Landroid/net/Uri;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p3, p0, Lcom/senseonics/util/NotificationUtility;->notificationMediaPlayer:Lcom/senseonics/util/NotificationMediaPlayer;

    invoke-virtual {p3, p2}, Lcom/senseonics/util/NotificationMediaPlayer;->play(Landroid/net/Uri;)V

    .line 160
    :goto_0
    iget-object p2, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public cancelAllNotification()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public cancelNotification(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public createCalReminderNotification(ILjava/lang/String;)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const v1, 0x7f11027c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f11007c

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 94
    const-class v3, Lcom/senseonics/gen12androidapp/MainActivity;

    const v4, 0x7f0800ce

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method createChannels()V
    .locals 6

    .line 237
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid8OrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 241
    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 242
    invoke-virtual {v2, v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 248
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 251
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 252
    invoke-virtual {v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    iget-object v5, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 253
    invoke-virtual {v4, v5}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    .line 256
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 257
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 258
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 260
    invoke-virtual {v2, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 262
    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND_OLD:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 268
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public createMemberRemovedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 86
    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    sget v5, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_MEMBER_REMOVED:I

    const v2, 0x7f0800ce

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public varargs createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V
    .locals 8

    .line 99
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v0

    if-lez v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 110
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getWhiteIcon()I

    move-result v4

    .line 112
    const-class v3, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 113
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v7

    move-object v2, p0

    .line 112
    invoke-direct/range {v2 .. v7}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public createTempProfileTurnedOffNotification()V
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const v1, 0x7f110309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const v1, 0x7f110308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    const-class v3, Lcom/senseonics/gen12androidapp/MainActivity;

    sget v7, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_TEMP_PROFILE_TURNED_OFF:I

    const v4, 0x7f0800ce

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getForegroundServiceNotification()Landroid/app/Notification;
    .locals 2

    .line 222
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRichForegroundNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid7OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/senseonics/util/NotificationUtility;->createRichForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_1

    const v0, 0x7f110098

    goto :goto_0

    :cond_1
    const v0, 0x7f11021e

    :goto_0
    invoke-direct {p0, v0}, Lcom/senseonics/util/NotificationUtility;->createForegroundServiceNotification(I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lcom/senseonics/events/UpdateForegroundServiceNotificationEvent;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x539

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

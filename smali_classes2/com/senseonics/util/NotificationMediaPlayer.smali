.class public Lcom/senseonics/util/NotificationMediaPlayer;
.super Ljava/lang/Object;
.source "NotificationMediaPlayer.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/util/NotificationMediaPlayer;->context:Landroid/content/Context;

    return-void
.end method

.method private stopAndNullifyMediaPlayer()V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 43
    iget-object v0, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method play(Landroid/net/Uri;)V
    .locals 3

    .line 23
    :try_start_0
    invoke-direct {p0}, Lcom/senseonics/util/NotificationMediaPlayer;->stopAndNullifyMediaPlayer()V

    .line 25
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 26
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x2

    .line 29
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 32
    iget-object v0, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/senseonics/util/NotificationMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 33
    iget-object p1, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 34
    iget-object p1, p0, Lcom/senseonics/util/NotificationMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.class public Lcom/senseonics/gen12androidapp/BitmapSenderActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "BitmapSenderActivity.java"


# static fields
.field private static final FOLDER_NAME:Ljava/lang/String; = "/Senseonics"

.field private static final SCREENSHOT_NAME:Ljava/lang/String; = "/senseonics_statistics.png"


# instance fields
.field bitmapSender:Lcom/senseonics/gen12androidapp/BitmapSender;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field bitmapUtil:Lcom/senseonics/util/BitmapUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    return-void
.end method

.method private getScreenshotPath()Ljava/lang/String;
    .locals 4

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/Senseonics"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "N/A"

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/senseonics_statistics.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendBitmap()V
    .locals 6

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getScreenshotPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EMAIL_BITMAP_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/util/BitmapUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->bitmapSender:Lcom/senseonics/gen12androidapp/BitmapSender;

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EMAIL_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EMAIL_BODY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.senseonics.gen12androidapp.provider"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p0, v4, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/senseonics/gen12androidapp/BitmapSender;->sendBitmap(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->finishAndRemoveTask()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->finishAndRemoveTask()V

    .line 48
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 30
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;->sendBitmap()V

    return-void
.end method

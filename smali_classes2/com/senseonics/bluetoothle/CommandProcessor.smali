.class public Lcom/senseonics/bluetoothle/CommandProcessor;
.super Ljava/lang/Object;
.source "CommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;,
        Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;
    }
.end annotation


# static fields
.field public static final CALIBRATION_HOUR:Ljava/lang/String; = "calibration hour"

.field public static final CALIBRATION_MINUTE:Ljava/lang/String; = "calibration minute"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final EVENT_QUANTITY:Ljava/lang/String; = "event quantity"

.field public static final EVENT_SUB_TYPE_ID:Ljava/lang/String; = "event sub type id"

.field public static final EVENT_TYPE_ID:Ljava/lang/String; = "event type id"

.field public static final EXPECTED_RESPONSE_COUNT:Ljava/lang/String; = "expected response count"

.field public static final EXPECTED_RESPONSE_ID:Ljava/lang/String; = "expected response id"

.field public static final GLUCOSE_LEVEL:Ljava/lang/String; = "glucose level"

.field public static final IS_CLINICAL_MODE:Ljava/lang/String; = "is clinical mode"

.field public static final MILLIS:Ljava/lang/String; = "milliseconds"

.field public static final PUSH_NOTIFICATION_MESSAGE_CODE:Ljava/lang/String; = "PushNotificationMessageCode"

.field public static final RECORD_NUMBER:Ljava/lang/String; = "record number"

.field public static final SINGLE_BOOL:Ljava/lang/String; = "single bool"

.field public static final SINGLE_FLOAT:Ljava/lang/String; = "single float"

.field public static final SINGLE_INT:Ljava/lang/String; = "single int"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Intent;)Lcom/senseonics/bluetoothle/Request;
    .locals 3

    const-string v0, "CommandProcessor"

    if-eqz p1, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    move-result-object v1

    .line 457
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->generate(Landroid/os/Bundle;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "no command action given"

    .line 462
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

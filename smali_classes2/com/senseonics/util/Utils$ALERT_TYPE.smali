.class public final enum Lcom/senseonics/util/Utils$ALERT_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALERT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$ALERT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$ALERT_TYPE;

.field public static final enum HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

.field public static final enum LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 428
    new-instance v0, Lcom/senseonics/util/Utils$ALERT_TYPE;

    const-string v1, "LOW_GLUCOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$ALERT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    .line 429
    new-instance v1, Lcom/senseonics/util/Utils$ALERT_TYPE;

    const-string v3, "HIGH_GLUCOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/util/Utils$ALERT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/senseonics/util/Utils$ALERT_TYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 427
    sput-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ALERT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$ALERT_TYPE;
    .locals 1

    .line 427
    const-class v0, Lcom/senseonics/util/Utils$ALERT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$ALERT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$ALERT_TYPE;
    .locals 1

    .line 427
    sget-object v0, Lcom/senseonics/util/Utils$ALERT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ALERT_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$ALERT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$ALERT_TYPE;

    return-object v0
.end method

.class public final enum Lcom/senseonics/model/SIGNAL_STRENGTH;
.super Ljava/lang/Enum;
.source "SIGNAL_STRENGTH.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/SIGNAL_STRENGTH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;


# instance fields
.field private rawThreshold:I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "NO_SIGNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 18
    new-instance v1, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v3, "POOR"

    const/4 v4, 0x1

    const/16 v5, 0x15e

    invoke-direct {v1, v3, v4, v5, v5}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 19
    new-instance v3, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v5, "VERY_LOW"

    const/4 v6, 0x2

    const/16 v7, 0x1f4

    const/16 v8, 0x18b

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 20
    new-instance v5, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v7, "LOW"

    const/4 v8, 0x3

    const/16 v9, 0x320

    const/16 v10, 0x1ee

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 21
    new-instance v7, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v9, "GOOD"

    const/4 v10, 0x4

    const/16 v11, 0x514

    const/16 v12, 0x2c1

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 22
    new-instance v9, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v11, "EXCELLENT"

    const/4 v12, 0x5

    const/16 v13, 0x640

    const/16 v14, 0x387

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 3
    sput-object v11, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    .line 29
    iput p4, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->rawThreshold:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, [Lcom/senseonics/model/SIGNAL_STRENGTH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method


# virtual methods
.method public getRawThreshold()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->rawThreshold:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    return v0
.end method

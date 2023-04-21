.class public final enum Lcom/senseonics/model/BATTERY_LEVEL;
.super Ljava/lang/Enum;
.source "BATTERY_LEVEL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/BATTERY_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;


# instance fields
.field private strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "UNKNOWN_NEG_1"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 5
    new-instance v1, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v3, "BL_0"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 6
    new-instance v3, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v5, "BL_5"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 7
    new-instance v5, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v7, "BL_10"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 8
    new-instance v7, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v9, "BL_25"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 9
    new-instance v9, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v11, "BL_35"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 10
    new-instance v11, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v13, "BL_45"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 11
    new-instance v13, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v15, "BL_55"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 12
    new-instance v15, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v14, "BL_65"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 13
    new-instance v14, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v12, "BL_75"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 14
    new-instance v12, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v10, "BL_85"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 15
    new-instance v10, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v8, "BL_95"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 16
    new-instance v8, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v6, "BL_100"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/senseonics/model/BATTERY_LEVEL;->BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    aput-object v10, v6, v4

    aput-object v8, v6, v2

    .line 3
    sput-object v6, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    return-void
.end method

.method public static fromStrength(I)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 5

    .line 25
    invoke-static {}, Lcom/senseonics/model/BATTERY_LEVEL;->values()[Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    sget-object p0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v0}, [Lcom/senseonics/model/BATTERY_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method

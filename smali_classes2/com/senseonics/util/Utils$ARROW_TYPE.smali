.class public final enum Lcom/senseonics/util/Utils$ARROW_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ARROW_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$ARROW_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;


# instance fields
.field private imageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 355
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "STALE"

    const/4 v2, 0x0

    const v3, 0x7f0801c2

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 356
    new-instance v1, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v3, "FALLING_FAST"

    const/4 v4, 0x1

    const v5, 0x7f0801c0

    invoke-direct {v1, v3, v4, v5}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 357
    new-instance v3, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v5, "FALLING"

    const/4 v6, 0x2

    const v7, 0x7f0801bf

    invoke-direct {v3, v5, v6, v7}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 358
    new-instance v5, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v7, "FLAT"

    const/4 v8, 0x3

    const v9, 0x7f0801c1

    invoke-direct {v5, v7, v8, v9}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 359
    new-instance v7, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v9, "RISING"

    const/4 v10, 0x4

    const v11, 0x7f0801c3

    invoke-direct {v7, v9, v10, v11}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 360
    new-instance v9, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v11, "RISING_FAST"

    const/4 v12, 0x5

    const v13, 0x7f0801c4

    invoke-direct {v9, v11, v12, v13}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 354
    sput-object v11, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 365
    iput p3, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 354
    const-class v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 354
    sget-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$ARROW_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return v0
.end method

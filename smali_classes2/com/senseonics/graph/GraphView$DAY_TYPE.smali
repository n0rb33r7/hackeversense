.class public final enum Lcom/senseonics/graph/GraphView$DAY_TYPE;
.super Ljava/lang/Enum;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/graph/GraphView$DAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field public static final enum WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const-string v1, "THIRDWIDTH_2SECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const-string v3, "HALFWIDTH_6SECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v3, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const-string v5, "WIDTHX2_12SECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v5, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const-string v7, "WIDTHX4_24SECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    new-instance v7, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const-string v9, "WIDTHX8_TO_WIDTHX12_48SECTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/graph/GraphView$DAY_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/senseonics/graph/GraphView$DAY_TYPE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 53
    sput-object v9, Lcom/senseonics/graph/GraphView$DAY_TYPE;->$VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 1

    .line 53
    const-class v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 1

    .line 53
    sget-object v0, Lcom/senseonics/graph/GraphView$DAY_TYPE;->$VALUES:[Lcom/senseonics/graph/GraphView$DAY_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/graph/GraphView$DAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object v0
.end method

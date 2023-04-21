.class public final enum Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INSULIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$INSULIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field public static final enum SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v1, "RAPID_ACTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v3, "SHORT_ACTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->SHORT_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v3, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v5, "INTERMEDIATE_ACTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->INTERMEDIATE_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v5, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v7, "LONG_ACTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->LONG_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v7, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v9, "MIXED_70_30"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_70_30:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v11, "MIXED_50_50"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_50_50:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v11, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v13, "MIXED_75_25"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->MIXED_75_25:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    new-instance v13, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->OTHER:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 25
    sput-object v15, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 1

    .line 25
    const-class v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 1

    .line 25
    sget-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object v0
.end method

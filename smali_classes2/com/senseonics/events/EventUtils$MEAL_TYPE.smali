.class public final enum Lcom/senseonics/events/EventUtils$MEAL_TYPE;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEAL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$MEAL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field public static final enum BREAKFAST:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field public static final enum DINNER:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field public static final enum LUNCH:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field public static final enum SNACK:Lcom/senseonics/events/EventUtils$MEAL_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const-string v1, "BREAKFAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->BREAKFAST:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    new-instance v1, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const-string v3, "LUNCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->LUNCH:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    new-instance v3, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const-string v5, "DINNER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->DINNER:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    new-instance v5, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const-string v7, "SNACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->SNACK:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 21
    sput-object v7, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$MEAL_TYPE;
    .locals 1

    .line 21
    const-class v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;
    .locals 1

    .line 21
    sget-object v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->$VALUES:[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$MEAL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-object v0
.end method

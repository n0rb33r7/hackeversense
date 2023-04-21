.class public final enum Lcom/jjoe64/graphview/Graph$LegendAlign;
.super Ljava/lang/Enum;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jjoe64/graphview/Graph$LegendAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/Graph$LegendAlign;

.field public static final enum BOTTOM:Lcom/jjoe64/graphview/Graph$LegendAlign;

.field public static final enum MIDDLE:Lcom/jjoe64/graphview/Graph$LegendAlign;

.field public static final enum TOP:Lcom/jjoe64/graphview/Graph$LegendAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1043
    new-instance v0, Lcom/jjoe64/graphview/Graph$LegendAlign;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jjoe64/graphview/Graph$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/Graph$LegendAlign;->TOP:Lcom/jjoe64/graphview/Graph$LegendAlign;

    new-instance v1, Lcom/jjoe64/graphview/Graph$LegendAlign;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jjoe64/graphview/Graph$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jjoe64/graphview/Graph$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/Graph$LegendAlign;

    new-instance v3, Lcom/jjoe64/graphview/Graph$LegendAlign;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jjoe64/graphview/Graph$LegendAlign;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jjoe64/graphview/Graph$LegendAlign;->BOTTOM:Lcom/jjoe64/graphview/Graph$LegendAlign;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jjoe64/graphview/Graph$LegendAlign;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1042
    sput-object v5, Lcom/jjoe64/graphview/Graph$LegendAlign;->$VALUES:[Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1042
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/Graph$LegendAlign;
    .locals 1

    .line 1042
    const-class v0, Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-object p0
.end method

.method public static values()[Lcom/jjoe64/graphview/Graph$LegendAlign;
    .locals 1

    .line 1042
    sget-object v0, Lcom/jjoe64/graphview/Graph$LegendAlign;->$VALUES:[Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/Graph$LegendAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-object v0
.end method

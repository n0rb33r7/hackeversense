.class public final enum Ldagger/Provides$Type;
.super Ljava/lang/Enum;
.source "Provides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/Provides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldagger/Provides$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldagger/Provides$Type;

.field public static final enum SET:Ldagger/Provides$Type;

.field public static final enum SET_VALUES:Ldagger/Provides$Type;

.field public static final enum UNIQUE:Ldagger/Provides$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "UNIQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->UNIQUE:Ldagger/Provides$Type;

    .line 49
    new-instance v1, Ldagger/Provides$Type;

    const-string v3, "SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    .line 56
    new-instance v3, Ldagger/Provides$Type;

    const-string v5, "SET_VALUES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Ldagger/Provides$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 36
    sput-object v5, Ldagger/Provides$Type;->$VALUES:[Ldagger/Provides$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/Provides$Type;
    .locals 1

    .line 36
    const-class v0, Ldagger/Provides$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldagger/Provides$Type;

    return-object p0
.end method

.method public static values()[Ldagger/Provides$Type;
    .locals 1

    .line 36
    sget-object v0, Ldagger/Provides$Type;->$VALUES:[Ldagger/Provides$Type;

    invoke-virtual {v0}, [Ldagger/Provides$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/Provides$Type;

    return-object v0
.end method

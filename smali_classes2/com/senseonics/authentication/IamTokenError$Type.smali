.class public final enum Lcom/senseonics/authentication/IamTokenError$Type;
.super Ljava/lang/Enum;
.source "IamTokenError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/authentication/IamTokenError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/authentication/IamTokenError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/authentication/IamTokenError$Type;

.field public static final enum InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

.field public static final enum LockedOut:Lcom/senseonics/authentication/IamTokenError$Type;

.field public static final enum None:Lcom/senseonics/authentication/IamTokenError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/senseonics/authentication/IamTokenError$Type;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/authentication/IamTokenError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/authentication/IamTokenError$Type;->None:Lcom/senseonics/authentication/IamTokenError$Type;

    .line 31
    new-instance v1, Lcom/senseonics/authentication/IamTokenError$Type;

    const-string v3, "InvalidCredential"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/authentication/IamTokenError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/authentication/IamTokenError$Type;->InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

    .line 32
    new-instance v3, Lcom/senseonics/authentication/IamTokenError$Type;

    const-string v5, "LockedOut"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/authentication/IamTokenError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/authentication/IamTokenError$Type;->LockedOut:Lcom/senseonics/authentication/IamTokenError$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/senseonics/authentication/IamTokenError$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 29
    sput-object v5, Lcom/senseonics/authentication/IamTokenError$Type;->$VALUES:[Lcom/senseonics/authentication/IamTokenError$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError$Type;
    .locals 1

    .line 29
    const-class v0, Lcom/senseonics/authentication/IamTokenError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/authentication/IamTokenError$Type;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/authentication/IamTokenError$Type;
    .locals 1

    .line 29
    sget-object v0, Lcom/senseonics/authentication/IamTokenError$Type;->$VALUES:[Lcom/senseonics/authentication/IamTokenError$Type;

    invoke-virtual {v0}, [Lcom/senseonics/authentication/IamTokenError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/authentication/IamTokenError$Type;

    return-object v0
.end method

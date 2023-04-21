.class public final enum Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;
.super Ljava/lang/Enum;
.source "ThrowableError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/authentication/ThrowableError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThrowableErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field public static final enum IamInvalidCredential:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field public static final enum IamLockedOut:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field public static final enum IncorrectEmailOrPassword:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field public static final enum InternetDisconnected:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field public static final enum Unknown:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const-string v1, "IamInvalidCredential"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IamInvalidCredential:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 6
    new-instance v1, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const-string v3, "IamLockedOut"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IamLockedOut:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 7
    new-instance v3, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const-string v5, "IncorrectEmailOrPassword"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IncorrectEmailOrPassword:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 8
    new-instance v5, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const-string v7, "InternetDisconnected"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->InternetDisconnected:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 9
    new-instance v7, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const-string v9, "Unknown"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->Unknown:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 4
    sput-object v9, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->$VALUES:[Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;
    .locals 1

    .line 4
    const-class v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;
    .locals 1

    .line 4
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->$VALUES:[Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    invoke-virtual {v0}, [Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    return-object v0
.end method

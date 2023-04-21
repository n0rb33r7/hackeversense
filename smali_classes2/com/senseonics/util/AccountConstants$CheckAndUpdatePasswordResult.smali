.class public final enum Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;
.super Ljava/lang/Enum;
.source "AccountConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckAndUpdatePasswordResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

.field public static final enum EmailNotExist:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

.field public static final enum InvalidCredentials:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

.field public static final enum NoPwdUpdateNeededAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

.field public static final enum PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

.field public static final enum ServerError:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 123
    new-instance v0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    const-string v1, "PwdUpdatedAndAuthenticated"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    .line 124
    new-instance v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    const-string v4, "NoPwdUpdateNeededAndAuthenticated"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->NoPwdUpdateNeededAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    .line 125
    new-instance v4, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    const-string v6, "InvalidCredentials"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->InvalidCredentials:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    .line 126
    new-instance v6, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    const-string v8, "EmailNotExist"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->EmailNotExist:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    .line 127
    new-instance v8, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    const-string v10, "ServerError"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ServerError:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    new-array v10, v11, [Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 122
    sput-object v10, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->id:I

    return-void
.end method

.method public static fromValue(I)Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;
    .locals 5

    .line 140
    invoke-static {}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->values()[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object p0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->ServerError:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;
    .locals 1

    .line 122
    const-class v0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;
    .locals 1

    .line 122
    sget-object v0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->id:I

    return v0
.end method

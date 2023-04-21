.class public final enum Lcom/senseonics/util/AccountConstants$MLDMSResult;
.super Ljava/lang/Enum;
.source "AccountConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLDMSResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AccountConstants$MLDMSResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum IamInvalidCredential:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum IamLockedOut:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field public static final enum Unknown:Lcom/senseonics/util/AccountConstants$MLDMSResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 88
    new-instance v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v1, "InvalidDeviceType"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidDeviceType:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 89
    new-instance v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v3, "InvalidUserCredentials"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 90
    new-instance v3, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v5, "GeneralErrorSavingData"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/util/AccountConstants$MLDMSResult;->GeneralErrorSavingData:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 91
    new-instance v5, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v7, "DataSaved"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 92
    new-instance v7, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v9, "Timeout"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 93
    new-instance v9, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v11, "NotConnectedToWifi"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 94
    new-instance v11, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v13, "ServerError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v8}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 95
    new-instance v13, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v15, "IDNotFound"

    const/4 v8, 0x7

    invoke-direct {v13, v15, v8, v10}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IDNotFound:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 96
    new-instance v15, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v10, "None"

    const/16 v6, 0x8

    invoke-direct {v15, v10, v6, v12}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 97
    new-instance v10, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v12, "Unknown"

    const/16 v4, 0x9

    invoke-direct {v10, v12, v4, v14}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Unknown:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 98
    new-instance v12, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v4, "IamInvalidCredential"

    const/16 v14, 0xa

    invoke-direct {v12, v4, v14, v8}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamInvalidCredential:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 99
    new-instance v4, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v14, "IamLockedOut"

    const/16 v8, 0xb

    invoke-direct {v4, v14, v8, v6}, Lcom/senseonics/util/AccountConstants$MLDMSResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamLockedOut:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/16 v14, 0xc

    new-array v14, v14, [Lcom/senseonics/util/AccountConstants$MLDMSResult;

    aput-object v0, v14, v2

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v6

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    aput-object v4, v14, v8

    .line 87
    sput-object v14, Lcom/senseonics/util/AccountConstants$MLDMSResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->id:I

    return-void
.end method

.method public static fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 5

    .line 112
    invoke-static {}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->values()[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 113
    invoke-virtual {v3}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 1

    .line 87
    const-class v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AccountConstants$MLDMSResult;
    .locals 1

    .line 87
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->$VALUES:[Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/AccountConstants$MLDMSResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AccountConstants$MLDMSResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->id:I

    return v0
.end method

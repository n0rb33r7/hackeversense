.class final enum Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
.super Ljava/lang/Enum;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MLCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

.field public static final enum Unknown:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 39
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v1, "Timeout"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 40
    new-instance v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v4, "NotConnectedToWifi"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 41
    new-instance v4, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v6, "ServerError"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 42
    new-instance v6, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v8, "None"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    .line 43
    new-instance v8, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v10, "Unknown"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Unknown:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    new-array v10, v11, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    .line 38
    sput-object v10, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    .locals 1

    .line 38
    const-class v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    .locals 1

    .line 38
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->$VALUES:[Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    invoke-virtual {v0}, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->id:I

    return v0
.end method

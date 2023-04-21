.class final enum Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
.super Ljava/lang/Enum;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/extension/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HEADER_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum UNKNOWN:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

.field public static final enum WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 45
    new-instance v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->NO_CONNECTION:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 46
    new-instance v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v3, "BLIND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 47
    new-instance v3, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v5, "HI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->HI:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 48
    new-instance v5, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v7, "LO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->LO:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 49
    new-instance v7, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v9, "BLIND_OTHER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BLIND_OTHER:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 50
    new-instance v9, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v11, "ABOVE_HIGH_ALARM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 51
    new-instance v11, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v13, "BELOW_LOW_ALARM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_ALARM:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 52
    new-instance v13, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v15, "ABOVE_HIGH_TARGET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->ABOVE_HIGH_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 53
    new-instance v15, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v14, "BELOW_LOW_TARGET"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->BELOW_LOW_TARGET:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 54
    new-instance v14, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v12, "WITHIN_TARGETS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->WITHIN_TARGETS:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    .line 55
    new-instance v12, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const-string v10, "UNKNOWN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->UNKNOWN:Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 44
    sput-object v10, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
    .locals 1

    .line 44
    const-class v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;
    .locals 1

    .line 44
    sget-object v0, Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->$VALUES:[Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    invoke-virtual {v0}, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/extension/ExtensionManager$HEADER_STATUS;

    return-object v0
.end method

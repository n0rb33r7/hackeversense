.class public final enum Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
.super Ljava/lang/Enum;
.source "DrawerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/DrawerMenu/DrawerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MENU_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 24
    new-instance v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v3, "CALIBRATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 25
    new-instance v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v5, "NOTIFICATIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 26
    new-instance v5, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v7, "EVENT_LOG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 27
    new-instance v7, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v9, "STATISTICS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 28
    new-instance v9, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v11, "SHARE_MY_DATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 29
    new-instance v11, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v13, "PLACEMENT_GUIDE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 30
    new-instance v13, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v15, "CONNECTION_STATUS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 31
    new-instance v15, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v14, "SETTINGS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 32
    new-instance v14, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v12, "ABOUT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 22
    sput-object v12, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->$VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 22
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 22
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->$VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0}, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method

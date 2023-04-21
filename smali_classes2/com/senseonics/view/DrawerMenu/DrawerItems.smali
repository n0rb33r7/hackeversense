.class public Lcom/senseonics/view/DrawerMenu/DrawerItems;
.super Ljava/lang/Object;
.source "DrawerItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    }
.end annotation


# static fields
.field static final ABOUT_KEY:Ljava/lang/String; = "drawer_menu_about"

.field private static final ALERTS_KEY:Ljava/lang/String; = "drawer_menu_alerts"

.field static final CALIBRATE_KEY:Ljava/lang/String; = "drawer_menu_calibrate"

.field private static final CONNECT_KEY:Ljava/lang/String; = "drawer_menu_connect"

.field private static final EVENTS_KEY:Ljava/lang/String; = "drawer_menu_events"

.field private static final GLUCOSE_KEY:Ljava/lang/String; = "drawer_menu_glucose"

.field static final PLACEMENT_KEY:Ljava/lang/String; = "drawer_menu_placement"

.field private static final REPORTS_KEY:Ljava/lang/String; = "drawer_menu_reports"

.field private static final SETTINGS_KEY:Ljava/lang/String; = "drawer_menu_settings"

.field static final SHARE_KEY:Ljava/lang/String; = "drawer_menu_share"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMenuItems(Landroid/app/Activity;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/senseonics/view/DrawerMenu/MenuModel;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f110151

    .line 40
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800bc

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_glucose"

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f11006a

    .line 46
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080090

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_calibrate"

    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f110228

    .line 52
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080151

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_alerts"

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f110117

    .line 58
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08005b

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_events"

    .line 56
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f1102f2

    .line 64
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801a8

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_reports"

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f1102d9

    .line 70
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080109

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_share"

    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f110247

    .line 76
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08015b

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_placement"

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f11009b

    .line 82
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080097

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_connect"

    .line 80
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f1102d7

    .line 88
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08018b

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v2, "drawer_menu_settings"

    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v2, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v3, 0x7f11001b

    .line 94
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f080058

    const v4, 0x7f0800f3

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;II)V

    const-string p0, "drawer_menu_about"

    .line 92
    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

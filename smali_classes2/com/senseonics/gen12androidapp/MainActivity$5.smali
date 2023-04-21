.class Lcom/senseonics/gen12androidapp/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity;->updateNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 365
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MainActivity;->drawerMenu:Lcom/senseonics/view/DrawerMenu/DrawerMenu;

    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/DrawerMenu;->closeDrawer()V

    .line 366
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$5;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/MainActivity;->-$$Nest$fgetstatisticsFragment(Lcom/senseonics/gen12androidapp/MainActivity;)Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsFragment;->createShareDialog()V

    return-void
.end method

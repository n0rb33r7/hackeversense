.class Lcom/senseonics/gen12androidapp/UserAccountActivity$3;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/UserAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 110
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/senseonics/util/Item;

    .line 113
    new-instance v1, Lcom/senseonics/util/Item;

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/senseonics/util/Item;

    const/4 v2, 0x1

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/senseonics/util/Item;

    const/4 v2, 0x2

    const-string v3, "7"

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/senseonics/util/Item;

    const/4 v2, 0x3

    const-string v3, "14"

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/senseonics/util/Item;

    const/4 v2, 0x4

    const-string v3, "30"

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fputsyncDaysValues(Lcom/senseonics/gen12androidapp/UserAccountActivity;Ljava/util/ArrayList;)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgetsyncDaysValues(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v2, v2, Lcom/senseonics/gen12androidapp/UserAccountActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    sget v3, Lcom/senseonics/util/Utils;->DEFAULT_SYNC_DAYS:I

    const-string v4, "AccountSyncDays"

    .line 127
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->getMinuteItemPosition(Ljava/util/ArrayList;I)I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgetsyncDaysValues(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$3;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$mshowDialog(Lcom/senseonics/gen12androidapp/UserAccountActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V

    return-void
.end method

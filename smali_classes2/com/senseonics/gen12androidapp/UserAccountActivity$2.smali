.class Lcom/senseonics/gen12androidapp/UserAccountActivity$2;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


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


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/UserAccountActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgetsyncDaysValues(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 94
    array-length v0, p1

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/UserAccountActivity;->-$$Nest$fgettvDefaultSyncDaysValue(Lcom/senseonics/gen12androidapp/UserAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity$2;->this$0:Lcom/senseonics/gen12androidapp/UserAccountActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/UserAccountActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    aget-object p1, p1, v1

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "AccountSyncDays"

    .line 99
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

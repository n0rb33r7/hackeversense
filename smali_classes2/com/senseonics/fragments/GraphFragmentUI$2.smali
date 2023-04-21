.class Lcom/senseonics/fragments/GraphFragmentUI$2;
.super Ljava/lang/Object;
.source "GraphFragmentUI.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragmentUI;->init(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragmentUI;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragmentUI;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI$2;->this$0:Lcom/senseonics/fragments/GraphFragmentUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 62
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI$2;->this$0:Lcom/senseonics/fragments/GraphFragmentUI;

    invoke-virtual {p1}, Lcom/senseonics/fragments/GraphFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI$2;->this$0:Lcom/senseonics/fragments/GraphFragmentUI;

    invoke-virtual {p1}, Lcom/senseonics/fragments/GraphFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/AddEventMenuCreator;->createLogEventMenuDialog(Landroid/content/Context;Ljava/util/Calendar;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

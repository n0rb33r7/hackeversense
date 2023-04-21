.class Lcom/senseonics/fragments/GraphFragmentUI$1;
.super Ljava/lang/Object;
.source "GraphFragmentUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 47
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI$1;->this$0:Lcom/senseonics/fragments/GraphFragmentUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI$1;->this$0:Lcom/senseonics/fragments/GraphFragmentUI;

    invoke-virtual {p1}, Lcom/senseonics/fragments/GraphFragmentUI;->changeGlucoseDisplayValue()V

    return-void
.end method

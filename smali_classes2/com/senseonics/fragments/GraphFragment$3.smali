.class Lcom/senseonics/fragments/GraphFragment$3;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->addLayoutListenerAndGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 449
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v0

    .line 450
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v1

    .line 451
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphWidth(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v2

    .line 452
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v3}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v3

    .line 454
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayout(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputtopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 455
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 456
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphLayoutView(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputgraphWidth(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 457
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphLayoutView(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputgraphHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 459
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphWidth(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$maddGraphManagerView(Lcom/senseonics/fragments/GraphFragment;Landroid/app/Activity;)V

    .line 465
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$3;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$maddPopUpView(Lcom/senseonics/fragments/GraphFragment;)V

    :cond_1
    return-void
.end method

.class Lcom/senseonics/fragments/GraphFragment$4;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->addGraph()V
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

    .line 476
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetlayout(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 481
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayout(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputtopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 482
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgettopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 483
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphLayoutView(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputgraphWidth(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 484
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fgetgraphLayoutView(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$fputgraphHeight(Lcom/senseonics/fragments/GraphFragment;I)V

    .line 487
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$maddGraphManagerView(Lcom/senseonics/fragments/GraphFragment;Landroid/app/Activity;)V

    .line 488
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$4;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/GraphFragment;->-$$Nest$maddPopUpView(Lcom/senseonics/fragments/GraphFragment;)V

    return-void
.end method

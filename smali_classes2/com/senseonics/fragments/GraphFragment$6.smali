.class Lcom/senseonics/fragments/GraphFragment$6;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->addGraphManagerView(Landroid/app/Activity;)V
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

    .line 521
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/GraphFragment;->onDateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setOnDateClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/GraphFragment;->graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setManager(Lcom/senseonics/graph/GraphManagerView$GraphManager;)V

    .line 527
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    return-void
.end method

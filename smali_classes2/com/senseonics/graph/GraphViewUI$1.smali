.class Lcom/senseonics/graph/GraphViewUI$1;
.super Ljava/lang/Object;
.source "GraphViewUI.java"

# interfaces
.implements Lcom/senseonics/graph/GraphView$LineScrollManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphViewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphViewUI;


# direct methods
.method constructor <init>(Lcom/senseonics/graph/GraphViewUI;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCancelled()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->hideEventGlucosePopUpTop()V

    return-void
.end method

.method public positionChanged(F)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/senseonics/graph/GraphView$ScrollManager;->showEventPopUpTop(FLcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetglucose(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/util/Glucose;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetglucose(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/util/Glucose;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/senseonics/graph/GraphView$ScrollManager;->showGlucosePopUpTop(FLcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/senseonics/graph/GraphView$ScrollManager;->showNoGlucoseReadingPopUp(F)V

    :goto_0
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;Z)V

    .line 77
    new-instance v0, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;

    iget-object v1, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {v0, v1}, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;-><init>(Lcom/senseonics/graph/GraphView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;Z)V

    .line 69
    new-instance v0, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;

    iget-object v1, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {v0, v1}, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;-><init>(Lcom/senseonics/graph/GraphView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphView$SlideRightAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$1;->this$0:Lcom/senseonics/graph/GraphViewUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;Z)V

    return-void
.end method

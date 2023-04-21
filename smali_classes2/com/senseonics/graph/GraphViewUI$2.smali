.class Lcom/senseonics/graph/GraphViewUI$2;
.super Ljava/lang/Object;
.source "GraphViewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/graph/GraphViewUI;->addUITransparentButton()V
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

    .line 124
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$2;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/senseonics/graph/GraphViewUI$2;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {p1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/senseonics/graph/GraphViewUI$2;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {p1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$2;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->onEventSelected(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/senseonics/graph/GraphViewUI$2;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {p1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetcontext(Lcom/senseonics/graph/GraphViewUI;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "Empty events"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

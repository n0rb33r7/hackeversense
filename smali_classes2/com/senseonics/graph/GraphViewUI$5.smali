.class Lcom/senseonics/graph/GraphViewUI$5;
.super Ljava/lang/Object;
.source "GraphViewUI.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 170
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$5;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$5;->this$0:Lcom/senseonics/graph/GraphViewUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputeventPoint(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/events/EventPoint;)V

    .line 174
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$5;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0, v1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    .line 175
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$5;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetverticalLineHolder(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/VerticalLineHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/graph/VerticalLineHolder;->getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    const/4 p1, 0x1

    return p1
.end method

.class Lcom/senseonics/graph/GraphViewUI$3;
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

    .line 135
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$3;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/senseonics/graph/GraphViewUI$3;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {p1}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetverticalLineHolder(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/VerticalLineHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/graph/VerticalLineHolder;->getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$3;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    const/4 p1, 0x1

    return p1
.end method

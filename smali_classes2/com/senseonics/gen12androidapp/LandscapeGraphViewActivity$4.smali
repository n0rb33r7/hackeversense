.class Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;
.super Ljava/lang/Object;
.source "LandscapeGraphViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->addGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 15

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v12

    .line 132
    iget-object v13, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    new-instance v14, Lcom/jjoe64/graphview/LineGraphView;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v2}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetstartDate(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Ljava/util/Calendar;

    move-result-object v4

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetendDate(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Ljava/util/Calendar;

    move-result-object v5

    const-string v3, ""

    const/16 v9, 0x32

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move v6, v0

    move v7, v12

    move v8, v0

    invoke-direct/range {v1 .. v11}, Lcom/jjoe64/graphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIIZZ)V

    invoke-static {v13, v14}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fputgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Lcom/jjoe64/graphview/LineGraphView;)V

    .line 133
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v2}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jjoe64/graphview/LineGraphView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setScalable(Z)V

    .line 136
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setScrollable(Z)V

    .line 137
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/jjoe64/graphview/LineGraphView;->setIsLandscape(Z)V

    .line 138
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jjoe64/graphview/LineGraphView;->setDisableTouch(Z)V

    .line 139
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jjoe64/graphview/LineGraphView;->setDrawBackground(Z)V

    .line 140
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-static {v3}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->-$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 142
    new-instance v1, Lcom/senseonics/graph/VerticalLineHolder;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {v1, v3, v0, v12, v2}, Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;III)V

    .line 143
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/senseonics/graph/VerticalLineHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v0, Lcom/senseonics/fragments/PopupGraphManagerView;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {v0, v2}, Lcom/senseonics/fragments/PopupGraphManagerView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    .line 147
    invoke-virtual {v0, v2}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    const v3, 0x7f0902e0

    invoke-virtual {v2, v3}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    new-instance v2, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;->this$0:Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;

    invoke-direct {v2, v3, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Lcom/senseonics/fragments/PopupGraphManagerView;)V

    invoke-virtual {v1, v2}, Lcom/senseonics/graph/VerticalLineHolder;->setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V

    return-void
.end method

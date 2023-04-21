.class Lcom/senseonics/graph/GraphViewUI$4;
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

    .line 144
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetglucoseEventCount(Lcom/senseonics/graph/GraphViewUI;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v8, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x4b

    const/4 v6, 0x3

    const/16 v7, 0x450

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v8}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v8, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0xb4

    const/4 v6, 0x3

    const/16 v7, 0x44f

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v8}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v8, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3c

    const/4 v6, 0x3

    const/16 v7, 0x44e

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v8}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v8, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x118

    const/4 v6, 0x3

    const/16 v7, 0x44d

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v8}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    new-instance v8, Lcom/senseonics/graph/util/Glucose;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x82

    const/4 v6, 0x3

    const/16 v7, 0x44c

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-static {v0, v8}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetglucoseEventCount(Lcom/senseonics/graph/GraphViewUI;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fputglucoseEventCount(Lcom/senseonics/graph/GraphViewUI;I)V

    .line 165
    iget-object v0, p0, Lcom/senseonics/graph/GraphViewUI$4;->this$0:Lcom/senseonics/graph/GraphViewUI;

    invoke-static {v0}, Lcom/senseonics/graph/GraphViewUI;->-$$Nest$fgetverticalLineHolder(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/VerticalLineHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/graph/VerticalLineHolder;->getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    return-void
.end method

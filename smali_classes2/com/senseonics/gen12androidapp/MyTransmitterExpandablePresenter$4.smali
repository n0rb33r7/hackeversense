.class Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;
.super Ljava/lang/Object;
.source "MyTransmitterExpandablePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->getHeaderClickListener(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

.field final synthetic val$parentViewID:I


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iput p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 260
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    const v1, 0x7f0900b5

    invoke-interface {p1, v0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->getViewVisibilityByID(II)I

    move-result p1

    const/16 v0, 0xb4

    const v2, 0x7f090089

    if-nez p1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v3, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    const/16 v4, 0x8

    invoke-interface {p1, v3, v1, v4}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setViewVisibilityByID(III)V

    .line 264
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    const v3, 0x7f08010f

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setImageViewWithImage(III)V

    .line 265
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    invoke-interface {p1, v1, v2, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->rotateImageViewByDegree(III)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v3, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    const/4 v4, 0x0

    invoke-interface {p1, v3, v1, v4}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setViewVisibilityByID(III)V

    .line 268
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    const v3, 0x7f08010e

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->setImageViewWithImage(III)V

    .line 269
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$4;->val$parentViewID:I

    invoke-interface {p1, v1, v2, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;->rotateImageViewByDegree(III)V

    :goto_0
    return-void
.end method

.class Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;
.super Ljava/lang/Object;
.source "GlucoseSettingsPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

.field final synthetic val$arrowImageID:I

.field final synthetic val$bodyViewID:I

.field final synthetic val$parentViewID:I


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;III)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iput p2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iput p3, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$bodyViewID:I

    iput p4, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$arrowImageID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 473
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$bodyViewID:I

    invoke-interface {p1, v0, v1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->getViewVisibilityByID(II)I

    move-result p1

    const/16 v0, 0xb4

    if-nez p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$bodyViewID:I

    const/16 v3, 0x8

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setViewVisibilityByID(III)V

    .line 477
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$arrowImageID:I

    const v3, 0x7f08010f

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setImageViewWithImage(III)V

    .line 478
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$arrowImageID:I

    invoke-interface {p1, v1, v2, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->rotateImageViewByDegree(III)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$bodyViewID:I

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setViewVisibilityByID(III)V

    .line 481
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$arrowImageID:I

    const v3, 0x7f08010e

    invoke-interface {p1, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setImageViewWithImage(III)V

    .line 482
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->this$0:Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    iget v1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$parentViewID:I

    iget v2, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;->val$arrowImageID:I

    invoke-interface {p1, v1, v2, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->rotateImageViewByDegree(III)V

    :goto_0
    return-void
.end method
